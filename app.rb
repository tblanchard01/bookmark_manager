require 'sinatra/base'
require './lib/bookmark'
class BookmarkManager < Sinatra::Base
  enable :sessions
  get '/' do
    redirect('/bookmarks')
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :index
  end

get '/bookmarks/new' do 

erb :"bookmarks/new"
end 

  run! if app_file == $PROGRAM_NAME
end
