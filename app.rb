require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/bookmark'

class BookmarkManager < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end

get '/' do
    'Bookmark Manager'
end

get '/bookmarks' do 
    $Bookmark = BookMarks.new
    @bookmarklist = $Bookmark.bookmarklist
    erb :bookmarks
end 

run! if app_file == $0
end 