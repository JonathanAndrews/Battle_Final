feature "adding players" do
  scenario "checks that players submit their names" do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end
