class PlatoController < ApplicationController
	def index
		@platos = Plato.all
	end

	def show	
	end

	def new
		@platos = Plato.new
	end

	def edit
	end

	def create
		@plato = Plato.new(mesa_params)
		respond_to do |format|
			if plato.save
				format.html { redirect_to @plato, notice: 'plato creado correctamente.' }
                format.json { render :show, status: :created, location: @plato }
            else
            	format.html { render :new}
            	format.json { render json: @plato.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
    	respond_to do |format|
    		if @plato.update(plato_params)
    			format.html { redirect_to @plato, notice: 'plato editado correctamente.' }
    			format.json { render :show, status: :ok, location: @mesa }
    		else
    			format.html { render :edit}
    			format.json { render json: @plato.errors, status: :unprocessable_entity }
    		end
    	end
    end

    def destroy
    	@plato.destroy
    	respond_to do |format|
    		format.html { redirect_to mesas_url, notice: 'plato eliminado.' }
    		format.json { head :no_content }
    	end
    end

    private

    def set_plato
    	@plato = Plato.find(params[ :id])
    end

    def plato_params
    	params.require(:plato).permit(:nombre, :precio, :tipo, :descripcion)
    end
end
