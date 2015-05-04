class Product < ActiveRecord::Base
  has_many :users, through: :meals
  has_many :meals
end
