require 'bundler'
Bundler.require
require_relative 'models/model.rb'
require_relative 'models/imagegetter.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/'do
    Responder = Emoji.new(params)
   # @params = params
    @answer= Responder.result
    Image = ImageGetter.new
    @url_array = Image.convert(@answer)
    #respond.erb
    erb :respond
  end
end