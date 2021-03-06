class ElementosController < ApplicationController
  before_action :set_elemento, only: [:show, :edit, :update, :destroy]

  # GET /elementos
  # GET /elementos.json
  def index
    @elementos = Elemento.all
  end

  # GET /elementos/1
  # GET /elementos/1.json
  def show
  end

  # GET /elementos/new
  def new
    @elemento = Elemento.new
  end

  # GET /elementos/1/edit
  def edit
  end

  # POST /elementos
  # POST /elementos.json
  def create
    @elemento = Elemento.new(elemento_params)

    respond_to do |format|
      if @elemento.save
        format.html { redirect_to @elemento, notice: 'Elemento was successfully created.' }
        format.json { render :show, status: :created, location: @elemento }
      else
        format.html { render :new }
        format.json { render json: @elemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elementos/1
  # PATCH/PUT /elementos/1.json
  def update
    respond_to do |format|
      if @elemento.update(elemento_params)
        format.html { redirect_to @elemento, notice: 'Elemento was successfully updated.' }
        format.json { render :show, status: :ok, location: @elemento }
      else
        format.html { render :edit }
        format.json { render json: @elemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elementos/1
  # DELETE /elementos/1.json
  def destroy
    @elemento.destroy
    respond_to do |format|
      format.html { redirect_to elementos_url, notice: 'Elemento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elemento
      @elemento = Elemento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elemento_params
      params.require(:elemento).permit(:elemento, :pinDeConexion, :estado, :valorDeEstado, :ambiente_id, :submodulo_id)
    end
end
