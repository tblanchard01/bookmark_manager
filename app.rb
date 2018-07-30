require 'sinatra/base'
class App < Sinatra::Base
  enable :sessions
  get '/' do
    redirect('/bookmarks')
  end

  get '/bookmarks' do
    bookmarks = [
      "http://makersacademy.com",
      "http://destroyallsoftware.com",
      "http://facebook.com"
     ]

     bookmarks.join

  end

  run! if app_file == $PROGRAM_NAME
end
