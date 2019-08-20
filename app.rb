require 'sinatra/base'
require './lib/game'
require './lib/player'
class EpicBattle < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end



    #############################################################################################

    #get '/mode' do 
        #erb :mode   (player vs player / single player)
    #end

    #get '/mode_check' do
    #if $game.single_player == true
        #redirect '/selection_single'    create selection_single.erb with '?' in the cpu pic place
    #else
        #redirect '/selection'
    #end 
    #end

    #get '/selection_single' do       same as '/selection', and redirects to '/player_1_single_choice'
     #   player_1 = Player.new
      #  player_2 = Player.new
       # $game = Game.new(player_1, player_2)
        #erb :selection_single      directs to '/player_1_single_choice'
    #end

    #post '/player_1_single_choice' do           (after 3 seconds redirects to '/player_cpu_choice')
     #   first_character = params[:choice]
      #  $game.player_1.make_choice(first_character)
       # erb :player_1_single_choice        same as 'player_1_choice' but directs to '/player_cpu_choice'
    #end

    #post '/player_cpu_choice' do
        #second_character = $game.player_2.cpu_make_choice
        #$game.player_2.cpu_make_choice
        #redirect to '/attack_single_p1'
    #end


    #get '/attack_single_p1' do
    # erb :attack_single_p1
    #end                                 same as attack.erb, just some small changes in code
                                            #INSIDE redirects to effect_single after chosing the attack type
    #post '/attack_single_p1' do
    # erb :attack_single_p1
     #end



     
     #post '/effect_single_p1' do
      #  attack = params[:attack_type]
       # $game.current_turn.make_attack(attack)
        #if $game.current_turn.choice_attack == "PUNCH"
         #   $game.opponent_of($game.current_turn).receive_damage_a1   
        #elsif $game.current_turn.choice_attack == "KICK"
         #   $game.opponent_of($game.current_turn).receive_damage_a2
        #elsif $game.current_turn.choice_attack == "LAUGH" || $game.current_turn.choice_attack == "DIRTY LOOK"
         #   $game.opponent_of($game.current_turn).receive_damage_a3  
        #end   
        #erb :effect_single          INSIDE IT REDIRECTS TO '/switchturns_cpu '
    #end

    #get '/switchturns_cpu' do
     #   if $game.game_over?
      #      redirect '/game-over'
       # else
        #    $game.switch_turns
         #   redirect '/attack_result_p1'
        #end 
    #end

    #get '/attack_result_p1' do             
     #   erb :attack_result
     #it would be the same as 'attack_single_p1' just to show hp loss and that the turn was switched,
     # after 3 seconds redirects to (invisible) '/attack_single_cpu'
    #end

    #get(???) '/attack_single_cpu' do
       # $game.player_2.cpu_make_attack
       #redirect to effect_single_cpu
    #end

         #post(get?????? two???) '/effect_single_cpu' do
      #  attack = params[:attack_type]
       # $game.current_turn.make_attack(attack)
        #if $game.current_turn.choice_attack == "PUNCH"
         #   $game.opponent_of($game.current_turn).receive_damage_a1   
        #elsif $game.current_turn.choice_attack == "KICK"
         #   $game.opponent_of($game.current_turn).receive_damage_a2
        #elsif $game.current_turn.choice_attack == "LAUGH" || $game.current_turn.choice_attack == "DIRTY LOOK"
         #   $game.opponent_of($game.current_turn).receive_damage_a3  
        #end   
        #erb :effect_single          INSIDE IT REDIRECTS TO '/switchturns_p1 '
    #end

    
    #get '/switchturns_p1' do
     #   if $game.game_over?
      #      redirect '/game-over'
       # else
        #    $game.switch_turns
         #   redirect '/attack_single_p1'   already to player's attack and showing switched turn
        #end 
    #end

    #### new erbs + styles: mode.erb / selection_single.erb / player_1_single_choice.erb /

    #########################################################

    get '/mode' do 
        erb :mode 
    end

    get '/selection_single' do       #same as '/selection', and redirects to '/player_1_single_choice'
        player_1 = Player.new
        player_2 = Player.new
        $game = Game.new(player_1, player_2)
        $game.single_player_mode
        erb :selection_single      #directs to '/player_1_single_choice'
    end


    post '/player_1_single_choice' do           #(after 3 seconds redirects to '/player_cpu_choice')
        first_character = params[:choice]
        $game.player_1.make_choice(first_character)
        erb :player_1_single_choice        #same as 'player_1_choice' but directs to '/player_cpu_choice'
    end

   

    get '/attack_single_p1' do
        erb :attack_single_p1
    end                                 #same as attack.erb, just some small changes in code
                                            #INSIDE redirects to effect_single after chosing the attack type
    post '/attack_single_p1' do
        erb :attack_single_p1
    end


### next effect_single

    









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
        elsif $game.current_turn.choice_attack == "KICK"
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