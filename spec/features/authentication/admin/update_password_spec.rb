require 'rails_helper'

describe 'Admin User: Update password', js: true do
  let!(:admin_user) { create(:admin_user) }

  it 'updates the user password' do
    login_as(admin_user)
    visit admin_account_edit_path
    fill_in 'Password', with: 'Testtest98'
    fill_in 'Password confirmation', with: 'Testtest98'
    click_button 'Submit'

    expect(page).to have_content('Successfully saved.')
    expect(admin_user.reload.valid_password?('Testtest98')).to eq(true)

    # User is still logged in
    visit admin_path
    expect(page).to have_button('Open user menu')
  end
end
