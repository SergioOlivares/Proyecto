class ProveedorsController < ApplicationController
	before_action :set_proveedor, only: [:show, :edit, :update, :destroy]

	def index
		@proveedors = Proveedor.all
	end

	def show
	end

	def new
		@proveedor = Proveedor.new

	def edit
	end

	def create
		@proveedor = Proveedor.new(proveedor_params)
		respond_to do |format|
			if @proveedor.save
				format.html { redirect_to @proveedor, notice: 'proveedor creado correctamente.' }
				format.json { render :show, status: :created, location: @proveedor }
			else
				format.html { render :new }
				format.json { render json: @proveedor.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		respond_to do |format|
			if @proveedor.update(proveedor_params)
				format.html { redirect_to @proveedor, notice: 'proveedor editado correctamente.' }
				format.json { render :show, status: :ok, location: @proveedor }
			else
				format.html { render :edit }
				format.json { render json: @proveedor.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@proveedor.destroy
		respond_to do |format|
			format.html { redirect_to proveedors_url, notice: 'proveedor eliminado.' }
			format.json { head :no_content }
		end
	end

	private

	def set_proveedor
		@proveedor = Proveedor.find(params[:id])
	end

	def proveedor_params
		params.require(:proveedor).permit(:rut, :nombre, :direccion, :telefono, :mail)
	end
end
