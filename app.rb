require 'sinatra/base'
require './lib/game'
require './lib/player'
class EpicBattle < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end

    get '/selection' do
        player_1 = Player.new
        player_2 = Player.new
        $game = Game.new(player_1, player_2)
        erb :selection
    end

    post '/player_1_choice' do
        first_character = params[:choice]
        $game.player_1.make_choice(first_character)
        erb :player_1_choice
    end

    post '/player_2_choice' do
        second_character =  params[:choice]
        $game.player_2.make_choice(second_character)
        erb :player_2_choice
    end

    post '/ready' do
        erb :ready
    end

    run! if app_file == $0
end