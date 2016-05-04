require 'spec_helper'

feature 'View hit points' do
  scenario 'see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Jonny: 60hp')
  end
end
