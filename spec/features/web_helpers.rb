def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Kelvin'
  fill_in 'player2', with: 'Mike'
  click_button 'Submit'
end

def attack_player_2
  click_button 'Attack Player 2'
end
