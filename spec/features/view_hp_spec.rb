feature 'viewing HPs' do
  scenario ' ' do
    sign_in_and_play
    expect(page).to have_content('Katy: 100HP!')
    expect(page).to have_content('Katrina: 100HP!')
  end
end
