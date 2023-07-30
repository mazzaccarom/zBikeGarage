class Ride < ApplicationRecord
    belongs_to :bike, optional: true
    after_save :update_bike_totals
    after_destroy :update_bike_totals
    validates :date, presence: true
    validates :location, presence: true
    validates :miles, presence: true
    validates :hours, presence: true
    validates :bike_id, presence: true
    

    private
    
    def update_bike_totals
      bike.update(miles: bike.rides.sum(:miles), hours: bike.rides.sum(:hours))
    end     
end
  
  