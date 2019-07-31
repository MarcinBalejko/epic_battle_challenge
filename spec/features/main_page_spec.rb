feature 'Enter the main page' do
    scenario 'Player can enter the main page' do
        visit('/')
        expect(page).to have_selector(:link_or_button, 'Fight!')
    end
end