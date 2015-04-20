# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :request do
    subject {Faker::Lorem.sentence}
    description {Faker::Lorem.paragraph}        
  end
end
