feature 'Attacking' do
  # 'attack Player 2' scenario omitted

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack player 2'
    click_link 'OK'
    expect(page).not_to have_content ': 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end
