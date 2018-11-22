require 'spec_helper'
require 'rails_helper'

feature 'create customer' do
    scenario "can create customer" do
        visit '/airports/new'
        expect(page).to have_content('Name')
    end
end
feature 'administrors add more airpirts' do
	scenario "csv import" do
		visit '/airports/new'
		expect(page).to have_content(Import)
		click_button'Add Airports'
		#https://www.youtube.com/watch?v=W8pohTautj8
	end
end

feature 'search for flight' do
	scenario "Auto complete search" do
		visit '/quesry/new' 
		fill_in 'Destination', :with=>'LHR'
	end
end