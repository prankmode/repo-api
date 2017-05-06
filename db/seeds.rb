Example.destroy_all
RepoTag.destroy_all
Repo.destroy_all
User.destroy_all


u = User.create({email: "erica", password: "erica", password_confirmation: "erica"})
u2 = User.create({email: "harry", password: "harry", password_confirmation: "harry"})



Repo.create! [
{name: "api-token-auth", github_user: "prankmode", full_url: "https://github.com/prankmode/api-token-auth", user_id: u.id  },
{name: "code-retreat", github_user: "prankmode", full_url: "https://github.com/prankmode/code-retreat" , user_id: u.id   },
{name: "css-layout-challenge", github_user: "prankmode", full_url: "https://github.com/prankmode/css-layout-challenge" , user_id: u.id   },
{name: "full-stack-project-practice", github_user: "prankmode", full_url: "https://github.com/prankmode/full-stack-project-practice" , user_id: u.id   },
{name: "game-of-gits", github_user: "prankmode", full_url: "https://github.com/prankmode/game-of-gits", user_id: u.id    },
{name: "game-project-api", github_user: "prankmode", full_url: "https://github.com/prankmode/game-project-api" , user_id: u.id   },
{name: "git", github_user: "prankmode", full_url: "https://github.com/prankmode/git", user_id: u.id   },
{name: "git-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/git-diagnostic", user_id: u.id    },
{name: "git-github", github_user: "prankmode", full_url: "https://github.com/prankmode/git-github", user_id: u.id    },
{name: "git-practice", github_user: "prankmode", full_url: "https://github.com/prankmode/git-practice" , user_id: u.id   },
{name: "html-css", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css" , user_id: u.id   },
{name: "html-css-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css-diagnostic", user_id: u.id    },
{name: "html-css-layout", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css-layout", user_id: u.id    },
{name: "html-css-layout-bootstrap-sass", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css-layout-bootstrap-sass", user_id: u.id    },
{name: "html-css-sass", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css-sass" , user_id: u.id   },
{name: "html-css-sass-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/html-css-sass-diagnostic", user_id: u.id    },
{name: "http-study", github_user: "prankmode", full_url: "https://github.com/prankmode/http-study" , user_id: u.id   },
{name: "jquery-ajax-delete", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-delete" , user_id: u.id   },
{name: "jquery-ajax-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-diagnostic" , user_id: u.id   },
{name: "jquery-ajax-get-collection", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-get-collection", user_id: u.id    },
{name: "jquery-ajax-get-element", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-get-element", user_id: u.id    },
{name: "jquery-ajax-patch", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-patch" , user_id: u.id   },
{name: "jquery-ajax-post", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-ajax-post" , user_id: u.id   },
{name: "jquery-dom", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-dom" , user_id: u.id   },
{name: "jquery-dom-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-dom-diagnostic", user_id: u.id    },
{name: "jquery-dom-study", github_user: "prankmode", full_url: "https://github.com/prankmode/jquery-dom-study" , user_id: u.id   },
{name: "js", github_user: "prankmode", full_url: "https://github.com/prankmode/js", user_id: u.id    },
{name: "js-array-iteration-methods", github_user: "prankmode", full_url: "https://github.com/prankmode/js-array-iteration-methods" , user_id: u.id   },
{name: "js-array-iteration-methods-diagnostic", github_user: "prankmode", full_url: "https://github.com/prankmode/js-array-iteration-methods-diagnostic" , user_id: u.id   },
{name: "js-async-study", github_user: "prankmode", full_url: "https://github.com/prankmode/js-async-study" , user_id: u.id   },
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
