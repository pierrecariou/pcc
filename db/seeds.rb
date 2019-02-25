# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database.....'
Article.destroy_all
Comment.destroy_all

puts 'Creating articles...'

Article.create(URL: 'http://www.test.com', category: 'économie', description: 'this is the description', id: 1, upvotes: '3', user_id: 1)
Article.create(URL: 'http://www.test2.com', category: 'politique', description: 'this is the 2nd description', id: 2, upvotes: '4', user_id: 1)
Article.create(URL: 'http://www.test3.com', category: 'numérique', description: 'this is the 3rd description', id: 3, upvotes: '5', user_id: 1)
Article.create(URL: 'http://www.test4.com', category: 'écologie', description: 'this is the 4th description', id: 4, upvotes: '6', user_id: 1)

commentaire = Comment.new(id: 1, user_id: 1, article_id: 1, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(id: 2, user_id: 1, article_id: 1, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(id: 3, user_id: 1, article_id: 1, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(id: 4, user_id: 1, article_id: 1, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')



commentaire.save

puts 'Finished!'
