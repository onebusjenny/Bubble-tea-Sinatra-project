class BubbleTeasController < ApplicationController

  # GET: /bubble_teas
  get "/bubble_teas" do
    @bubble_teas = BubbleTea.all
    erb :"/bubble_teas/index.html"
  end

  # GET: /bubble_teas/new
  get "/bubble_teas/new" do
    @ingredients = Ingredient.all
    erb :"/bubble_teas/new.html"
  end

  # POST: /bubble_teas
  post "/bubble_teas" do
    @bubble_tea = BubbleTea.new(
    :name => params[:bubble_tea][:name], 
    :flavor => params[:bubble_tea][:flavor])
    @bubble_tea.ingredient_ids = params[:bubble_tea][:ingredient_ids]
    @bubble_tea.user = current_user
    if @bubble_tea.has_ingredients? && @bubble_tea.save
    
      redirect "/bubble_teas"
    else
      redirect "/bubble_teas/new"
    end
  end

  # GET: /bubble_teas/5
  get "/bubble_teas/:id" do
    @bubble_tea = BubbleTea.find(params[:id])
    erb :"/bubble_teas/show.html"
  end

  # GET: /bubble_teas/5/edit
  get "/bubble_teas/:id/edit" do
    @bubble_tea = BubbleTea.find(params[:id])   
    @ingredients = Ingredient.all
    erb :"/bubble_teas/edit.html"
  end

  # PATCH: /bubble_teas/5
  patch "/bubble_teas/:id" do
    bubble_tea = BubbleTea.find(params[:id])  
    bubble_tea.name = params[:bubble_tea][:name] 
    bubble_tea.flavor= params[:bubble_tea][:flavor]
    bubble_tea.ingredient_ids = params[:bubble_tea][:ingredient_ids]
    bubble_tea.save  
    redirect to "/bubble_teas"
      
  end

  # DELETE: /bubble_teas/5/delete
  delete "/bubble_teas/:id" do
    @bubble_tea = BubbleTea.find(params[:id])
    @bubble_tea.destroy
    redirect "/bubble_teas"
  end
end
