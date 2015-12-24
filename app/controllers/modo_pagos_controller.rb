class ModoPagosController < ApplicationController
  before_action :set_modo_pago, only: [:show, :edit, :update, :destroy]

  # GET /modo_pagos
  # GET /modo_pagos.json
  def index
    @modo_pagos = ModoPago.all
  end

  # GET /modo_pagos/1
  # GET /modo_pagos/1.json
  def show
  end

  # GET /modo_pagos/new
  def new
    @modo_pago = ModoPago.new
  end

  # GET /modo_pagos/1/edit
  def edit
  end

  # POST /modo_pagos
  # POST /modo_pagos.json
  def create
    @modo_pago = ModoPago.new(modo_pago_params)

    respond_to do |format|
      if @modo_pago.save
        format.html { redirect_to @modo_pago, notice: 'Modo pago was successfully created.' }
        format.json { render :show, status: :created, location: @modo_pago }
      else
        format.html { render :new }
        format.json { render json: @modo_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modo_pagos/1
  # PATCH/PUT /modo_pagos/1.json
  def update
    respond_to do |format|
      if @modo_pago.update(modo_pago_params)
        format.html { redirect_to @modo_pago, notice: 'Modo pago was successfully updated.' }
        format.json { render :show, status: :ok, location: @modo_pago }
      else
        format.html { render :edit }
        format.json { render json: @modo_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modo_pagos/1
  # DELETE /modo_pagos/1.json
  def destroy
    @modo_pago.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modo_pago
      @modo_pago = ModoPago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modo_pago_params
      params.require(:modo_pago).permit(:nombre, :otros_detalle)
    end
end
