class ApplicationController < ActionController::Base
  def index
    if session[:user_id]
      @usuario = Usuario.find_by(id: session[:user_id])

      # For the see item
      @categories = ["Roupas", "Acessórios", "Sapatos", "Maquiagens","Objetos", "Outros"] 
      @categoriesUsed = ItemTroca.select(:categoria).distinct #Categorias em itens cadastrados
      @items = ItemTroca.all #Itens que eu tenho atualmente
    end
  end

  def search
    @pesquisa = ItemTroca.where("categoria LIKE ?", "%" + category + "%")
  end

  def clothes    
    ItemTroca.where("categoria LIKE ?", "%Roupas%")
  end

end
