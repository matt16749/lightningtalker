# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    address {Faker::Address.street_address}
    city {Faker::Address.city}
    state {Faker::Address.state}
    zip {Faker::Address.zip}
  end
end
