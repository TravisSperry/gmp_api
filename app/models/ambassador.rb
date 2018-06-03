# frozen_string_literal: true

class Ambassador < ApplicationRecord
  mount_uploader :profile_photo, ProfilePhotoUploader

  attr_accessor :crop_x, :crop_y, :crop_h, :crop_w

  after_update :crop_profile_photo

  validates_presence_of :first_name, :last_name, :country, :gmp_statement, :bio, :email

  scope :approved_and_verified, -> { where(approved: true, verified: true) }

  def country_name
    return country unless country.try(:length) == 2
    country = ISO3166::Country[self.country]
    country.translations[I18n.locale.to_s] || country.name
  end

  def crop_profile_photo
    profile_photo.recreate_versions! if crop_x.present?
  end
end
