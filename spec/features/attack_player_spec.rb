feature "attacks player" do
  scenario " and confirms attack" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario " and confirms attack by oppenent" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end

  scenario "and reduce my HP's by 10" do
    sign_in_and_play
    click_button 'Attack'
    click_button "OK"
    click_button 'Attack'
    click_button "OK"
    expect(page).to have_content  'Dave: 40HP'
  end

  scenario "and reduce HP's by 10" do
    sign_in_and_play
    click_button 'Attack'
    click_button "OK"
    expect(page).to have_content  'Mittens: 40HP'
  end

feature "after attacking opponent" do
  scenario "returns to :play page after attack" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content  'BATTLE TIME!!!!'
  end
end
end
