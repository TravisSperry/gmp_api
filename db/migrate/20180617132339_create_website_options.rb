# frozen_string_literal: true

class CreateWebsiteOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :website_options do |t|
      t.references :website_option_type, foreign_key: true, null: false
      t.boolean :active, default: false
      t.string :value

      t.timestamps
    end
  end
end
