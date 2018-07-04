# frozen_string_literal: true

FactoryBot.define do
  factory :ambassador do
    sequence(:email) { |n| "ambassador#{n}@example.com" }
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    country Faker::Address.country_code
    gmp_statement Faker::TheFreshPrinceOfBelAir.quote
    bio Faker::TheFreshPrinceOfBelAir.quote
    profile_photo do
      Rack::Test::UploadedFile.new(
        Rails.root.join('spec', 'support', 'profile_photos', 'upload.jpg'), 'image/png'
      )
    end
  end
end
