require 'sinatra/base'
# hkjhkh
class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello bookmark_manager!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
