def sign_in_and_play 
  visit('/')
      fill_in("player_1", with: "Katy")
      fill_in('player_2', with: 'Katrina')
      click_button("Let's Battle!")
end