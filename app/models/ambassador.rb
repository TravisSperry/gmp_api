class Ambassador < ApplicationRecord
  has_one_attached :profile_photo
  validates :email, presence: true
end
