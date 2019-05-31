class BuscaTempController < ApplicationController
    require 'net/http'
    require 'json'

    def buscar 
        render json: ComunicacaoWeather.new.buscar(cidade_params[:cidade])
    end

    private 
    def cidade_params
        params.permit(:cidade)
    end
end
