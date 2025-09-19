require 'rails_helper'

describe 'Admin Recipes: Index', js: true do
  let!(:admin_user) { create(:admin_user) }

  before do
    login_as(admin_user, scope: :admin_user)
  end

  context 'when recipes exist' do
    let!(:recipe1) { create(:recipe, title: 'First Recipe') }
    let!(:recipe2) { create(:recipe, title: 'Second Recipe') }

    it 'shows the recipe list' do
      visit admin_recipes_path

      expect(page).to have_content('First Recipe')
      expect(page).to have_content('Second Recipe')
    end
  end

  context 'when recipes do not exist' do
    it 'shows the empty display' do
      visit admin_recipes_path

      expect(page).to have_content('No recipes.')
    end
  end
end