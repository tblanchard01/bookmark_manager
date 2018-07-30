require 'sinatra/base'
class App < Sinatra::Base
    enable :sessions
    get '/' do
      erb :index
    end
    run! if app_file == $PROGRAM_NAME

end 