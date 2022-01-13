require 'rails_helper'

RSpec.describe PizzaType, type: :model do
  context 'validations' do
    it 'valid pizza type' do
      pizza_type = build(:pizza_type)
      expect(pizza_type.valid?).to eq(true)
    end

    it 'invalid pizza type' do
      pizza_type = build(:pizza_type)
      pizza_type.price = -1
      expect(pizza_type.valid?).to eq(false)
    end
  end
end
