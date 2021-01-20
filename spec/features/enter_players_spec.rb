feature 'adding player names' do
  scenario 'Can input player names and return start battle!' do
    sign_in_and_play
    expect(page).to have_content('Katy has entered the battle!')
    expect(page).to have_content('Katrina has entered the battle!')
  end
end
