require 'rails_helper'

describe 'ヘッダーのテスト' do
  describe 'ログインしていない場合' do
    before do
      visit root_path
    end
    context 'ヘッダーの表示を確認' do
      subject { page }
      it 'topが表示される' do
        is_expected.to have_content 'top'
      end
      it 'Aboutリンクが表示される' do
        about_link = find_all('a')[1].native.inner_text
        expect(about_link).to match(/about/i)
        #is_expected.to have_content 'About'
      end
      it 'Sign upリンクが表示される' do
        signup_link = find_all('a')[2].native.inner_text
        expect(signup_link).to match(/sign up/i)
        #is_expected.to have_content 'Sign up'
      end
      it 'loginリンクが表示される' do
        login_link = find_all('a')[3].native.inner_text
        expect(login_link).to match(/login/i)
        #is_expected.to have_content 'login'
      end
    end
    context 'ヘッダーのリンクを確認' do
      subject { current_path }
      # it 'About画面に遷移する' do
      #   about_link = find_all('a')[1].native.inner_text
      #   about_link = about_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
      #   click_link about_link
      #   is_expected.to eq('/home/about')
      # end
      it '新規登録画面に遷移する' do
        signup_link = find_all('a')[2].native.inner_text
        signup_link = signup_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link signup_link
        is_expected.to eq(new_climber_registration_path)
      end
      it 'ログイン画面に遷移する' do
        login_link = find_all('a')[3].native.inner_text
        login_link = login_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link login_link
        is_expected.to eq(new_climber_session_path)
      end
    end
  end

  describe 'ログインしている場合' do
    let(:climber) { create(:climber) }
    before do
      visit new_climber_session_path
      fill_in 'climber[email]', with: climber.email
      fill_in 'climber[password]', with: climber.password
      click_button 'ログイン'
    end
    context 'ヘッダーの表示を確認' do
      subject { page }
      it 'マイページが表示される' do
        is_expected.to have_content 'マイページ'
      end
      # it 'Homeリンクが表示される' do
      #   home_link = find_all('a')[0].native.inner_text
      #   expect(home_link).to match(/home/i)
      # end
      it 'バトルリンクが表示される' do
        battles_link = find_all('バトル')[1].native.inner_text
        expect(battles_link).to match(/battles/i)
      end
      it '通知リンクが表示される' do
        notifications_link = find_all('通知')[2].native.inner_text
        expect(notifications_link).to match(/notifications/i)
      end
      it 'logoutリンクが表示される' do
        logout_link = find_all('ログアウト')[3].native.inner_text
        expect(logout_link).to match(/logout/i)
      end
    end

    context 'ヘッダーのリンクを確認' do
      subject { current_path }
      # it 'Home画面に遷移する' do
      #   home_link = find_all('a')[0].native.inner_text
      #   home_link = home_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
      #   click_link home_link
      #   is_expected.to eq('/climbers/'+climber.id.to_s)
      # end
      it 'logoutする' do
        ###
        expect(page).to have_link 'ログアウト'
        click_link 'ログアウト'
        ###
        expect(page).to have_content 'ログアウトしました'
      end
    end
  end
end
