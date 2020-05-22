require 'rails_helper'

RSpec.describe 'Infoモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:info) { FactoryBot.build(:info) }
    subject { test_info.valid? }
    context 'infoカラム' do
      let(:test_info) { info }
      it '空欄でないこと' do
        test_info.info = ''
        is_expected.to eq false;
      end
    end
  end
    context 'Gymモデルとの関係' do
      it 'N:1となっている' do
        expect(Info.reflect_on_association(:gym).macro).to eq :belongs_to
      end
    end
  end