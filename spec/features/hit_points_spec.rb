feature 'player1 can see player2s hit points' do

scenario "player 1 can see player 2s hit points" do
  sign_in_and_play
  expect(page).to have_content "Hoju:60HP"
end

scenario "player 2 can see player 1s hit points" do
  sign_in_and_play
  expect(page).to have_content "Jimmy:60HP"
end

end
