# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Element.create([
  { name: 'Element 1', description: 'first element' },
  { name: 'Element 2', description: 'second element' },
  { name: 'Element 3', description: 'third element' },
  { name: 'Element 4', description: 'fourth element' },
])
