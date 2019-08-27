feature 'Select game mode' do
    scenario 'Player can select single player mode' do
        sign_in_and_play
        click_button('SINGLE PLAYER')
        expect(page).to have_content 'Select Your Character'
    end
    scenario 'Player can select player vs player mode' do
        sign_in_and_play
        click_button('PLAYER VS PLAYER')
        click_button('Peter')
        expect(page).to have_button('Chicken')
    end
end
feature 'Computer emulates player 2' do
    scenario 'Computer controlled player randomly selects his own character' do
        sign_in_and_play
        click_button('SINGLE PLAYER')
        click_button('Peter')
        visit('/attack_single_p1')
        expect(page).not_to have_css("img[src*='blank2.png']")
    end
    scenario 'Computer controlled player makes a random attack on player 1' do
        sign_in_and_play
        click_button('SINGLE PLAYER')
        click_button('Peter')
        visit('/attack_single_p1')
        click_button('PUNCH')
        visit('/effect_single_player')
        visit('/attack_result_p1')
        visit('/effect_single_cpu')
        sleep (5)
        expect(page).not_to have_css('.hp-box-one-left')      
    end
end
