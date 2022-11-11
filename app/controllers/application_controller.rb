class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
    
  end


  post "/customers/reservations" do
    reservation = Reservation.create(restaurant_id: 1,
      name: params[:name], email: params[:email], phone_number: params[:phone_number],
       seats: params[:seats], time: params[:time], space: true)

    reservation.to_json   
  end

  get "/reservations" do
    reservations = Reservation.all
    reservations.to_json
  end

  get "/customers/reservations/:id" do
    customer_reservation = Customer.find(params[:id])

    customer_reservation.to_json(include: {reservations: {only: [:seats, :time, :phone_number, :space]}})
    
  end

  delete "/customers/reservations/:id" do
    customer_reservation = Customer.find(params[:id])
    customer_reservation.destroy
    customer_reservation.to_json
  end

  patch "/customers/reservations/:id" do 
    patch_customer = Reservation.find(params[:id])
    patch_customer.update(
      seats: params[:seats],
      time: params[:time]
    )
    patch_customer.to_json
  end 

  get "/menus" do
    menu = Menu.all
    menu.to_json
  end

  # get "/restaurants/customers/reservations/:id" do
  #   reservation = Restaurant.find(params[:id])
  #   reservation.to_json(include: {consumers: {}})
  # end

  get "/restaurant/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.to_json
  end

  get "/customers" do
    customers = Customer.all
    customers.to_json
  end
end

