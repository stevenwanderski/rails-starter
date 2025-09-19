require 'rails_helper'

describe 'Admin Recipes: Destroy', js: true do
  let!(:admin_user) { create(:admin_user) }
  let!(:recipe) { create(:recipe, title: 'First Recipe') }

  before do
    login_as(admin_user, scope: :admin_user)
  end

  it 'destroys a recipe' do
    visit admin_recipes_path
    click_link 'Edit'

    click_link 'Delete'
    accept_alert 'Are you sure?'

    expect(page).to have_content('Recipe was successfully destroyed.')
    expect(page).to have_content('No recipes.')
  end
end