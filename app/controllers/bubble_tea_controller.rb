class BubbleTeaController < Sinatra::Base


#showing all the bubble tea the user have or not
#if this is the current_user show bubble tea id, if not create account
get '/bubble_tea' do
    @bubble_tea = BubbleTea.all
    erb :'/bubble_tea/index'
end

#creating new bubble tea
get '/bubble_tea/new' do
    @ingredients = Ingredient.all
    erb :'/bubble_tea/new'
end

#created bubble tea
post '/bubble_tea' do
    @bubble_tea = BubbleTea.new
    redirect '/bubble_tea'
end

#find the bubble tea by the id 
get '/bubble_tea/:id' do
    @bubble_tea = BubbleTea.find(params[:id])
    erb :'/bubble_tea/show'

end

#edit created bubble tea
get '/bubble_tea/:id/edit' do
    @bubble_tea = BubbleTea.find(params[:id])
    erb :'/bubble_tea/edit'
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