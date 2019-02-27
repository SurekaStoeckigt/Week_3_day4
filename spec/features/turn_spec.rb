feature 'switches turns' do

  scenario 'sees the current turn, at start of game' do
     sign_in_and_play
     expect(page).to have_content "Jimmy's turn"
  end

  scenario 'after player 1 attacks' do
     sign_in_and_play
     click_button 'Attack!'
     click_button 'OK'
     expect(page).not_to have_content "Jimmy's turn"
     expect(page).to have_content "Hoju's turn"
  end
  # scenario 'it is player1s turn from start of the round' do
  #   game = Game.new(player_1, player_2)
  #   expect(game.player_1_turn).to eq game.player_1
  # end
  #
  # scenario 'it is player1s turn from start of the round' do
  #   game = Game.new(player_1, player_2)
  #   game.player_2_turn
  #   expect(game.player_1_turn).to eq game.player_2
  # end
  #
  # scenario 'resets to player 1s turn after player 2 attacks' do
  #   game = Game.new(player_1, player_2)
  #   game.player_2_turn
  #   expect(game.reset_to_player_1_turn).to eq game.player_1
  # end

end
