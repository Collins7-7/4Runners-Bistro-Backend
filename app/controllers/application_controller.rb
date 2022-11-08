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

end
