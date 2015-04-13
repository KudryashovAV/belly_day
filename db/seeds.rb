require 'factory_girl_rails'

alex = FactoryGirl.create :user, email: 'alex@gmail.com'
kate = FactoryGirl.create :user, email: 'kate@gmail.com'
account1 = FactoryGirl.create :account,
                              user: alex,
                              name: 'Alexey',
                              age: 29,
                              sex: 'male',
                              weight: 95,
                              growth: 180,
                              hips: 60,
                              waist: 40
account2 = FactoryGirl.create :account,
                              user: kate,
                              name: 'Katerina',
                              age: 26,
                              sex: 'female',
                              weight: 77,
                              growth: 175,
                              hips: 60,
                              waist: 40
20.times do
  FactoryGirl.create :post
end
