require 'spec_helper'

feature 'Attacking' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Ina has attacked Jonny'
  end

  scenario 'Player 2 attacks player 1' do
    sign_in_and_play
    visit "/player_2"
    click_button 'Attack'
    expect(page).to have_content 'Jonny has attacked Ina'
  end
end
