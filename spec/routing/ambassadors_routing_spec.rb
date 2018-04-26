# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AmbassadorsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/ambassadors').to route_to('ambassadors#index')
    end

    it 'routes to #new' do
      expect(get: '/ambassadors/new').to route_to('ambassadors#new')
    end

    it 'routes to #show' do
      expect(get: '/ambassadors/1').to route_to('ambassadors#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/ambassadors/1/edit').to route_to('ambassadors#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/ambassadors').to route_to('ambassadors#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/ambassadors/1').to route_to('ambassadors#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/ambassadors/1').to route_to('ambassadors#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/ambassadors/1').to route_to('ambassadors#destroy', id: '1')
    end
  end
end
