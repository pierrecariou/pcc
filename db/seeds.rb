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
User.destroy_all

puts 'Creating users...'
user = User.create!(email: 'test@test.test', password: 'azerty', first_name: 'Pierre', last_name: 'Cariou', pseudo: 'superdev75', age: 24, activity: 'dev')

puts 'Creating categories...'
category_ecologie = Category.create!(name: 'Ecologie')
category_politique = Category.create!(name: 'Politique')
category_economie = Category.create!(name: 'Economie')
category_numerique = Category.create!(name: 'Numérique')

puts 'creating sub_categories'
sub_category = SubCategory.create!(name: 'Energie', category: category_ecologie)
sub_category = SubCategory.create!(name: 'Climat', category: category_ecologie)
sub_category = SubCategory.create!(name: 'Biodiversité', category: category_ecologie)
sub_category = SubCategory.create!(name: 'Transition', category: category_ecologie)
sub_category = SubCategory.create!(name: 'Pollution', category: category_ecologie)
sub_category = SubCategory.create!(name: 'Agriculture', category: category_ecologie)

sub_category = SubCategory.create!(name: 'Finance', category: category_economie)
sub_category = SubCategory.create!(name: 'Business', category: category_economie)
sub_category = SubCategory.create!(name: 'Commerce International', category: category_economie)
sub_category = SubCategory.create!(name: 'Inégalités', category: category_economie)
sub_category = SubCategory.create!(name: 'Economie politique', category: category_economie)
sub_category = SubCategory.create!(name: 'Théorie', category: category_economie)

sub_category = SubCategory.create!(name: 'Politique Internationale', category: category_politique)
sub_category = SubCategory.create!(name: 'Union Européenne', category: category_politique)
sub_category = SubCategory.create!(name: 'Géopolitique', category: category_politique)
sub_category = SubCategory.create!(name: 'Vie politique', category: category_politique)
sub_category = SubCategory.create!(name: 'Réformes', category: category_politique)
sub_category = SubCategory.create!(name: 'Théorie', category: category_politique)

sub_category = SubCategory.create!(name: 'Intelligence Artificielle', category: category_numerique)
sub_category = SubCategory.create!(name: 'GAFA/BATX', category: category_numerique)
sub_category = SubCategory.create!(name: 'Startup', category: category_numerique)
sub_category = SubCategory.create!(name: 'Transhumanisme', category: category_numerique)
sub_category = SubCategory.create!(name: 'Technologie', category: category_numerique)
sub_category = SubCategory.create!(name: 'Futurologie', category: category_numerique)

puts 'Creating articles...'
article1 = Article.create!(
  URL: 'https://www.lemonde.fr/societe/article/2019/02/26/gilets-jaunes-le-conseil-de-l-europe-reclame-la-suspension-du-lbd_5428371_3224.html',
  category: category_economie,
  description: 'this is the description',
  upvotes: '3',
  user: user
)
article2 = Article.create!(URL: 'https://www.youtube.com/watch?v=tRl9_q2ytI8',
  category: category_politique,
  description: 'this is the 2nd description',
  upvotes: '4',
  user: user
)
article3 = Article.create!(URL: 'https://www.liberation.fr/depeches/2019/02/26/le-cardinal-australien-pell-numero-trois-du-vatican-reconnu-coupable-de-pedophilie_1711624',
  category: category_numerique,
  description: 'this is the 3rd description',
  upvotes: '5',
  user: user
)
article4 = Article.create!(URL: 'https://www.dailymotion.com/video/x7316va?playlist=x6agxl',
  category: category_ecologie,
  description: 'this is the 4th description',
  upvotes: '6',
  user: user
)

commentaire = Comment.new(user: user, article: article1, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(user: user, article: article2, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(user: user, article: article3, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(user: user, article: article4, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')



commentaire.save

puts 'Finished!'
