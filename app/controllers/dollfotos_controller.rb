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

  def edit
    @dollfoto = Dollfoto.find(params[:id])
  end

  def update
    @dollfoto = Dollfoto.find(params[:id])

    if @dollfoto.update_attributes(dollfoto_params)
      redirect_to "/dollfotos/#{@dollfoto.id}"
    else
      render :edit
    end
  end

  def destroy
    @dollfoto = Dollfoto.find(params[:id])
    @dollfoto.destroy
    redirect_to dollfotos_url
  end



  private
  def dollfoto_params
    params.require(:dollfoto).permit(:artist, :title, :url)
  end


end
