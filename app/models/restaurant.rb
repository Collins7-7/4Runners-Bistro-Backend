class Restaurant < ActiveRecord::Base 
    has_many :reservations
    has_many :customers, through: :reservations
    has_many :menus
end