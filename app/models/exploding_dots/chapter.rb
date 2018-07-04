# frozen_string_literal: true

module ExplodingDots
  class Chapter < ApplicationRecord
    validates :number, uniqueness: true

    mount_uploader :teaching_quide, ExplodingDotsChapterResourceUploader
    mount_uploader :handout, ExplodingDotsChapterResourceUploader
  end
end
