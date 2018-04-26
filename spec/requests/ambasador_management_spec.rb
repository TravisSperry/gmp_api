# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Ambassadors', type: :request do
  let(:valid_session) { {} }

  describe 'JSON' do
    it 'serves multiple companies as JSON' do
      create_list(:ambassador, 3)
      get '/ambassadors', params: { format: :json }

      expect(response.status).to be(200)
      expect(JSON.parse(response.body).length).to eq(3)
    end

    it 'serves JSON with correct name field' do
      ambassador = create(:ambassador, first_name: 'Jane', last_name: 'Doe')
      get '/ambassadors/' + ambassador.to_param, params: { format: :json }

      expect(response.status).to be(200)
      expect(JSON.parse(response.body)['first_name']).to eq('Jane')
    end

    it 'serves JSON with correct country name field' do
      ambassador = create(:ambassador, country: 'US')
      get '/ambassadors/' + ambassador.to_param, params: { format: :json }
      
      expect(response.status).to be(200)
      expect(JSON.parse(response.body)['country']).to eq('United States')
    end
  end
end
