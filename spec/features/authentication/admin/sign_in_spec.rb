require 'rails_helper'

describe 'Admin User: Sign in', js: true do
  context 'user exists' do
    let!(:admin_user) { create(:admin_user) }

    it 'signs in the admin user' do
      visit new_admin_user_session_path
      fill_in 'Email', with: 'admin@admin.com'
      fill_in 'Password', with: 'testtest'
      click_button 'Sign in'

      expect(current_path).to eq(admin_path)
    end
  end

  context 'admin user does not exist' do
    it 'shows the error message' do
      visit new_admin_user_session_path
      fill_in 'Email', with: 'admin@admin.com'
      fill_in 'Password', with: 'testtest'
      click_button 'Sign in'

      expect(page).to have_content('Invalid email or password.')
    end
  end
end
