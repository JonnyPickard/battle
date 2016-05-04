require 'spec_helper'

feature 'Player adds their name' do
	scenario 'with valid name' do
		sign_in_and_play
		expect(page).to have_content('Ina vs Jonny')
	end
end
