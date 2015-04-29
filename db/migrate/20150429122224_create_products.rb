class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
          t.string  :title
          t.integer :calories
          t.integer :fats
          t.integer :carbohydrates
          t.integer :vitamin_a
          t.integer :vitamin_b1
          t.integer :vitamin_b2
          t.integer :vitamin_b3
          t.integer :vitamin_b4
          t.integer :vitamin_b5
          t.integer :vitamin_b6
          t.integer :vitamin_b7
          t.integer :vitamin_b9
          t.integer :vitamin_b10
          t.integer :vitamin_b11
          t.integer :vitamin_b12
          t.integer :vitamin_b13
          t.integer :vitamin_b15
          t.integer :vitamin_c
          t.integer :vitamin_d
          t.integer :vitamin_e
          t.integer :vitamin_k
          t.integer :vitamin_n
          t.integer :vitamin_p
          t.integer :vitamin_u
          t.integer :calcium
          t.integer :iron
          t.integer :potassium
          t.integer :copper
          t.integer :manganese
          t.integer :magnesium
          t.integer :sodium
          t.integer :sulfur
          t.integer :silicon
          t.integer :zinc
          t.integer :selenium
          t.integer :chrome
          t.integer :iodine


          t.timestamps
    end
  end
end
