class Restaurant < ActiveRecord::Base 
    has_many :reservations
    has_many :menus
    has_many :customers, through: :reservations
    
end