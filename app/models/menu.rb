class Menu  < ActiveRecord::Base
    belongs_to :restaurant
    # belongs_to :customers,through: :reservations
end