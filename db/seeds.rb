# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'Cleaning database.....'
# Comment.destroy_all
# Article.destroy_all
# User.destroy_all

puts 'Creating users...'
user = User.create!(email: 'test@test.test', password: 'azerty', first_name: 'Pierre', last_name: 'Cariou', pseudo: 'superdev75', age: 24, activity: 'dev')
user = User.create!(email: 'test2@test.test', password: 'azerty', first_name: 'Caroline', last_name: 'Petit', pseudo: '@Journaliste', age: 24, activity: 'dev')
user = User.create!(email: 'test3@test.test', password: 'azerty', first_name: 'Théodore', last_name: 'Brossollet', pseudo: 'monster', age: 24, activity: 'dev')
user = User.create!(email: 'test4@test.test', password: 'azerty', first_name: 'Hamza', last_name: 'Amor', pseudo: 'lécolo', age: 24, activity: 'dev')
user = User.create!(email: 'test5@test.test', password: 'azerty', first_name: 'Alexandre', last_name: 'Le Grand', pseudo: 'conquérant', age: 24, activity: 'dev')

puts 'Creating categories...'
category_top = Category.create!(name: 'Top')
category_ecologie = Category.create!(name: 'Ecologie')
category_politique = Category.create!(name: 'Politique')
category_economie = Category.create!(name: 'Economie')
category_numerique = Category.create!(name: 'Numérique')

puts 'creating sub_categories'
sub_category_energie = SubCategory.create!(name: 'Energie', category: category_ecologie)
sub_category_climat = SubCategory.create!(name: 'Climat', category: category_ecologie)
sub_category_biodiversite = SubCategory.create!(name: 'Biodiversité', category: category_ecologie)
sub_category_transition = SubCategory.create!(name: 'Transition', category: category_ecologie)
sub_category_pollution = SubCategory.create!(name: 'Pollution', category: category_ecologie)
sub_category_agriculture = SubCategory.create!(name: 'Agriculture', category: category_ecologie)

sub_category_finance = SubCategory.create!(name: 'Finance', category: category_economie)
sub_category_business = SubCategory.create!(name: 'Business', category: category_economie)
sub_category_commerce_international = SubCategory.create!(name: 'Commerce International', category: category_economie)
sub_category_inegalites = SubCategory.create!(name: 'Inégalités', category: category_economie)
sub_category_economie_politique = SubCategory.create!(name: 'Economie politique', category: category_economie)
sub_category_theorie = SubCategory.create!(name: 'Théories', category: category_economie)

sub_category_politique_internationale = SubCategory.create!(name: 'Politique Internationale', category: category_politique)
sub_category_union_europeenne = SubCategory.create!(name: 'Union Européenne', category: category_politique)
sub_category_geopolitique = SubCategory.create!(name: 'Géopolitique', category: category_politique)
sub_category_vie_politique = SubCategory.create!(name: 'Vie politique', category: category_politique)
sub_category_reformes = SubCategory.create!(name: 'Réformes', category: category_politique)
sub_category_theorie = SubCategory.create!(name: 'Théorie', category: category_politique)

sub_category_intelligence_artificielle = SubCategory.create!(name: 'Intelligence Artificielle', category: category_numerique)
sub_category_gafa = SubCategory.create!(name: 'GAFA/BATX', category: category_numerique)
sub_category_startup = SubCategory.create!(name: 'Startup', category: category_numerique)
sub_category_transhumanisme = SubCategory.create!(name: 'Transhumanisme', category: category_numerique)
sub_category_technologie = SubCategory.create!(name: 'Technologie', category: category_numerique)
sub_category_futurologie = SubCategory.create!(name: 'Futurologie', category: category_numerique)


# puts 'Creating articles...'
# article1 = Article.create!(
#   URL: 'https://www.lemonde.fr/societe/article/2019/02/26/gilets-jaunes-le-conseil-de-l-europe-reclame-la-suspension-du-lbd_5428371_3224.html',
#   category: category_economie,
#   sub_categories: [sub_category_business, sub_category_inegalites],
#   description: 'this is the description',
#   upvotes: '3',
#   user: user
# )
# article1 = Article.create!(
#   URL: 'https://www.lemonde.fr/economie/article/2019/02/27/automobile-alliances-en-serie-pour-la-voiture-du-futur_5428894_3234.html',
#   category: category_economie,
#   sub_categories: [sub_category_commerce_international],
#   description: 'this is the description',
#   upvotes: '3',
#   user: user
# )
# article2 = Article.create!(URL: 'https://www.youtube.com/watch?v=tRl9_q2ytI8',
#   category: category_politique,
#   sub_categories: [sub_category_geopolitique],
#   description: 'this is the 2nd description',
#   upvotes: '4',
#   user: user
# )
# article3 = Article.create!(URL: 'https://www.liberation.fr/france/2019/02/27/municipales-a-paris-lrem-teste-griveaux-et-froisse-les-autres-candidats_1711892',
#   category: category_politique,
#   sub_categories: [sub_category_reformes],
#   description: 'this is the 2nd description',
#   upvotes: '4',
#   user: user
# )
# article4 = Article.create!(URL: 'https://www.liberation.fr/depeches/2019/02/26/le-cardinal-australien-pell-numero-trois-du-vatican-reconnu-coupable-de-pedophilie_1711624',
#   category: category_numerique,
#   sub_categories: [sub_category_transhumanisme],
#   description: 'this is the 3rd description',
#   upvotes: '5',
#   user: user
# )
# article5 = Article.create!(URL: 'https://www.lemonde.fr/pixels/article/2015/02/19/snapchat-serait-valorisee-entre-16-et-19-milliards-de-dollars_4579139_4408996.html',
#   category: category_numerique,
#   sub_categories: [sub_category_futurologie],
#   description: 'this is the 3rd description',
#   upvotes: '5',
#   user: user
# )
# article6 = Article.create!(URL: 'https://www.dailymotion.com/video/x7316va?playlist=x6agxl',
#   category: category_ecologie,
#   sub_categories: [sub_category_pollution],
#   description: 'this is the 4th description',
#   upvotes: '6',
#   user: user
# )
# article7 = Article.create!(URL: 'https://www.lemonde.fr/m-perso/article/2019/02/22/l-avion-plaisir-coupable-de-l-ecolo-voyageur_5426851_4497916.html',
#   category: category_ecologie,
#   sub_categories: [sub_category_climat],
#   description: 'this is the 4th description',
#   upvotes: '6',
#   user: user
# )

commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')




commentaire.save

puts 'Finished!'
