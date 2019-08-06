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