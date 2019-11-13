class BubbleTeasController < ApplicationController

  # GET: /bubble_teas
  get "/bubble_teas" do
    @bubble_tea = BubbleTea.all
    erb :"/bubble_teas/index.html"
  end

  # GET: /bubble_teas/new
  get "/bubble_teas/new" do
    @ingredients = Ingredient.all
    erb :"/bubble_teas/new.html"
  end

  # POST: /bubble_teas
  post "/bubble_teas" do
    # binding.pry
    @bubble_tea = BubbleTea.new
# if there's no ingreidnet/name/ then no


    redirect "/bubble_teas"
  end

  # GET: /bubble_teas/5
  get "/bubble_teas/:id" do
    @bubble_tea = BubbleTea.find(params[:id])
    erb :"/bubble_teas/show.html"
  end

  # GET: /bubble_teas/5/edit
  get "/bubble_teas/:id/edit" do
    @bubble_tea = BubbleTea.find(params[:id])
    erb :"/bubble_teas/edit.html"
  end

  # PATCH: /bubble_teas/5
  patch "/bubble_teas/:id" do
    @bubble_tea = BubbleTea.find(params[:id])
    redirect "/bubble_teas/#{bubble_tea.id}"
  end

  # DELETE: /bubble_teas/5/delete
  delete "/bubble_teas/:id/delete" do
    @bubble_tea.delete
    redirect "/bubble_teas"
  end
end
