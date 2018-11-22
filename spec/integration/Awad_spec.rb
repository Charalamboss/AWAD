require 'spec_helper'
require 'rails_helper'

feature 'create customer' do
    scenario "can create customer" do
        visit '/airports/new'
        expect(page).to have_content('Name')
    end
end
