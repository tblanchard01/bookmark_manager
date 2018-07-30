require 'sinatra/base'
require './lib/bookmark'
class BookmarkManager < Sinatra::Base
  enable :sessions
  get '/' do
    redirect('/bookmarks')
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
     
erb :index     
  end

  run! if app_file == $PROGRAM_NAME
end
