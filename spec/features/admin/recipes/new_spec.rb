require 'rails_helper'

describe 'Admin Recipes: New', js: true do
  let!(:admin_user) { create(:admin_user) }

  before do
    login_as(admin_user, scope: :admin_user)
  end

  it 'creates a new recipe' do
    visit admin_recipes_path
    click_link 'New Recipe'

    fill_in 'Title', with: 'First Recipe'
    fill_in 'Body', with: 'Hello there.'
    click_button 'Save'

    expect(page).to have_content('Recipe was successfully created.')
    expect(page).to have_content('First Recipe')
  end
end