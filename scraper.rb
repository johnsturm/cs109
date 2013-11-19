
require 'kickscraper'

Kickscraper.configure do |config|
  config.email = 'aarondtucker@gmail.com'
  config.password='kappasauce'
end

client = Kickscraper.client
categories = client.categories

projects = []

categories.each { |cat|
  puts cat.name
  projects.concat(cat.projects) if cat.parent_id == categories[0].parent_id
}
puts projects.length


"""projects = []

projects.concat(client.recently_launched_projects)

while client.more_projects_available? do
  projects.concat(client.load_more_projects)
  puts projects.length
end

puts projects.length"""

