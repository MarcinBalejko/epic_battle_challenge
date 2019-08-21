feature 'Select game mode' do
    scenario 'Player can select single player mode' do
        visit('/')
        click_button('FIGHT!')
        click_button('SINGLE PLAYER')
        expect(page).to have_content 'Select Your Character'
    end
    scenario 'Player can select player vs player mode' do
        visit('/')
        click_button('FIGHT!')
        click_button('PLAYER VS PLAYER')
        click_button('Peter')
        page.should have_button('Chicken')
    end
end
feature 'Computer randomly selected character' do
    scenario 'Computer controlled player randomly selects his own character' do
        visit('/')
        click_button('FIGHT!')
        click_button('SINGLE PLAYER')
        click_button('Peter')
        visit('/attack_single_p1')
        expect(page).not_to have_css("img[src*='blank2.png']")
    end
end