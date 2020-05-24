require 'rails_helper'

RSpec.describe 'Climbers::Gyms', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/gyms'
      expect(response).to have_http_status(:success)
    end
  end


  describe 'GET /search' do
    it 'returns http success' do
      get '/gyms/search'
      expect(response).to have_http_status(:success)
    end
  end
end
