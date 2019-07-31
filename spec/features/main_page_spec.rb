feature 'Enter the main page' do
    scenario 'Player can enter the main page' do
        visit('/')
        expect(page).to have_selector(:link_or_button, 'Fight!')
    end
end
feature 'Enter the character selection page' do
    scenario 'Player can proceed to the next page' do
        visit('/')
        click_button 'Fight!'
        expect(page).to have_content('Select Your Character')
    end
end