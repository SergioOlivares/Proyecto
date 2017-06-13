class EmpleadosController < ApplicationController
  before_action :set_empleado, only: [:show, :edit, :update, :destroy]

git,
  def index
    @empleados = Empleado.all
  end


  def show
  end


  def new
    @empleado = Empleado.new
  end


  def edit
  end


  def create
    @empleado = Empleado.new(empleado_params)

    respond_to do |format|
      if @empleado.save
        format.html { redirect_to @empleado, notice: 'Empleado ha sido creado.' }
        format.json { render :show, status: :created, location: @empleado }
      else
        format.html { render :new }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @empleado.update(empleado_params)
        format.html { redirect_to @empleado, notice: 'Empleado ha sido actualizado.' }
        format.json { render :show, status: :ok, location: @empleado }
      else
        format.html { render :edit }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @empleado.destroy
    respond_to do |format|
      format.html { redirect_to empleados_url, notice: 'Empleado ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private

  def set_empleado
    @empleado = Empleado.find(params[:id])
  end

  def empleado_params
    params.require(:empleado).permit(:rut, :nombre, :telefono, :direccion, :cargo, :turno)
  end
end
