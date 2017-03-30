require_relative '../../app'
    
feature 'displays HP' do
  scenario 'displays player 2s HP' do
    sign_in_and_play
    expect(page).to have_content("Naz's HP: 1")
  end
end

feature 'changes HP' do
  scenario 'changes player 2s HP by 10' do
    sign_in_and_play
    click_button 'Validate'
    expect(page).to have_content("Naz's HP: 11")
  end
  
  scenario 'displays player 2s HP as higher after validation' do
    sign_in_and_play
    click_button 'Validate'
    click_button 'Sweet dude'
    expect(page).to have_content("Naz's HP: 11")
  end
end


