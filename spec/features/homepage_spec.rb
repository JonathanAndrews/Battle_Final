feature "testing homepage" do
  scenario "checks that the test is working" do
    visit "/"
    expect(page).to have_text("Testing infrastructure working!")
  end
end
