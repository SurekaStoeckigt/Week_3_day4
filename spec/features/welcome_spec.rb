

feature 'displays a welcome message', type: :feature do
  scenario 'tests infrastructure' do
    visit('/')
      expect(page).to have_content "Testing infrastructure working!"
  end
end
