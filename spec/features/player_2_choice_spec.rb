feature 'Both players ready to fight' do
    scenario 'Both players selected their characters' do
        sign_in_and_select
        expect(page).not_to have_content('Error')
    end
end