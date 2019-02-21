feature 'enter names' do
  scenario 'players see their names on screen after submitting in the form' do
    sign_in_and_play
    expect(page).to have_content 'Jimmy vs. Hoju'
  end

end
