# frozen_string_literal: true

def create_ambassador
  Ambassador.create! first_name: Faker::Name.unique.first_name,
                     last_name:  Faker::Name.unique.last_name,
                     email:      Faker::Internet.email,
                     country:    Faker::Address.country,
                     approved:   [true, false].sample
end

def create_user
  user = User.find_or_create_by! email: 'info@globalmathproject.org',
                                 first_name: 'Travis',
                                 last_name: 'Sperry'

  user.password = 'password'
  user.password_confirmation = 'password'
  user.save!
end

create_user
