require 'rails_helper'

RSpec.describe "Infos", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/infos/index"
      expect(response).to have_http_status(:success)
    end
  end

end
