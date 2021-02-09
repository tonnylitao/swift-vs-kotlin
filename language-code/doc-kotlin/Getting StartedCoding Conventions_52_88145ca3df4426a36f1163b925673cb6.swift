let anchor = owner
    ?.firstChild!
    .siblings(forward: true)
    .dropWhile { $0 is PsiComment || $0 is PsiWhiteSpace }
