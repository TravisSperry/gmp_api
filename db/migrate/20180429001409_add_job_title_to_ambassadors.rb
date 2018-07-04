# frozen_string_literal: true

class AddJobTitleToAmbassadors < ActiveRecord::Migration[5.2]
  def change
    add_column :ambassadors, :job_title, :string
    add_column :ambassadors, :source, :text
    add_column :ambassadors, :additional_details, :text
  end
end
