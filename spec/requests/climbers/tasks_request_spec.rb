require 'rails_helper'

RSpec.describe 'Climbers::Tasks', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/climbers/tasks/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/climbers/tasks/show'
      expect(response).to have_http_status(:success)
    end
  end
end
