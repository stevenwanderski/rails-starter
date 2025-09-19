require 'rails_helper'

describe 'User: Update password', js: true do
  let!(:user) { create(:user) }

  before do
    login_as(user, scope: :user)
  end

  it 'updates the user password' do
    visit dashboard_account_edit_path
    fill_in 'Password', with: 'Testtest98'
    fill_in 'Password confirmation', with: 'Testtest98'
    click_button 'Submit'

    expect(page).to have_content('Successfully saved.')
    expect(user.reload.valid_password?('Testtest98')).to eq(true)

    # User is still logged in
    visit dashboard_path
    expect(page).to have_button('Open user menu')
  end
end
