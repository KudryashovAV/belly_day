FactoryGirl.define do
  factory :account do
    association :user
    name { Faker::Name.name }
    age '24'
    sex { %w(male female).sample }
    weight { rand(100) + 40 }
    growth { rand(100) + 150 }
    hips   { rand(70) + 50 }
    waist  { rand(40) + 10 }
  end
end
