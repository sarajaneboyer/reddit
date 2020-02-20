# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# sub_x = Sub.create(name: 'name')
# sub_x.topics.create(name: 'name', body: 'body') a way to create one sub with one topic

10.times do 
  name = Faker::Artist.name
  sub = Sub.create(name: name)
  3.times do |j|
    sub.topics.create(name: "#{name} topic index: #{j}",  body:'body' ) 
  end
end

