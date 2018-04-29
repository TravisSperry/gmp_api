# frozen_string_literal: true

class AddWebsiteToAmbassadors < ActiveRecord::Migration[5.2]
  def change
    add_column :ambassadors, :website, :string
  end
end
