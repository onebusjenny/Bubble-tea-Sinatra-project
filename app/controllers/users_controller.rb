class UsersController < ApplicationController


get '/signup' do
    erb :'/users/signup'
end

post '/signup' do
  user = User.new(
    user_name: params["user_name"],
    user_email: params["user_email"], 
    password: params["password"])
  if user.save
  session[:user_id] = user.id
  redirect '/users/#{user}'
  else
    redirect '/signup'
  end
end

get '/login' do
  if logged_in?
    current_user
    redirect "/users/#{current_user.user_name}"
  else
    erb :'users/login'
  end
end


post '/login' do
  user = User.find_by(user_name: params[:user_name])
  if user && user.authenticate(params[:password])
    session[:user_id]= user.id
    redirect "/bubble_tea/#{user.id}"
  else
    redirect "/users/signup" 
  end
end

get '/logout' do
  sesson.clear
  redirect '/'
end

get '/users/:id' do
  @user = User.find_by(id: session[:user_id])

  erb :'/bubble_tea'
end





#   # GET: /users_controllers
#   get "/users_controllers" do
#     erb :"/users_controllers/index.html"
#   end

#   # GET: /users_controllers/new
#   get "/users_controllers/new" do
#     erb :"/users_controllers/new.html"
#   end

#   # POST: /users_controllers
#   post "/users_controllers" do
#     redirect "/users_controllers"
#   end

#   # GET: /users_controllers/5
#   get "/users_controllers/:id" do
#     erb :"/users_controllers/show.html"
#   end

#   # GET: /users_controllers/5/edit
#   get "/users_controllers/:id/edit" do
#     erb :"/users_controllers/edit.html"
#   end

#   # PATCH: /users_controllers/5
#   patch "/users_controllers/:id" do
#     redirect "/users_controllers/:id"
#   end

#   # DELETE: /users_controllers/5/delete
#   delete "/users_controllers/:id/delete" do
#     redirect "/users_controllers"
#   end
end
