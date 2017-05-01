# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
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
{name: "js-async-study", github_user: "prankmode", full_url: "https://github.com/prankmode/js-async-study"   }
]
