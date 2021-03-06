require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
    enable :sessions
    set :session_secret, "secret"
    
  end


  get "/" do
    erb :welcome
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