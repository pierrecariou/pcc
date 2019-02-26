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

puts 'Creating users...'
User.create!(email: 'test@test.test', password: 'testtest')

puts 'Creating articles...'
Article.create!(URL: 'https://www.lemonde.fr/societe/article/2019/02/26/gilets-jaunes-le-conseil-de-l-europe-reclame-la-suspension-du-lbd_5428371_3224.html', category: 'économie', description: 'this is the description', upvotes: '3', user_id: 1)
Article.create!(URL: 'https://www.youtube.com/watch?v=tRl9_q2ytI8', category: 'politique', description: 'this is the 2nd description', upvotes: '4', user_id: 1)
Article.create!(URL: 'https://www.liberation.fr/depeches/2019/02/26/le-cardinal-australien-pell-numero-trois-du-vatican-reconnu-coupable-de-pedophilie_1711624', category: 'numérique', description: 'this is the 3rd description', upvotes: '5', user_id: 1)
Article.create!(URL: 'https://www.dailymotion.com/video/x7316va?playlist=x6agxl', category: 'écologie', description: 'this is the 4th description', upvotes: '6', user_id: 1)

commentaire = Comment.new(id: 1, user_id: 1, article_id: 1, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(id: 2, user_id: 1, article_id: 1, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(id: 3, user_id: 1, article_id: 1, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(id: 4, user_id: 1, article_id: 1, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')



commentaire.save

puts 'Finished!'
