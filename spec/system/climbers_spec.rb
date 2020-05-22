require 'rails_helper'

describe 'ユーザー認証のテスト' do
  describe 'ユーザー新規登録' do
    before do
      visit new_climber_registration_path
    end
    context '新規登録画面に遷移' do
      it '新規登録に成功する' do
        fill_in 'climber[name]', with: Faker::Internet.name(specifier: 5)
        fill_in 'climber[email]', with: Faker::Internet.email
        fill_in 'climber[password]', with: 'password'
        fill_in 'climber[password_confirmation]', with: 'password'
        click_button '新規登録'
        expect(page).to have_content 'successfully'
      end
      it '新規登録に失敗する' do
        fill_in 'climber[name]', with: ''
        fill_in 'climber[email]', with: ''
        fill_in 'climber[password]', with: ''
        fill_in 'climber[password_confirmation]', with: ''
        click_button '新規登録'
        expect(page).to have_content 'error'
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
        fill_in 'climber[name]', with: test_climber.name
        fill_in 'climber[password]', with: test_climber.password
        click_button 'ログイン'
        expect(page).to have_content 'successfully'
      end

      it 'ログインに失敗する' do
        fill_in 'climber[name]', with: ''
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
  let!(:done_task) { create(:done_task, climber: climber) }
  before do
    visit new_climber_session_path
    fill_in 'climber[name]', with: climber.name
    fill_in 'climber[password]', with: climber.password
    click_button 'ログイン'
  end

  describe '編集のテスト' do
    context '自分の編集画面への遷移' do
      it '遷移できる' do
        visit edit_climber_path(climber)
        expect(current_path).to eq('/climbers/' + climber.id.to_s + '/edit')
      end
    end
    context '他人の編集画面への遷移' do
      it '遷移できない' do
        visit edit_climber_path(test_climber2)
        expect(current_path).to eq('/climbers/' + climber.id.to_s)
      end
    end

    context '表示の確認' do
      before do
        visit edit_climber_path(climber)
      end
      it '名前編集フォームに自分の名前が表示される' do
        expect(page).to have_field 'climber[name]', with: climber.name
      end
      it '画像編集フォームが表示される' do
        expect(page).to have_field 'climber[profile_image]'
      end
      it '自己紹介編集フォームに自分の自己紹介が表示される' do
        expect(page).to have_field 'climber[introduction]', with: climber.introduction
      end
      it '編集に成功する' do
        click_button '編集内容を保存する'
        expect(page).to have_content 'update'
        expect(current_path).to eq('/climbers/' + climber.id.to_s)
      end
      it '編集に失敗する' do
        fill_in 'climber[name]', with: ''
        click_button '編集内容を保存する'
        expect(page).to have_content 'error'
				#もう少し詳細にエラー文出したい
        expect(current_path).to eq('/climbers/' + climber.id.to_s)
      end
    end
  end
end
