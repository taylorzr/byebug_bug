require 'rails_helper'

feature 'Home', js: true do
	scenario 'Byebug does not hang' do
		visit root_path

		expect(page).to have_selector('h1', visible: true)
		# byebug # run page.find('h1') to reproduce the hang
	end
end
