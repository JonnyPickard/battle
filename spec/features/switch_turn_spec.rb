require 'spec_helper'

feature 'switches turn' do
  scenario 'switches turn from player 1 to player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'End Turn'
    expect(page).to have_content "Jonny's turn"
  end
end
