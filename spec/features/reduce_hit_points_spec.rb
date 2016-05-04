require 'spec_helper'

feature 'reduce hitpoints' do
  scenario 'player one attacks player two' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Jonny: 50hp')
  end
end
