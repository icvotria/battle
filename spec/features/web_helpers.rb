def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Rambo'
  fill_in :player_2_name, with: 'Jones'
  click_on 'Submit'
end