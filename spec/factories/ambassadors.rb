FactoryBot.define do

  factory :ambassador do
    sequence(:email) { |n| "ambassador#{n}@example.com" }
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    country Faker::Address.country

    initialize_with { Ambassador.find_or_create_by!(email: email)}
  end
end
