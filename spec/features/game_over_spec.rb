<<<<<<< HEAD
feature 'Game Over!' do

  context 'when Player1 reaches 0HP first' do
     before do
       sign_in_and_play
       attack_and_confirm
       allow(Kernel).to receive(:rand).and_return 60
     end

   #  scenario 'Player1 loses' do
   #   click_button "Attack!"
   #   expect(page).to have_content "Jimmy loses!"
   # end
 end
end
=======
feature 'Game over' do
	  context 'when Player 1 reaches 0 HP first' do
	    before do
	      sign_in_and_play
	      attack_and_confirm
        allow(Kernel).to receive(:rand).and_return(60)
	    end

	    scenario 'Player 1 loses' do
	      click_button 'Attack'
	      expect(page).to have_content 'Jimmy loses!'
	    end
	  end
	end
>>>>>>> 32ba25cd28cfedf7f4555e8bb732018163ceef62
