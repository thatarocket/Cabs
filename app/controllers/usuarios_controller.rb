class UsuariosController < ApplicationController
    before_action :find_resource, only: [:show, :edit, :update, :destroy]

    def find_resource
        @usuario = Usuario.find(params[:id])
    end

    def new    
        @usuario = Usuario.new  
    end

    def create
        @usuario = Usuario.new(usuario_params) 

        if @usuario.save
            session[:user_id] = @usuario.id
            redirect_to :application, notice: "Usuário criado com sucesso!"
        else
            flash[:alert] = "Não foi possível criar o usuário!"
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end
    end

    def show
    end

    def edit
    end
    
    def update
    
        if @usuario.update(usuario_params)
            redirect_to :application
        else
            render :edit, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end
    end

    def destroy
        @usuario = Usuario.find(params[:id])
        @usuario.destroy
    
        redirect_to login_path, status: :see_other, notice: "Conta deletada com sucesso!"
      end

    private
    
    def usuario_params
        params.require(:usuario).permit(:username,:email,:password)
    end
end
