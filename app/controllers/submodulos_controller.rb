class SubmodulosController < ApplicationController
  before_action :set_submodulo, only: [:show, :edit, :update, :destroy]

  # GET /submodulos
  # GET /submodulos.json
  def index
    @submodulos = Submodulo.all
  end

  # GET /submodulos/1
  # GET /submodulos/1.json
  def show
  end

  # GET /submodulos/new
  def new
    @submodulo = Submodulo.new
  end

  # GET /submodulos/1/edit
  def edit
  end

  # POST /submodulos
  # POST /submodulos.json
  def create
    @submodulo = Submodulo.new(submodulo_params)

    respond_to do |format|
      if @submodulo.save
        format.html { redirect_to @submodulo, notice: 'Submodulo was successfully created.' }
        format.json { render :show, status: :created, location: @submodulo }
      else
        format.html { render :new }
        format.json { render json: @submodulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submodulos/1
  # PATCH/PUT /submodulos/1.json
  def update
    respond_to do |format|
      if @submodulo.update(submodulo_params)
        format.html { redirect_to @submodulo, notice: 'Submodulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @submodulo }
      else
        format.html { render :edit }
        format.json { render json: @submodulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submodulos/1
  # DELETE /submodulos/1.json
  def destroy
    @submodulo.destroy
    respond_to do |format|
      format.html { redirect_to submodulos_url, notice: 'Submodulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submodulo
      @submodulo = Submodulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submodulo_params
      params.require(:submodulo).permit(:submodulo, :modelo, :pinesDigitales, :pinesAnalogicos, :sistema_domotico_id)
    end
end
