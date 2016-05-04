require 'spec_helper'

feature 'attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Ina has attacked Jonny'
  end
end
