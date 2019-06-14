class CincoForecast

    def cincoDias(cidade)

        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/forecast?q=#{@cidade},BR&appid=a5ea6d1d5826d727e19d2d84e016e048&units=metric"
    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))


    end
end