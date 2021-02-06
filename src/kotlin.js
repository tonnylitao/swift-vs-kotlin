const puppeteer = require("puppeteer-core");
const fs = require("fs");
const sanitize = require("sanitize-filename");
const md5 = require("md5");
const makeDir = require("make-dir");

const kotlinUrl = "https://kotlinlang.org/docs/reference";
const bookName = "kotlin";

const json = require("../language-code/kotlin.json");

writeToHtml(json);
return;

//const kotlinViewSwiftCode = require("./kotlin-view-swift-code.json");

const docKotlinFolderPath = "language-code/doc-kotlin";

const targetMenus = [
  "Getting Started",
  "Basics",
  "Classes and Objects",
  "Functions and Lambdas",
  "Collections",
  "Coroutines",
  "More Language Constructs",
];

const excludeChapters = ["Opt-in Requirements"];

(async () => {
  const browser = await puppeteer.launch({
    // headless: false,
    executablePath:
      "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome",
  });

  //load menus, chapters with url
  const menus = (await loadMenus(browser)).filter(
    ({ menu }) => targetMenus.indexOf(menu) !== -1
  );

  //load kotlin code from url
  const resultPromise = menus.map(async ({ menu, chapters }) => {
    const titleUrlDomsPromise = chapters
      .filter((item) => !excludeChapters.includes(item.title))
      .map(async ({ title, url }) => {
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

        return Promise.resolve({ title, url, doms: filted.reverse() });
      });

    const titleUrlDoms = await Promise.all(titleUrlDomsPromise);

    return Promise.resolve({
      menu,
      chapters: titleUrlDoms,
    });
  });

  const result = await Promise.all(resultPromise);

  const docKotlinFolder = await makeDir(docKotlinFolderPath);

  result.forEach(({ menu, chapters }) => {
    chapters.forEach(({ title, url, doms }) => {
      const menuChapter = sanitize(menu + title);

      doms.forEach((item, index) => {
        const { tag, content } = item;
        if (tag === "pre") {
          delete item.content;

          const kotlinFilename = `${docKotlinFolder}/${menuChapter}_${index}_${md5(
            content
          )}.kt`;
          item.filename =
            "." + kotlinFilename.replace(__dirname.replace("/src", ""), "");

          fs.writeFileSync(kotlinFilename, content);
          try {
            fs.writeFileSync(kotlinFilename.replace(".kt", ".swift"), content, {
              flag: "wx",
            });
          } catch (e) {}
        }
      });
    });
  });

  fs.writeFileSync(
    `${__dirname}/../language-code/${bookName}.json`,
    JSON.stringify(result)
  );

  writeToHtml(result);
})();

async function loadMenus(browser) {
  const page = await browser.newPage();
  await page.setDefaultNavigationTimeout(0);

  await page.goto(kotlinUrl);

  const branches = await page.$$(".tree-branch");

  const findMenus = branches.map(async (branch) => {
    const menu = await page.evaluate(
      (el) => el.getAttribute("data-id"),
      branch
    );

    const chapters = await branch.$$eval("a.tree-leaf-title", (list) =>
      list.map((el) => ({
        title: el.innerText.trim(),
        url: el.href,
      }))
    );

    return Promise.resolve({ menu, chapters });
  });

  return Promise.all(findMenus);
}

async function loadCapter(browser, url) {
  const page = await browser.newPage();
  await page.setDefaultNavigationTimeout(0);

  await page.goto(url);

  try {
    await page.waitForSelector(".CodeMirror-line", {
      timeout: 3000,
    });
  } catch (e) {
    return Promise.resolve([]);
  }

  const doms = await page.$$(".CodeMirror-code,h1,h2,h3,h4");
  const findChapters = doms.map((dom) =>
    page.evaluate((el) => {
      const outerHTML = el.outerHTML.trim();
      const tag = outerHTML.slice(1, outerHTML.search(/\s/));

      let anchor;
      if (tag !== "div") {
        const arr = outerHTML.match(/#([^">]*)/);
        if (arr && arr.length > 0) {
          anchor = arr[0];
        }
      }

      const content = el.innerText.trim();
      return { tag: tag === "div" ? "pre" : tag, content, anchor };
    }, dom)
  );

  return Promise.all(findChapters);
}

function htmlTemplete(menu, content) {
  return `<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Kotlin</title>

    <link rel="stylesheet" href="https://highlightjs.org/static/demo/styles/github.css">

    <script src="https://highlightjs.org/static/highlight.site.pack.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>

    <style>
    .container {
      display: flex;
    }

    nav {
      position: fixed; /* Fixed Sidebar (stay in place on scroll) */
      z-index: 1; /* Stay on top */
      top: 0; /* Stay at the top */
      left: 0;
      bottom: 0;
      background: white;
      overflow-y: scroll;
      width: 300px;
      padding-left: 10px;
    }
    .right-cnt {
      margin-left: 300px;
      margin-top: 100px;
    }

    nav ul {
      padding: 0;
      margin: 0;
    }

    .content {
      max-width: 768px;
      margin: 0 auto;
      padding: 0 20px;
    }


    .hljs {
      border-radius: 5px;
      padding: 1em;
    }

    .anchor {
      position: absolute;
    }

    .anchor:after {
      position: absolute;
      display: none;
      opacity: .5;
      margin-top: 2px;
      margin-left: 5px;
      width: 16px;
      height: 16px;
      background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAACxQAAAsUBidZ/7wAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAEqSURBVDiNjdM9S1xRFIXhB8QoihZ+DRoJjlPYWAy2qQSbBFv/gOlT2CuKf0BSphe0EAVBBAvRJlYxghrRQqNgFXEQK5tr4Wa4XO44t9jNXme9h732OZIk0azQigVc4wFr+JQkiSLmduwiyVQNlSKA72G4xzTK2IneZhHAGH6ikupVAvC/KaAB9HMAbhodmMUv3GEdgymtB8cB+JE1dmAjJ7Ct0HtT5nN0pc2d2K/PxgxGsIxJ9OEk9DOU6msM80GItxFSFd9ijV9xEfopBlIX+4DDEP9hNITt6D2nRvmN/szYFuuJUk4J4/gT2hNW0JYTuMs49KXBRkpoeWelagEYypjmMVzgTdgLwCo+Ygp/ozdXBDCBl5zdH6G7KSAoVW8/7hFXWMoLLK9eAaRNvta9bjm9AAAAAElFTkSuQmCC937405abf7d2fa1cd5d9079c2e5160ac);
      background-repeat: no-repeat;
      content: '';
    }

    h1:hover .anchor:after,
    h2:hover .anchor:after,
    h3:hover .anchor:after,
    h4:hover .anchor:after,
    h5:hover .anchor:after {
      display: block;
    }

    h2 {
      margin: 10px 0;
    }

    h3, h4, h5 {
      margin: 5px 0 0;
      color: #555;
      font-weight: 400;
    }

    .sticky-row {
      position: sticky;
      position: -webkit-sticky;
      left: 0;
      top: 0;
      z-index: 3;
      background: white;
      text-align: center;
    }
    ul {
      list-style-type: none;
    }

    .chapter-1 {
      padding: 0;
      margin-bottom: 15px;
    }

    .chapter-2 {
      padding-left: 15px;
      margin: 5px 0;
    }

    ul a {
      text-decoration: none;
    }


    .sticky-row>div {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
    }

    table {
        table-layout:fixed;
        width:100%;
    }

    img {
      width: 30px;
      display: none;
    }

    .from-aspect {
      margin-bottom: 20px;
    }

    nav ol a, nav ol a:visited {
      color: #333;
    }

    td {
      vertical-align: top;
    }

    pre {
      margin: 0;
    }
    </style>
  </head>
  <body>
  <nav>
  <h1><img src="https://upload.wikimedia.org/wikipedia/commons/7/74/Kotlin-logo.svg" alt="Kotlin" />Kotlin vs <img width="60px" src="https://cdn4.iconfinder.com/data/icons/logos-3/504/Swift-2-512.png" alt="Swift"/>Swift</h1>
    <div class="from-aspect">
      <a href="#kotlin">From Kotlin View</a><br/>
      <a href="#kotlin">From Swift View</a>
    </div>
    <div class="capters">${menu}</div>
  </nav>

    <div class="container">
      <div class="right-cnt">${content}</div>
    </div>
  </body>
</html>`;
}

function writeToHtml(result) {
  let content = "";

  result.forEach(({ menu, chapters }, menuIndex) => {
    chapters
      .filter((item) => item.doms.length > 0)
      .forEach(({ title, url, doms }, chapterIndex) => {
        const menuChapter = sanitize(menu + title);

        let domIndex = -1;
        content += doms.reduce(
          (result, { tag: originTag, content, filename, anchor }) => {
            domIndex += 1;

            //only one H1 for SEO
            const tagMap = {
              h1: "h2",
              h2: "h3",
              h3: "h4",
              h4: "h4",
            };
            const tag = tagMap[originTag] || originTag;

            if (tag === "pre") {
              let kotlinEscaped = "";
              try {
                const kotlinCode = fs.readFileSync(filename, "utf8");

                kotlinEscaped = kotlinCode.replace(
                  /[\u00A0-\u9999<>\&]/g,
                  (i) => "&#" + i.charCodeAt(0) + ";"
                );
              } catch (e) {
                console.log("Error:", e.stack);
              }

              console.log(menuIndex, chapterIndex);
              // const swiftInfo = kotlinViewSwiftCode[menuIndex].chapters.filter(
              //   (item) => item.doms.length > 0
              // )[chapterIndex].doms[domIndex];

              let swiftEscaped = "";
              let isSwiftCode = false;
              try {
                const swiftCode = fs.readFileSync(
                  filename.replace(".kt", ".swift"),
                  "utf8"
                );

                isSwiftCode = !swiftCode.startsWith("❌") && swiftCode != "";
                if (isSwiftCode) {
                  swiftEscaped = swiftCode.replace(
                    /[\u00A0-\u9999<>\&]/g,
                    (i) => "&#" + i.charCodeAt(0) + ";"
                  );
                } else {
                  swiftEscaped = swiftCode || "❌";
                }
              } catch (e) {
                swiftEscaped = "❌";
              }

              return `
            ${result}
            <tr>
              <td style="padding-right:10px;padding-bottom:10px"><pre><code class="kotlin">${kotlinEscaped}</code></pre></td>
              ${
                isSwiftCode
                  ? `<td style="padding-left:10px;padding-bottom:10px"><pre><code class="swift">${swiftEscaped}</code></pre></td>`
                  : `<td style="padding-left:10px;padding-bottom:10px"><div>${swiftEscaped}</div></td>`
              }
            </tr>`;
            }
            if (tag === "h2") {
              return `
            ${result}
            <tr>
              <td class="sticky-row" colspan="2">
                <div>
                  <div>Kotlin</div>
                  <${tag} id="${menuIndex}_${chapterIndex}" style="text-align:center;">${content}<a class="anchor" href="${url}${anchor}" target="_blank"></a></${tag}>
                  <div>Swift</div>
                </div>
              </td>
            </tr>`;
            } else {
              return `
            ${result}
            <tr>
              <td colspan="2" style="text-align: center;"><${tag}>${content}<a class="anchor" href="${url}${anchor}" target="_blank"></a></${tag}></td>
            </tr>`;
            }
          },
          ""
        );
      });
  });

  const menus = result.map(({ menu, chapters }, menuIndex) => {
    return `<ol class="chapter-1">${menu}</ol><ul>${chapters
      .filter((item) => item.doms.length > 0)
      .map(
        ({ title }, chapterIndex) =>
          `<ol class="chapter-2">-&nbsp<a href="#${menuIndex}_${chapterIndex}">${title}</a></ol>`
      )
      .join("")}</ul></ol>`;
  });

  const menuDom = `<ul>${menus.join("")}</ul>`;

  fs.writeFileSync(
    `./${bookName}.html`,
    htmlTemplete(menuDom, `<table>${content}</table>`)
  );
}
