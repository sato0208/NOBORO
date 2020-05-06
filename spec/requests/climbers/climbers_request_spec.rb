require 'rails_helper'

RSpec.describe 'Climbers::Climbers', type: :request do
  describe 'GET /show' do
    it 'returns http success' do
      get '/climbers/climbers/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get '/climbers/climbers/edit'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /update' do
    it 'returns http success' do
      get '/climbers/climbers/update'
      expect(response).to have_http_status(:success)
    end
  end
end
