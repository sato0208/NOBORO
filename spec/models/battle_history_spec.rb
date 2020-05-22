require 'rails_helper'

RSpec.describe  'BattleHistoryモデルのテスト', type: :model do
  describe 'アソシエーションのテスト' do
    context 'Climberモデルとの関係' do
      it 'N:1となっている' do
        expect(BattleHistory.reflect_on_association(:climber).macro).to eq :belongs_to
      end
    end
  end
end