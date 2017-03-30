require_relative '../../app'

feature 'switches players' do
  scenario 'checks players have switched' do
    sign_in_and_play
    click_button 'Validate'
    click_button 'Sweet dude'
    expect(page).to have_content "Naz the Hippy is healing Alex the Hippy" 
  end
end
