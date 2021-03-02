# This file should contain all the record creation needed to seed the database with its default values.
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
  email:"savannah@gmail.de",
  first_name:"Savannah",
  last_name:"Ochsenknecht",
  username:"savio",
  password: "123456",
  mobile_number: "0175 2896423"
)


puts 'creating animal friends'

lifeforanimals = Shelter.create!(
  name: "Life for Animals",
  address: "Crete, Greece",
  description: "We are a shelter that takes in any kind of stray animals in order to give them another shot at a peaceful life. Currently we have over 96 animals in our care and appreciate any help the we can get. Especially in terms of funding and transportation as we are a small, non-governmental establishment.",
  user: bill
)

furryfriends =  Shelter.create!(
  name: "Furry Friends",
  address: "Lisbon, Portugal",
  description: "Our small shelter in Lisbon helps stray city animals find new, forever homes. We depend on private fundings and are a non-state funded shelter. Any help is valuable. Currently we have 55 animals in care.",
  user: savannah
)

animalcareev = Shelter.create!(
 name: "Animal Care e.V.",
  address: "Traunreut, Germany",
  description: "We are a shelter with a community and volunteers from many backgrounds trying to find animals a new, loving home.",
  user: william
)

p "CREATED #{Shelter.count} shelters"

fifi = Animal.create!(
  name: "Fifi",
  animal_type: "dog",
  weight: "5.4kg",
  size: "80x60cm",
  age: "4",
  medical_information: "flea treatment, vaccinated, chipped",
  description: "A very calm and loving dog. Fifi gets along well with other animals and people. She has no problem to be around young children. She like to play and get cuddled a lot.",
  race: "unknown",
  shelter: furryfriends
)

tipsy = Animal.create!(
  name: "Tipsy",
  animal_type: "cat",
  weight: "2.3kg",
  size: "50x50cm",
  age: "2 1/2",
  medical_information: "flea treatment, vaccinated, chipped",
  description: "Tipsy is an independent cat with a very calm but playful nature. She has a beautiful coat and stunning green eyes. She likes to do things her own way but is always open for pets and cuddles.",
  race: "unknown",
  shelter: animalcareev
)

bifi = Animal.create!(
  name: "Bifi",
  animal_type: "dog",
  weight: "4.3kg",
  size: "60x80cm",
  age: "6",
  medical_information: "flea treatment, chipped, vaccination outstanding",
  description: "Bifi is a kidn natured sausage dog. He came into our ",
  race: "sausage dog",
  shelter: lifeforanimals
)
