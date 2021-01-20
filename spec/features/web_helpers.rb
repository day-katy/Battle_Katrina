def sign_in_and_play 
  visit('/')
      fill_in("player_1_name", with: "Katy")
      fill_in('player_2_name', with: 'Katrina')
      click_button("Let's Battle!")
end