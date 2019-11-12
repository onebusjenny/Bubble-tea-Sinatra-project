require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end


  get "/" do
    erb :welcome
  end

  get '/hello' do
    @session = session
  end

  helpers do
		def logged_in?
			!!session[:user_id]
    end
  end

		def current_user
			User.find(session[:user_id])
		end


end