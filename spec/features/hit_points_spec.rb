feature 'player1 can see player2s hit points' do
scenario "player 1 can see player 2s hit points" do
  visit('/')
  fill_in :name_one, with: 'Jimmy'
  fill_in :name_two, with: 'Hoju'
  click_button 'Submit'
  expect(page).to have_content "Hoju: 60 HP"
end
end
