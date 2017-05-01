require 'json'

file = File.read('prankmodeRepos.json')

repos = JSON.parse(file)

puts ("there are #{repos.count} repos")

open('seeds.rb', 'w') { |f|
  f.puts 'Repo.destroy_all'
  f.puts 'Tag.destroy_all'
  f.puts 'Repo.create! ['

  repos.each do |r|
    f.puts "{name: \"#{r['name']}\", github_user: \"#{r['owner']['login']}\", full_url: \"#{r['html_url']}\"   },"
  end

  f.puts ']'
}
