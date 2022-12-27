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
end
