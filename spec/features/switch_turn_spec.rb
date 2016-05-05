require 'spec_helper'

feature 'Switches turn' do
  scenario 'Switches turn from player 1 to player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'End Turn'
    expect(page).to have_content "Jonny's turn"
  end

  scenario 'Switches turn from player 2 to player 1' do
    sign_in_and_play
    visit "/player_2"
    click_button 'Attack'
    click_button 'End Turn'
    expect(page).to have_content "Ina's turn"
  end
end
