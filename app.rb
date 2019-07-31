require 'sinatra/base'

class EpicBattle < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end

    get '/selection' do
        erb :selection
    end

    run! if app_file == $0
end