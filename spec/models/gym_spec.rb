require 'rails_helper'

RSpec.describe 'Gymモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:gym) { FactoryBot.build(:gym) }
    subject { test_gym.valid? }
    context 'gym_nameカラム' do
      let(:test_gym) { gym }
      it '空欄でないこと' do
        test_gym.gym_name = ''
        is_expected.to eq false;
      end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Taskモデルとの関係' do
      it '1:Nとなっている' do
        expect(Gym.reflect_on_association(:tasks).macro).to eq :has_many
      end
    end
    context 'Infoモデルとの関係' do
      it '1:Nとなっている' do
        expect(Gym.reflect_on_association(:infos).macro).to eq :has_many
      end
    end
    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(Gym.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
    context 'Genreモデルとの関係' do
      it 'N:1となっている' do
        expect(Gym.reflect_on_association(:genre).macro).to eq :belongs_to
      end
    end
  end
end