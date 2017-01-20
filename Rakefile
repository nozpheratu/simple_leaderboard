# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

task 'foo' do
  system <<-EOH
      curl 'localhost:3000/v1/results' \
      -H 'Host: localhost:3000' \
      -H 'Accept: application/vnd.api+json' \
      -H 'Content-Type: application/vnd.api+json' \
      -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.YXSHSsxJbeqUIzouubWY4mneXkr8CLTT9W7GESZG9GA' \
      -d '{"data":{"type":"results","attributes":{"name":"#{Faker::Name.name}","email":"#{Faker::Internet.email}", "score": #{rand(1..100)}}}}'
  EOH
end
