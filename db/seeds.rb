# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database.....'

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

 #Comment.destroy_all
 #Article.destroy_all
 #User.destroy_all
 #Category.destroy_all
 #SubCategory.destroy_all
 #SubComment.destroy_all


puts 'Creating users...'

user1 = User.create!(email: 'dede@gmail.com', password: 'loulou39', first_name: 'Théo', last_name: 'Baptiste', pseudo: 'président', age: 24, activity: 'founder')
user2 = User.create!(email: 'fefwfwf@outlook.fr', password: 'password!', first_name: 'Pierre', last_name: 'Carre', pseudo: 'STesich', age: 24, activity: 'Developper')
user3 = User.create!(email: 'grwgrwg@gmail.com', password: 'sendinblue', first_name: 'Manu', last_name: 'Picard', pseudo: 'LEshark', age: 40, activity: 'Compositeur')
user4 = User.create!(email: 'fejifjwifj@free.fr', password: '6H4sk46p', first_name: 'Pierre', last_name: 'Gelin')
user5 = User.create!(email: 'efewfwe@hotmail.fr', password: 'kp4knAgx', first_name: 'Eugéne', last_name: 'Garnier')
user6 = User.create!(email: 'fewefwefewfd@gmail.com', password: 'Iambob', first_name: 'Bob', last_name: 'Clark')
user7 = User.create!(email: 'mfemfmwemf@hotmail.fr', password: '4EhMgx3W', first_name: 'Morgane', last_name: 'Millour')
user8 = User.create!(email: 'fnewjfewfb@hotmail.fr', password: 'oB6ADdk9', first_name: 'Gustave', last_name: 'Bignan')
user9 = User.create!(email: 'ffbewufbew@hotmail.fr', password: 'lQw3Pl2a', first_name: 'Louis Michel', last_name: 'Liot')
user10 = User.create!(email: 'fewnjefibwefbeh@gmail.com', password: 'eQmqmW93', first_name: 'Remi', last_name: 'Delacourt')

# User.create!(email: 'MBF@MBF-AVOCATS.COM', password: 'hfv87jfez', first_name: 'Maryanne', last_name: 'Bine-Fisher')
# User.create!(email: 'sim.mertens@gmail.com', password: 'Q38nv9cOR', first_name: 'Simons', last_name: 'Mertens')
# User.create!(email: 'claire.edith.demont@gmail.com', password: 'MuAl26C7n', first_name: 'Claire', last_name: 'Demont')
# User.create!(email: 'garance.ripart@gmail.com', password: '7FltrK2P8', first_name: 'Garance', last_name: 'Ripart')
# User.create!(email: 'cecile.honigman@gmail.com', password: '2AUdH4b0q', first_name: 'Cecile ', last_name: 'Honigman')
# User.create!(email: 'maelysbassilekin@gmail.com', password: 'B5u2xLsP6', first_name: 'Maélys', last_name: ' Basilékyn')
# User.create!(email: 'ema.hazan@gmail.com', password: 'It3j13qBI', first_name: 'Ema', last_name: 'Hazan')
# User.create!(email: 'auguste.mary@yahoo.fr', password: 'Um0V9Fge8', first_name: 'Auguste ', last_name: 'Mary')
# User.create!(email: 'guillaume.bj.lion@gmail.com', password: '40RCyXnj2', first_name: 'Guillaume ', last_name: 'Lion')
# User.create!(email: 'nicolas.fleischmann@ehl.ch', password: 'HwbU849Tw', first_name: 'Nicolas ', last_name: 'Flesishman')
# User.create!(email: 'P.millour@gmail.com', password: '4PcncH5G7', first_name: 'Pierre ', last_name: 'Millour')
# User.create!(email: 'hannebelle@telecom-paristech.fr', password: '2WB3wcLc9', first_name: 'Stan', last_name: 'Hannebelle')
# User.create!(email: 'Caroline.survillebarland@gmail.com', password: '2Ys7TQq4x', first_name: 'Caroline ', last_name: 'Surville')
# User.create!(email: 'Samy.sidahmed@med.uni-Heidelberg.de', password: 'HLoH2p5r0', first_name: 'Samy', last_name: 'Sid')
# User.create!(email: 'fallpapeamadou94@gmail.com', password: 'KaIr0X96t', first_name: 'Pape', last_name: ' Fall')
# User.create!(email: 'sarahsquercioni@hotmail.fr', password: '85IQvf9oA', first_name: 'Sarah ', last_name: 'Squercionni')
# User.create!(email: 'lanneremi@gmail.com', password: 'RYrj3tQ44', first_name: 'Remi', last_name: 'Lanne')
# User.create!(email: 'valdeprez@hotmail.com', password: '1oAj64OxE', first_name: 'Valentin', last_name: 'Deprez')
# User.create!(email: 'Jerome.vobmann2@gmail.com', password: '1gwZL8X1o', first_name: 'Jerome', last_name: 'Vobmann')
# User.create!(email: 'brossolletvictor@gmail.com', password: 'q5fOYS26k', first_name: 'Victor ', last_name: 'Brossollet')
# User.create!(email: 'Flahault.anatole@gmail.com', password: 'g1TbmN68F', first_name: 'Anatole', last_name: 'Flahaut')
# User.create!(email: 'netzer.nathan@wanadoo.fr', password: 'j52HuAhO4', first_name: 'Nathan', last_name: 'Netzwerk')
# User.create!(email: 'Gustave.bignon@ehl.ch', password: 'T1qIg6G5l', first_name: 'Gustave', last_name: 'Bignon')
# User.create!(email: 'octave.bernard@gmail.com', password: 'ejb2SI49X', first_name: 'Octave', last_name: 'Bernard')
# User.create!(email: 'paul.dumaitre@yahoo.fr', password: 'ze3QZQm45', first_name: 'Paul', last_name: 'Dumaitre')
# User.create!(email: 'indianapinsard@yahoo.fr', password: 'Ue0X0nU9f', first_name: 'Indiana', last_name: 'Pinsard')
# User.create!(email: 'jeromedahan@aol.com', password: 'u8iL5Rp9O', first_name: 'Jerome', last_name: 'Dahan')
# User.create!(email: 'guig.pujol@gmail.com', password: '42o4yLUwU', first_name: 'Guillaume ', last_name: 'Pujol')
# User.create!(email: 'samuel.fidaly@gmail.com', password: 'x7eWB2q6J', first_name: 'Samuel', last_name: 'Fidaly')
# User.create!(email: 'flavien.gaschet@edhec.com', password: 'L8O5ygKz6', first_name: 'Flavien', last_name: 'Gashet')
# User.create!(email: 'claire.joly@mcbg-conseil.fr', password: '77JKP3zdq', first_name: 'Claire', last_name: 'Joly')
# User.create!(email: 'gsevean@gmail.com', password: 'LMHbj5w08', first_name: 'Guillaume', last_name: 'Sevean')
# User.create!(email: 'ines.depuyf@gmail.com', password: 'jWGU5v5e7', first_name: 'Ines', last_name: 'Depuyfontaine')
# User.create!(email: 'liot.mathilde@gmail.com', password: 'Ya979fVbU', first_name: 'Mathilde', last_name: 'Liot')
# User.create!(email: 'vincentdelcourt@hotmail.fr', password: 'SNm8b5R5o', first_name: 'Vincent', last_name: 'Delcourt')
# User.create!(email: 'Thibault.geoffroy@sciencespo.fr', password: '8BzS3I0ca', first_name: 'Thibault', last_name: 'Constant')
# User.create!(email: 'quentin@selle.dev', password: 't7RC6Xol4', first_name: 'Quentin', last_name: 'Selle')
# User.create!(email: 'ryme111@hotmail.com', password: '4Vjxz7B7M', first_name: 'Ryme', last_name: 'Fakroun')
# User.create!(email: 'matthieumontagne@gmail.com', password: 'Eqps3B6A9', first_name: 'Matthieu', last_name: 'Montagne')
# User.create!(email: 'ccoulanges@gmail.com', password: '8XgG2Ldl2', first_name: 'Charles', last_name: 'Coulanges')
# User.create!(email: 'alice.jeanne@audencia.com', password: '8Rz6A0Rbc', first_name: 'Alice', last_name: 'Jeanne')
# User.create!(email: 'baptiste-martin@edu.em-lyon.com', password: '2D8Qlo9Ae', first_name: 'Baptise', last_name: 'Martin')
# User.create!(email: 'jeanne.lepoutre@penninghen.fr', password: 'Nso914eUK', first_name: 'Jeanne', last_name: 'Lepoutre')
# User.create!(email: 'grace.mehrabe@gmail.com', password: '5CU9Cy0vb', first_name: 'Grace', last_name: 'Mia')
# User.create!(email: 'Leblancigor@gmail.com', password: 'qKPy1n60W', first_name: 'Igor', last_name: 'Leblanc')
# User.create!(email: 'augustindeschamps@gmail.com', password: 'I6yRr20hE', first_name: 'Augustin', last_name: 'Deschamps')
# User.create!(email: 'Adrien.dormesson@gmail.com', password: '128NmCxZa', first_name: 'Adrien', last_name: 'Dormesson')
# User.create!(email: 'vhoet@audencia.com', password: 'QGaHx401j', first_name: 'Victor', last_name: 'Hoet')
# User.create!(email: 'Manonjourdan@hotmail.fr', password: 'YrEGt8u53', first_name: 'Manon', last_name: 'Jourdain')
# User.create!(email: 'youssef.elkouch@gmail.com', password: 'cj735RDCo', first_name: 'Youssef', last_name: 'El kouch')
# User.create!(email: 'charlotteguilmard@yahoo.fr', password: 'r9QreOS29', first_name: 'Charlotte', last_name: 'Guillmard')
# User.create!(email: 'emettoudi@hotmail.fr', password: 'wBi2X8q0B', first_name: 'Edgar', last_name: 'Mettoudi')
# User.create!(email: 'glaurent@yahoo.fr', password: 'v5M6pk3DM', first_name: 'Gustave ', last_name: 'Laurent')
# User.create!(email: 'felix.bleton@gmail.com', password: '08aLsL2lO', first_name: 'Felix', last_name: 'Bleton')
# User.create!(email: 'alexandre.zachary@estaca.eu', password: 'Ve1Yd1H8t', first_name: 'Alexandre', last_name: 'Zac')
# User.create!(email: 'fergusindall@yahoo.fr', password: 'YsxIs970H', first_name: 'Fergus', last_name: 'Sindall')
# User.create!(email: 'guillaume.wigniolle@student.ecp.fr', password: '0apP3QdV8', first_name: 'Guillaume ', last_name: 'Wignolle')
# User.create!(email: 'valentine.giraudat@gmail.com', password: '56OgFnMl1', first_name: 'Valentine', last_name: 'Giraudat')
# User.create!(email: 'heloise.nogues@gmail.com', password: 'LY37L9jeg', first_name: 'Heloïse', last_name: 'Nogues')
# User.create!(email: 'alixguillemain@gmail.com', password: 'Nb5R13Laz', first_name: 'Alix', last_name: 'Guillemain')
# User.create!(email: 'tristandelaselle@hotmail.com', password: 'TBn1yg81K', first_name: 'Tristan', last_name: 'de La Selle')
# User.create!(email: 'Jebabli-jasser@outlook.com', password: 'ytQ1W80rZ', first_name: 'Jasser', last_name: 'Jebali')
# User.create!(email: 'jadazzam@outlook.com', password: '55pL3RHkd', first_name: 'Jad', last_name: 'Azzam')
# User.create!(email: 'messanamegan@gmail.com', password: 'Ly46h7TBg', first_name: 'Eric', last_name: 'Amegan')
# User.create!(email: 'marie.rocchisani@lateliereclips.fr', password: '7Wf8Y6Zpi', first_name: 'Marie', last_name: 'Rocchisani')
# User.create!(email: 'omartret@50partners.fr', password: '0iC7gp5XJ', first_name: 'Olivier', last_name: 'Martret')
# User.create!(email: 'sunny@sunfox.org', password: 'x056PKrCv', first_name: 'Sunny', last_name: 'Rippert')
# User.create!(email: 'savariaux.quentin@gmail.com', password: 'bk49SP8hC', first_name: 'Quentin', last_name: 'Savarieux')
# User.create!(email: 'lyndaneuf@hotmail.fr', password: '5y76raCBN', first_name: 'Lynda', last_name: 'Le tallec')
# User.create!(email: 'charlesbabinet@gmail.com', password: '6ssB4R9xZ', first_name: 'Charles', last_name: 'Babinet')
# User.create!(email: 'steffan.loic@gmail.com', password: '6c4RCj9Na', first_name: 'Loic', last_name: 'Steffan')
# User.create!(email: 'liloolett@yahoo.fr', password: 'cHE424Yhy', first_name: 'Leslie', last_name: 'Géalagéas')
# User.create!(email: 'Jonathankleinpeter@gmail.com', password: 'Q8bDSld42', first_name: 'Jonathan', last_name: 'Kleinpeter')
# User.create!(email: 'paumierpierrep@gmail.com', password: 'G46NtC5dl', first_name: 'Pierre', last_name: 'Paumier')
# User.create!(email: 'germain.loret@gmail.com', password: 'vWI5v5rJ7', first_name: 'Germain', last_name: 'Loret')
# User.create!(email: 'pgs.charlotte@gmail.com', password: 'pG22Mjb7A', first_name: 'Charlotte', last_name: 'Pagès')
# User.create!(email: 'pderoux@qualiteservice.fr', password: '4X3m6KRpw', first_name: 'Phillipe', last_name: 'de Roux')
# User.create!(email: 'Charlotteisrichard@gmail.com', password: 'keXQXx531', first_name: 'Charlotte', last_name: 'Richard')
# User.create!(email: 'karinepatte@cap-sr.com', password: 'uNz3TR3n6', first_name: 'Karine', last_name: 'Patte')
# User.create!(email: 'rpasserieux@refondation.fr', password: '9e1ty5BRJ', first_name: 'Regis', last_name: 'Paserieux')
# User.create!(email: 'david.thorens@gmail.com', password: 'vHm4nW12W', first_name: 'David', last_name: 'Thorens')
# User.create!(email: 'Maxime.paradis7@gmail.com', password: 'y0JVh6J5g', first_name: 'Maxime', last_name: 'Paradis')
# User.create!(email: 'yemsel@civil-impact.com', password: 'oPYs18q5R', first_name: 'Yemsel', last_name: 'Bougherara')
# User.create!(email: 'luc.brossollet@abavocats.com', password: '14BXr1dUp', first_name: 'Luc', last_name: 'Brossollet')
# User.create!(email: 'damien.milon@gmail.com', password: '6Al97FmnP', first_name: 'Damien', last_name: 'Milon')
# User.create!(email: 'djamila.hammoudi@hesam.eu', password: 'ZPu63rb6T', first_name: 'Djamilla', last_name: 'Hammoudi')
# User.create!(email: 'Matthieu.schneuwly@gmail.com', password: 'CMw67mtW8', first_name: 'Matthieu', last_name: 'Schneuly')
# User.create!(email: 'mathilde.denoel@yahoo.fr', password: 'Jiy5l7W9T', first_name: 'Mathilde', last_name: 'Denoel')
# User.create!(email: 'Camille.beraud@orange.fr', password: '5v29WDnYv', first_name: 'Camille', last_name: 'Beraud')
# User.create!(email: 'hbelloy@free.fr', password: 'pS6AFl39m', first_name: 'Henry', last_name: 'Belloy')
# User.create!(email: 'Osabatier@wproject.fr', password: '1Nxz4O1Zg', first_name: 'Olivier', last_name: 'Sabatier')
# User.create!(email: 'kiripilipo@gmail.com', password: 'gO3Q4m5pJ', first_name: 'Gregoire', last_name: 'Quartier')
# User.create!(email: 'MJ.bernard@em-lyon.com', password: 'Gv7o44CJv', first_name: 'Marie', last_name: 'José Bernard')
# User.create!(email: 'louis@dooit.fr', password: 'n6Jb7rGW5', first_name: 'Louis', last_name: 'Priol')
# User.create!(email: 'prisca@civil-impact.com', password: 'OE3N0dtr3', first_name: 'Priscia', last_name: 'Thevenot')
# User.create!(email: 'Olivier.sanch@kisskissbankbank.com', password: 'fre8gtg7E', first_name: 'Olivier', last_name: 'Sanch')
# User.create!(email: 'quendolo.louis09@gmail.com', password: 'fze7bh98G', first_name: 'Louis', last_name: 'Quendolo')
# User.create!(email: 'antoinemalye@hotmail.fr', password: '47hgvpm56', first_name: 'Antoine', last_name: 'Malye')
# User.create!(email: 'mayzoff@gmail.com', password: 'gpvgpv01', first_name: 'Maybelline', last_name: 'Skvortzoff')


# puts 'Creating categories...'
# category_ecologie = Category.create!(name: 'Ecologie')
# category_politique = Category.create!(name: 'Politique')
# category_economie = Category.create!(name: 'Economie')
# category_numerique = Category.create!(name: 'Numérique')
# category_humanites = Category.create!(name: 'Humanités')

# puts 'creating sub_categories'
# sub_category_energie = SubCategory.create!(name: 'Energie', category: category_ecologie)
# sub_category_climat = SubCategory.create!(name: 'Climat', category: category_ecologie)
# sub_category_biodiversite = SubCategory.create!(name: 'Biodiversité', category: category_ecologie)
# sub_category_transition = SubCategory.create!(name: 'Transition', category: category_ecologie)
# sub_category_pollution = SubCategory.create!(name: 'Pollution', category: category_ecologie)
# sub_category_agriculture = SubCategory.create!(name: 'Agriculture', category: category_ecologie)

# sub_category_finance = SubCategory.create!(name: 'Finance', category: category_economie)
# sub_category_business = SubCategory.create!(name: 'Business', category: category_economie)
# sub_category_commerce_international = SubCategory.create!(name: 'Commerce International', category: category_economie)
# sub_category_inegalites = SubCategory.create!(name: 'Rapports sociaux', category: category_economie)
# sub_category_economie_politique = SubCategory.create!(name: 'Economie politique', category: category_economie)
# sub_category_theorie = SubCategory.create!(name: 'Théories', category: category_economie)

# sub_category_politique_internationale = SubCategory.create!(name: 'Politique Internationale', category: category_politique)
# sub_category_union_europeenne = SubCategory.create!(name: 'Union Européenne', category: category_politique)
# sub_category_geopolitique = SubCategory.create!(name: 'Géopolitique', category: category_politique)
# sub_category_vie_politique = SubCategory.create!(name: 'Vie politique', category: category_politique)
# sub_category_reformes = SubCategory.create!(name: 'Réformes', category: category_politique)
# sub_category_theorie = SubCategory.create!(name: 'Théorie', category: category_politique)

# sub_category_intelligence_artificielle = SubCategory.create!(name: 'Intelligence Artificielle', category: category_numerique)
# sub_category_gafa = SubCategory.create!(name: 'GAFA/BATX', category: category_numerique)
# sub_category_startup = SubCategory.create!(name: 'Startup', category: category_numerique)
# sub_category_transhumanisme = SubCategory.create!(name: 'Transhumanisme', category: category_numerique)
# sub_category_technologie = SubCategory.create!(name: 'Technologie', category: category_numerique)
# sub_category_futurologie = SubCategory.create!(name: 'Futurologie', category: category_numerique)

# sub_category_philosophie = SubCategory.create!(name: 'Philosophie', category: category_humanites)
# sub_category_histoire = SubCategory.create!(name: 'Histoire', category: category_humanites)
# sub_category_art = SubCategory.create!(name: 'Art', category: category_humanites)
# sub_category_societe = SubCategory.create!(name: 'Société', category: category_humanites)
# sub_category_psychologie = SubCategory.create!(name: 'Psychologie', category: category_humanites)
# sub_category_science = SubCategory.create!(name: 'Science', category: category_humanites)

 puts 'Creating articles...'

article1 = Article.new(
    URL: 'https://www.theatlantic.com/amp/article/542502/',
    category: category_numerique,
    sub_categories: [ sub_category_gafa ],
    description: 'Un long article sur les différents impacts de Facebook sur  le fonctionnement de la démocratie américaine.',
    upvotes: 36,
    user: user7,
    date: "02 mars 2021",
    precise_date: -20.days.from_now
  )
 scrap(article1.URL, article1)
 article1.save

 article2 = Article.new(
    URL: 'https://www.theatlantic.com/ideas/archive/2021/05/the-undemocratic-spread-of-big-brother/560999/?fbclid=IwAR28xVddaCpW7Kjpv4PNYgi5uKNQ2pAJQC9c4_GC9Grlfl7XOv_eqlkBIL8',
    category: category_numerique,
    sub_categories: [ sub_category_gafa ],
    description: 'Quand Amazon vend une solution de reconnaissance faciale aux autorités américaines qui les implantent sans demander le consentement des populations locales.',
    upvotes: 23,
    user: user4,
    date: "09 février 2021",
    precise_date: -50.days.from_now
  )
 scrap(article2.URL, article2)
 article2.save

 article3 = Article.new(
    URL: 'https://www.forbes.fr/entrepreneurs/xavier-niel-faire-de-paris-la-capitale-mondiale-des-start-up/?fbclid=IwAR0MOmZhdtIxfIH36KYelPlMJtH694W2KRhmeMy5RxQXNIWwow5jiril1sE',
    category: category_numerique,
    sub_categories: [ sub_category_startup ],
    description: 'Plaidoyer optimiste de Xavier Niel quant aux possibilités offertent par le numérique à la France.',
    upvotes: 39,
    user: user1,
    date: "12 mars 2021",
    precise_date: -20.days.from_now
  )
 scrap(article3.URL, article3)
 article3.save

 article4 = Article.new(
    URL: 'https://blog.serenacapital.com/is-your-company-worth-5-or-22m-both-40e2ef8f3fb1',
    category: category_numerique,
    sub_categories: [ sub_category_startup ],
    description: 'Étude ludique et pragmatique sur les principaux raisonnements de valorisation utilisés par les VC. #venturecapital #startup #levéedefonds',
    upvotes: 7,
    user: user3,
    date: "13 mars 2021",
    precise_date: -20.days.from_now
  )
 scrap(article4.URL, article4)
 article4.save

 article6 = Article.new(
    URL: 'https://www.monde-diplomatique.fr/2013/11/MALET/49762',
    category: category_numerique,
    sub_categories: [ sub_category_gafa ],
    description: "Retour sur les conditions de travail dans les entrepôts d'Amazon.",
    upvotes: 12,
    user: user8,
    date: "10 mars 2021",
    precise_date: -20.days.from_now
  )
 scrap(article6.URL, article6)
 article6.save

 article7 = Article.new(
    URL: 'https://www.latribune.fr/opinions/tribunes/et-si-google-etait-un-service-public-754419.html#link_time=1508332981',
    category: category_numerique,
    sub_categories: [ sub_category_gafa ],
    description: "Google nous est si utile, peut-on concevoir qu’il devienne un service public ?",
    upvotes: 18,
    user: user1,
    date: "18 mars 2021",
    precise_date: -15.days.from_now
  )
 scrap(article7.URL, article7)
 article7.save

 article8 = Article.new(
    URL: 'https://www.monde-diplomatique.fr/2013/11/MALET/49762',
    category: category_numerique,
    sub_categories: [ sub_category_gafa ],
    description: "Retour sur les conditions de travail dans les entrepôts d'Amazon.",
    upvotes: 12,
    user: user1,
    date: "16 mars 2021",
    precise_date: -15.days.from_now
  )
 scrap(article8.URL, article8)
 article8.save

 #article9 = Article.new(
 #   URL: 'http://discovery.economist.com/getstarted/million-dollar-babies-2925960?kw=all&csid=socialpr&ref=getstarted&aid=5305879142',
 #   category: category_numerique,
 #   sub_categories: [ sub_category_intelligence_artificielle ],
  #  description: "
  #  L'article met en avant une comparaison entre la concentration de scientifiques sur le projet Manhattan et un monopole de la recherche sur l'ia de Google
 #.",
  #  upvotes: 39,
  #  user: user2
  #)
 #scrap(article9.URL, article9)
 #article9.save

 article10 = Article.new(
    URL: 'https://www.latribune.fr/technos-medias/internet/eric-sadin-la-guerre-economique-se-joue-sur-la-conquete-du-comportemental-801520.html',
    category: category_numerique,
    sub_categories: [ sub_category_intelligence_artificielle ],
    description: "D'après Eric Sadin, l'industrie du numérique ambitionne de nous influencer en permanence. ",
    upvotes: 29,
    user: user2,
    date: "12 mars 2021",
    precise_date: -300.days.from_now
  )
 scrap(article10.URL, article10)
 article10.save

#article11 = Article.new(
 #  URL: 'https://www.lesechos.fr/idees-debats/sciences-prospective/030858673522-laurent-alexandre-leurope-a-completement-perdu-la-bataille-de-lia-2131052.php',
 #  category: category_numerique,
#   sub_categories: [ sub_category_intelligence_artificielle ],
#   description: "Retour sur les conditions de travail dans les entrepôts d'Amazon.",
#   upvotes: 12,
#   user: user3,
#   date: "12 mars 2021",
#   precise_date: -300.days.from_now
# )
#scrap(article11.URL, article11)
#article11.save

#article12 = Article.new(
#  URL: 'https://iatranshumanisme.com/2017/12/20/articles-plus-lus-2017/',
#   category: category_numerique,
#   sub_categories: [ sub_category_transhumanisme ],
#   description: "Une mine d’or pour tous ceux qui s'intéressent au transhumanisme",
#   upvotes: 52,
#    user: user3
# )
# scrap(article12.URL, article12)
# article12.save

 article13 = Article.new(
    URL: 'https://usbeketrica.com/article/le-transhumanisme-vide-de-sa-substance-etat-nation?fbclid=IwAR1xJld7lgfa_nNz8nnLJoCAePrFFKDvvDwGtYK7cRql91_Q1KGpene44Ag',
    category: category_numerique,
    sub_categories: [ sub_category_transhumanisme ],
    description: "Le transhumanisme ressemble à s’y méprendre à un totalitarisme",
    upvotes: 34,
    user: user4,
    date: "12 mars 2021",
    precise_date: -300.days.from_now
 )
 scrap(article13.URL, article13)
 article13.save

 article14 = Article.new(
    URL: 'https://usbeketrica.com/article/le-transhumanisme-est-un-eugenisme-relooke',
    category: category_numerique,
    sub_categories: [ sub_category_transhumanisme ],
    description: "Le transhumanisme, un eugénisme relooké",
    upvotes: 12,
    user: user4,
    date: "12 mars 2021",
    precise_date: -300.days.from_now
  )
 scrap(article14.URL, article14)
 article14.save

article15 = Article.new(
   URL: 'https://medium.com/@theodorebrossollet/pcc-talk-1-comment-la-blockchain-pourrait-elle-changer-le-monde-4eb2aa347aeb',
   category: category_numerique,
   sub_categories: [ sub_category_technologie ],
   description: "La blockchain et sur les implications de cette technologie",
   upvotes: 92,
   user: user5,
   date: "12 mars 2021",
   precise_date: -300.days.from_now
 )
 scrap(article15.URL, article15)
 article15.save

# article16 = Article.new(
#    URL: 'https://www.sciencemag.org/news/2021/11/watch-just-few-self-driving-cars-stop-traffic-jams?utm_source=6&utm_medium=social&utm_campaign=Science-%28ScienceMagazine%29&utm_term=SciMag&utm_content=AAAS&fbclid=IwAR3xyFYyojCjPLWBFAX9cj4Jhc9V2FUlIw4MdIscHbVsW-yX2qLG3l95rqE',
#    category: category_numerique,
#    sub_categories: [ sub_category_technologie ],
#    description: "Les voitures autonomes mettront fin aux embouteillages",
#    upvotes: 32,
#    user: user5
#  )
# scrap(article16.URL, article16)
# article16.save

 article17 = Article.new(
    URL: 'https://medium.com/financial-times/the-utopia-project-can-silicon-valley-fix-the-future-94d8475b3e1d',
    category: category_numerique,
    sub_categories: [ sub_category_futurologie ],
    description: "Un article qui questionne la capacité de la Silicon Valley à reprendre le contrôle",
    upvotes: 32,
    user: user6,
    date: "12 mars 2021",
    precise_date: -200.days.from_now
  )
 scrap(article17.URL, article17)
 article17.save


 article19 = Article.new(
    URL: 'https://usbeketrica.com/article/comment-penser-l-avenir-au-temps-du-presentisme',
    category: category_numerique,
    sub_categories: [ sub_category_futurologie ],
    description: "Un article pour nous aider à penser le futur",
    upvotes: 40,
    user: user6,
    date: "12 mars 2021",
    precise_date: -200.days.from_now
  )
 scrap(article19.URL, article19)
 article19.save

 puts 'ECO'

 article20 = Article.new(
    URL: 'https://www.lemonde.fr/planete/article/2017/01/25/le-scenario-d-une-france-100-renouvelable_5068583_3244.html',
    category: category_ecologie,
    sub_categories: [ sub_category_energie ],
    description: "Alors crédible ou non ?",
    upvotes: 19,
    user: user7,
    date: "12 mars 2021",
    precise_date: -200.days.from_now
  )
 scrap(article20.URL, article20)
 article20.save

 article21 = Article.new(
    URL: 'https://www.alternatives-economiques.fr/retour-baril-a-100-dollars/00086700?fbclid=IwAR1AGze090ZIFrYoEWN9zE_pV-Rfcp2DUGQA7NlN3huH10q6dRbyqeKzy5w',
    category: category_ecologie,
    sub_categories: [ sub_category_energie ],
    description: "Un article intéressant sur les conséquences d’un baril à 100 dollars",
    upvotes: 22,
    user: user7,
    date: "12 mars 2021",
    precise_date: -200.days.from_now
  )
 scrap(article21.URL, article21)
 article21.save

 #article22 = Article.new(
 #   URL: 'https://www.nouvelobs.com/planete/20210511.OBS6468/la-maison-blanche-empeche-desormais-la-nasa-de-surveiller-les-gaz-a-effet-de-serre.html',
 #   category: category_ecologie,
 #   sub_categories: [ sub_category_climat ],
 #   description: "Donald a réellement décidé de tous nous faire cramer",
 #   upvotes: 52,
 #   user: user8,
 #   date: "12 mars 2021",
 #   precise_date: -200.days.from_now
 # )
 #scrap(article22.URL, article22)
 #article22.save

 article23 = Article.new(
    URL: 'https://www.alternatives-economiques.fr/climat-william-nordhaus-bien-serieux/00086544?fbclid=IwAR1mFRr7AEOTq4qI045lJRvImtb0tbatMPB3QLXUmLfnjJ5tv6iFAXCjbcg',
    category: category_ecologie,
    sub_categories: [ sub_category_climat ],
    description: "Prix Nobel mérité ou absurde ? That’s the question dude",
    upvotes: 12,
    user: user8,
    date: "13 mars 2021",
    precise_date: -200.days.from_now
  )
 scrap(article23.URL, article23)
 article23.save

# article24 = Article.new(
#    URL: 'https://www.rtbf.be/info/societe/detail_le-cri-d-alarme-d-hubert-reeves-la-disparition-des-vers-de-terre-aussi-grave-que-le-rechauffement-climatique?id=9850098',
#    category: category_ecologie,
#    sub_categories: [ sub_category_biodiversite ],
#    description: "Si j’avais su j’en aurais tué un peu moins étant enfant … ",
#    upvotes: 42,
#    user: user9
#  )
# scrap(article24.URL, article24)
# article24.save

 article25 = Article.new(
    URL: 'https://www.nationalgeographic.fr/animaux/les-oiseaux-disparaissent-des-campagnes-francaises-un-rythme-alarmant',
    category: category_ecologie,
    sub_categories: [ sub_category_biodiversite ],
    description: "Cuicui cuicui",
    upvotes: 54,
    user: user9,
    date: "12 mars 2021",
    precise_date: -20.days.from_now
  )
 scrap(article25.URL, article25)
 article25.save

 article26 = Article.new(
    URL: 'https://blog.mondediplo.net/appels-sans-suite-1',
    category: category_ecologie,
    sub_categories: [ sub_category_transition ],
    description: "Allo ? allo ? Désolé ca a coupé ",
    upvotes: 4,
    user: user10,
    date: "22 octobre 2021",
    precise_date: -200.days.from_now
  )
 scrap(article26.URL, article26)
 article26.save

 article27 = Article.new(
    URL: 'https://usbeketrica.com/article/rob-hopkins-transition-capitalisme-alternative?fbclid=IwAR2LJD3IuoZprrPGHhixxQlg7DMT5otCNmoEsBtkXY1flUZLEZ43KiLek7c',
    category: category_ecologie,
    sub_categories: [ sub_category_transition ],
    description: "Alternative searching ",
    upvotes: 32,
    user: user10,
    date: "14 février 2021",
    precise_date: -50.days.from_now
  )
 scrap(article27.URL, article27)
 article27.save

 article28 = Article.new(
    URL: 'https://www.sciencesetavenir.fr/nature-environnement/100-entreprises-responsables-de-plus-de-70-des-emissions-mondiales-de-carbone_114773?fbclid=IwAR0u5Ve1x-TC0_Nq4VuGdMHCe1SEEQY7Zm7tNgvIzx5g3Ae_5e333GHSBTc',
    category: category_ecologie,
    sub_categories: [ sub_category_pollution ],
    description: "Crédible ou pute à clic ?",
    upvotes: 2,
    user: user1,
    date: "11 mars 2021",
    precise_date: -20.days.from_now
  )
 scrap(article28.URL, article28)
 article28.save

 article29 = Article.new(
    URL: 'https://www.lemonde.fr/pollution/article/2021/10/24/les-eurodeputes-pour-l-interdiction-des-produits-en-plastique-a-usage-unique_5374014_1652666.html?xtref=http%3A%2F%2Fm.facebook.com&fbclid=IwAR1ITqYfJvvJd3_FG07c_4Zu_N-PDDXSO8mXY1BcD02_GI2IZt3AVksEHhM',
    category: category_ecologie,
    sub_categories: [ sub_category_pollution ],
    description: "VIVE L’EUROPE ECOLO",
    upvotes: 55,
    user: user1,
    date: "06 janvier 2021",
    precise_date: -50.days.from_now
  )
 scrap(article29.URL, article29)
 article29.save

# article30 = Article.new(
#    URL: 'https://www.20minutes.fr/montpellier/2140819-20170928-herault-sauver-paysan-mangez-vegan-lettre-choc-eleveur',
#    category: category_ecologie,
#    sub_categories: [ sub_category_agriculture ],
#    description: "J’ai pas de potes vegan mais je suis chaud pour en croquer un ca doit être plein de vitamine",
#    upvotes: 15,
#    user: user2
#  )
# scrap(article30.URL, article30)
# article30.save

 article31 = Article.new(
    URL: 'https://reporterre.net/Celles-qui-ont-revele-les-Monsanto-papers-racontent-comment-Monsanto-triche',
    category: category_ecologie,
    sub_categories: [ sub_category_agriculture ],
    description: "Toujours les mêmes",
    upvotes: 42,
    user: user2,
    date: "30 juin 2021",
    precise_date: -200.days.from_now
  )
 scrap(article31.URL, article31)
 article31.save


 puts 'ECON'

 article32 = Article.new(
   URL: 'https://blogs.mediapart.fr/jfrancoislajeunessefreefr/blog/030817/quand-va-donc-eclater-la-plus-grosse-bulle-financiere-de-l-histoire',
    category: category_economie,
    sub_categories: [ sub_category_finance ],
    description: "On parle pas de savon la",
    upvotes: 42,
    user: user3,
    date: "07 mars 2021",
    precise_date: -20.days.from_now
  )
 scrap(article32.URL, article32)
 article32.save

# article33 = Article.new(
#    URL: 'http://www.lefigaro.fr/vox/economie/2021/09/11/31007-20210911ARTFIG00093-dix-ans-apres-le-debut-de-la-crise-financiere-pourquoi-rien-n-a-change.php?fbclid=IwAR2StdCzvuMCSEpUUX0WpyIKOaTH9-1QVy_xKl6f9D9cbvRImVDXzRORvHI
# ',
#    category: category_economie,
#    sub_categories: [ sub_category_finance ],
#    description: "Rien ne change ou tout s’empire ? Question de perspective Watson",
#    date: "19 mars 2021",
#    precise_date: -20.days.from_now
#  )
# scrap(article33.URL, article33)
# article33.save

 article34 = Article.new(
    URL: 'http://www.mecenova.org/contrat-a-impact-social-cis-vu-par-les-entreprises-nouvelles-aspirations-et-nombreuses-interrogations/',
    category: category_economie,
    sub_categories: [ sub_category_business ],
    description: "",
    upvotes: 3,
    user: user4,
    date: "20 janvier 2021",
    precise_date: -50.days.from_now
  )
 scrap(article34.URL, article34)
 article34.save

# article35 = Article.new(
#    URL: 'https://www.lesechos.fr/idees-debats/editos-analyses/0301436611400-les-economistes-decouvrent-les-degats-du-libre-echange-2162256.php#formulaire_enrichi::bouton_facebook_inscription_article',
#    category: category_economie,
#    sub_categories: [ sub_category_business ],
#    description: "Sur la prise de conscience des économistes que le libre échange peut engendrer des situations gagnants-perdants ",
#    upvotes: 42,
#    user: user4
#  )
# scrap(article35.URL, article35)
# article35.save

# article36 = Article.new(
#    URL: 'https://www.facebook.com/download/1741324049309750/Maniere_de_voir-141.pdf?hash=AcoM1wymLlRQpnKE',
#    category: category_economie,
#    sub_categories: [ sub_category_commerce_international ],
#    description: "Sur les différents traités de libre échange",
#    upvotes: 52,
#    user: user5
#  )
# scrap(article36.URL, article36)
# article36.save

 article37 = Article.new(
    URL: 'https://www.franceculture.fr/emissions/linvite-des-matins/pauvrete-mondiale-panser-repenser-depasser',
    category: category_economie,
    sub_categories: [ sub_category_commerce_international ],
    description: "Sur la gestion de la pauvreté dans le monde en temps de crise économique",
    upvotes: 72,
    user: user5,
    date: "12 septembre 2021",
    precise_date: -200.days.from_now
  )
 scrap(article37.URL, article37)
 article37.save

 article38 = Article.new(
    URL: 'https://www.courrierinternational.com/article/croissance-selon-le-fmi-il-faut-taxer-plus-fortement-les-riches?utm_campaign=Echobox&utm_medium=Social&utm_source=Facebook#link_time=1507816225',
    category: category_economie,
    sub_categories: [ sub_category_inegalites ],
    description: "Sur l’impacte des inégalités économique sur la croissance selon le FMI",
    upvotes: 79,
    user: user6,
    date: "12 mars 2021",
    precise_date: -200.days.from_now
  )
 scrap(article38.URL, article38)
 article38.save

 article39 = Article.new(
   	URL: 'https://www.alternatives-economiques.fr/capitalisme-seffondrer/00084208?utm_source=actus_lilo',
    category: category_economie,
    sub_categories: [ sub_category_inegalites ],
    description: "Article sur la prise en compte dans la théorie marxiste de la crise environnementale comme cause de la chute du système capitaliste.",
    upvotes: 14,
    user: user6,
    date: "10 mars 2021",
    precise_date: -20.days.from_now
  )
 scrap(article39.URL, article39)
 article39.save


# article40 = Article.new(
#    URL: 'https://www.lesechos.fr/idees-debats/livres/0301389805086-sauver-le-capitalisme-francais-2159467.php',
#    category: category_economie,
#    sub_categories: [ sub_category_economie_politique ],
#    description: "Tribune dans les Echos de Henri Gibier, auteur du livre “changer ou disparaître” à propos du capitalisme français. ",
#    upvotes: 10,
#    user: user7
#  )
# scrap(article40.URL, article40)
# article40.save

 article41 = Article.new(
    URL: 'https://www.monde-diplomatique.fr/publications/manuel_d_economie_critique/a57034',
    category: category_economie,
    sub_categories: [ sub_category_economie_politique ],
    description: "Qui appel à repenser les théories économiques qui sous tendent les mesures prisent pour lutter contre le chômage",
    upvotes: 23,
    user: user7,
    date: "11 mars 2021",
    precise_date: -20.days.from_now
  )
 scrap(article41.URL, article41)
 article41.save

 #article42 = Article.new(
 #   URL: 'https://www.franceculture.fr/emissions/le-journal-des-idees/le-journal-des-idees-du-jeudi-27-septembre-2021?utm_medium=Social&utm_source=Facebook&fbclid=IwAR26WKmOOy8c1Uvu_sb-RVounnSqSve3azsTarRig7HkFpthuZPiscpTRR8#Echobox=1538110539',
 #   category: category_economie,
 #   sub_categories: [ sub_category_theorie ],
 #   description: "Sur le sens du néolibéralisme",
 #   upvotes: 6,
 #   user: user8,
 #   date: "12 avril 2021",
 #   precise_date: -200.days.from_now
 # )
 #scrap(article42.URL, article42)
 #article42.save

#  article43 = Article.new(
#    URL: 'https://usbeketrica.com/article/comment-penser-l-avenir-au-temps-du-presentisme',
#    category: category_economie,
#    sub_categories: [ sub_category_theorie ],
#    description: "Un article pour nous aider à penser le futur",
#    upvotes: 12,
#    user: user8
#  )
# scrap(article43.URL, article43)
# article43.save


 puts 'POL'

 #article44 = Article.new(
 #   URL: 'https://www.economist.com/open-future/2021/09/26/we-need-a-post-liberal-order-now?fsrc=gp_en%3Ffsrc%3Dscn%2Ffb%2Fte%2Fbl%2Fed%2Fweneedapostliberalordernowopenfuture&fbclid=IwAR13VsWbDnjnY7fXAGXk83pUDeozCj6dgOguRuS0CoPFgy09Pa2Y4DTEMDE',
 #   category: category_politique,
 #   sub_categories: [ sub_category_politique_internationale ],
 #   description: "Le nouvel ordre mondial, fausse bonne idée ?",
 #   upvotes: 9,
 #  user: user9,
 #   date: "24 mars 2021",
 #   precise_date: -10.days.from_now
 # )
 #scrap(article44.URL, article44)
 #article44.save


 article45 = Article.new(
    URL: 'https://truthout.org/articles/a-complete-disaster-noam-chomsky-on-trump-and-the-future-of-us-politics/',
    category: category_politique,
    sub_categories: [ sub_category_politique_internationale ],
    description: "Sur la catastrophe politique qu’est Donald Trump",
    upvotes: 52,
    user: user9,
    date: "07 juin 2021",
    precise_date: -200.days.from_now
  )
 scrap(article45.URL, article45)
 article45.save

 article46 = Article.new(
    URL: 'https://www.lemonde.fr/long-format/article/2021/11/09/europe-etats-unis-la-famille-occidentale-sous-tension_5380997_5345421.html?fbclid=IwAR2Fiz0AXg-wEFoGrSvgixLxd4iPSSopRfvzb9nZqf_4RY2I5ATPYaHmWEM',
    category: category_politique,
    sub_categories: [ sub_category_union_europeenne ],
   description: "Depuis l’élection de Trump, l’alliance US UE remise en question",
    upvotes: 19,
    user: user10,
    date: "15 mars 2021",
    precise_date: -100.days.from_now
  )
 scrap(article46.URL, article46)
 article46.save

 article48 = Article.new(
    URL: 'https://www.letemps.ch/monde/kosovo-syrie-monde-bascule',
    category: category_politique,
    sub_categories: [ sub_category_geopolitique ],
    description: "Sur la perte d’influence de l’Occident",
   upvotes: 67,
    user: user9,
    date: "25 février 2021",
    precise_date: -25.days.from_now
 )
 scrap(article48.URL, article48)
 article48.save

# article49 = Article.new(
#    URL: 'https://bibliobs.nouvelobs.com/idees/20160331.OBS7480/la-strategie-de-la-mouche-pourquoi-le-terrorisme-est-il-efficace.html',
#    category: category_politique,
#    sub_categories: [ sub_category_geopolitique ],
#    description: "Sur la stratégie de la mouche utilisée par les terroristes.",
#    upvotes: 89,
#    user: user9
#  )
# scrap(article49.URL, article49)
# article49.save


 article53 = Article.new(
    URL: 'https://www.alternatives-economiques.fr/guillaume-duval/independants-mesures-destabilisent-protection-sociale-march/00080289',
    category: category_politique,
    sub_categories: [ sub_category_reformes ],
    description: "La réforme des indépendants dangereuse pour notre modèle sociale",
    upvotes: 12,
    user: user7,
    date: "02 juillet 2021",
    precise_date: -200.days.from_now
  )
 scrap(article53.URL, article53)
 article53.save

# # article1 = Article.create!(
# #   URL: 'https://www.lemonde.fr/economie/article/2021/02/27/automobile-alliances-en-serie-pour-la-voiture-du-futur_5428894_3234.html',
# #   category: category_economie,
# #   sub_categories: [sub_category_commerce_international],
# #   description: 'this is the description',
# #   upvotes: '3',
# #   user: user
# # )
# # article2 = Article.create!(URL: 'https://www.youtube.com/watch?v=tRl9_q2ytI8',
# #   category: category_politique,
# #   sub_categories: [sub_category_geopolitique],
# #   description: 'this is the 2nd description',
# #   upvotes: '4',
# #   user: user
# # )
# # article3 = Article.create!(URL: 'https://www.liberation.fr/france/2021/02/27/municipales-a-paris-lrem-teste-griveaux-et-froisse-les-autres-candidats_1711892',
# #   category: category_politique,
# #   sub_categories: [sub_category_reformes],
# #   description: 'this is the 2nd description',
# #   upvotes: '4',
# #   user: user
# # )
# # article4 = Article.create!(URL: 'https://www.liberation.fr/depeches/2021/02/26/le-cardinal-australien-pell-numero-trois-du-vatican-reconnu-coupable-de-pedophilie_1711624',
# #   category: category_politique,
# #   sub_categories: [sub_category_transhumanisme],
# #   description: 'this is the 3rd description',
# #   upvotes: '5',
# #   user: user
# # )
# # article5 = Article.create!(URL: 'https://www.lemonde.fr/pixels/article/2015/02/19/snapchat-serait-valorisee-entre-16-et-19-milliards-de-dollars_4579139_4408996.html',
# #   category: category_numerique,
# #   sub_categories: [sub_category_futurologie],
# #   description: 'this is the 3rd description',
# #   upvotes: '5',
# #   user: user
# # )
# # article6 = Article.create!(URL: 'https://www.dailymotion.com/video/x7316va?playlist=x6agxl',
# #   category: category_ecologie,
# #   sub_categories: [sub_category_pollution],
# #   description: 'this is the 4th description',
# #   upvotes: '6',
# #   user: user
# # )
# # article7 = Article.create!(URL: 'https://www.lemonde.fr/m-perso/article/2021/02/22/l-avion-plaisir-coupable-de-l-ecolo-voyageur_5426851_4497916.html',
# #   category: category_ecologie,
# #   sub_categories: [sub_category_climat],
# #   description: 'this is the 4th description',
# #   upvotes: '6',
# #   user: user
# # )

# # commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2021-02-25')
# # commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2021-02-25')
# # commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2021-02-25')
# # commentaire = Comment.new(user: user, title: 'This is a comment', text: 'Best comment ever', source: 'wikipedia', date: '2021-02-25')




# commentaire.save

puts 'Finished!'
