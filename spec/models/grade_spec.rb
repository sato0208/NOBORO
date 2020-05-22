require 'rails_helper'

  RSpec.describe 'Gradeモデルのテスト', type: :model do
    describe 'アソシエーションのテスト' do
      context 'Taskモデルとの関係' do
        it '1:Nとなっている' do
          expect(Grade.reflect_on_association(:tasks).macro).to eq :has_many
        end
      end
    end
  end