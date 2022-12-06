class ApplicationController < ActionController::Base
  def index
    if session[:user_id]
      @usuario = Usuario.find_by(id: session[:user_id])
    end
    categories
    item_troca
  end

  def categories
    @categories = ["Roupas", "Acessórios", "Sapatos", "Maquiagens","Objetos", "Outros"] 
  end

  def all_items
    @items = ItemTroca.all #Itens que eu tenho atualmente
  end

  def item_troca
    @items = { "Roupas" =>ItemTroca.where(categoria:"Roupas").last(5),
              "Acessórios" => ItemTroca.where(categoria:"Acessórios").last(5),
              "Sapatos" =>ItemTroca.where(categoria:"Sapatos").last(5),
              "Maquiagens" => ItemTroca.where(categoria:"Maquiagens").last(5),
              "Objetos" =>ItemTroca.where(categoria:"Objetos").last(5),
              "Outros" => ItemTroca.where(categoria:"Outros").last(5)
             }
  end
end
