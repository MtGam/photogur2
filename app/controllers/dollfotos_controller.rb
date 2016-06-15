class DollfotosController < ApplicationController

  def index
    @dollfotos = Dollfoto.all
  end

  def show
    @dollfoto = Dollfoto.find(params[:id])
  end

end
