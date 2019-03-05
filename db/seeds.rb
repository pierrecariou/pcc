# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'Cleaning database.....'

def scrap(url, article)
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  article.title = html_doc.css('html > head > title').text
  article.site_description = html_doc.xpath('/html/head/meta[@name="description"]/@content').to_s
  head_image = html_doc.xpath('/html/head/meta[@property="og:image"]/@content').to_s
  first_body_image = html_doc.search('img').first.attribute('src').value if !html_doc.search('img').first.attribute('src').nil?
  image = head_image.empty? ? first_body_image : head_image
  article.image = image
  article.source = URI.parse(url).host
end

Comment.destroy_all
Article.destroy_all
User.destroy_all

puts 'Creating users...'

user1 = User.create!(email: 'test@test.test', password: 'azerty', first_name: 'Thomas', last_name: 'Piketty', pseudo: 'T-Pikkety', age: 44, activity: 'Economiste', photo_url: 'Piketty.jpg')
user2 = User.create!(email: 'test2@test.test', password: 'azerty', first_name: 'Noam', last_name: 'Chomsky', pseudo: 'N-Chomasky', age: 74, activity: 'Chercheur', photo_url: 'chomsky.png')
user3 = User.create!(email: 'test3@test.test', password: 'azerty', first_name: 'Frederic', last_name: 'Rouvillois', pseudo: 'F-Rouvillois', age: 54, activity: 'Professeur', photo_url: 'Rouvillois.jpg')
user4 = User.create!(email: 'test4@test.test', password: 'azerty', first_name: 'Hamza', last_name: 'Amor', pseudo: 'H-Amor', age: 25, activity: 'Etudiant', photo_url: 'hamza.png')
user5 = User.create!(email: 'test5@test.test', password: 'azerty', first_name: 'Julia', last_name: 'Brouard', pseudo: 'J-Brouard', age: 24, activity: 'Etudiante', photo_url: 'julia.jpeg')
user6 = User.create!(email: 'test6@test.test', password: 'azerty', first_name: 'Emily', last_name: 'Betham', pseudo: 'E-Betham', age: 23, activity: 'Etudiante', photo_url: 'emily.jpeg')
user7 = User.create!(email: 'test7@test.test', password: 'azerty', first_name: 'Germain', last_name: 'Loret', pseudo: 'G-loret', age: 32, activity: 'Devellopeur', photo_url: 'germain.jpg')
user8 = User.create!(email: 'test8@test.test', password: 'azerty', first_name: 'Luc', last_name: 'Brossollet', pseudo: 'L-Brossollet', age: 58, activity: 'Avocat', photo_url: 'Brossollet.jpg')
user9 = User.create!(email: 'test9@test.test', password: 'azerty', first_name: 'Michel', last_name: 'Cymes', pseudo: 'M-Cymes', age: 44, activity: 'Medecin', photo_url: 'Cymes.jpg')
user10 = User.create!(email: 'test10@test.test', password: 'azerty', first_name: 'Loïc', last_name: 'Massy', pseudo: 'L-Massy', age: 24, activity: 'Agriculteur', photo_url: 'loic.jpg')


puts 'Creating categories...'
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


puts 'Creating articles...'

article1 = Article.new(
   URL: 'https://www.theatlantic.com/amp/article/542502/',
   category: category_numerique,
   sub_categories: [ sub_category_gafa ],
   description: 'Un long article sur les différents impacts de Facebook sur  le fonctionnement de la démocratie américaine.',
   upvotes: 36,
   user: user7
 )
scrap(article1.URL, article1)
article1.save

article2 = Article.new(
   URL: 'https://www.theatlantic.com/ideas/archive/2018/05/the-undemocratic-spread-of-big-brother/560999/?fbclid=IwAR28xVddaCpW7Kjpv4PNYgi5uKNQ2pAJQC9c4_GC9Grlfl7XOv_eqlkBIL8',
   category: category_numerique,
   sub_categories: [ sub_category_gafa ],
   description: 'Quand Amazon vend une solution de reconnaissance faciale aux autorités américaines qui les implantent sans demander le consentement des populations locales.',
   upvotes: 23,
   user: user4
 )
scrap(article2.URL, article2)
article2.save

article3 = Article.new(
   URL: 'https://www.forbes.fr/entrepreneurs/xavier-niel-faire-de-paris-la-capitale-mondiale-des-start-up/?fbclid=IwAR0MOmZhdtIxfIH36KYelPlMJtH694W2KRhmeMy5RxQXNIWwow5jiril1sE',
   category: category_numerique,
   sub_categories: [ sub_category_startup ],
   description: 'Plaidoyer optimiste de Xavier Niel quand aux possibilités offert par le numérique à la France.',
   upvotes: 39,
   user: user1
 )
scrap(article3.URL, article3)
article3.save

article4 = Article.new(
   URL: 'https://blog.serenacapital.com/is-your-company-worth-5-or-22m-both-40e2ef8f3fb1',
   category: category_numerique,
   sub_categories: [ sub_category_startup ],
   description: 'Étude ludique et pragmatique sur les principaux raisonnements de valorisation utilisés par les VC. #venturecapital #startup #levéedefonds',
   upvotes: 7,
   user: user3
 )
scrap(article4.URL, article4)
article4.save

article5 = Article.new(
   URL: 'https://www.monde-diplomatique.fr/2013/11/MALET/49762',
   category: category_numerique,
   sub_categories: [ sub_category_gafa ],
   description: "Retour sur les conditions de travaille dans les entrepôts d'Amazon.",
   upvotes: 12,
   user: user8
 )
scrap(article5.URL, article5)
article5.save

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

# commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
# commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
# commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')
# commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2019-02-25')




# commentaire.save

puts 'Finished!'
