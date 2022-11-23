class ApplicationController < ActionController::Base
  before_action :set_current_user
  
  def index
    if session[:user_id]
      @usuario = Usuario.find_by(id: session[:user_id])
    end
  end

  def set_current_user
    if session[:user_id]
      Current.usuario = Usuario.find_by(id: session[:user_id])
    end
  end

  def nav
  end
  
end
