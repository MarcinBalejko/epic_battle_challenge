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