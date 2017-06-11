class InsumoController < ApplicationController

	def index
		@insumos = Insumo.all
	end

	def show	
	end

	def new
		@insumos = Insumo.new
	end

	def edit
	end

	def create
		@insumo = Insumo.new(mesa_params)
		respond_to do |format|
			if insumo.save
				format.html { redirect_to @insumo, notice: 'insumo agregado correctamente.' }
                format.json { render :show, status: :created, location: @insumo }
            else
            	format.html { render :new}
            	format.json { render json: @insumo.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
    	respond_to do |format|
    		if @insumo.update(insumo_params)
    			format.html { redirect_to @insumo, notice: 'insumo editada correctamente.' }
    			format.json { render :show, status: :ok, location: @insumo }
    		else
    			format.html { render :edit}
    			format.json { render json: @insumo.errors, status: :unprocessable_entity }
    		end
    	end
    end

    def destroy
    	@insumo.destroy
    	respond_to do |format|
    		format.html { redirect_to insumos_url, notice: 'insumo eliminada.' }
    		format.json { head :no_content }
    	end
    end

    private

    def set_insumo
    	@insumo = Insumo.find(params[ :id])
    end

    def insumo_params
    	params.require(:insumo).permit(:nombre, :cantidad)
    end
end
