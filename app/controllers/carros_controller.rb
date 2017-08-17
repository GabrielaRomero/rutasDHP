class CarrosController < ApplicationController
  before_action :set_carro, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_carro
  # GET /carros
  # GET /carros.json
  def index
    @carros = Carro.all
  end

  # GET /carros/1
  # GET /carros/1.json
  def show
  end

  # GET /carros/new
  def new
    @carro = Carro.new
  end

  # GET /carros/1/edit
  def edit
  end

  # POST /carros
  # POST /carros.json
  def create
    @carro = Carro.new(carro_params)

    respond_to do |format|
      if @carro.save
        format.html { redirect_to @carro, notice: 'Carro was successfully created.' }
        format.json { render :show, status: :created, location: @carro }
      else
        format.html { render :new }
        format.json { render json: @carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carros/1
  # PATCH/PUT /carros/1.json
  def update
    respond_to do |format|
      if @carro.update(carro_params)
        format.html { redirect_to @carro, notice: 'Carro was successfully updated.' }
        format.json { render :show, status: :ok, location: @carro }
      else
        format.html { render :edit }
        format.json { render json: @carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carros/1
  # DELETE /carros/1.json
  def destroy
    @carro.destroy if @carro.id == session[:carro_id] 
    session[:carro_id] = nil 
    respond_to do |format|
    format.html { redirect_to store_index_url, notice: 'Tu carro esta vacio' } 
    format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carro
      @carro = Carro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carro_params
      params.fetch(:carro, {})
    end

    def invalid_carro
    logger.error "Attempt to access invalid cart #{params[:id]}" 
    redirect_to store_index_url, notice: 'Invalid cart' 
    end

end


