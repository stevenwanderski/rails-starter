require 'rails_helper'

describe 'Admin User: Forgot password', js: true do
  let!(:admin_user) { create(:admin_user) }

  it 'updates the admin user password' do
    token = admin_user.send_reset_password_instructions
    visit edit_admin_user_password_path(reset_password_token: token)
    fill_in 'Password', with: 'Testtest98'
    fill_in 'Password confirmation', with: 'Testtest98'
    click_button 'Submit'

    expect(page).to have_content('Your password has been changed successfully. You are now signed in.')
  end
end
