def sign_in_and_play
    visit('/')
    click_button('Fight!')
end

def sign_in_and_select
    visit('/')
    click_button('Fight!')
    click_button('Peter')
    click_button('Chicken')
end