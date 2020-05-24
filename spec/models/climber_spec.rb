require 'rails_helper'

RSpec.describe 'Climberモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:climber) { FactoryBot.build(:climber) }
    subject { test_climber.valid? }
    context 'nameカラム' do
      let(:test_climber) { climber }
      it '空欄でないこと' do
        test_climber.name = ''
        is_expected.to eq false;
      end
      it '2文字以上であること' do
        test_climber.name = Faker::Lorem.characters(number:1)
        is_expected.to eq false;
      end
      it '20文字以下であること' do
        test_climber.name = Faker::Lorem.characters(number:21)
        is_expected.to eq false;
      end
    end

    context 'introductionカラム' do
      let(:test_climber) { climber }
      it '30文字以下であること' do
        test_climber.introduction = Faker::Lorem.characters(number:31)
        is_expected.to eq false
      end
    end
  end
  describe 'アソシエーションのテスト' do
  #   context 'BattleHistorieモデルとの関係' do
  #     it '1:Nとなっている' do
  #       expect(Climber.reflect_on_association(:battle_historoys).macro).to eq :belongs_to
  #     end
  #   end
    context 'Battleモデルとの関係' do
      it '1:Nとなっている' do
        expect(Climber.reflect_on_association(:battles).macro).to eq :has_many
      end
    end
    context 'DoneTaskモデルとの関係' do
      it '1:Nとなっている' do
        expect(Climber.reflect_on_association(:done_tasks).macro).to eq :has_many
      end
    end
    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(Climber.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
    # context 'Notificationモデルとの関係' do
    #   it '1:Nとなっている' do
    #     expect(Climber.reflect_on_association(:notifications).macro).to eq :has_many
    #   end
    # end
    context 'Trophieモデルとの関係' do
      it '1:Nとなっている' do
        expect(Climber.reflect_on_association(:trophies).macro).to eq :has_many
      end
    end
  end
end