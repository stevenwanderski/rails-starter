require 'rails_helper'

describe 'User: Sign in', js: true do
  context 'user exists' do
    let!(:user) { create(:user) }

    it 'signs in the user' do
      visit new_user_session_path
      fill_in 'Email', with: 'frank@zappa.com'
      fill_in 'Password', with: 'testtest'
      click_button 'Sign in'

      expect(current_path).to eq(dashboard_path)
    end
  end

  context 'user does not exist' do
    it 'shows the error message' do
      visit new_user_session_path
      fill_in 'Email', with: 'frank@zappa.com'
      fill_in 'Password', with: 'testtest'
      click_button 'Sign in'

      expect(page).to have_content('Invalid email or password.')
    end
  end
end
