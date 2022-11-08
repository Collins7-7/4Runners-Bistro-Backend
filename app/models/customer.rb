class Customer < ActiveRecord::Base
    has_many :reservations
    has_many :restaurants, through: :reservations
    has_many :menus, through: :restaurants
end