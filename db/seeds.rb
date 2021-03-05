require "open-uri"# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all
Shelter.destroy_all
User.destroy_all




jimmy = User.create!(
  email: 'apple@gmail.com',
  password: 'apple1',
  username: 'jimmylovesanimals',
  mobile_number: "0178 2689374",
  first_name: "Jimmy",
  last_name: "Blue"
)

william = User.create!(
  email:"william@gmail.de",
  first_name:"William",
  last_name:"King",
  username:"wgking",
  password: "123456",
  mobile_number: "0160 27452875"
)

bill = User.create!(
  email:"bilbo@gmail.de",
  first_name:"Billy",
  last_name:"Frieske",
  username:"billylovesdogs",
  password: "123456"
)

savannah = User.create!(
  email: "savannah@gmail.de",
  first_name: "Savannah",
  last_name: "Ochsenknecht",
  username: "savio",
  password: "123456",
  mobile_number: "0175 2896423"
)

alty = User.create!(
  email:"Alty@gmail.de",
  first_name:"Alty",
  last_name:"Alty",
  username:"123456",
  password: "123456"
)
benny = User.create!(
  email: "benny@gmail.de",
  first_name: "Benny",
  last_name: "Benny",
  username: "123456",
  password: "123456"
)
kiki = User.create!(
  email: "kiki@gmail.de",
  first_name: "Kiki",
  last_name: "Kiki",
  username: "123456",
  password: "123456"
)
andy = User.create!(
  email: "andy@gmail.de",
  first_name: "Andy",
  last_name: "Andy",
  username: "123456",
  password: "123456"
)

puts 'CREATED ANIMAL FRIENDS'

lifeforanimals = Shelter.new(
  name: "Life for Animals",
  address: "Crete, Greece",
  description: "We are a shelter that takes in any kind of stray animals in order to give them another shot at a peaceful life. Currently we have over 96 animals in our care and appreciate any help the we can get. Especially in terms of funding and transportation as we are a small, non-governmental establishment.",
  user: bill
)
file = URI.open('https://images.unsplash.com/photo-1531844251246-9a1bfaae09fc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNvbW11bml0eXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
lifeforanimals.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
lifeforanimals.save

furryfriends =  Shelter.new(
  name: "Furry Friends",
  address: "Lamia, Greece",
  description: "Our small shelter in Lisbon helps stray city animals find new, forever homes. We depend on private fundings and are a non-state funded shelter. Any help is valuable. Currently we have 55 animals in care.",
  user: savannah
)
file = URI.open('https://www.onetz.de/sites/default/files/imagecache/ga-large/articlemedia/2020/09/01/3432d4b6-818f-4ef9-86c0-0064024babf8.jpg')
furryfriends.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
furryfriends.save

animalcareev = Shelter.new(
 name: "Animal Care Greece",
  address: "Sparta, Greece",
  description: "We are a shelter with a community and volunteers from many backgrounds trying to find animals a new, loving home.",
  user: william
)
file = URI.open('https://i.ytimg.com/vi/REIGWH6Tedw/maxresdefault.jpg')
animalcareev.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
animalcareev.save

naplespaws = Shelter.new(
  name: "Greek Paws",
  address: "Galatas, Greece",
  description: "We have lots of wonderful people who will open their hearts to rescue a dog, but we do not have enough flight volunteers to bring our dogs to their new homes. If you would like to help our organization and these innocent animals in desperate need, please spread the word that we are always in need of flight volunteers to accompany our rescues from Naples to Germany and Netherlands.",
  user: bill
)
file = URI.open('https://www.careermatch.com/job-prep/wp-content/uploads/sites/2/2017/11/Animal_Shelter_Worker_Profile_Image.jpg')
naplespaws.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
naplespaws.save

ourdogs = Shelter.new(
  name: "Our Dogs",
  address: "Idra, Greece",
  description: "Our dogs are saved from the streets of Idra, Greece. There are so many deserving rescue dogs there desperately searching for forever homes everyday while at risk of dying on the streets or being euthanized. We are looking for volunteers to accompany the dogs already adopted in other parts of Europe.",
  user: bill
)
file = URI.open('http://www.goodnet.org/photos/620x0/30012_hd.jpg')
ourdogs.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
ourdogs.save

laika = Shelter.new(
  name: "Laika Fund",
  address: "Lesbos, Greece",
  description: "Our objective is to support efforts to find as many loving homes as possible for these wonderful pups in Lesbos. As we have many partner organisations in Europe, our dogs are frequently adopted abroad. We are thrilled to receive your application to accompany our furry friends to their new forever homes!",
  user: bill
)

file = URI.open('https://dailygazette.com/wp-content/uploads/2020/01/012620_HOPErescue_EM-03.jpg')
laika.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
laika.save

happytails = Shelter.new(
  name: "Happy Tails",
  address: "Lesbos, Greece",
  description: "Happy Tails is a non-profit organization that is dedicated to rescuing and rehabilitating injured and abandoned animals, and to finding permanent, loving homes for each of them. Since many of our animals are adopted in Germany and France, we are especially looking for volunteers travelling to these countries.",
  user: bill
)
file = URI.open('https://media.npr.org/assets/img/2011/05/11/dog-rescue-japan_wide-b61e2e6a716f161c97d1561cd8d48354cc13a48d-s800-c85.jpg')
happytails.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
happytails.save

animalrescue = Shelter.new(
  name: "Animal Rescue",
  address: "Methana, Greece",
  description: "We are a non-profit organization with a community and volunteers from many backgrounds trying to find animals a new, loving home. We're looking for volunteers to transport dogs and cats rescued from the streets. The most popular travel destinations for our shelter inhabitants are Germany and Netherlands.",
  user: bill
)
file = URI.open('https://live-production.wcms.abc-cdn.net.au/85c3b55e539954483b103f0c2cb919ae?impolicy=wcms_crop_resize&cropH=1351&cropW=2401&xPos=0&yPos=0&width=862&height=485')
animalrescue.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
animalrescue.save

p "CREATED #{Shelter.count} SHELTERS"

fifi = Animal.new(
  name: "Fifi",
  animal_type: "dog",
  weight: "8.4kg",
  size: "30cm",
  age: "≈ 4",
  medical_information: "neutered, flea treatment, vaccinated, chipped",
  description: "A very calm and loving dog. Fifi gets along well with other animals and people. Fifi does not necessariöy enjoy rides in the car. If there is a possibility to get her to Warsaw by plane, this is much preferred.",
  race: "unknown",
  shelter: furryfriends,
  dropoff: "Warsaw, Poland"
)
file = URI.open('https://images.unsplash.com/photo-1609122372269-cae4136d214b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHwxOHx8cmVzY3VlJTIwZG9nfGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
fifi.photos.attach(io: file, filename: 'fifi.jpg', content_type: 'image/jpg')
fifi.save

tipsy = Animal.new(
  name: "Tipsy",
  animal_type: "cat",
  weight: "4.3kg",
  size: "23cm",
  age: " ≈ 2 1/2",
  medical_information: "neutered, flea treatment, vaccinated, chipped",
  description: "Tipsy is an independent cat with a very calm but playful nature. Tipsy does get a bit nervous in the car and needs to be calmed down with treats. She enjoys listening to Britney Spears. This funnnily enough magaes to calm her down during car rides. She is fine with being in a box.",
  race: "unknown",
  shelter: animalcareev,
  dropoff: "Athens, Greece"
)
file = URI.open('https://images.unsplash.com/photo-1570824103729-80f4b8cb1d5c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHwyOHx8cmVzY3VlJTIwY2F0fGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
tipsy.photos.attach(io: file, filename: 'tipsy.jpg', content_type: 'image/jpg')
tipsy.save

bifi = Animal.new(
  name: "Bifi",
  animal_type: "dog",
  weight: "6.3kg",
  size: "27cm",
  age: "≈ 6",
  medical_information: "neutered, flea treatment, chipped, vaccination outstanding",
  description: "Bifi is a kind natured sausage dog. He came into our shelter 2 years ago and has made great progress. now he has found a forever family and needs transportation there. Either by plane, train or car is fine. In that aspect he is very comfortable.",
  race: "sausage dog",
  shelter: lifeforanimals,
  dropoff: "Bucharest, Romania"
)
file = URI.open('https://images.unsplash.com/photo-1614433296271-c7f2505a6de1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHwzOHx8ZGFjaHNodW5kfGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
bifi.photos.attach(io: file, filename: 'bifi.jpg', content_type: 'image/jpg')
bifi.save

claude = Animal.new(
  name: "Claude",
  animal_type: "dog",
  weight: "12.2kg",
  size: "48cm",
  age: "≈ 3",
  medical_information: "neutered, flea treatment, chipped, vaccination outstanding",
  description: "Claude is a pleasure to be around. He is a bit conscious with people he doesn't know but warms up to them quickly. Treats are a big help, especially when travelling by car as he does get car sick at times.",
  race: "mixed",
  shelter: lifeforanimals,
  dropoff: "Berlin, Germany"
)

file = URI.open('https://images.unsplash.com/photo-1495399939199-8bc8077c5c32?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHwxMnx8cmVzY3VlJTIwZG9nfGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
claude.photos.attach(io: file, filename: 'claude.jpg', content_type: 'image/jpg')
claude.save

lianne = Animal.new(
  name: "Lianne",
  animal_type: "dog",
  weight: "10.6kg",
  size: "56cm",
  age: "≈ 2",
  medical_information: "neutered, flea treatment, vaccinated, chipped, flight ready",
  description: "Lianne is very kind natured. She enjoys the company of people and enjoys meeting strangers. Travelling by plane or car with her should be no problem.",
  race: "Border Collie",
  shelter: laika,
  dropoff: "Haarlem, Netherlands"
)
file = URI.open('https://images.unsplash.com/photo-1580244613605-924dbf4609de?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHwzNXx8cmVzY3VlJTIwZG9nfGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
lianne.photos.attach(io: file, filename: 'lianne.jpg', content_type: 'image/jpg')
lianne.save

broky = Animal.new(
  name: "Broky",
  animal_type: "cat",
  weight: "5.4kg",
  size: "25cm",
  age: "≈ 4",
  medical_information: "neutered, flea treatment, vaccinated, chipped, heart medication, Congenital Disorder: troubles with coordination",
  description: "Broky is a very special cat. She has a neurological disorder which makes her impaired in terms of coordination, meaning that she falls over quickly and can't walk in a straight line. While riding in the car she prefers, if possible, to either be held or to be seated instead of in a box. Should it ot be possible, she is able to travel in a box calmy when she is given snacks.",
  race: "unknown",
  shelter: naplespaws,
  dropoff: "Posnan, Poland"
)
file = URI.open('https://images.unsplash.com/photo-1580053152248-03ac65897f25?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHwyM3x8cmVzY3VlJTIwY2F0fGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
broky.photos.attach(io: file, filename: 'broky.jpg', content_type: 'image/jpg')
broky.save

amadeus = Animal.new(
  name: "Amadeus",
  animal_type: "dog",
  weight: "25.4kg",
  size: "56cm",
  age: "≈ 3",
  medical_information: "neutered, flea treatment, vaccinated, chipped, weak bladder",
  description: "Amadeus was dropped off in our shelter one year ago and since then has found a lovely family in Bucharest. He loves travelling by car with his head held out of the window. This makes him smile a lot. He would need a break every hours or so to go out to pee as he has a weak bladder. Travelling by plane should be no problem either, as he is fine being in a box. ",
  race: "Labrador",
  shelter: ourdogs,
  dropoff: "Berlin, Germany"
)
file = URI.open('https://images.unsplash.com/photo-1534283363159-b466d8abfcb3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHwxM3x8bGFicmFkb3J8ZW58MHx8fA&ixlib=rb-1.2.1&q=80&w=1080')
amadeus.photos.attach(io: file, filename: 'amadeus.jpg', content_type: 'image/jpg')
amadeus.save

nutmeg = Animal.new(
  name: "Nutmeg",
  animal_type: "cat",
  weight: "4kg",
  size: "27cm",
  age: "≈ 2",
  medical_information: "neutered, flea treatment, vaccinated, chipped, fractured leg, pain medication",
  description: "Nutmeg needs a way home to her forever family in Sevilla. She at this point has a cast around her right leg and is in the end stadium of healing from a fracture . Travelling by car would be preferred as we want her to be as relaxed as possible. Nutmeg has no problems riding in cars as she mostly sleeps and loves being pet while doing it.",
  race: "unknown",
  shelter: happytails,
  dropoff: "Sevilla, Spain"
)
file = URI.open('https://images.unsplash.com/photo-1605706275526-ded7b77e5e44?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHwzMHx8cmVzY3VlJTIwY2F0fGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
nutmeg.photos.attach(io: file, filename: 'nutmeg.jpg', content_type: 'image/jpg')
nutmeg.save

igor = Animal.new(
  name: "Igor",
  animal_type: "dog",
  weight: "15kg",
  size: "48cm",
  age: "≈ 4",
  medical_information: "neutered, flea treatment, vaccinated, chipped",
  description: "Igor has found a family in Warsaw, Poland and needs means of transportation to get to his forever home. He walks well on a leash, is house trained, and knows basic commands. Travelling by car or plane is fine by him.",
  race: "Border Collie",
  shelter: animalrescue,
  dropoff: "Warsaw, Poland"
)
file = URI.open('https://images.unsplash.com/photo-1573507132549-e368aecf8f90?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHwxM3x8Ym9yZGVyJTIwY29sbGllfGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
igor.photos.attach(io: file, filename: 'igor.jpg', content_type: 'image/jpg')
igor.save

milo = Animal.new(
  name: "Milo",
  animal_type: "dog",
  weight: "15kg",
  size: "44cm",
  age: "≈ 2",
  medical_information: "I'm Milo and have found a home in Groningen, the Netherlands. But I still don't know how to get there- can you help me? I am fine with travelling by car or plane but I do prefer a plane as I get car sick and dizzy. I love pets and treats and sleep a lot. I bark when I feel uncomfortable btu as long as your energy is good we will have no problems.",
  race: "unknown",
  shelter: furryfriends,
  dropoff: "Groningen, Netherlands"
)
file = URI.open('https://images.unsplash.com/photo-1593991393705-552675fe6f6d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHw0NHx8cmVzY3VlJTIwZG9nfGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
milo.photos.attach(io: file, filename: 'milo.jpg', content_type: 'image/jpg')
milo.save

mrbean = Animal.new(
  name: "Mr. Bean",
  animal_type: "dog",
  weight: "4kg",
  size: "15cm",
  age: "≈ 4",
  medical_information: "neutered, flea treatment, vaccinated, chipped",
  description: "My name is Mr. Bean. I need to go to Ansbach in Germany and need support in getting there as walking is no option for me. Being in a box is not my favorite thing to do and I get scared sometimes. But don't worry. Just give me pets and tell me I'm okay and we will be fine. Will you be my travel guardian?",
  race: "mixed",
  shelter: ourdogs,
  dropoff: "Ansbach, Germany"
)
file = URI.open('https://images.unsplash.com/photo-1606501147522-c1830b14af02?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHwyfHxyZXNjdWUlMjBkb2d8ZW58MHx8fA&ixlib=rb-1.2.1&q=80&w=1080')
mrbean.photos.attach(io: file, filename: 'mrbean.jpg', content_type: 'image/jpg')
mrbean.save

bilbo = Animal.new(
  name: "Bilbo",
  animal_type: "dog",
  weight: "15kg",
  size: "48cm",
  age: "≈ 3",
  medical_information: "neutered, flea treatment, vaccinated, chipped",
  description: "Bilbo has found a family in Milan, Italy and needs means of transportation to get to his forever home. He walks well on a leash, is house trained, and knows basic commands. Travelling by car or plane is fine by him.",
  race: "unknown",
  shelter: laika,
  dropoff: "Milan, Italiy"
)
file = URI.open('https://images.unsplash.com/photo-1596838005467-a34b063fc0b5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHw0N3x8cmVzY3VlJTIwZG9nfGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
bilbo.photos.attach(io: file, filename: 'bilbo.jpg', content_type: 'image/jpg')
bilbo.save

souna = Animal.new(
  name: "Souna",
  animal_type: "dog",
  weight: "12kg",
  size: "35cm",
  age: "≈ 4",
  medical_information: "neutered, flea treatment, vaccinated, chipped",
  description: "Souna is a gentle natured and kind dog. She needs to be taken to Turin, where her family will meet her at the aiport. Flying is preferred and the date is flexible- of course, the sooner the better!",
  race: "mixed",
  shelter: naplespaws,
  dropoff: "Turin, Italy"
)
file = URI.open('https://images.unsplash.com/photo-1584269939785-8892b6ece544?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHw1OHx8cmVzY3VlJTIwZG9nfGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
souna.photos.attach(io: file, filename: 'souna.jpg', content_type: 'image/jpg')
souna.save

adonis = Animal.new(
  name: "Adonis",
  animal_type: "dog",
  weight: "28kg",
  size: "60cm",
  age: "≈ 5",
  medical_information: "neutered, flea treatment, vaccinated, chipped",
  description: "Adonis needs transportation from Crete to Athens. He is fine with going on a ferry and also plane is no problem. He is a calm dog who enjoys pets and cuddles and cant get enough of snacks! His famiyl will pick him up wherever he is delivered to in Athens.",
  race: "mixed",
  dropoff: "Athens, Greece",
  shelter: lifeforanimals
)
file = URI.open('https://images.unsplash.com/photo-1568137389085-3ccda743a644?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMTgwOTN8MHwxfHNlYXJjaHw0Nnx8cmVzY3VlJTIwZG9nfGVufDB8fHw&ixlib=rb-1.2.1&q=80&w=1080')
adonis .photos.attach(io: file, filename: 'adonis.jpg', content_type: 'image/jpg')
adonis .save

puts "CREATED #{Animal.count} FURRYS"
