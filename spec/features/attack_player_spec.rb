feature "attacks player" do
  scenario "attacks player and confirms" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end
end

feature "attacks player" do
  scenario "attacks player and reduce HP's by 10" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content  'Mittens HP remaining:40'
  end
end
