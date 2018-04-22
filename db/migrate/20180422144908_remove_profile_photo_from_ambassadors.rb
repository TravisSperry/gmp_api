# frozen_string_literal: true

class RemoveProfilePhotoFromAmbassadors < ActiveRecord::Migration[5.2]
  def change
    remove_column :ambassadors, :profile_photo, :string
  end
end
