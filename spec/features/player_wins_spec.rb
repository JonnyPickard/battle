require "spec_helper"

feature "Player 1 wins" do
  scenario "Player 2 has 0 hp" do
    sign_in_and_play
    20.times { attack_player_2 }
    expect(page).to have_content("Ina has won!")
  end
end

feature "Player 2 wins" do
  scenario "Player 1 has 0 hp" do
    sign_in_and_play
    20.times { attack_player_1 }
    expect(page).to have_content("Jonny has won!")
  end
end
