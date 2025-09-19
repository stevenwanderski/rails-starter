require 'rails_helper'

describe 'User: Sign up', js: true do
  it 'signs up the user' do
    visit new_user_registration_path
    fill_in 'Email', with: 'frank@zappa.com'
    fill_in 'Password', with: 'testtest'
    fill_in 'Password confirmation', with: 'testtest'
    click_button 'Create account'

    expect(current_path).to eq(dashboard_path)
  end

  context 'user already exists' do
    let!(:user) { create(:user) }

    it 'shows the error message' do
      visit new_user_registration_path
      fill_in 'Email', with: 'frank@zappa.com'
      fill_in 'Password', with: 'testtest'
      fill_in 'Password confirmation', with: 'testtest'
      click_button 'Create account'

      expect(page).to have_content('Email has already been taken')
    end
  end
end
