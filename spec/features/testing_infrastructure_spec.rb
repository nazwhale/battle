require_relative '../../app'

describe Battle, :type => :feature do
  it 'checks / displays testing infrastructure message' do
    visit "/"
    expect(page).to have_content('Testing infrastructure working')
  end
end 
