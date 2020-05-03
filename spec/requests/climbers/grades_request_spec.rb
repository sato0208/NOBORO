require 'rails_helper'

RSpec.describe "Climbers::Grades", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/climbers/grades/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/climbers/grades/show"
      expect(response).to have_http_status(:success)
    end
  end

end
