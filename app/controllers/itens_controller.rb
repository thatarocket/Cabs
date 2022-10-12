class ItensController < ApplicationController
    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params) 
        if @item.save
            redirect_to @item
        else
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
         end
    end

    def show
        @item = Item.find(params[:id])
    end

    private
    def item_params
        params.require(:item).permit(:nome, :condicao, :categoria)
    end
      
end
