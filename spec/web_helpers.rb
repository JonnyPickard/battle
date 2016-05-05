def sign_in_and_play
  visit('/')
  fill_in 'player_1_name', with: 'Ina'
  fill_in 'player_2_name', with: 'Jonny'
  click_button 'Submit'
end

def attack_player_2
  visit("/player_1")
  click_button "Attack"
  click_button "End Turn"
end

def attack_player_1
  visit("/player_2")
  click_button "Attack"
  click_button "End Turn"
end
