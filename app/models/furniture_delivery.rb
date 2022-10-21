class FurnitureDelivery < ApplicationRecord
  belongs_to :furniture
  before_update :add_time_if_delivered

  private 
  def add_time_if_delivered
    if is_delivered
      self.delivery_date = Time.now
    end
  end
end

