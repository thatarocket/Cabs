class ApplicationController < ActionController::Base
  def index
    if session[:user_id]
      @usuario = Usuario.find_by(id: session[:user_id])

      # For the see item
      if ItemTroca.all.count > 0
        @categories = ["Roupas", "Acessórios", "Sapatos", "Maquiagens","Objetos", "Outros"] 
        @items = ItemTroca.all #Itens que eu tenho atualmente
      end
    end
  end
end
