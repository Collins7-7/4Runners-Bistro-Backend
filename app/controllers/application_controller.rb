class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
    
  end

  get "/menus" do
    menu = Menu.all
    menu.to_json
  end

  post "/customers" do

    customer = Customer.create(first_name: params[:first_name], last_name: params[:last_name],
    user_name: params[:user_email])
    customer.to_json
  end 

end
