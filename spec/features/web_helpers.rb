def sign_in_and_play
      visit '/'
      fill_in :player_1, with: 'Alex'
      fill_in :player_2, with: 'Naz'
      click_button 'Submit Player Names'
end
