feature 'Attack the opponent' do
    scenario 'Player 1 can attack Player 2' do
        sign_select_fight
        click_button 'PUNCH'
        expect(page).not_to have_content("PETER'S TURN !!!")
    end
    scenario 'Player 2 can attack Player 1' do
        sign_select_fight
        click_button 'PUNCH'
        click_button 'Attack complete!'
        click_button 'KICK'
        click_button 'Attack complete!'
        expect(page).to have_content("PETER'S TURN !!!")
    end
end