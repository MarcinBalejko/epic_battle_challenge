def sign_in_and_play
    visit('/')
    click_button('FIGHT!')
end

def sign_in_and_select
    visit('/')
    click_button('FIGHT!')
    click_button('Peter')
    click_button('Chicken')
end

def sign_select_fight
    visit('/')
    click_button('FIGHT!')
    click_button('Peter')
    click_button('Chicken')
    click_button('Chicken')
end

def three_round_fight
        click_button 'PUNCH'
        click_button 'Attack complete!'
        click_button 'PUNCH'
        click_button 'Attack complete!'
        click_button 'KICK'
        click_button 'Attack complete!'
        click_button 'KICK'
        click_button 'Attack complete!'
        click_button 'LAUGH'
        click_button 'Attack complete!'
end