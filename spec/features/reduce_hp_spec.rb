feature 'Reducing HP' do
    scenario 'Player 2 HP is reduced after attack' do
        sign_select_fight
        click_button 'PUNCH'
        expect(page).to have_content("90 / CHICKEN")
    end
end