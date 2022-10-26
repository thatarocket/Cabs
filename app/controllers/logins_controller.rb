class LoginsController < ApplicationController
    def new 
        @login = Login.new       
    end

    def create
        usuario = Usuario.find_by(username: params[:username])
        if usuario.present?
            session[:usuario_id] = usuario.id
            redirect_to root_path, notice: "Logado com sucesso"
        else
            flash[:alert] = "Username ou senha inválidos"
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end
    end

    def show
        @login = Login.find(params[:id])
    end

    private
    def login_params
        params.require(:login).permit(:username, :senha)
    end
end