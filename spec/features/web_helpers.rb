def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Kelvin'
  fill_in :player2_name, with: 'Mike'
  click_button 'Submit'
end

def attack_player_2
  click_button 'Attack player 2'
end
