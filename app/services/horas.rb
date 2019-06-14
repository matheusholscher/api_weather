class HorasForecast

    def horas(cidade)
        @cidade = cidade

        chave = "a5ea6d1d5826d727e19d2d84e016e0482"

        url = "http://api.openweathermap.org/data/2.5/forecast/hourly?q=#{@cidade},BR&appid=#{chave}&units=metric"
    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

    end
end