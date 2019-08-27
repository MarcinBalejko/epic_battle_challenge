feature 'Player 1 character select' do
    scenario 'Player 1 can select one of the characters' do
        sign_in_and_play
        click_button('PLAYER VS PLAYER')
        click_button('Peter')
        expect(page).not_to have_content('Error')
    end
end