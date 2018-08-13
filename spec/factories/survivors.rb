require 'faker'

FactoryBot.define do
  factory :survivor do
    name Faker::Name.name
    age Faker::Number.between(10, 50) 
    gender Faker::Gender.binary_type
    last_location "MyString"
  end
end
