feature 'adding player names' do
  scenario ' ' do
    visit('/')
    fill_in("player_1_name", with: "Katy")
    fill_in('player_2_name', with: 'Katrina')
    click_button("Let's Battle!")
    expect(page).to have_content('Katy has entered the battle!')
    expect(page).to have_content('Katrina has entered the battle!')
  end
end
