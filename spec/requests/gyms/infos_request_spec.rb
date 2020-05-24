require 'rails_helper'

RSpec.describe 'Gyms::Infos', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/gyms/infos'
      expect(response).to have_http_status(:success)
    end
  end

end
