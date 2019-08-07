feature 'Reducing HP' do
    scenario 'Player 2 HP is reduced after attack' do
        sign_select_fight
        click_button 'PUNCH'
        click_button 'Attack complete!'
        expect(page).to have_content("90 \\ CHICKEN")
    end
    scenario 'HP reduction with accordance to different attack types' do
        sign_select_fight
        three_round_fight
        expect(page).to have_content("40 \\ CHICKEN")
    end
end