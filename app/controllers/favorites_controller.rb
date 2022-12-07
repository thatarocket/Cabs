# https://www.youtube.com/watch?v=QtjMrnQBKXw

class FavoritesController < ApplicationController
  def update
    if session[:user_id]
      @usuario = Usuario.find_by(id: session[:user_id])
    end
    @item_troca = ItemTroca.find(params[:item_troca])
    favorite = Favorite.where(item_troca: @item_troca, usuario: @usuario)
    if favorite == []
      #create favorite
      Favorite.create(item_troca: ItemTroca.find(params[:item_troca]), usuario: @usuario)
      @favorite_exists = true
    else
      #delete favorites
      favorite.destroy_all
      @favorite_exists = false
    end
    respond_to do |format|
      format.html {redirect_to item_troca_url(@item_troca)}
      format.js {}
  end
  end
end
