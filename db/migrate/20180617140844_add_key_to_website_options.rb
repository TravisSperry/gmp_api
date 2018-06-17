class AddKeyToWebsiteOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :website_options, :key, :string, null: false
  end
end
