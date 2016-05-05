require 'spec_helper'

feature 'Reduce hitpoints' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to_not have_content('Jonny: 60 hp')
  end

  scenario 'Player 2 attacks player 1' do
    sign_in_and_play
    visit "/player_2"
    click_button 'Attack'
    expect(page).to_not have_content('Ina: 60 hp')
  end
end
