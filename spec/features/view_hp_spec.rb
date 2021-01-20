feature 'viewing HPs' do
  scenario ' ' do
    visit('/')
    fill_in("player_1_name", with: "Katy")
    fill_in('player_2_name', with: 'Katrina')
    click_button("Let's Battle!")
    expect(page).to have_content('Katy: 100HP!')
    expect(page).to have_content('Katrina: 100HP!')
  end
end
