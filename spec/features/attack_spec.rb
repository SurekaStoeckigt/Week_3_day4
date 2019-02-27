feature 'players attack and receive confirmation' do

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "Jimmy has attacked Hoju!"
  end

  scenario 'reduces Player2s hit points when Player1 attacks Player2'  do
    sign_in_and_play
    click_button "Attack!"
    click_button "OK"
    expect(page).to have_content "Hoju:50HP"
  end


  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    click_button "Attack!"
    click_button "OK"
    click_button "Attack!"
    expect(page).to have_content "Hoju has attacked Jimmy"
  end

end
