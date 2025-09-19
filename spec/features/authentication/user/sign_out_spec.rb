require 'rails_helper'

describe 'User: Sign out', js: true do
  let!(:user) { create(:user) }

  it 'signs out the user' do
    login_as(user, scope: :user)
    visit dashboard_path

    click_button 'Open user menu'
    click_link 'Sign out'

    expect(current_path).to eq(root_path)
  end
end
