class BubbleTeaController < Sinatra::Base

#copy and paste erb file into the new one
#same with controllers
#add ingreident and run tux copy and paste it

#showing all the bubble tea the user have or not
#if this is the current_user show bubble tea id, if not create account
get '/bubble_tea' do
    @bubble_tea = BubbleTea.all
    erb :'/bubble_teas/index'
end

#creating new bubble tea
get '/bubble_tea/new' do
    @ingredients = Ingredient.all
    erb :'/bubble_teas/show'
end

#created bubble tea
post '/bubble_tea' do
    @bubble_tea = BubbleTea.new
    redirect '/bubble_tea'
end

#find the bubble tea by the id 
get '/bubble_tea/:id' do
    @bubble_tea = BubbleTea.find(params[:id])
    erb :'/bubble_teas/show'

end

#edit created bubble tea
get '/bubble_tea/:id/edit' do
    @bubble_tea = BubbleTea.find(params[:id])
    erb :'/bubble_teas/edit'
end

#update the existing bubble tea form
patch '/bubble_tea/:id' do
    @bubble_tea = BubbleTea.find(params[:id])
end

#delete existing bubble tea
delete '/bubble_tea/:id' do
    @bubble_tea.delete
    redirect '/bubble_tea'
end


end