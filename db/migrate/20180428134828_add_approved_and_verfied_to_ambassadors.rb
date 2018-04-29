# frozen_string_literal: true

class AddApprovedAndVerfiedToAmbassadors < ActiveRecord::Migration[5.2]
  def change
    add_column :ambassadors, :approved, :boolean, default: false
    add_column :ambassadors, :verified, :boolean, default: false
  end
end
