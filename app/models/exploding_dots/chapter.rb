# frozen_string_literal: true

module ExplodingDots
  class Chapter < ApplicationRecord
    validates :number, uniqueness: true

    mount_uploader :teaching_guide, ExplodingDots::ChapterResourceUploader
    mount_uploader :handout, ExplodingDots::ChapterResourceUploader

    has_many :translations, class_name: 'ExplodingDots::Translation',
                            dependent: :destroy,
                            inverse_of: :chapter

    accepts_nested_attributes_for :translations,  reject_if: :all_blank,
                                                  allow_destroy: true
  end
end
