feature "attacking a player" do
  scenario 'Player 1 attacks Player 2' do 
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Katy has shanked Katrina!")
  end

  scenario 'Player 2 loses 10 HP points' do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Due to copious blood loss, Katrina has lost 10HP!")
  end

end