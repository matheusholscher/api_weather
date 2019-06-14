class BuscaTempController < ApplicationController
    require 'net/http'
    require 'json'

    def atual
        render json: AtualWeather.new.atual(tempe_params[:cidade]), status: :ok
    end

    private

    def temp_params
        params.permit(:cidade)
    end
end
