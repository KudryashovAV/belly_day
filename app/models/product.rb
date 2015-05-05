class Product < ActiveRecord::Base
  has_many :users, through: :meals
  has_many :meals

  VANDM = [:calories, :fats, :carbohydrates, :vitamin_a, :vitamin_b1,
           :vitamin_b2, :vitamin_b3, :vitamin_b4, :vitamin_b5, :vitamin_b6,
           :vitamin_b7, :vitamin_b9, :vitamin_b10, :vitamin_b11, :vitamin_b12,
           :vitamin_b13, :vitamin_b15, :vitamin_c, :vitamin_d, :vitamin_e,
           :vitamin_k, :vitamin_n, :vitamin_p, :vitamin_u, :calcium, :iron,
           :potassium, :copper, :manganese, :magnesium, :sodium, :sulfur,
           :silicon, :zinc, :selenium, :chrome, :iodine ]
end
