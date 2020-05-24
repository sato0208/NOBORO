require 'rails_helper'

RSpec.describe "BattleHistorys", type: :request do
  let(:climber) { create(:climber) }
  let!(:test_climber2) { create(:climber) }
  before do
    visit new_climber_session_path
    fill_in 'climber[email]', with: climber.email
    fill_in 'climber[password]', with: climber.password
    click_button 'ログイン'
  end
end
