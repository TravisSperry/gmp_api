class CreateExplodingDotsChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :exploding_dots_chapters do |t|
      t.string :teaching_quide
      t.string :handout
      t.integer :number, null: false
      t.string :name, null: false

      t.timestamps
    end

    add_index :exploding_dots_chapters, :number, unique: true
  end
end
