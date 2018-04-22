profile_photo_url =
  ambassador.profile_photo.service_url if ambassador.profile_photo.attached?

json.extract! ambassador, :id, :first_name, :last_name, :country, :twitter, :email, :gmp_statement, :bio, :created_at, :updated_at
json.profile_photo_url profile_photo_url
json.url ambassador_url(ambassador, format: :json)
