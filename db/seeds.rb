# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
# Customer.destroy_all
# Business.destroy_all
# Food.destroy_all
# Order.destroy_all

phone_numbers_customers = ["+972-00-0000000", "+972-11-1111111", "+972-22-2222222", "+972-33-3333333", "+972-44-4444444"]
names_businesses = ["2C", "La Cucina", "Fish Market", "Rendez-Vous", "Kanki Sushi Bar"]
addresses_businesses = ["102 Menachem Begin", "31 Bograshov", "33 Shaoul Amelech", "1 Lillinblum", "23 Bograshov"]
phone_numbers_businesses = ["03-00000000", "03-11111111", "03-22222222", "03-33333333", "03-44444444"]
dietary_categories = ["Vegan", "Vegetarian", "Bio", "Kosher", "Gluten Free" ]
type_businesses = ["supermarket", "chinese", "japanese", "gastronomic", "italian", "mexican"]
price_foods = [50, 80, 60, 35, 30]
portion_foods = (1..10).to_a
foods_types = ["beef", "salads","chicken", "pasta", "pizza", "rice", "french fries"]

user_params =  [
  {
    email: 'chris@gmail.com',
    password: '123456'
  },
  {
    email: 'daniel@gmail.com',
    password: '1234568'
  },
  {
    email: 'julien@gmail.com',
    password: '1234567'
  },
  {
    email: 'brian@gmail.com',
    password: '12345670'
  },
  {
    email: 'roger@gmail.com',
    password: '123456709'
  },
  {
    email: 'florian@gmail.com',
    password: '123456700'
  },
  {
    email: 'novak@gmail.com',
    password: '123456701'
  },
  {
    email: 'rafa@gmail.com',
    password: '123456702'
  },
  {
    email: 'sasha@gmail.com',
    password: '123456708'
  },
  {
    email: 'toto@gmail.com',
    password: '123456708'
  },
  {
    email: 'marian@gmail.com',
    password: '123456708'
  }
]

User.create!(user_params)

chris = User.find_by_email('chris@gmail.com')
daniel = User.find_by_email('daniel@gmail.com')
julien = User.find_by_email('julien@gmail.com')
brian = User.find_by_email('brian@gmail.com')
roger = User.find_by_email('roger@gmail.com')
florian = User.find_by_email('florian@gmail.com')
novak = User.find_by_email('novak@gmail.com')
rafa = User.find_by_email('rafa@gmail.com')
sasha = User.find_by_email('sasha@gmail.com')
toto = User.find_by_email('toto@gmail.com')
marian = User.find_by_email('marian@gmail.com')



customer_params = [
  {
    user: chris,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: phone_numbers_customers.sample
  },
  {
    user: daniel,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: phone_numbers_customers.sample
  },
  {
    user: julien,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: phone_numbers_customers.sample
  },
  {
    user: brian,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: phone_numbers_customers.sample
  }
]

Customer.create!(customer_params)

business_params = [
  {
     user: roger,
     name: names_businesses.sample,
     address: addresses_businesses.sample,
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "Lorem ipsum dolor sit amet, consectetur
       adipiscing elit, sed do eiusmod tempor incididunt ut labore
       t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
       ercitation ullamco laboris nisi ut aliquip ex ea commodo
       consequat. Duis aute irure dolor in reprehenderit in voluptate
       velit esse cillum dolore eu fugiat nulla pariatur.
       Excepteur sint occaecat cupidatat non proident, sunt in
       culpa qui officia deserunt mollit anim id est laborum.",
     dietary_category: dietary_categories.sample,
     business_type: type_businesses.sample
  },
  {
     user: florian,
     name: names_businesses.sample,
     address: addresses_businesses.sample,
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "Lorem ipsum dolor sit amet, consectetur
       adipiscing elit, sed do eiusmod tempor incididunt ut labore
       t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
       ercitation ullamco laboris nisi ut aliquip ex ea commodo
       consequat. Duis aute irure dolor in reprehenderit in voluptate
       velit esse cillum dolore eu fugiat nulla pariatur.
       Excepteur sint occaecat cupidatat non proident, sunt in
       culpa qui officia deserunt mollit anim id est laborum.",
     dietary_category: dietary_categories.sample,
     business_type: type_businesses.sample
  },
  {
     user: novak,
     name: names_businesses.sample,
     address: addresses_businesses.sample,
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "Lorem ipsum dolor sit amet, consectetur
       adipiscing elit, sed do eiusmod tempor incididunt ut labore
       t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
       ercitation ullamco laboris nisi ut aliquip ex ea commodo
       consequat. Duis aute irure dolor in reprehenderit in voluptate
       velit esse cillum dolore eu fugiat nulla pariatur.
       Excepteur sint occaecat cupidatat non proident, sunt in
       culpa qui officia deserunt mollit anim id est laborum.",
     dietary_category: dietary_categories.sample,
     business_type: type_businesses.sample
  },
  {
     user: rafa,
     name: names_businesses.sample,
     address: addresses_businesses.sample,
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "Lorem ipsum dolor sit amet, consectetur
       adipiscing elit, sed do eiusmod tempor incididunt ut labore
       t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
       ercitation ullamco laboris nisi ut aliquip ex ea commodo
       consequat. Duis aute irure dolor in reprehenderit in voluptate
       velit esse cillum dolore eu fugiat nulla pariatur.
       Excepteur sint occaecat cupidatat non proident, sunt in
       culpa qui officia deserunt mollit anim id est laborum.",
     dietary_category: dietary_categories.sample,
     business_type: type_businesses.sample
  },
  {
     user: sasha,
     name: names_businesses.sample,
     address: addresses_businesses.sample,
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "Lorem ipsum dolor sit amet, consectetur
       adipiscing elit, sed do eiusmod tempor incididunt ut labore
       t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
       ercitation ullamco laboris nisi ut aliquip ex ea commodo
       consequat. Duis aute irure dolor in reprehenderit in voluptate
       velit esse cillum dolore eu fugiat nulla pariatur.
       Excepteur sint occaecat cupidatat non proident, sunt in
       culpa qui officia deserunt mollit anim id est laborum.",
     dietary_category: dietary_categories.sample,
     business_type: type_businesses.sample
  },
  {
     user: toto,
     name: names_businesses.sample,
     address: addresses_businesses.sample,
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "Lorem ipsum dolor sit amet, consectetur
       adipiscing elit, sed do eiusmod tempor incididunt ut labore
       t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
       ercitation ullamco laboris nisi ut aliquip ex ea commodo
       consequat. Duis aute irure dolor in reprehenderit in voluptate
       velit esse cillum dolore eu fugiat nulla pariatur.
       Excepteur sint occaecat cupidatat non proident, sunt in
       culpa qui officia deserunt mollit anim id est laborum.",
     dietary_category: dietary_categories.sample,
     business_type: type_businesses.sample
  },
  {
     user: marian,
     name: names_businesses.sample,
     address: addresses_businesses.sample,
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "Lorem ipsum dolor sit amet, consectetur
       adipiscing elit, sed do eiusmod tempor incididunt ut labore
       t dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
       ercitation ullamco laboris nisi ut aliquip ex ea commodo
       consequat. Duis aute irure dolor in reprehenderit in voluptate
       velit esse cillum dolore eu fugiat nulla pariatur.
       Excepteur sint occaecat cupidatat non proident, sunt in
       culpa qui officia deserunt mollit anim id est laborum.",
     dietary_category: dietary_categories.sample,
     business_type: type_businesses.sample
  }
]

Business.create!(business_params)

 15.times do


   Food.create!(
     name: Faker::Food.dish,
     description: Faker::Food.description,
     price: price_foods.sample,
     portion: portion_foods.sample,
     dietary_category: dietary_categories.sample,
     food_type: foods_types.sample,
     order_before: DateTime.new(2018,2,3,6),
     pickup_start: DateTime.new(2018,2,3,9,30),
     pickup_end: DateTime.new(2018,2,3,11,30),
     business: Business.all.sample
   )

#   Order.create!(
#     customer: Customer.all.sample,
#     food: Food.all.sample
#   )
 end

100.times do |_|
  order = Order.new
  customer = Customer.all.sample
  business = Business.all.sample
  food = business.foods.sample
  order.food = food
  order.customer = customer
  order.save!
end
