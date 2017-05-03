# frozen_string_literal: true

require 'json'

file = File.read('prankmodeRepos.json')

repos = JSON.parse(file)

puts "there are #{repos.count} repos"

open('seeds.rb', 'w') do |f|
  # seeds for the repo table
  f.puts 'Repo.destroy_all'
  f.puts 'Repo.create! ['

  repos.each do |r|
    f.puts "{name: \"#{r['name']}\", github_user: \"#{r['owner']['login']}\", full_url: \"#{r['html_url']}\"   },"
  end

  f.puts ']'

  # seeds for the tag table
  # generate tags by splitting up the tokens in the
  # names of the repository

  tags = []
  repos.each do |r|
    tokens = r['name'].split('-')
    tags.concat(tokens)
  end

  # remove duplicates
  tags.uniq!

  f.puts 'Tag.destroy_all'
  f.puts 'Tag.create! ['

  tags.each do |t|
    f.puts "{name: \"#{t}\", tagType: \"auto\"},"
  end
  f.puts ']'
end
