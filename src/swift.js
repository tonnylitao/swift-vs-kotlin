const puppeteer = require("puppeteer-core");
const fs = require("fs");
const sanitize = require("sanitize-filename");
const md5 = require("md5");
const makeDir = require("make-dir");
const ejs = require("ejs");

const documentUrl = "https://docs.swift.org/swift-book/";
const documentUrl2 =
  "https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html";

const documentName = "swift";

//
writeToHtml(require("../language-code/swift.json"));
return;
//

const docSwiftFolderPath = "language-code/doc-swift";

const targetMenus = ["WELCOME TO SWIFT", "LANGUAGE GUIDE"];

(async () => {
  const browser = await puppeteer.launch({
    // headless: false,
    executablePath:
      "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome",
  });

  //load menus, chapters with url
  let menus = (await loadMenus(browser, documentUrl)).filter(({ menu }) =>
    targetMenus.includes(menu.toUpperCase())
  );

  const menus2 = (await loadMenus(browser, documentUrl2)).filter(({ menu }) =>
    targetMenus.includes(menu.toUpperCase())
  );

  menus = [...menus, ...menus2];

  //load swift code from url
  const resultPromise = menus.map(async ({ menu, chapters }) => {
    const titleUrlDomsPromise = chapters.map(async ({ title, url }) => {
      const doms = await loadCapter(browser, url);

      console.log(url, doms.length);

      let filted = [];
      for (let i = doms.length - 1; i >= 0; i--) {
        const dom = doms[i];
        const { tag, content } = dom;

        if (tag === "pre") {
          filted.push(dom);

          const nextDom = doms[i - 1];
          const { tag, content } = nextDom || {};
          if (tag !== "pre") {
            filted.push(nextDom);
            i--;
          }
        } else if (tag === "h1") {
          filted.push(dom);
        }
      }

      return Promise.resolve({
        title,
        url,
        doms: filted.reverse(),
      });
    });

    const titleUrlDoms = await Promise.all(titleUrlDomsPromise);

    return Promise.resolve({
      menu,
      chapters: titleUrlDoms,
    });
  });

  const result = await Promise.all(resultPromise);

  const docSwiftFolder = await makeDir(docSwiftFolderPath);

  result.forEach(({ menu, chapters }) => {
    chapters.forEach(({ title, url, doms }) => {
      const menuChapter = sanitize(menu + "_" + title);

      doms.forEach((item, index) => {
        const { tag, content } = item;
        if (tag === "pre") {
          delete item.content;

          const swiftFilename = `${docSwiftFolder}/${menuChapter}_${index}_${md5(
            content
          )}.kt`;
          item.filename =
            "." + swiftFilename.replace(__dirname.replace("/src", ""), "");

          fs.writeFileSync(swiftFilename, content);
          try {
            fs.writeFileSync(swiftFilename.replace(".kt", ".swift"), content, {
              flag: "wx",
            });
          } catch (e) {}
        }
      });
    });
  });

  fs.writeFileSync(
    `${__dirname}/../language-code/${documentName}.json`,
    JSON.stringify(result)
  );

  writeToHtml(result);
})();

async function loadMenus(browser, url) {
  const page = await browser.newPage();
  await page.setDefaultNavigationTimeout(0);

  await page.goto(url);

  const branches = await page.$$(".toctree-l1.current");

  const findMenus = branches.map(async (branch) => {
    const menu = await branch.$eval("a", (a) => a.innerText.trim());

    const chapters = await branch.$$eval(".toctree-l2>a", (list) =>
      list.map((el) => {
        return {
          title: el.innerText.trim(),
          url: el.href,
        };
      })
    );

    return Promise.resolve({
      menu,
      chapters,
    });
  });

  return Promise.all(findMenus);
}

async function loadCapter(browser, url) {
  const page = await browser.newPage();
  await page.setDefaultNavigationTimeout(0);

  await page.goto(url);

  try {
    await page.waitForSelector(".code-lines", {
      timeout: 3000,
    });
  } catch (e) {
    return Promise.resolve([]);
  }

  const doms = await page.$$('.Swift.highlight,h1:not([id="logo"]),h2,h3,h4');
  const findChapters = doms.map((dom) =>
    page.evaluate((el) => {
      const outerHTML = el.outerHTML.trim();
      const tag = el.tagName.toLowerCase();

      let anchor;
      if (tag !== "div") {
        const arr = outerHTML.match(/#([^">]*)/);
        if (arr && arr.length > 0) {
          anchor = arr[0];
        }
      }

      const content = el.innerText.trim();
      return {
        tag: tag === "div" ? "pre" : tag,
        content,
        anchor,
      };
    }, dom)
  );

  return Promise.all(findChapters);
}

function writeToHtml(result) {
  const data = result.map(({ menu, chapters }, menuIndex) => {
    return {
      menu,
      chapters: chapters
        .filter((item) => item.doms.length > 0)
        .map(({ title, url, doms: originDoms }, chapterIndex) => {
          const menuChapter = sanitize(menu + "_" + title);

          const doms = originDoms.map(
            ({ tag: originTag, content, filename, anchor }) => {
              //only one H1 for SEO
              const tagMap = {
                h1: "h2",
                h2: "h3",
                h3: "h4",
                h4: "h4",
              };
              const tag = tagMap[originTag] || originTag;

              //
              if (tag === "pre") {
                let selfEscaped = "";
                try {
                  const swiftCode = fs.readFileSync(filename, "utf8");

                  selfEscaped = swiftCode.replace(
                    /[\u00A0-\u9999<>\&]/g,
                    (i) => "&#" + i.charCodeAt(0) + ";"
                  );
                } catch (e) {
                  console.log("Error:", e.stack);
                }

                //
                let otherEscaped = "";
                let isSimilar = false;
                try {
                  const swiftCode = fs.readFileSync(
                    filename.replace(".swift", ".kt"),
                    "utf8"
                  );

                  isSimilar = !swiftCode.startsWith("❌") && swiftCode != "";
                  if (isSimilar) {
                    otherEscaped = swiftCode.replace(
                      /[\u00A0-\u9999<>\&]/g,
                      (i) => "&#" + i.charCodeAt(0) + ";"
                    );
                  } else {
                    otherEscaped = swiftCode || "❌";
                  }
                } catch (e) {
                  otherEscaped = "❌";
                }

                return {
                  tag,
                  content,
                  anchor,

                  selfEscaped,
                  isSimilar,
                  otherEscaped,
                };
              }

              if (tag === "h2") {
                return {
                  tag,
                  content,
                  url,
                  anchor,
                  menuIndex,
                  chapterIndex,
                };
              }

              return { tag, content, url, anchor, menuIndex, chapterIndex };
            }
          );

          return { title, url, doms, menuChapter };
        }),
    };
  });

  data.forEach(({ menu, chapters }, menuIndex) => {
    chapters.forEach(({ menuChapter, url, doms }, chapterIndex) => {
      ejs.renderFile(
        `${__dirname}/template/index.ejs`,
        { language: "swift", data, doms, url },
        (err, str) => {
          console.log(err);

          const fileName = `${__dirname}/../public/fromswift/${menuChapter}.html`;
          fs.writeFileSync(fileName, str);
        }
      );
    });
  });
}
