# frozen_string_literal: true

class CreateExplodingDotsTranslations < ActiveRecord::Migration[5.2]
  def change
    create_table :exploding_dots_translations do |t|
      t.belongs_to :chapter, foreign_key: { to_table: :exploding_dots_chapters }
      t.string :language
      t.string :resource
    end
  end
end
