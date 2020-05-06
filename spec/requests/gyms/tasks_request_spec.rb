require 'rails_helper'

RSpec.describe 'Gyms::Tasks', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/gyms/tasks/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /update' do
    it 'returns http success' do
      get '/gyms/tasks/update'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/gyms/tasks/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/gyms/tasks/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get '/gyms/tasks/edit'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/gyms/tasks/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
