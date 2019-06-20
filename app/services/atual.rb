class BuscaAtual
    require 'net/http'
    require 'json' 
    require 'time'

    def busca_atual(cidade)

        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/weather?q=#{@cidade},BR&APPID=7fe5a0bcd8c43fe22e389436e4f73f1f"
    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))


        temp = {"Data": Time.at(retorno["dt"]),
                    "Clima": retorno["weather"][0]["main"],
                    "Descrição": retorno["weather"][0]["description"],
                    "Temperatura": retorno["main"]["temp"],
                    "Pressao": retorno["main"]["pressure"],
                    "Umidade": retorno["main"]["humidity"],
                    "Temperatura_Maxima": retorno["main"]["temp_max"],
                    "Temperatura_Minima": retorno["main"]["temp_min"],
                    "Velocidade_Vento": retorno["wind"]["speed"],
                    "Alvorada": Time.at(retorno["sys"]["sunrise"]),
                    "Crepusculo": Time.at(retorno["sys"]["sunset"])
                }
               
        
    end

end
