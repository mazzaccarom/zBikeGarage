class Bike < ApplicationRecord
  has_many :rides, dependent: :destroy
  has_many :parts, dependent: :destroy
  has_one_attached :bike_image
  validates :year, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :size, presence: true

  after_save :set_suspension_hours
  after_find :set_suspension_hours

  def set_suspension_hours

    if self.count_30 < 30
      self.count_30 = rides.sum(:hours).to_i - self.suspension_hours_30
    else
      self.thirty_hour_alert = true
      self.count_30 = 0
      self.suspension_hours_30 = rides.sum(:hours).to_i
    end
    if self.count_50 < 50
      self.count_50 = rides.sum(:hours).to_i - self.suspension_hours_50
    else
      self.fifty_hour_alert = true
      self.count_50 = 0
      self.suspension_hours_50 = rides.sum(:hours).to_i
    end
    if self.count_100 < 100
      self.count_100 = rides.sum(:hours).to_i - self.suspension_hours_100
    else
      self.hundred_hour_alert = true
      self.thirty_hour_alert = false
      self.fifty_hour_alert = false
      self.count_30 = 0
      self.count_50 = 0
      self.count_100 = 0
      self.suspension_hours_100 = rides.sum(:hours).to_i
    end
    if self.count_200 < 200
      self.count_200 = rides.sum(:hours).to_i - self.suspension_hours_200
    else
      self.two_hundred_hour_alert = true
      self.hundred_hour_alert = false
      self.thirty_hour_alert = false
      self.fifty_hour_alert = false
      self.count_30 = 0
      self.count_50 = 0
      self.count_100 = 0
      self.count_200 = 0
      self.suspension_hours_200 = rides.sum(:hours).to_i
    end
  end

  class BikesController < ApplicationController
    def rides_for_bike
      @bike = Bike.find(params[:id])
    end
  end
end
