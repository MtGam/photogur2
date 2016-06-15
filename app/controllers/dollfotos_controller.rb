class DollfotosController < ApplicationController

  def index
    @dollfotos = Dollfoto.all
  end
  
end
