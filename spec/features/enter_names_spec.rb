feature 'Entering names in form' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Rambo'
    fill_in :player_2_name, with: 'Jones'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Rambo vs Jones'
  end
end
