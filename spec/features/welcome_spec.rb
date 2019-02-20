feature 'enter names' do
  scenario 'players see their names on screen after submitting in the form' do
    visit('/')
    fill_in :name_one, with: 'Jimmy'
    fill_in :name_two, with: 'Hoju'
    click_button 'Submit'
    expect(page).to have_content 'Jimmy vs. Hoju'
  end

  scenario "player 1 can see player 2's hit points" do
    visit('/')
    fill_in :name_one, with: 'Jimmy'
    fill_in :name_two, with: 'Hoju'
    click_button 'Submit'
    expect(page).to have_content 'Hoju: 30'
  end
end
