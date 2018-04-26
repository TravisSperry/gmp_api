# frozen_string_literal: true

class CreateAmbassadors < ActiveRecord::Migration[5.2]
  def change
    create_table :ambassadors do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_photo
      t.string :country
      t.string :twitter
      t.string :email
      t.text :gmp_statement
      t.text :bio

      t.timestamps
    end
  end
end
