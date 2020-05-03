require 'rails_helper'

RSpec.describe "Gyms::Genres", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/gyms/genres/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/gyms/genres/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/gyms/genres/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/gyms/genres/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/gyms/genres/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/gyms/genres/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
