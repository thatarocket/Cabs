class ApplicationController < ActionController::Base
  def index
    if session[:user_id]
      @usuario = Usuario.find_by(id: session[:user_id])
    end
    item_troca
    categories
  end

  def categories
    @categories = @items.keys
  end

  def item_troca
    @items = { "Roupas" =>ItemTroca.where(categoria:"Roupas"),
              "Acessórios" => ItemTroca.where(categoria:"Acessórios"),
              "Sapatos" =>ItemTroca.where(categoria:"Sapatos"),
              "Maquiagens" => ItemTroca.where(categoria:"Maquiagens"),
              "Objetos" =>ItemTroca.where(categoria:"Objetos"),
              "Outros" => ItemTroca.where(categoria:"Outros")
             }
  end

  def seeAll
    item_troca
  end
end
