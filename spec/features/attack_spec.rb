feature 'Attack the opponent' do
    scenario 'Player 1 can attack Player 2' do
        sign_select_fight_pvsp
        click_button 'PUNCH'
        expect(page).to have_content("CHICKEN'S TURN !")
    end
    scenario 'Player 2 can attack Player 1' do
        sign_select_fight_pvsp
        click_button 'PUNCH'
        click_button 'SMASH'
        expect(page).to have_content("PETER'S TURN !")
    end
end