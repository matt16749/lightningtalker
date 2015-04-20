# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    email {Faker::Internet.email}
    
    factory :user_student do 
      isinstructor false
    end

    factory :user_instructor do 
      isinstructor true
    end
  end
end
