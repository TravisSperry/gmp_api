# frozen_string_literal: true

json.array! @website_option_types, partial: 'website_option_types/website_option_type',
                                   as: :website_option_type
