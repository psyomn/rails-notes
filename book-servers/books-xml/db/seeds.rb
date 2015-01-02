# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create!(
   name: 'The biography of someone we do not care about' ,
   author: 'Someone Potato',
   isbn: '123103283IIA1298',
   is_recommended: true,
   price: 123,
   short_desc: 'This is a book that is recommended by many gentlemen and scholars')

Book.create!(
   name: 'The answers to all problems volume 13' ,
   author: 'Martin Ni',
   isbn: '1231MARTINNI12312',
   is_recommended: false,
   price: 55,
   short_desc: 'Any questions you have ever had about the universe are answered here')

Book.create!(
  name: 'How to not get fired',
  author: 'Jenny Jen',
  isbn: '123123JENJEN123123123',
  is_recommended: false,
  price: 88,
  short_desc: 'Biggest bestest bookest everest')
