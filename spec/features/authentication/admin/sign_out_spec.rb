require 'rails_helper'

describe 'Admin User: Sign out', js: true do
  let!(:admin_user) { create(:admin_user) }

  it 'signs out the admin user' do
    login_as(admin_user)
    visit admin_path

    click_button 'Open user menu'
    click_link 'Sign out'

    expect(current_path).to eq(root_path)
  end
end
