def sign_in_and_play
  visit('/')
  fill_in :name_one, with: 'Jimmy'
  fill_in :name_two, with: 'Hoju'
  click_button 'Submit'
end

def attack_and_confirm
<<<<<<< HEAD
  click_button "Attack!"
  click_button "OK"
end
=======
	  click_button 'Attack!'
	  click_button 'OK'
	end
>>>>>>> 32ba25cd28cfedf7f4555e8bb732018163ceef62
