class BuscaTempController < ApplicationController
    require 'net/http'
    require 'json'

    private

    def temp_params
        params.permit(:cidade)
    end
end
