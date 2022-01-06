feature 'Entering names in form' do
  scenario 'submitting names' do
    sign_in_and_play

    expect(page).to have_content 'Rambo vs Jones'
  end
end
