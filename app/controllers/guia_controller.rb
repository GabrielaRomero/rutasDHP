class GuiaController < ApplicationController
  before_action :set_guium, only: [:show, :edit, :update, :destroy]

  # GET /guia
  # GET /guia.json
  def index
    @guia = Guium.all
  end

  # GET /guia/1
  # GET /guia/1.json
  def show
  end

  # GET /guia/new
  def new
    @guium = Guium.new
  end

  # GET /guia/1/edit
  def edit
  end

  # POST /guia
  # POST /guia.json
  def create
    @guium = Guium.new(guium_params)

    respond_to do |format|
      if @guium.save
        format.html { redirect_to @guium, notice: 'Nuevo guia registrado.' }
        format.json { render :show, status: :created, location: @guium }
      else
        format.html { render :new }
        format.json { render json: @guium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guia/1
  # PATCH/PUT /guia/1.json
  def update
    respond_to do |format|
      if @guium.update(guium_params)
        format.html { redirect_to @guium, notice: 'Guia actuaizado correctamente.' }
        format.json { render :show, status: :ok, location: @guium }
      else
        format.html { render :edit }
        format.json { render json: @guium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guia/1
  # DELETE /guia/1.json
  def destroy
    @guium.destroy
    respond_to do |format|
      format.html { redirect_to guia_url, notice: 'Eliminado exitosamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guium
      @guium = Guium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guium_params
      params.require(:guium).permit(:folio, :nombre, :apellidos, :fecha_nacimiento, :disponible, :telefono, :correo)
    end
end
