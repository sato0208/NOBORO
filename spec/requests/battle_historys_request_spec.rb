require 'rails_helper'

RSpec.describe "BattleHistorys", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/battle_historys/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/battle_historys/create"
      expect(response).to have_http_status(:success)
    end
  end

end
