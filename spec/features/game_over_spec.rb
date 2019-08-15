feature 'Game over' do
    scenario 'the game can end' do
        sign_select_fight
        defeat_first_player
        expect(page).not_to have_content("PETER'S TURN !!!")
    end
    scenario 'the winner can be revealed' do
        sign_select_fight
        defeat_first_player
        expect(page).to have_content("CHICKEN", count: 2)
    end
    scenario 'loser\'s image changes' do
        sign_select_fight
        defeat_first_player
        expect(page).to have_css("img[src*='peter_beaten.png']")
    end
end