# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create!(
  name: "The amazing story of Potato",
  author: "Potatotron",
  isbn: "11831POTATO1231",
  price: 121.12)

Book.create!(
  name: "The not so amazing adventures of superdull",
  author: "Boring Dude",
  isbn: "123112BORE12",
  price: 55.5)

Book.create!(
  name: "Bookface the Bookeater",
  author: "My face is a book",
  isbn: "111BOOK!111")
