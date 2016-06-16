class DollfotosController < ApplicationController

  def index
    @dollfotos = Dollfoto.all
  end

  def show
    @dollfoto = Dollfoto.find(params[:id])
  end

  def new
  end

  def create
    render text: "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

end
