require_relative '../../app'
    
feature 'displays HP' do
  scenario 'displays player 2s HP' do
    sign_in_and_play
    expect(page).to have_content("Naz's HP: 1")
  end
end
