require 'rails_helper'

describe 'Admin Recipes: Edit', js: true do
  let!(:admin_user) { create(:admin_user) }
  let!(:recipe) { create(:recipe, title: 'First Recipe') }

  before do
    login_as(admin_user, scope: :admin_user)
  end

  it 'edits a recipe' do
    visit admin_recipes_path
    click_link 'Edit'

    fill_in 'Title', with: 'First Recipe - Updated'
    click_button 'Save'

    expect(page).to have_content('Recipe was successfully updated.')
    expect(page).to have_content('First Recipe - Updated')
  end
end