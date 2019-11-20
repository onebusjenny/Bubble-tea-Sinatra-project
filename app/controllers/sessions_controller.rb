class SessionsController < ApplicationController
  
  get '/login' do
    if logged_in?
      current_user
      redirect "/bubble_teas"
    else
      erb :'/users/login'
    end
  end
  
  
  post '/login' do
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id]= user.id
      redirect "/bubble_teas"
    else
      redirect "/users/signup" 
    end
  end
  
  get '/logout' do
    session.clear
    redirect '/'
  end




  # GET: /sessions
  get "/sessions" do
    erb :"/sessions/index.html"
  end

  # GET: /sessions/new
  get "/sessions/new" do
    erb :"/sessions/new.html"
  end

  # POST: /sessions
  post "/sessions" do
    redirect "/sessions"
  end

  # GET: /sessions/5
  get "/sessions/:id" do
    erb :"/sessions/show.html"
  end

  # GET: /sessions/5/edit
  get "/sessions/:id/edit" do
    erb :"/sessions/edit.html"
  end

  # PATCH: /sessions/5
  patch "/sessions/:id" do
    redirect "/sessions/:id"
  end

  # DELETE: /sessions/5/delete
  delete "/sessions/:id/delete" do
    redirect "/sessions"
  end
end
