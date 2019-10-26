def sign_in_and_play
    visit('/')
    click_button('FIGHT!')
end

def sign_select_fight
    visit('/')
    click_button('FIGHT!')
    click_button('PLAYER VS PLAYER')
    click_button('Peter')
    click_button('Chicken')
end

def sign_select_fight_pvsp
    visit('/')
    click_button('FIGHT!')
    click_button('PLAYER VS PLAYER')
    click_button('Peter')
    click_button('Chicken')
    #sleep(5)
    
end

def three_round_fight
        click_button 'PUNCH'
        click_button 'Attack complete!'
        click_button 'PUNCH'
        click_button 'Attack complete!'
        click_button 'SMASH'
        click_button 'Attack complete!'
        click_button 'SMASH'
        click_button 'Attack complete!'
        click_button 'LAUGH'
        click_button 'Attack complete!'
end

def defeat_first_player
        click_button 'PUNCH'
        click_button 'Attack complete!'
        click_button 'DIRTY LOOK'
        click_button 'Attack complete!'
        click_button 'PUNCH'
        click_button 'Attack complete!'
        click_button 'DIRTY LOOK'
        click_button 'Attack complete!'
        click_button 'PUNCH'
        click_button 'Attack complete!'
        click_button 'DIRTY LOOK'
        click_button 'Attack complete!'
        click_button 'PUNCH'
        click_button 'Attack complete!'
        click_button 'DIRTY LOOK'
        click_button 'Attack complete!'
end