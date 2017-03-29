require_relative '../../app'

  feature 'testing infrastructure' do

    scenario 'players can input names in a form' do
      sign_in_and_play
      expect(page).to have_content("Alex the Hippy with Naz the Hippy")
    end
    
    scenario 'displays player 2 HP' do
      sign_in_and_play
      expect(page).to have_content("Naz's HP: 1")
    end

  end
