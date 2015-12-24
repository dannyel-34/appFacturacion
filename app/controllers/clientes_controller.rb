class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.search(params[:search], params[:page])
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Cliente was successfully created.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
      valores = cliente_params
      valores["municipio_id"] = params[:id_municipio] # captura el valor del id dem municipio del autocomplete
      respond_to do |format|
        if @cliente.update(valores)
          format.html { redirect_to @persona, notice: 'Persona was successfully updated.' }
          format.json { render :show, status: :ok, location: @cliente }
        else
          format.html { render :edit }
          format.json { render json: @cliente.errors, status: :unprocessable_entity }
        end
      end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:nombre, :apellido, :direccion, :fch_nacimiento, :genero, :telefono1, :telefono2, :mail, :municipio_id, :docIdentidad, :tipo_doc_id, :estado_civil_id, :tMovil)
    end
end
