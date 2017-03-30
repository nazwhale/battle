require_relative '../../app'

feature 'input names' do
  scenario 'players can input names in a form' do
    sign_in_and_play
    expect(page).to have_content("Alex the Hippy with Naz the Hippy")
  end
end
