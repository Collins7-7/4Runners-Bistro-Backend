class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
    
  end


  post "/customers/reservations/:id" do
    reservation = Reservation.create(customer_id: params[:id], restaurant_id: 1,
       seats: params[:seats], time: params[:time])
  end

  get "/customers/reservations/:id" do
    customer_reservation = Customer.find(params[:id])
    customer_reservation.to_json(only: [:first_name, :last_name], 
      include: {reservations: {only: [:seats, :time]}})
  end

  get "/menus" do
    menu = Menu.all
    menu.to_json
  end

  post "/customers" do
