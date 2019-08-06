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