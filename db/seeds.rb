puts "🌱 Customers..."

Customer.all.destroy_all

10.times do
    Customer.create(user_name: Faker::Name.name, user_email: Faker::Internet.email)
  end

puts "🌱 Reservation..."

Customer.all.each do |customer|
  1.times do 
    Reservation.create(
      customer_id: customer.id,
      restaurant_id: 1,
      name: customer.user_name,
      email:customer.user_email,
      phone_number: Faker::PhoneNumber.phone_number,
      seats: rand(1...10),
      time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
      space: true
    )
  end
end

Menu.create(food: "Beef Steak", price: rand(200...500), 
image: ["https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?
auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/3535383/pexels-photo-3535383.jpeg?auto=compress&cs=tinysrgb&w=400",
"https://images.pexels.com/photos/11267128/pexels-photo-11267128.jpeg?auto=compress&cs=tinysrgb&w=400"],availability: true, restaurant_id: 1)

Menu.create(food: "Sushi", price: rand(200...500), 
image: ["https://images.pexels.com/photos/10360199/pexels-photo-10360199.jpeg?
auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/670702/pexels-photo-670702.jpeg?auto=compress&cs=tinysrgb&w=400",
"https://images.pexels.com/photos/684964/pexels-photo-684964.jpeg?auto=compress&cs=tinysrgb&w=400"],availability: true, restaurant_id: 1)

Menu.create(food:"Cake", price: rand(200...500), 
image: ["https://images.pexels.com/photos/1721932/pexels-photo-1721932.jpeg?
auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&w=400",
"https://images.pexels.com/photos/2067396/pexels-photo-2067396.jpeg?auto=compress&cs=tinysrgb&w=400"],availability: true, restaurant_id: 1)

Menu.create(food:"Pasta", price: rand(200...500), 
image: ["https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?
auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/2456435/pexels-photo-2456435.jpeg?auto=compress&cs=tinysrgb&w=400",
"https://images.pexels.com/photos/1460872/pexels-photo-1460872.jpeg?auto=compress&cs=tinysrgb&w=400"],availability: true, restaurant_id: 1)

Menu.create(food:"Pizza", price: rand(200...500), 
image: ["https://images.pexels.com/photos/845812/pexels-photo-845812.jpeg?
auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/3343626/pexels-photo-3343626.jpeg?auto=compress&cs=tinysrgb&w=400",
"https://images.pexels.com/photos/2762942/pexels-photo-2762942.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"],availability: true, restaurant_id: 1)

Menu.create(food:"Shrimp", price: rand(200...500), 
image: ["https://images.pexels.com/photos/5639390/pexels-photo-5639390.jpeg?
auto=compress&cs=tinysrgb&w=1600","https://images.pexels.com/photos/1998920/pexels-photo-1998920.jpeg?auto=compress&cs=tinysrgb&w=400",
"https://images.pexels.com/photos/1998921/pexels-photo-1998921.jpeg?auto=compress&cs=tinysrgb&w=400"],availability: true, restaurant_id: 1)

Menu.create(food:"Burger", price: rand(200...500), 
image: ["https://images.pexels.com/photos/13163534/pexels-photo-13163534.jpeg?
auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/2983104/pexels-photo-2983104.jpeg?auto=compress&cs=tinysrgb&w=400",
"https://images.pexels.com/photos/3864680/pexels-photo-3864680.jpeg?auto=compress&cs=tinysrgb&w=400"],availability: true, restaurant_id: 1)

Menu.create(food:"Chicken Wings", price: rand(200...500), 
image: ["https://images.pexels.com/photos/2338407/pexels-photo-2338407.jpeg?
auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=400",
"https://images.pexels.com/photos/14226662/pexels-photo-14226662.jpeg?auto=compress&cs=tinysrgb&w=400"],availability: true, restaurant_id: 1)

Menu.create(food:"Vegetable salad", price: rand(200...500), 
image: ["https://images.pexels.com/photos/764925/pexels-photo-764925.jpeg?
auto=compress&cs=tinysrgb&w=1600","https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?auto=compress&cs=tinysrgb&w=400",
"https://images.pexels.com/photos/2122294/pexels-photo-2122294.jpeg?auto=compress&cs=tinysrgb&w=400"],availability: true, restaurant_id: 1)

Menu.create(food:"Fries", price: rand(200...500), 
image: ["https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg?
auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=400",
"https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg?auto=compress&cs=tinysrgb&w=400"],availability: true, restaurant_id: 1)

puts "🌱 Restaurants..."

Restaurant.create(name: "4Runners Bistro", opening_time: "9:00 am",
     closing_time: 2200, image: "https://images.unsplash.com/photo-1578474846511-04ba529f0b88?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80")
# Seed your database here
puts "yes"

puts "✅ Done seeding!"
