# frozen_string_literal: true

class WebsiteOption < ApplicationRecord
  belongs_to :website_option_type
end
