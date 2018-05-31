class AddProfilePhotoToAmbassadors < ActiveRecord::Migration[5.2]
  def change
    add_column :ambassadors, :profile_photo, :string
  end
end
