# frozen_string_literal: true

json.extract! website_option_type, :id, :name, :created_at, :updated_at
json.url website_option_type_url(website_option_type, format: :json)
