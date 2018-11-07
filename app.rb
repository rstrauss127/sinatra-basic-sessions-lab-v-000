require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "ECC"
  end

  get '/' do
      erb :index
    @session = session

  end

  post '/checkout' do
    @item = params[:item]
    session[:item] =@item
  end
end
