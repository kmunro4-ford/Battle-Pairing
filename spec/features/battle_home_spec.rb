
describe Battle do
  feature 'Testing infrastructure' do
    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Testing infrastructure working!'
    end
  end

  feature 'Testing infrastructure' do
    scenario 'Shows users names after entering' do
      sign_in_and_play
      expect(page).to have_content 'Player 1 is Kelvin & Player 2 is Mike'
    end
  end

  feature 'Testing infrastructure' do
    scenario "Can show player 2's points" do
      sign_in_and_play
      expect(page).to have_content "Mike's Points = 100"
    end
  end

  feature 'Testing infrastructure' do
    scenario "Player 1 can attack Player 2" do
      sign_in_and_play
      attack_player_2
      expect(page).to have_content "Kelvin attacked Mike"
    end
  end
end
