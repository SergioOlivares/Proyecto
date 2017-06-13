class InsumoPlatosController < ApplicationController
  before_action :set_insumo_plato, only: [:show, :edit, :update, :destroy]


  def index
    @insumo_platos = InsumoPlato.all
  end


  def show
  end


  def new
    @insumo_plato = InsumoPlato.new
  end


  def edit
  end


  def create
    @insumo_plato = InsumoPlato.new(insumo_plato_params)

    respond_to do |format|
      if @insumo_plato.save
        format.html { redirect_to @insumo_plato, notice: 'Insumo plato ha sido creado.' }
        format.json { render :show, status: :created, location: @insumo_plato }
      else
        format.html { render :new }
        format.json { render json: @insumo_plato.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @insumo_plato.update(insumo_plato_params)
        format.html { redirect_to @insumo_plato, notice: 'Insumo plato ha sido actualizado.' }
        format.json { render :show, status: :ok, location: @insumo_plato }
      else
        format.html { render :edit }
        format.json { render json: @insumo_plato.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @insumo_plato.destroy
    respond_to do |format|
      format.html { redirect_to insumo_platos_url, notice: 'Insumo plato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_insumo_plato
    @insumo_plato = InsumoPlato.find(params[:id])
  end


  def insumo_plato_params
    params.require(:insumo_plato).permit(:cantidadusada, :unidadmedida, :insumo_id, :plato_id)
  end
end
