require 'sinatra/base'
require './lib/game'
require './lib/player'
class EpicBattle < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end

    get '/mode' do 
        erb :mode 
    end

    get '/selection_single' do       
        player_1 = Player.new
        player_2 = Player.new
        $game = Game.new(player_1, player_2)
        $game.single_player_mode
        erb :selection_single      
    end

    post '/player_1_single_choice' do           
        first_character = params[:choice]
        $game.player_1.make_choice(first_character)
        erb :player_1_single_choice        
    end

    get '/player_cpu_choice' do
        second_character = $game.player_2.cpu_make_choice
        $game.player_2.cpu_make_choice
        redirect to '/attack_single_p1'
    end

    get '/attack_single_p1' do
        erb :attack_single_p1
    end                                 

    post '/attack_single_p1' do
        erb :attack_single_p1
    end

    post '/effect_single_player' do
        attack = params[:attack_type]
        $game.current_turn.make_attack(attack)
        if $game.current_turn.choice_attack == "PUNCH"
            $game.opponent_of($game.current_turn).receive_damage_a1   
        elsif $game.current_turn.choice_attack == "SMASH"
            $game.opponent_of($game.current_turn).receive_damage_a2
        elsif $game.current_turn.choice_attack == "LAUGH" || $game.current_turn.choice_attack == "DIRTY LOOK"
            $game.opponent_of($game.current_turn).receive_damage_a3  
        end   
        erb :effect_single_player         
        
    end

    get '/switchturns_cpu' do
        if $game.game_over?
            redirect '/game-over'
        else
            $game.switch_turns
            redirect '/attack_result_p1'
        end 
    end

    get '/attack_result_p1' do             
        erb :attack_result_p1
    end

    get '/attack_single_cpu' do
        
        redirect 'effect_single_cpu'
    end

    get '/effect_single_cpu' do         
        $game.current_turn.cpu_make_attack  
        if $game.current_turn.choice_attack == "PUNCH"
            $game.opponent_of($game.current_turn).receive_damage_a1   
        elsif $game.current_turn.choice_attack == "SMASH"
            $game.opponent_of($game.current_turn).receive_damage_a2
        elsif $game.current_turn.choice_attack == "LAUGH" || $game.current_turn.choice_attack == "DIRTY LOOK"
            $game.opponent_of($game.current_turn).receive_damage_a3  
        end   
        erb :effect_single_cpu          
    end

    get '/switchturns_p1' do
        if $game.game_over?
            redirect '/game-over'
        else
            $game.switch_turns
            redirect '/attack_single_p1'   
        end 
    end

    ######## BELOW => PLAYER VS PLAYER


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

    get '/attack' do
        erb :attack
    end

    post '/attack' do
        erb :attack
    end

    post '/effect' do
        attack = params[:attack_type]
        $game.current_turn.make_attack(attack)
        if $game.current_turn.choice_attack == "PUNCH"
            $game.opponent_of($game.current_turn).receive_damage_a1   
        elsif $game.current_turn.choice_attack == "SMASH"
            $game.opponent_of($game.current_turn).receive_damage_a2
        elsif $game.current_turn.choice_attack == "LAUGH" || $game.current_turn.choice_attack == "DIRTY LOOK"
            $game.opponent_of($game.current_turn).receive_damage_a3  
        end   
        
        erb :effect
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

    get '/time_out' do
        erb :time_out
    end

    run! if app_file == $0
end