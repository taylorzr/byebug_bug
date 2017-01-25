require 'rails_helper'

feature 'Home', js: true do
	scenario 'Byebug does not hang' do
		visit root_path

    # byebug # run `eval page.find('h1')` to reproduce the hang

		expect(page).to have_selector('h1', visible: true)
	end
end
