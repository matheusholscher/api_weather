class AtualWeather
    
    def atual(cidade)

        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/weather?q=#{@cidade},BR&appid=a5ea6d1d5826d727e19d2d84e016e048&units=metric"
    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        if retorno["message"]
            return {message: "Cidade inexistente!"}
        else
            temperatura = {
            "Graus": retorno["main"]["temp"],
            "Pressão": retorno["main"]["pressure"],
            "Umidade": retorno["main"]["humidity"],
            "Temperatura máxima": retorno["main"]["temp_max"],
            "Temperatura mínima": retorno["main"]["temp_min"],
            "Vento": retorno["wind"]["speed"],
            "Rajada": retorno["wind"]["deg"]
            "Alvorada": Time.at(retorno["sys"]["sunrise"]),
            "Crepusculo": Time.at(retorno["sys"]["sunset"]),
            }
        end
    end
end