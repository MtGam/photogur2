class DollfotosController < ApplicationController

  def index
    @dollfotos = Dollfoto.all
  end

  def show
    @dollfoto = Dollfoto.find(params[:id])
  end

  def new
    @dollfoto = Dollfoto.new
  end

  def create
    @dollfoto = Dollfoto.new(dollfoto_params)
    if @dollfoto.save
      redirect_to dollfotos_url
    else
      render :new
    end
  end

  private
  def dollfoto_params
    params.require(:dollfoto).permit(:artist, :title, :url)
  end


end
