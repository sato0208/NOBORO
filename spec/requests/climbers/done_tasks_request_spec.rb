require 'rails_helper'

RSpec.describe 'Climbers::DoneTasks', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/climbers/done_tasks/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/climbers/done_tasks/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /update' do
    it 'returns http success' do
      get '/climbers/done_tasks/update'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/climbers/done_tasks/create'
      expect(response).to have_http_status(:success)
    end
  end
end
