# frozen_string_literal: true

FactoryBot.define do
  factory :ambassador do
    sequence(:email) { |n| "ambassador#{n}@example.com" }
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    country Faker::Address.country_code
    gmp_statement Faker::TheFreshPrinceOfBelAir.quote
    bio Faker::TheFreshPrinceOfBelAir.quote

    initialize_with do
      Ambassador.find_or_create_by!(email: email,
                                    first_name: first_name,
                                    last_name: last_name,
                                    country: country,
                                    gmp_statement: gmp_statement,
                                    bio: bio)
    end
  end
end
