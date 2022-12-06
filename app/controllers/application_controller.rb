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
    roupas
    acessórios
    sapatos
    maquiagens
    objetos
    outros
  end

  def roupas
    @Roupas = ItemTroca.where(categoria: "Roupas")
  end

  def acessórios
    @Acessórios = ItemTroca.where(categoria: "Acessórios")
  end

  def sapatos
    @Sapatos = ItemTroca.where(categoria: "Sapatos")
  end

  def maquiagens
    @Maquiagens = ItemTroca.where(categoria: "Maquiagens")
  end

  def objetos
    @Objetos = ItemTroca.where(categoria: "Objetos")
  end

  def outros
    @Outros = ItemTroca.where(categoria: "Outros")
  end

  def show
    
  end
end
