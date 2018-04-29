# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password 'password'

    initialize_with do
      User.find_or_create_by!(
        email: email,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
      )
    end
  end
end
