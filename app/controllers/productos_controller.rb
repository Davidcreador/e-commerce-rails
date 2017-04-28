class ProductosController < ApplicationController
  def show
    @producto = Producto.find(params[:id])
  end

  def new
  end

  def index
    @productos = Producto.all
  end

  def edit
    @producto = Producto.find(params[:id])
  end

  def update
    @producto = Producto.find(params[:id])
    if @producto.update_attributes(producto_params)
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  private

    def producto_params
      params.require(:producto).permit(:title, :cantidad, :content)
    end
end
