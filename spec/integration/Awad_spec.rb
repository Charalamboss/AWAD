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
		expect(page).to have_content(import)
		click_button'Add Airports'
		#https://www.youtube.com/watch?v=W8pohTautj8
	end
end

feature 'search for flight' do
	scenario "Auto complete search" do
		visit '/quesry/new' 
		fill_in 'Destination', :with=>'LHR'
		#https://www.youtube.com/watch?v=M7yhPlIehFA
	end
end

feature 'Look Travel' do
    scenario "Search for Travel" do
        visit '/Quotes'
        expect(page).to have_content('From')
		expect(page).to have_content('TO')
        expect(page).to have_content('Depart')
		expect(page).to have_content('Return')
        fill_in 'From', :with=>'London'
		fill_in 'To', :with=>'Larnaca'
        select(value=2018/11/27, from: 'Depart') #https://stackoverflow.com/questions/6729786/how-to-select-date-from-a-select-box-using-capybara-in-rails-3
		select(value=2018/11/30, from: 'Return')
        click_button 'Look For Journey'
    end
	scenario "Reply show Results" do
	visit '/Quotes/reply'
		expect(page).to have_content('From')
		expect(page).to have_content('To')
		expect(page).to have_content('Airline')
		expect(page).to have_content('Date')
		expect(page).to have_content('Time')
		expect(page).to have_content('Price')
		expect(page).to have_content('Airlines statistics')
	end
end

feature 'Select ticket' do
	scenario "Select ticket" do
	expect(page).to have_content('ticket')
	expect(page).to have_content('pick a ticket')
	expect(page).to have_content('Weather Data')
	expect(page).to have_content('Crime Data')
	expect(page).to have_content('Big mac inderx')
	click_button 'Proceed with Purchase'
	end
end

feature 'Buy' do
	scenario "buy Tickets" do
	expect(page).to have_content('Credit Card')
	expect(page).to have_content('Ticket')
	end
end


feature 'Save Searches' do
	scenario "Login" do
	visit '/login'	
	expect(page).to have_content('User Name')
	expect(page).to have_content('Password')
	fill_in 'User Name', :with=>'John'
	fill_in 'Password', :with=>'123456'
	end
end

