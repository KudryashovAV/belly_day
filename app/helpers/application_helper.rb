module ApplicationHelper
  def calculation(product, meal)
    if product
      ((product * meal).to_f/100.0).round 3
    else
      "0"
    end
  end

  def calculate(meal, meth)
    calculation(meal.product.send(meth), meal.weight)
  end

  def food_profit(meals)
    meals.reduce(Hash.new(0)) { |acc, meal|
      acc.merge(extract_food_profit(meal)) do |_, old_val, new_val|
        old_val + new_val
      end
    }
  end

  def extract_food_profit(meal)
    Product::VANDM.reduce({}) { |acc, field| acc.merge(field => calculate(meal, field)) }
  end

end
