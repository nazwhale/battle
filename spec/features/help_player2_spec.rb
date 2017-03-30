require 'capybara/rspec'

feature "Help player 2" do
  scenario "help player 2" do
    sign_in_and_play
    click_button "Validate"
    expect(page).to have_content("You validated your bro, dude!")
  end
end
