# frozen_string_literal: true

class Ambassador < ApplicationRecord
  has_one_attached :profile_photo
  validates :email, presence: true

  def country_name
    return country unless country.length == 2
    country = ISO3166::Country[self.country]
    country.translations[I18n.locale.to_s] || country.name
  end
end
