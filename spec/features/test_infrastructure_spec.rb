feature 'testing infrastructure' do
  scenario "can rup app and check page content" do
    visit('/')
    expect(page).to have_content "Welcome to Battle!"
  end
end
