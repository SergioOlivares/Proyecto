class ProveedorInsumosController < ApplicationController

	def index
		@proveedor_insumos = ProveedorInsumo.all
	end

	def show
	end

	def new
		@proveedor_insumo = ProveedorInsumo.new
	end

	def edit
	end

	def create
		@proveedor_insumo = proveedor_insumo.new(proveedor_insumo_params)

		respond_to do |format|
			if @proveedor_insumo.save
				format.html { redirect_to @proveedor_insumo, notice: 'Proveedor/insumo creado con exito.' }
				format.json { render :show, status: :created, location: @proveedor_insumo }
			else
				format.html { render :new}
				format.json { render json: @proveedor_insumo.errors, status: :unprocessable_entity}
			end
		end
	end

	def update
		respond_to do |format|
			if @proveedor_insumo.update(proveedor_insumo_params)
				format.html { redirect_to @proveedor_insumo, notice: ' editado correctamente.' }
				format.json { render :show, status: :ok, location: @proveedor_insumo}
			else
				format.html { render :edit}
				format.json { render json: @proveedor_insumo.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@proveedor_insumo.destroy
		respond_to do |format|
			format.html { redirect_to @proveedor_insumos_url, notice: 'destruido exitosamente.' }
			format.json { head :no_content}
		end
	end

	private

	def set_proveedor_insumo
		@proveedor_insumo = ProveedorInsumo.find(params[:id])
	end

	def proveedor_insumo_params
		params.require(:proveedor_insumo).permit(:precio, :proveedor_id, :insumo_id)
	end
end
