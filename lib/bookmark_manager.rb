require 'sinatra/base'
require 'data_mapper'
env = ENV['RACK_ENV'] || 'development'
DataMapper.setup(:default, "postgres://127.0.0.1/bookmark_manager_#{env}")
require './lib/link'
DataMapper.finalize
DataMapper.auto_upgrade!
# hkjhkh
class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello bookmark_manager!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
