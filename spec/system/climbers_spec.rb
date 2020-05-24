require 'rails_helper'

describe 'ユーザー認証のテスト' do
  describe 'ユーザー新規登録' do
    before do
      visit new_climber_registration_path
    end
    context '新規登録画面に遷移' do
      it '新規登録に成功する' do
        fill_in 'climber[name]', with: 'test'#Faker::Internet.name(specifier: 5)
        fill_in 'climber[email]', with: 'test@test.com'# Faker::Internet.email
        fill_in 'climber[password]', with: 'password'
        fill_in 'climber[password_confirmation]', with: 'password'
        click_button '新規登録'
        expect(page).to have_content 'アカウント登録が完了しました。'
      end
      it '新規登録に失敗する' do
        fill_in 'climber[name]', with: ''
        fill_in 'climber[email]', with: ''
        fill_in 'climber[password]', with: ''
        fill_in 'climber[password_confirmation]', with: ''
        click_button '新規登録'
        expect(page).to have_content '4 件のエラーが発生したため'
      end
    end
  end
  describe 'ユーザーログイン' do
    let(:climber) { create(:climber) }
    before do
      visit new_climber_session_path
    end
    context 'ログイン画面に遷移' do
      let(:test_climber) { climber }
      it 'ログインに成功する' do
        fill_in 'climber[email]', with: test_climber.email
        fill_in 'climber[password]', with: test_climber.password
        click_button 'ログイン'
        expect(page).to have_content 'ログインしました。'
      end

      it 'ログインに失敗する' do
        fill_in 'climber[email]', with: ''
        fill_in 'climber[password]', with: ''
        click_button 'ログイン'
        expect(current_path).to eq(new_climber_session_path)
      end
    end
  end
end

describe 'ユーザーのテスト' do
  let(:climber) { create(:climber) }
  let!(:test_climber2) { create(:climber) }
  before do
    visit new_climber_session_path
    fill_in 'climber[email]', with: climber.email
    fill_in 'climber[password]', with: climber.password
    click_button 'ログイン'
  end

  describe '編集のテスト' do
    context '自分の編集画面への遷移' do
      it '遷移できる' do
        visit edit_climber_path(climber.id)
        expect(current_path).to eq('/climbers/' + climber.id.to_s + '/edit')
      end
    end
  end
end
