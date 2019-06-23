class ClimaController < ApplicationController
   

    def buscar_atual
        render json: BuscaTemperatura.new.buscar_atual(cidade_params[:cidade]), status: :ok
    end

    def buscar_horas
        render json: BuscaHoras.new.buscar_horas(cidade_params[:cidade]), status: :ok
    end

    def buscar_CincoDias
        render json: BuscaDias.new.buscar_CincoDias(cidade_params[:cidade]), status: :ok
    end


    private

    def cidade_params
        params.permit(:cidade)
    end
end
