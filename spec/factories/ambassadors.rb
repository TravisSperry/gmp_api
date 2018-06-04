# frozen_string_literal: true

FactoryBot.define do
  factory :ambassador do
    sequence(:email) { |n| "ambassador#{n}@example.com" }
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    country Faker::Address.country_code
    gmp_statement Faker::TheFreshPrinceOfBelAir.quote
    bio Faker::TheFreshPrinceOfBelAir.quote
    profile_photo { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'profile_photos', 'upload.jpg'), 'image/png') }

    # initialize_with do
    #   ambassador = Ambassador.find_or_create_by!(email: email,
    #                                 first_name: first_name,
    #                                 last_name: last_name,
    #                                 country: country,
    #                                 gmp_statement: gmp_statement,
    #                                 bio: bio)
    #   ambassador.tap do |ambassador|
    #     ambassador.profile_photo = File.open(Rails.root.join('spec', 'support', 'profile_photos', 'upload.png'))
    #     ambassador.save
    #   end
    # end
  end
end
