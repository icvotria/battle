feature 'View hit points' do
  scenario 'see player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Jones: 100 HP'
  end
end
