# frozen_string_literal: true

class WebsiteOptionType < ApplicationRecord
  CONFIGURATION = 'configuration'

  def self.configuration
    find_by(name: 'configuration')
  end
end
