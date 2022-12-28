# == Schema Information
#
# Table name: meals
#
#  id          :bigint           not null, primary key
#  description :string
#  link        :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Meal, type: :model do
  let(:meal) { build(:meal) }

  describe '#validations' do
    it 'tests that the factory is valid' do
      expect(meal).to be_valid
    end

    it 'has a required name' do 
      meal.name = ''
      expect(meal).not_to be_valid
      expect(meal.errors[:name]).to include("can't be blank")
    end

    it 'has a required description' do 
      meal.description = ''
      expect(meal).not_to be_valid
      expect(meal.errors[:description]).to include("can't be blank")
    end
  end
end
