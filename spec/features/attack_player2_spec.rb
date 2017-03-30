require 'capybara/rspec'

feature "Attack player 2" do
  scenario "attacks player 2" do
    sign_in_and_play
    click_button "Validate"
    expect(page).to have_content("You validated your bro dude!")
  end
end
