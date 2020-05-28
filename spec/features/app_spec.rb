require "capybara/rspec"

feature "battle" do
  scenario "allows players to fill their names in a form" do
    visit("/")
    expect(find_field('name').value).to eq 'Victor'
  end
end


  # scenario "displays Testing infrastructure working!" do
  #   visit("/")
  #   expect(page).to have_content("Testing infrastructure working!")
