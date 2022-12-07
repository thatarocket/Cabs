class ApplicationController < ActionController::Base
  before_action :set_current_user
  def index
    if session[:user_id]
      @usuario = Usuario.find_by(id: session[:user_id])
    end

    # For the see item
    if ItemTroca.all.count > 0
      @categories = ["Roupas", "Acessórios", "Sapatos", "Maquiagens","Objetos", "Outros"] 
      @items = ItemTroca.all #Itens que eu tenho atualmente
    end
  end

  def set_current_user
    if session[:user_id]
      Current.usuario = Usuario.find_by(id: session[:user_id])
    end
  end

end
