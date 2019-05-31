class ComunicacaoWeather

    def buscar(cidade)
        @cidade = cidade

        url = "http://api.openweather.org/data/2.5/weather?&APPID=a5ea6d1d5826d727e19d2d84e016e048q=#{@cidade}/json"

        retorno = JSON.parse(Net::HTTP.get(URI(url)))
         

    end

end