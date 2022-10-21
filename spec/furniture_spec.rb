require "rails_helper"

RSpec.describe Furniture, :type => :model do
  context 'with relation' do
    it 'has a many relation with forniture_deliveries' do
      t = Furniture.reflect_on_association(:furniture_deliveries)
      expect(t.macro).to eq(:has_many)
    end
  end

  context 'has a method' do
    it 'should respond to the options_of_select method' do
      expect(Furniture).to respond_to(:options_for_select) 
    end
  end
end