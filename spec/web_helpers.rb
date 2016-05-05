def sign_in_and_play
  visit('/')
  fill_in 'player_1_name', with: 'Ina'
  fill_in 'player_2_name', with: 'Jonny'
  click_button 'Submit'
end

def attack_player_2
  click_button "Attack"
  visit("/player_1")
end

def attack_player_1
  click_button "Attack"
  visit("/player_2")
end
