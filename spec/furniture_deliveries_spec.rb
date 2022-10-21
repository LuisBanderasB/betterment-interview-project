require "rails_helper"

RSpec.describe FurnitureDelivery, :type => :model do
  context 'with relation' do
    it 'has a belongs_to relation' do
      t = FurnitureDelivery.reflect_on_association(:furniture)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end