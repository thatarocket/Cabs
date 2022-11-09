class LoginsController < ApplicationController
    def new
    end

    def create
        @usuario = Usuario.find_by(username: usuario_params[:username])

        if @usuario && @usuario.authenticate(usuario_params[:password])
            session[:user_id] = @usuario.id
            redirect_to :application, notice: "Login efetuado com sucesso!"
        else
            flash[:alert] = "Username ou senha inválidos!"
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end
    end  
    
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Deslogado com sucesso!"
    end

    private
    def usuario_params
        params.require(:login).permit(:username,:password)
    end
end
