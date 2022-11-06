class FavoritosController < ApplicationController
  def create
    @favoritos = Favorito.create username: params[:username], itemId: params[:itemId]
  end
end

