require 'sinatra/base'

class EpicBattle < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end

    get '/selection' do
        erb :selection
    end

    post '/choice' do
        the_choice = params[:choice]
        $game.player_1.make_choice(the_choice)
        
    end



    run! if app_file == $0
end