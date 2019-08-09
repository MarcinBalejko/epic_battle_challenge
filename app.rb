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

    

    post '/attack' do     #???
        
        erb :attack
    end

    post '/effect' do
        attack = params[:attack_type]
        $game.current_turn.make_attack(attack)
        if $game.current_turn.choice_attack == "PUNCH"
            $game.opponent_of($game.current_turn).receive_damage_a1   
        elsif $game.current_turn.choice_attack == "KICK"
            $game.opponent_of($game.current_turn).receive_damage_a2
        elsif $game.current_turn.choice_attack == "LAUGH" || $game.current_turn.choice_attack == "DIRTY LOOK"
            $game.opponent_of($game.current_turn).receive_damage_a3  
        end   
        erb :effect
    end

    get '/attack' do
        
        erb :attack
      end

    get '/switchturns' do
        if $game.game_over?
            redirect '/game-over'
        else
            $game.switch_turns
            redirect '/attack'
        end 
    end
    

    get '/game-over' do
        
        erb :game_over
    end

    run! if app_file == $0
end