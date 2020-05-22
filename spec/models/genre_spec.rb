require 'rails_helper'

RSpec.describe 'Genreモデルのテスト', type: :model do
    describe 'アソシエーションのテスト' do
      context 'Gymモデルとの関係' do
        it '1:Nとなっている' do
          expect(Genre.reflect_on_association(:gyms).macro).to eq :has_many
        end
      end
    end
end