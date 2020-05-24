require 'rails_helper'

RSpec.describe 'Gyms::Climbers', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/gyms/climbers'
      expect(response).to have_http_status(:success)
    end
  end
end
