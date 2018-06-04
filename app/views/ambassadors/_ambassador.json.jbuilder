# frozen_string_literal: true

json.extract! ambassador, :id, :first_name, :last_name, :twitter, :email,
              :gmp_statement, :bio, :job_title, :bio, :created_at, :updated_at,
              :email_publishable, :website
json.country ambassador.country_name
json.profile_photo_url ambassador.profile_photo.url(:thumb) if ambassador.profile_photo
json.url ambassador_url(ambassador, format: :json)
