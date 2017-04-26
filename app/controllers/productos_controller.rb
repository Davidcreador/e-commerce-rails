class ProductosController < ApplicationController
  def show
    @producto = Producto.find(params[:id])
  end

  def new
  end

  def index
    @productos = Producto.all
  end
end
