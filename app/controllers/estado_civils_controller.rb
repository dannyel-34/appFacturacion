class EstadoCivilsController < ApplicationController
  before_action :set_estado_civil, only: [:show, :edit, :update, :destroy]

  # GET /estado_civils
  # GET /estado_civils.json
  def index
    @estado_civils = EstadoCivil.all
  end

  # GET /estado_civils/1
  # GET /estado_civils/1.json
  def show
  end

  # GET /estado_civils/new
  def new
    @estado_civil = EstadoCivil.new
  end

  # GET /estado_civils/1/edit
  def edit
  end

  # POST /estado_civils
  # POST /estado_civils.json
  def create
    @estado_civil = EstadoCivil.new(estado_civil_params)

    respond_to do |format|
      if @estado_civil.save
        format.html { redirect_to @estado_civil, notice: 'Estado civil was successfully created.' }
        format.json { render :show, status: :created, location: @estado_civil }
      else
        format.html { render :new }
        format.json { render json: @estado_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_civils/1
  # PATCH/PUT /estado_civils/1.json
  def update
    respond_to do |format|
      if @estado_civil.update(estado_civil_params)
        format.html { redirect_to @estado_civil, notice: 'Estado civil was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_civil }
      else
        format.html { render :edit }
        format.json { render json: @estado_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_civils/1
  # DELETE /estado_civils/1.json
  def destroy
    @estado_civil.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_civil
      @estado_civil = EstadoCivil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_civil_params
      params.require(:estado_civil).permit(:nombre)
    end
end
