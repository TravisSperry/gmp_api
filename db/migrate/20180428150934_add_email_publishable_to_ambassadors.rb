# frozen_string_literal: true

class AddEmailPublishableToAmbassadors < ActiveRecord::Migration[5.2]
  def change
    add_column :ambassadors, :email_publishable, :boolean
  end
end
