class ApplicationController < ActionController::Base
  def index
    if session[:user_id]
      @usuario = Usuario.find_by(id: session[:user_id])
    end
  end

  def nav
  end
  
  def clothes
    @clothes = ItemTroca.where("categoria LIKE ?", "%Roupas%")
  end

  def acessories
    @acessories = ItemTroca.where("categoria LIKE ?", "%Acessórios%")
  end

  def shoes
    @shoes = ItemTroca.where("categoria LIKE ?", "%Sapatos%")
  end

  def makeup
    @makeup = ItemTroca.where("categoria LIKE ?", "%Maquiagem%")
  end

  def objects
    @objects = ItemTroca.where("categoria LIKE ?", "%Objetos%")
    puts @objects
  end

  def others
    @others = ItemTroca.where("categoria LIKE ?", "%Outros%")
  end
  
end
