class SistemasDomoticoController < ApplicationController
  before_action :set_sistema_domotico, only: [:show, :edit, :update, :destroy]

  # GET /sistemas_domotico
  # GET /sistemas_domotico.json
  def index
    @sistemas_domotico = SistemaDomotico.all
  end

  # GET /sistemas_domotico/1
  # GET /sistemas_domotico/1.json
  def show
  end

  # GET /sistemas_domotico/new
  def new
    @sistema_domotico = SistemaDomotico.new
  end

  # GET /sistemas_domotico/1/edit
  def edit
  end

  # POST /sistemas_domotico
  # POST /sistemas_domotico.json
  def create
    @sistema_domotico = SistemaDomotico.new(sistema_domotico_params)

    respond_to do |format|
      if @sistema_domotico.save
        format.html { redirect_to @sistema_domotico, notice: 'Sistema domotico was successfully created.' }
        format.json { render :show, status: :created, location: @sistema_domotico }
      else
        format.html { render :new }
        format.json { render json: @sistema_domotico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sistemas_domotico/1
  # PATCH/PUT /sistemas_domotico/1.json
  def update
    respond_to do |format|
      if @sistema_domotico.update(sistema_domotico_params)
        format.html { redirect_to @sistema_domotico, notice: 'Sistema domotico was successfully updated.' }
        format.json { render :show, status: :ok, location: @sistema_domotico }
      else
        format.html { render :edit }
        format.json { render json: @sistema_domotico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sistemas_domotico/1
  # DELETE /sistemas_domotico/1.json
  def destroy
    @sistema_domotico.destroy
    respond_to do |format|
      format.html { redirect_to sistemas_domotico_url, notice: 'Sistema domotico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sistema_domotico
      @sistema_domotico = SistemaDomotico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sistema_domotico_params
      params.require(:sistema_domotico).permit(:nombre, :ip, :estado)
    end
end
