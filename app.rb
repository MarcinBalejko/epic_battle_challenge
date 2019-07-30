require 'sinatra/base'

class EpicBattle < Sinatra::Base
    enable :sessions

    run! if app_file == $0
end