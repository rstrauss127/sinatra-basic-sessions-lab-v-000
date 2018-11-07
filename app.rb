require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "ECC"
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    @params = params
    @session["item"] = @params["item"]
    erb :checkout
  end
end
