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
class Meal < ApplicationRecord

  validates_presence_of :name, :description
  validates :name, uniqueness: true
  validates :description, length: { minimum: 25, message: "Please provide a longer description!" }

end
