feature 'Game over' do
    scenario 'the game can end' do
        sign_select_fight
        defeat_first_player
        expect(page).not_to have_content("PETER'S TURN !!!")
    end
    scenario 'the winner is revealed' do

    end
end