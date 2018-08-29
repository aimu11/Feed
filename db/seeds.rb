# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Order.destroy_all

Cart.destroy_all
Food.destroy_all

Customer.destroy_all
Business.destroy_all
User.destroy_all



#-----------------------------------------------------------



phone_numbers_customers = ["+972-00-0000000", "+972-11-1111111", "+972-22-2222222", "+972-33-3333333", "+972-44-4444444"]
names_businesses = ["2C", "La Cucina", "Fish Market", "Rendez-Vous", "Kanki Sushi Bar"]
  addresses_businesses = ["102 Menachem Begin", "31 Bograshov", "33 Shaoul Amelech", "1 Lillinblum", "23 Bograshov"]
phone_numbers_businesses = ["03-00000000", "03-11111111", "03-22222222", "03-33333333", "03-44444444"]
dietary_categories = ["Vegan", "Vegetarian", "Bio", "Kosher", "Gluten Free" ]
type_businesses = ["supermarket", "chinese", "japanese", "gastronomic", "italian", "mexican"]
price_foods = [50, 80, 60, 35, 30]
portion_foods = (1..10).to_a
foods_types = ["beef", "salads","chicken", "pasta", "pizza", "rice", "french fries"]


#------------------------------USER---------------------------------


user_params =  [
  {
    email: 'fabio@gmail.com',
    password: '123456'
  },
  {
    email: 'john@gmail.com',
    password: '1234568'
  },
  {
    email: 'jack@gmail.com',
    password: '1234567'
  },
  {
    email: 'milos@gmail.com',
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
    email: 'david@gmail.com',
    password: '123456708'
  },
  {
    email: 'marian@gmail.com',
    password: '123456708'
  }
]

User.create!(user_params)

fabio = User.find_by_email('fabio@gmail.com')
john = User.find_by_email('john@gmail.com')
jack = User.find_by_email('jack@gmail.com')
milos = User.find_by_email('milos@gmail.com')
roger = User.find_by_email('roger@gmail.com')
florian = User.find_by_email('florian@gmail.com')
novak = User.find_by_email('novak@gmail.com')
rafa = User.find_by_email('rafa@gmail.com')
sasha = User.find_by_email('sasha@gmail.com')
david = User.find_by_email('david@gmail.com')
marian = User.find_by_email('marian@gmail.com')



#-------------------------CUSTOMER--------------------------------


customer_params = [
  {
    user: fabio,
    first_name: "Fabio",
    last_name: "Fognini",
    phone_number: phone_numbers_customers.sample
  },
  {
    user: john,
    first_name: "John",
    last_name: "Isner",
    phone_number: phone_numbers_customers.sample
  },
  {
    user: jack,
    first_name: "Jack",
    last_name: "Sock",
    phone_number: phone_numbers_customers.sample
  },
  {
    user: milos,
    first_name: "Milos",
    last_name: "Raonic",
    phone_number: phone_numbers_customers.sample
  }
]

Customer.create!(customer_params)

#-------------------BUSINESSES-----------------------------------



business_params = [
  {
     user: roger,
     name: "L'Entrecote",
     address: "Ahad Ha'Am Street 28 Tel Aviv",
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "L’Entrecote is one of the best kosher (mehadrin) gourmet restaurants in Tel Aviv, located right near the Rothschild Boulevard.  Discover an exclusive cuisine in a Parisian brasserie setting, where quality meats are the highlight of the menu.  L’Entrecote also offers a large variety of fish and vegetarian dishes. Allow yourself to be seduced by the restaurant’s warm and cozy atmosphere, and enjoy.",
     dietary_category: "Kosher",
     business_type: "Grilled Meat"
  },
  {
     user: florian,
     name: "2C",
     address: "Menachem Begin Road 132 Tel Aviv",
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "With a mission of giving its clients an experience way outside the ordinary, 2C is proud share with you its unique restaurant. For your visual pleasure, dining takes place 200 meters in the sky, where you can take in the beautiful White City while gently rotating. The experience will be just as magnificent for your taste buds, as you savor foie gras, tender meats, and luscious desserts. More than a restaurant, 2C is a spectacle for all your senses. ",
     dietary_category: "Kosher",
     business_type: "Gourmet"
  },
  {
     user: novak,
     name: "Bino Bepita",
     address: "Ben Yehuda 73 Tel Aviv",
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "Neshama, Kapara… ! Rotschild, the most European street of Tel Aviv sounds more Israeli since Bino, the famous Dr Shakshouka of Yaffo recently settled in the heart of Tel Aviv ! If you want to know what is the real Israel, let’s discover Bino Bepita to taste an authentic cuisine, atmosphere and mentality ! The menu is based on nearly everything pita based including shwarma, a variety of skewers, steaks, kababs, and of course, shakshuka. All the pitas are served with fresh salads that are prepared in house, plus other meat dishes that will find their way into some type of dough. If you love Israel, you will love Bino Bepita !",
     dietary_category: "Kosher",
     business_type: "Oriental Food"
  },
  {
     user: rafa,
     name: "Bugsy",
     address: "Shalma 44 Tel Aviv",
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "Sixteen years have passed already that gastronomic Bistrot Bugsy has given pleasure to all of Tel Aviv. Considered as one of the most popular chef’s restaurants in the White City, Bugsy offers an experience that will stimulate your senses. In the kitchen, Chef Haya Klor offers a refined cuisine with multiple influences to taste in a cozy setting, mixing gourmet atmosphere with the dynamic and warm ambiance of a bar where music accompanies your meal. Every Thursday and Saturday nights, enjoy musical evenings with a DJ!",
     dietary_category: "Bar/Restaurant",
     business_type: "Gourmet"
  },
  {
     user: sasha,
     name: "Carmen",
     address: "Lilienbum 24 Tel Aviv",
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "Following the success of Rendez Vous in Neve Tsedek, the restaurant’s team decided to open a new establishment in Tel Aviv. If you want to rediscover Spanish specialties but don’t feel like travel overseas, Carmen’s the place for you ! This standout spot located in Lilienblum is Spanish cuisine’s most recent representative and it’s the best in Israel ! Step inside, and feel the Latin heat, as you take in the stunning decor, the aromas and flavors which will brighten up your eyes and your taste buds ! Their tapas and meats are worthy of the best bodegas in the Iberian Peninsula ! We’re waiting you in the patio for a delicious moment…",
     dietary_category: "Kosher",
     business_type: "Mediterranean"
  },
  {
     user: david,
     name: "Boutique Central",
     address: "Basel 40 Tel Aviv",
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "To start the day on the right foot often involves breakfast and for good reason, since it is considered as the most important meal of the day, so let’s have a true moment of pleasure. If the Israeli “café-maafé” have this quick & cheap side, in terms of taste that is another matter! Fortunately, the now famous Boutique Central chain offers a new youth to our breakfasts, a place to delight our mornings and even more for the rest of the day. Each boutique offer a wide range of sweet or salty products all very appetizing … Viennoiserie, pastry, sandwiches, puff pastries, there is like an air of Paris in each of these delicacies. Here the taste as much as the package are the signature of the brand, from macaroon to profiteroles as well as pistachio croissant, each bite is an invitation for another breakfast … at Boutique Central of course !",
     dietary_category: "Kosher",
     business_type: "Brunch"
  },
  {
     user: marian,
     name: "Cafe Landwer",
     address: "Dizengoff 11 Tel Aviv",
     city: "Tel Aviv",
     phone_number: phone_numbers_businesses.sample,
     description: "The result of a long culinary tradition continuously passed down with love, Café Landwer has, since 1919, continued to refresh our idea of quality and freshness with their selection of healthy Mediterranean dishes featuring the freshest produce and most interesting flavors. Come for the sunny and spacious terrace and stay for the diverse and unique menu!",
     dietary_category: "Kosher",
     business_type: "Brunch"
  }
]



Business.create!(business_params)

roger = Business.find_by_name("L'Entrecote")
florian = Business.find_by_name("2C")
novak = Business.find_by_name("Bino Bepita")
rafa = Business.find_by_name("Bugsy")
sasha = Business.find_by_name("Carmen")
david = Business.find_by_name("Boutique Central")
marian = Business.find_by_name("Cafe Landwer")




# ----------------------Roger -------- L'Entrecote---------------------




entrecote_meals_1 = Food.create!(
  name: "Salmon Carpacio",
  description: "In olive oil and balsamic salad, beets, carrots and arugula leaves",
  price: 16,
  portion: portion_foods.sample,
  sku: "sc/E-1",
  dietary_category: "Kosher",
  food_type: "Fish",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://beteavone.com/wp-content/uploads/2016/12/12068858_1060246877332646_1249838114918248905_o-697x415.jpg",
  business: roger
  )

entrecote_meals_2 = Food.create!(
  name: "Grilled Parguit Steak",
  description: "served with a soy and green beans",
  price: 15,
  portion: portion_foods.sample,
  sku: "gp/E-2",
  dietary_category: "Kosher",
  food_type: "Meat",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "http://hbkburger.fr/wp-content/uploads/2015/09/parguit.jpg",
  business: roger
  )


entrecote_meals_3 = Food.create!(
  name: "Small Steak Kebab",
  description: "served with eggplant cream accompanied by fresh tomato salsa and tehina",
  price: 19,
  portion: portion_foods.sample,
  sku: "sk/E-3",
  dietary_category: "Kosher",
  food_type: "Meat",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://www.booths.co.uk/wp-content/uploads/p8_brazilian_kebab_web-660x371.jpg",
  business: roger
  )


# ----------------------Florian -----2C---------------------

c2_meals_1 = Food.create!(
  name: "Sashimi Sea Fish ",
  description: "Green Beans Green Onions Coriander Almond Almonds Red Chili In a green gaspci sauce",
  price: 12,
  portion: portion_foods.sample,
  sku: "sf/C-1",
  dietary_category: "Kosher",
  food_type: "Fish",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://www.wikihow.com/images/1/15/Make-Sashimi-Step-3-Version-2.jpg",
  business: florian
  )


c2_meals_2 = Food.create!(
  name: "Red tuna Steak",
  description: "chunks of sesame paste alongside a stir - fried pasta in Eli Olio sauce Cherry tomatoes Boccaccio Saum-tam sauce",
  price: 15,
  portion: portion_foods.sample,
  sku: "rt/C-2",
  dietary_category: "Kosher",
  food_type: "Fish",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://www.lucybee.com/imagegen.ashx?image=/media/451323/tuna-steak-1-copy.jpg&width=700",
  business: florian
  )



c2_meals_3 = Food.create!(
  name: "Sea Bream Fillet",
  description: "Bream Fillet of Crisps Homemade potato gnocchi Roasted Eggplant Kalamata olives Dried tomatoes Pickled lemon Lemon - Persian Powder Herbs",
  price: 14,
  portion: portion_foods.sample,
  sku: "bf/C-3",
  dietary_category: "Kosher",
  food_type: "Fish",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://www.saga.co.uk/contentlibrary/saga/publishing/verticals/food/recipes/fish/grilled-sea-bream-mediterranean-mash-283626368-1280.jpg",
  business: florian
  )


# -----------------------Novak --------- Bino Bepita-------------



bino_bepita_meals_1 = Food.create!(
  name: "Special Fallafel",
  description: "houmous, turkish salad, eggplant",
  price: 15,
  portion: portion_foods.sample,
  sku: "sp/BP-1",
  dietary_category: "Kosher",
  food_type: "Oriental",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "http://www.restaurantcacher.com/restaurant-cacher/as-du-fallafel/images/slider/as-du-fallafel-2.jpg",
  business: novak
  )


bino_bepita_meals_2 = Food.create!(
  name: "Chicken Curry",
  description: "Chicken cooked in a curry sauce with rice",
  price: 18,
  portion: portion_foods.sample,
  sku: "cc/BP-2",
  dietary_category: "Kosher",
  food_type: "Oriental",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://hips.hearstapps.com/del.h-cdn.co/assets/17/31/1501791674-delish-chicken-curry-horizontal.jpg",
  business: novak
  )




bino_bepita_meals_3 = Food.create!(
  name: "Kebab Skewers",
  description: "served with salad",
  price: 15,
  portion: portion_foods.sample,
  sku: "kb/BP-3",
  dietary_category: "Kosher",
  food_type: "Oriental",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://www.simplyrecipes.com/wp-content/uploads/2011/07/beef-kabobs-horiz-a-1600.jpg",
  business: novak
  )

# -----------------Rafa --------- Bugsy--------------------------


bugsy_1 = Food.create!(
  name: "Foccacia",
  description: "served dried tomatoes",
  price: 18,
  portion: portion_foods.sample,
  sku: "fc/B-1",
  dietary_category: "Kosher",
  food_type: "Bread",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://www.lidl-recettes.fr/var/lidl-recipes/storage/images/france/recettes/foccacia-aux-tomates-sechees-et-thym/1621921-1-fre-FR/Foccacia-aux-tomates-sechees-et-thym.jpg",
  business: rafa
  )


bugsy_2 = Food.create!(
  name: "Beef Filet",
  description: "served with green beans",
  price: 15,
  portion: portion_foods.sample,
  sku: "bf/B-2",
  dietary_category: "Kosher",
  food_type: "Meat",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://beteavone.com/wp-content/uploads/2016/12/18301074_1517604234930239_3964497955489200691_n-697x415.jpg",
  business: rafa
  )


bugsy_3 = Food.create!(
  name: "Salmon Filet",
  description: "served with mash potatoes",
  price: 18,
  portion: portion_foods.sample,
  sku: "bf/B-2",
  dietary_category: "Kosher",
  food_type: "Fish",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoqRu6qaXIRu1DmDy-G_MssS1itt3hNi623UK_3e49Ogk1a8UuOg",
  business: rafa
  )


# Sasha --------------------------Carmen-------------------------


carmen_1 = Food.create!(
  name: "Entrecote 200g",
  description: "served with salad",
  price: 18,
  portion: portion_foods.sample,
  sku: "en/C-1",
  dietary_category: "Kosher",
  food_type: "Meat",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://beteavone.com/wp-content/uploads/2016/12/16177932_1406686262688704_7325763277443060621_o-697x415.jpg",
  business: sasha
  )

carmen_2 = Food.create!(
  name: "Sea Bream Fillet",
  description: "served with special sauce",
  price: 10,
  portion: portion_foods.sample,
  sku: "sb/C-2",
  dietary_category: "Kosher",
  food_type: "Fish",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://www.gordonramsay.com/assets/Recipes/_resampled/CroppedFocusedImage108081050-50-Seabream-Salsa-231.jpg",
  business: sasha
  )



carmen_3 = Food.create!(
  name: "Mushrooms Teriaky",
  description: "cooked in Teriaky and served with bread",
  price: 10,
  portion: portion_foods.sample,
  sku: "mt/C-3",
  dietary_category: "Kosher",
  food_type: "Vegan",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://farm9.staticflickr.com/8696/17281691802_496efe869e_b.jpg",
  business: sasha
  )


#-----------David---------Boutique Central-------------------------

boutique_central_1 = Food.create!(
  name: "Choco Cake",
  description: "perfect cake for the breakfast",
  price: 15,
  portion: portion_foods.sample,
  sku: "cc/BC-1",
  dietary_category: "Kosher",
  food_type: "Vegan",
  order_before: DateTime.new(2018,2,3,11),
  pickup_start: DateTime.new(2018,2,3,13,30),
  pickup_end: DateTime.new(2018,2,3,18,30),
  remote_photo_url: "https://thefirstyearblog.com/wp-content/uploads/2017/12/Chocolate-Velvet-Cake-7.jpg",
  business: david
  )

boutique_central_2 = Food.create!(
  name: "Croissant Miel",
  description: "Our best croissant with delicious honey inside",
  price: 12,
  portion: portion_foods.sample,
  sku: "cm/BC-2",
  dietary_category: "Kosher",
  food_type: "Vegan",
  order_before: DateTime.new(2018,2,3,11),
  pickup_start: DateTime.new(2018,2,3,13,30),
  pickup_end: DateTime.new(2018,2,3,18,30),
  remote_photo_url: "https://image.freepik.com/photos-libre/des-delicieux-croissants-savoureux-sur-une-planche-de-bois-petit-dejeuner-continental-traditionnel-granola-aux-fruits-et-au-miel-sur-le-fond_1220-1320.jpg",
  business: david
  )

boutique_central_3 = Food.create!(
  name: "Macaroon Strawberry",
  description: "for a sweet day",
  price: 10,
  portion: portion_foods.sample,
  sku: "mc/BC-3",
  dietary_category: "Kosher",
  food_type: "Vegan",
  order_before: DateTime.new(2018,2,3,11),
  pickup_start: DateTime.new(2018,2,3,13,30),
  pickup_end: DateTime.new(2018,2,3,18,30),
  remote_photo_url: "https://image.afcdn.com/recipe/20160502/16428_w420h344c1cx2000cy3000.jpg",
  business: david
  )


#-------------Marian------------Cafe Landwer----------------------

cafe_landwer_1 = Food.create!(
  name: "Pizza Onions",
  description: "Pizza with caramelized onions, mozzarella, red onions, tomatoes, basil and olives",
  price: 15,
  portion: portion_foods.sample,
  sku: "cl/CL-1",
  dietary_category: "Kosher",
  food_type: "Pizza",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://images.eatsmarter.com/sites/default/files/styles/576x432/public/tuna-and-onion-white-pizza-484487.jpg",
  business: marian
  )


cafe_landwer_2 = Food.create!(
  name: "Pasta Basil Tomatoes",
  description: "Olive oil, tomatoes and herbs, micro basil, garlic and parmesan",
  price: 14,
  portion: portion_foods.sample,
  sku: "pb/CL-2",
  dietary_category: "Kosher",
  food_type: "Pasta",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://cdn.cpnscdn.com/static.coupons.com/ext/kitchme/images/recipes/600x400/balsamic-tomato-basil-pasta_6300.jpg",
  business: marian
  )



cafe_landwer_3 = Food.create!(
  name: "Nouga Dessert",
  description: "A sweet taste for the day",
  price: 10,
  portion: portion_foods.sample,
  sku: "lv/CL-3",
  dietary_category: "Kosher",
  food_type: "Vegan",
  order_before: DateTime.new(2018,2,3,18),
  pickup_start: DateTime.new(2018,2,3,21,30),
  pickup_end: DateTime.new(2018,2,3,23,30),
  remote_photo_url: "https://image.afcdn.com/recipe/20180330/78308_w420h344c1cx2808cy1872cxt0cyt0cxb5616cyb3744.jpg",
  business: marian
  )



#---------------------------------------------------------------


#   Order.create!(
#     customer: Customer.all.sample,
#     food: Food.all.sample
#   )



30.times do

  order = Order.new
  customer = Customer.all.sample
  business = Business.all.sample
  food = business.foods.sample
  if food
    order.food = food
    order.customer = customer
    order.save!
  end
end

customer = Customer.first
food = Food.last

customer.cart.cart_details << CartDetail.new(food: food)
customer.save!








