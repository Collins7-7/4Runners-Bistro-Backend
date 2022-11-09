class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
    
  end


  post "/customers/reservations/:id" do
    reservation = Reservation.create(customer_id: params[:id], restaurant_id: 1,
      name: params[:name], email: params[:email], phone_number: params[:phone_number],
       seats: params[:seats], time: params[:time], space: params[:space])

    reservation.to_json   
  end

  get "/customers/reservations/:id" do
    customer_reservation = Customer.find(params[:id])

    customer_reservation.to_json(include: {reservations: {only: [:seats, :time, :space]}})
    
  end

  get "/menus" do
    menu = Menu.all
    menu.to_json
  end

  post "/customers" do
  end
end

