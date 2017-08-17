class LocalizacionsController < ApplicationController
  before_action :set_localizacion, only: [:show, :edit, :update, :destroy]

  # GET /localizacions
  # GET /localizacions.json
  def index
    @localizacions = Localizacion.all
  end

  # GET /localizacions/1
  # GET /localizacions/1.json
  def show
  end

  # GET /localizacions/new
  def new
    @localizacion = Localizacion.new
  end

  # GET /localizacions/1/edit
  def edit
  end

  # POST /localizacions
  # POST /localizacions.json
  def create
    @localizacion = Localizacion.new(localizacion_params)

    respond_to do |format|
      if @localizacion.save
        format.html { redirect_to @localizacion, notice: 'Localizacion was successfully created.' }
        format.json { render :show, status: :created, location: @localizacion }
      else
        format.html { render :new }
        format.json { render json: @localizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /localizacions/1
  # PATCH/PUT /localizacions/1.json
  def update
    respond_to do |format|
      if @localizacion.update(localizacion_params)
        format.html { redirect_to @localizacion, notice: 'Localizacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @localizacion }
      else
        format.html { render :edit }
        format.json { render json: @localizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /localizacions/1
  # DELETE /localizacions/1.json
  def destroy
    @localizacion.destroy
    respond_to do |format|
      format.html { redirect_to localizacions_url, notice: 'Localizacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_localizacion
      @localizacion = Localizacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def localizacion_params
      params.require(:localizacion).permit(:latitud, :longitud, :direccion, :descripcion, :titulo)
    end
end
