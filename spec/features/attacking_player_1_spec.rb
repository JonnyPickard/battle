require 'spec_helper'

feature 'Attacking' do
  scenario 'Player 2 attacks player 1' do
    sign_in_and_play
    visit "/player_2"
    click_button 'Attack'
    expect(page).to have_content 'Jonny has attacked Ina'
  end
end
