class Ambassador < ApplicationRecord
  has_one_attached :profile_photo
  validates :email, presence: true

  def country_name
    country = ISO3166::Country[self.country]
    country.translations[I18n.locale.to_s] || country.name
  end
end
