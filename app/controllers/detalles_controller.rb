class DetallesController < ApplicationController
  before_action :set_detalle, only: [:show, :edit, :update, :destroy]

  # GET /detalles
  # GET /detalles.json
  def index
    @detalles = Detalle.search(params[:search], params[:page])
    
    respond_to do |format|
        format.html 
        format.xls 
     end
    
  end

  # GET /detalles/1
  # GET /detalles/1.json
  def show
  end

  # GET /detalles/new
  def new
    @detalle = Detalle.new
  end

  # GET /detalles/1/edit
  def edit
  end

  # POST /detalles
  # POST /detalles.json
  def create
    @detalle = Detalle.new(detalle_params)
    

    respond_to do |format|
      if @detalle.save
        format.html { redirect_to @detalle, notice: 'Detalle was successfully created.' }
        format.json { render :show, status: :created, location: @detalle }
      else
        format.html { render :new }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalles/1
  # PATCH/PUT /detalles/1.json
  def update
    respond_to do |format|
      if @detalle.update(detalle_params)
        format.html { redirect_to @detalle, notice: 'Detalle was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle }
      else
        format.html { render :edit }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalles/1
  # DELETE /detalles/1.json
  def destroy
    @detalle.destroy
  end
  
  def edit_multiple
    @detalles = Detalle.find(params[:detalle_ids])
  end

  def update_multiple
    @detalles = Detalle.find(params[:detalle_ids])
    @detalles.each do |detalle|
              params.permit!
              detalle.update_attributes!(params[:detalle])
       end
      flash[:notice] = "Actualizacion correcta!"
      redirect_to detalles_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle
      @detalle = Detalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_params
      params.require(:detalle).permit(:nombre_pro, :cantidad, :precio_u, :iva, :total_pre, :total_iva, :factura_id, :producto_id)
    end
end
