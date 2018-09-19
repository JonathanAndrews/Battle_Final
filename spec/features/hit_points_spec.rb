feature "player's hit points" do
  scenario "shows the players' hit points" do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens: 500HP'
  end
end
