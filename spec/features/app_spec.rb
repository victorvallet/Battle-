require "capybara/rspec"

feature "battle" do
  scenario "allows players to fill their names in a form" do
    visit("/")
    fill_in('Player_1_name', with: 'Rich')
    expect(find_field('Player_1_name').value).to eq 'Rich'
  end

  scenario "allows players to fill their names in a form" do
    visit("/")
    fill_in('Player_2_name', with: 'Victor')
    expect(find_field('Player_2_name').value).to eq 'Victor'
  end

  scenario "allows players to submit their name" do
    visit("/")
    expect(find('input.submit-names')).not_to be_nil
  end

  scenario "allows the user to see its name" do
    visit('/')
    fill_in('Player_1_name', with: 'Rich')
    fill_in('Player_2_name', with: 'Victor')
    find('input.submit-names').click
    expect(page).to have_content('Rich')
    # expect(page).to have_content('Victor')
  end
end

  # scenario "displays Testing infrastructure working!" do
  #   visit("/")
  #   expect(page).to have_content("Testing infrastructure working!")

  # scenario "allows the user to see its name" do
  #   visit('/')
  #   fill_in('Player_2_name', with: 'Victor')
  #   find('input.submit-names').click
  #   expect(page).to have_content('Victor')
  # end
