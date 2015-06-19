FactoryGirl.define do
  factory :product do
    title { Faker::Lorem.sentence }
    body  { Faker::Lorem.paragraph(15) }
    published true
  end
end
