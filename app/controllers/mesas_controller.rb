class MesasController < ApplicationController
	before_action :set_mesa, only: [:show, :edit, :update, :destroy]

	def index
		@mesas = Mesa.all
	end

	def show	
	end

	def new
		@mesa = Mesa.new
	end

	def edit
	end

	def create
		@mesa = Mesa.new(mesa_params)
		respond_to do |format|
			if mesa.save
				format.html { redirect_to @mesa, notice: 'mesa creada correctamente.' }
                format.json { render :show, status: :created, location: @mesa }
            else
            	format.html { render :new}
            	format.json { render json: @mesa.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
    	respond_to do |format|
    		if @mesa.update(mesa_params)
    			format.html { redirect_to @mesa, notice: 'mesa editada correctamente.' }
    			format.json { render :show, status: :ok, location: @mesa }
    		else
    			format.html { render :edit}
    			format.json { render json: @mesa.errors, status: :unprocessable_entity }
    		end
    	end
    end

    def destroy
    	@mesa.destroy
    	respond_to do |format|
    		format.html { redirect_to mesas_url, notice: 'mesa eliminada.' }
    		format.json { head :no_content }
    	end
    end

    private

    def set_mesa
    	@mesa = Mesa.find(params[ :id])
    end

    def mesa_params
    	params.require(:mesa).permit(:cantidadpersonas, :ubicacion)
    end
end
