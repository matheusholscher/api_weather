class BuscaTempController < ApplicationController
   

    def busca_atual
        render json: BuscaAtual.new.busca_atual(cidade_params[:cidade]), status: :ok
    end

    def busca_cincoDias
        render json: BuscaDias.new.busca_cincoDias(cidade_params[:cidade]), status: :ok
    end

    def busca_horas
        render json: BuscaHoras.new.busca_horas(cidade_params[:cidade]), status: :ok
    end

    private

    def cidade_params
        params.permit(:cidade)
    end
end
