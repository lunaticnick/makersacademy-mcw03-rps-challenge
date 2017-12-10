feature "Signing Up" do
  scenario "Player is greeted to the game" do
    visit ("/")
    expect(page).to have_text ("Welcome to Rock-Paper-Scissor Online Game")
  end

  scenario "Player needs to enter their name" do
    visit ("/")
    expect(page).to have_field ("player_one_name")
  end

  scenario "Player has entered their name" do
    visit ("/")
    fill_in :player_one_name, with: "Nikolaos"
    click_button ("Start the game")
    expect(page).to have_text("Welcome Nikolaos")

  end

  scenario "Player needs to choose their hand" do
    visit ("/")
    fill_in :player_one_name, with: "Nikolaos"
    click_button ("Start the game")
    expect(page).to have_text("Choose what you wish to use for this round:")
  end

end
