# frozen_string_literal: true

class ChangeTeachQuideToTeachingGuideOnChapters < ActiveRecord::Migration[5.2]
  def change
    rename_column :exploding_dots_chapters, :teaching_quide, :teaching_guide
  end
end
