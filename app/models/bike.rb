class Bike < ApplicationRecord
    has_many :rides
    has_one_attached :bike_image
    validates :year, presence: true
    validates :make, presence: true
    validates :model, presence: true
    validates :size, presence: true
    validates :miles, presence: true
    validates :hours, presence: true
    
    
  end

  class BikesController < ApplicationController
    def rides_for_bike
      @bike = Bike.find(params[:id])
    end
  end
  
