class ApplicationController < ActionController::Base
  def index
    if session[:user_id]
      @usuario = Usuario.find_by(id: session[:user_id])
    end
  end
end
