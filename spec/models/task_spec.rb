require 'rails_helper'

RSpec.describe 'Taskモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:task) { FactoryBot.build(:task) }
    subject { test_task.valid? }
    context 'taskカラム' do
      let(:test_task) { task }
      it '空欄でないこと' do
        test_task.task_name = ''
        is_expected.to eq false;
      end
    end
  end
    context 'Gymモデルとの関係' do
      it 'N:1となっている' do
        expect(Task.reflect_on_association(:gym).macro).to eq :belongs_to
      end
    end
    context 'Gradeモデルとの関係' do
      it 'N:1となっている' do
        expect(Task.reflect_on_association(:grade).macro).to eq :belongs_to
      end
    end
  end