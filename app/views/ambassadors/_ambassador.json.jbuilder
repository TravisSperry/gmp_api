# frozen_string_literal: true

if ambassador.profile_photo.attached? && Rails.application.config.active_storage.service == :google
  profile_photo_url =
    ambassador.profile_photo.service_url
elsif ambassador.profile_photo.attached? && Rails.application.config.active_storage.service == :local
  profile_photo_url =
    rails_blob_url(ambassador.profile_photo)
end

json.extract! ambassador, :id, :first_name, :last_name, :country_name, :twitter, :email, :gmp_statement, :bio, :created_at, :updated_at
json.profile_photo_url profile_photo_url if profile_photo_url
json.url ambassador_url(ambassador, format: :json)
