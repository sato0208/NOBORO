require 'rails_helper'

RSpec.describe 'Gyms::Grades', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/gyms/grades/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /update' do
    it 'returns http success' do
      get '/gyms/grades/update'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/gyms/grades/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/gyms/grades/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get '/gyms/grades/edit'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/gyms/grades/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
