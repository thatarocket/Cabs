class ItemTrocasController < ApplicationController
  before_action :set_item_troca, only: %i[ show edit update destroy ]

  # GET /item_trocas or /item_trocas.json
  def index
    @item_trocas = ItemTroca.all
  end

  # GET /item_trocas/1 or /item_trocas/1.json
  def show
  end

  def search
    if params[:q].blank?
      @pesquisa = ''
    else
      @item = params[:q].downcase
      @pesquisa = ItemTroca.where("LOWER(nome) LIKE ?", "%" + @item + "%")
    end
  end

  # GET /item_trocas/new
  def new
    @item_troca = ItemTroca.new
  end

  # GET /item_trocas/1/edit
  def edit
  end

  # POST /item_trocas or /item_trocas.json
  def create
    @item_troca = ItemTroca.new(item_troca_params)

    respond_to do |format|
      if @item_troca.save
        format.html { redirect_to item_troca_url(@item_troca), notice: "O item foi criado com sucesso." }
        format.json { render :show, status: :created, location: @item_troca }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item_troca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_trocas/1 or /item_trocas/1.json
  def update
    respond_to do |format|
      if @item_troca.update(item_troca_params)
        format.html { redirect_to item_troca_url(@item_troca), notice: "O item foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @item_troca }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item_troca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_trocas/1 or /item_trocas/1.json
  def destroy
    @item_troca.destroy

    respond_to do |format|
      format.html { redirect_to item_trocas_url, notice: "O item foi excluído com sucesso" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_troca
      @item_troca = ItemTroca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_troca_params
      params.require(:item_troca).permit(:nome, :descricao, :condicao, :categoria, :dono, images: [])
    end
end
