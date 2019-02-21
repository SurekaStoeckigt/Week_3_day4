feature 'player1 can see player2s hit points' do
scenario "player 1 can see player 2s hit points" do
  sign_in_and_play
  expect(page).to have_content "Hoju: 60 HP"
end
end
