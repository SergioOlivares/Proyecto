class PlatoPedidoController < ApplicationController
	def index
		@plato_pedidos = PlatoPedidos.all
	end

	def show
	end

	def new
		@plato_pedidos = PlatoPedidos.new
	end

	def edit
	end

	def create
		@plato_pedidos = plato_pedido.new(plato_pedido_params)

		respond_to do |format|
			if @plato_pedido.save
				format.html { redirect_to @plato_pedido, notice: 'Plato-Pedido creado con exito.' }
				format.json { render :show, status: :created, location: @plato_pedido }
			else
				format.html { render :new}
				format.json { render json: @plato_pedido.errors, status: :unprocessable_entity}
			end
		end
	end

	def update
		respond_to do |format|
			if @plato_pedido.update(plato_pedido_params)
				format.html { redirect_to @plato_pedido, notice: ' editado correctamente.' }
				format.json { render :show, status: :ok, location: @plato_pedido}
			else
				format.html { render :edit}
				format.json { render json: @plato_pedido.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@plato_pedido.destroy
		respond_to do |format|
			format.html { redirect_to @plato_pedido_url, notice: 'destruido exitosamente.' }
			format.json { head :no_content}
		end
	end

	private

	def set_plato_pedido
		@plato_pedido = PlatoPedidos.find(params[:id])
	end

	def plato_insumo_params
		params.require(:plato_pedido).permit()
	end
end
