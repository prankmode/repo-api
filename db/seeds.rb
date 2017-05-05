RepoTag.destroy_all
Repo.destroy_all
Repo.create! [
{name: "api-token-auth", github_user: "prankmode", full_url: "https://github.com/prankmode/api-token-auth"   },
{name: "code-retreat", github_user: "prankmode", full_url: "https://github.com/prankmode/code-retreat"   },
{name: "css-layout-challenge", github_user: "prankmode", full_url: "https://github.com/prankmode/css-layout-challenge"   },
{name: "full-stack-project-practice", github_user: "prankmode", full_url: "https://github.com/prankmode/full-stack-project-practice"   },
{name: "game-of-gits", github_user: "prankmode", full_url: "https://github.com/prankmode/game-of-gits"   },
{name: "game-project-api", github_user: "prankmode", full_url: "https://github.com/prankmode/game-project-api"   },
{name: "git", github_user: "prankmode", full_url: "https://github.com/prankmode/git"   },
{name: "git-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/git-diagnostic"   },
{name: "git-github", github_user: "prankmode", full_url: "https://github.com/prankmode/git-github"   },
{name: "git-practice", github_user: "prankmode", full_url: "https://github.com/prankmode/git-practice"   },
{name: "html-css", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css"   },
{name: "html-css-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css-diagnostic"   },
{name: "html-css-layout", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css-layout"   },
{name: "html-css-layout-bootstrap-sass", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css-layout-bootstrap-sass"   },
{name: "html-css-sass", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css-sass"   },
{name: "html-css-sass-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css-sass-diagnostic"   },
{name: "http-study", github_user: "prankmode", full_url: "https://github.com/prankmode/http-study"   },
{name: "jquery-ajax-delete", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-delete"   },
{name: "jquery-ajax-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-diagnostic"   },
{name: "jquery-ajax-get-collection", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-get-collection"   },
{name: "jquery-ajax-get-element", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-get-element"   },
{name: "jquery-ajax-patch", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-patch"   },
{name: "jquery-ajax-post", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-post"   },
{name: "jquery-dom", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-dom"   },
{name: "jquery-dom-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-dom-diagnostic"   },
{name: "jquery-dom-study", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-dom-study"   },
{name: "js", github_user: "prankmode", full_url: "https://github.com/prankmode/js"   },
{name: "js-array-iteration-methods", github_user: "prankmode", full_url: "https://github.com/prankmode/js-array-iteration-methods"   },
{name: "js-array-iteration-methods-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/js-array-iteration-methods-diagnostic"   },
{name: "js-async-study", github_user: "prankmode", full_url: "https://github.com/prankmode/js-async-study"   },
]
Tag.destroy_all
Tag.create! [
{name: "api", tagType: "auto"},
{name: "token", tagType: "auto"},
{name: "auth", tagType: "auto"},
{name: "code", tagType: "auto"},
{name: "retreat", tagType: "auto"},
{name: "css", tagType: "auto"},
{name: "layout", tagType: "auto"},
{name: "challenge", tagType: "auto"},
{name: "full", tagType: "auto"},
{name: "stack", tagType: "auto"},
{name: "project", tagType: "auto"},
{name: "practice", tagType: "auto"},
{name: "game", tagType: "auto"},
{name: "of", tagType: "auto"},
{name: "gits", tagType: "auto"},
{name: "git", tagType: "auto"},
{name: "diagnostic", tagType: "auto"},
{name: "github", tagType: "auto"},
{name: "html", tagType: "auto"},
{name: "bootstrap", tagType: "auto"},
{name: "sass", tagType: "auto"},
{name: "http", tagType: "auto"},
{name: "study", tagType: "auto"},
{name: "jquery", tagType: "auto"},
{name: "ajax", tagType: "auto"},
{name: "delete", tagType: "auto"},
{name: "get", tagType: "auto"},
{name: "collection", tagType: "auto"},
{name: "element", tagType: "auto"},
{name: "patch", tagType: "auto"},
{name: "post", tagType: "auto"},
{name: "dom", tagType: "auto"},
{name: "js", tagType: "auto"},
{name: "array", tagType: "auto"},
{name: "iteration", tagType: "auto"},
{name: "methods", tagType: "auto"},
{name: "async", tagType: "auto"},
]

t_api = Tag.where("name = 'api'")
r_api = Repo.where("name = 'game-project-api'")
RepoTag.create({ repo_id: r_api[0].id, tag_id: t_api[0].id } )

t_api = Tag.where("name = 'css'")
r_api = Repo.where("name = 'html-css'")
RepoTag.create({ repo_id: r_api[0].id, tag_id: t_api[0].id } )
r_api = Repo.where("name = 'html-css-diagnostic'")
RepoTag.create({ repo_id: r_api[0].id, tag_id: t_api[0].id } )
r_api = Repo.where("name = 'html-css-layout'")
RepoTag.create({ repo_id: r_api[0].id, tag_id: t_api[0].id } )
