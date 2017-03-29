require_relative '../../app'

  feature 'checks / displays testing infrastructure message' do
      scenario 'Can run app and check page content' do
    visit "/"
    expect(page).to have_content('Testing infrastructure working')
  end
    scenario 'players can input names in a form' do
      visit "/"
        fill_in 'player_1', with: 'Alex'
        fill_in 'player_2', with: 'Naz'
        click_button 'Submit Player Names'
      expect(page).to have_content("Player 1: Alex\nPlayer 2: Naz")
    end
end
