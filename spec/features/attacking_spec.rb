feature 'Attacking' do
  # 'attack Player 2' scenario omitted

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack player 2'
    click_button 'Go Back'
    expect(page).not_to have_content "Mike's Points = 100"
    expect(page).to have_content "Mike's Points = 90"
  end
end
