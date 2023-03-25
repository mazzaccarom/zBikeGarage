class Ride < ApplicationRecord
    belongs_to :bike, optional: true
    after_save :update_bike_totals
    after_destroy :update_bike_totals

    private
    
    def update_bike_totals
      bike.update(miles: bike.rides.sum(:miles), hours: bike.rides.sum(:hours))
    end     
end
  
  