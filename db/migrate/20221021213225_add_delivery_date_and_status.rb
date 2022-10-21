class AddDeliveryDateAndStatus < ActiveRecord::Migration[6.1]
  def change
    add_column :furniture_deliveries, :delivery_date, :date
    add_column :furniture_deliveries, :is_delivered, :boolean
  end
end
