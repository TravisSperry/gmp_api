# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ambassador, type: :model do
  describe '#country_name' do
    it 'displays the country name of the ambassador' do
      ambassador = create :ambassador, country: 'US'
      expect(ambassador.country_name).to eq 'United States'
    end
  end
end
