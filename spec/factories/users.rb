# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password 'password'

    initialize_with { User.find_or_create_by!(email: email) }
  end
end
