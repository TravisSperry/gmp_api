# frozen_string_literal: true

module ExplodingDots
  class Translation < ApplicationRecord
    mount_uploader :resource, ExplodingDots::ChapterResourceUploader

    belongs_to :chapter, class_name: 'ExplodingDots::Chapter',
                         inverse_of: :translations
  end
end
