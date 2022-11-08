puts "🌱 Customers..."

Customer.all.destroy_all

10.times do
    Customer.create(first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, user_email: Faker::Internet.email)
  end

puts "🌱 Menu..."

Menu.create(food: "Beef Steak", price: rand(200...500), 
image: "https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?
auto=compress&cs=tinysrgb&w=1600",availability: true, restaurant_id: 1)

Menu.create(food: "Sushi", price: rand(200...500), 
image: "https://images.pexels.com/photos/10360199/pexels-photo-10360199.jpeg?
auto=compress&cs=tinysrgb&w=1600",availability: true, restaurant_id: 1)

Menu.create(food:"Cake", price: rand(200...500), 
image: "https://images.pexels.com/photos/1721932/pexels-photo-1721932.jpeg?
auto=compress&cs=tinysrgb&w=1600",availability: true, restaurant_id: 1)

Menu.create(food:"Pasta", price: rand(200...500), 
image: "https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?
auto=compress&cs=tinysrgb&w=1600",availability: true, restaurant_id: 1)

Menu.create(food:"Pizza", price: rand(200...500), 
image: "https://images.pexels.com/photos/845812/pexels-photo-845812.jpeg?
auto=compress&cs=tinysrgb&w=1600",availability: true, restaurant_id: 1)

Menu.create(food:"Shrimp", price: rand(200...500), 
image: "https://images.pexels.com/photos/5639390/pexels-photo-5639390.jpeg?
auto=compress&cs=tinysrgb&w=1600",availability: true, restaurant_id: 1)

Menu.create(food:"Burger", price: rand(200...500), 
image: "https://images.pexels.com/photos/13163534/pexels-photo-13163534.jpeg?
auto=compress&cs=tinysrgb&w=1600",availability: true, restaurant_id: 1)

Menu.create(food:"Chicken Wings", price: rand(200...500), 
image: "https://images.pexels.com/photos/2338407/pexels-photo-2338407.jpeg?
auto=compress&cs=tinysrgb&w=1600",availability: true, restaurant_id: 1)

Menu.create(food:"Vegetable salad", price: rand(200...500), 
image: "https://images.pexels.com/photos/764925/pexels-photo-764925.jpeg?
auto=compress&cs=tinysrgb&w=1600",availability: true, restaurant_id: 1)

Menu.create(food:"Fries", price: rand(200...500), 
image: "https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg?
auto=compress&cs=tinysrgb&w=1600",availability: true, restaurant_id: 1)

puts "🌱 Reservation..."

Reservation.create(customer_id: 1, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 2, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 3, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 4, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 5, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 6, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 7, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 8, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 9, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 10, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 1, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 3, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 4, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 7, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

Reservation.create(customer_id: 9, restaurant_id: 1, seats: rand(1...10), 
time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), space: true)

puts "🌱 Restaurants..."

Restaurant.create(name: "4Runners Bistro", opening_time: "9:00 am",
     closing_time: 2200, image: "https://images.unsplash.com/photo-1578474846511-04ba529f0b88?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80")
# Seed your database here
puts "yes"

puts "✅ Done seeding!"
