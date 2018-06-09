class RemoveVerfiedFromAmbassadors < ActiveRecord::Migration[5.2]
  def change
    remove_column :ambassadors, :verified, :boolean
  end
end
