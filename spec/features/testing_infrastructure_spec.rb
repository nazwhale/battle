require_relative '../../app'

  feature 'testing infrastructure' do
    before do
      visit '/'
      fill_in :player_1, with: 'Alex'
      fill_in :player_2, with: 'Naz'
      click_button 'Submit Player Names'
    end

    scenario 'players can input names in a form' do
      expect(page).to have_content("Alex the Hippy with Naz the Hippy")
    end
    
    scenario 'displays player 2 HP' do
      expect(page).to have_content("Naz's HP: 1")
    end

  end
