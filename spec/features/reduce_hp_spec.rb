feature 'Reducing HP' do
    scenario 'Player 2 HP is reduced after attack' do
        sign_select_fight_pvsp
        click_button 'PUNCH'
        expect(page).to have_content("90 \\ CHICKEN")
    end
    scenario 'HP reduction with accordance to different attack types' do
        sign_select_fight_pvsp
        three_round_fight
        expect(page).to have_content("40 \\ CHICKEN")
    end
end