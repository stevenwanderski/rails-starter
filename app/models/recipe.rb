# == Schema Information
#
# Table name: recipes
#
#  id         :bigint           not null, primary key
#  body       :text
#  image      :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Recipe < ApplicationRecord
end
