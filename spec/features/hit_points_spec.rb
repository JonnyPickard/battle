require 'spec_helper'

feature 'View hit points' do
  scenario 'See player hit points' do
    sign_in_and_play
    expect(page).to have_content('Jonny: 60 hp')
    expect(page).to have_content('Ina: 60 hp')
  end
end
