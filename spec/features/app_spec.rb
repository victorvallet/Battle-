require "capybara/rspec"

feature "battle" do
  scenario "allows players to fill their names in a form" do
    visit("/")
    fill_in('name', with: 'Victor')
    expect(find_field('name').value).to eq 'Victor'
  end

  scenario "allows players to submit their name" do
    visit("/")
    expect(find('input.submit-name')).not_to be_nil
  end

  scenario "allows the user to see its name" do
    visit('/')
    fill_in('name', with: 'Rich')
    find('input.submit-name').click
    expect(page).to have_content('Rich')
  end
end


  # scenario "displays Testing infrastructure working!" do
  #   visit("/")
  #   expect(page).to have_content("Testing infrastructure working!")
