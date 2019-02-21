def sign_in_and_play
  visit('/')
  fill_in :name_one, with: 'Jimmy'
  fill_in :name_two, with: 'Hoju'
  click_button 'Submit'
end
