# app/services/api_service.rb
class AnimeService
    include HTTParty
  
    base_uri 'https://api.jikan.moe/v4'
  
    def initialize
      # Configurações opcionais, como cabeçalhos de autenticação, podem ser adicionadas aqui
    end
  
    def obter_recurso
      response = self.class.get('/anime')
  
      if response.success?
        return JSON.parse(response.body)["data"]
      else
        raise "Erro na requisição: #{response.code} - #{response.message}"
      end
    end
  
    def buscar_animes(query)
      response = self.class.get("/anime?q=#{query}&sfw")
  
      if response.success?
        return JSON.parse(response.body)["data"]
      else
        raise "Erro na busca: #{response.code} - #{response.message}"
      end
    end
  
    def obter_detalhes_do_anime(anime_id)
      sleep(1)
      response = nil
      begin
        response = self.class.get("/anime/#{anime_id}", timeout: 10) # Set the timeout value in seconds
      rescue Net::HTTPTooManyRequests
        sleep(10) # Wait for 5 seconds before making the request again
        retry
      end

      if response.success?
        return JSON.parse(response.body)["data"]
      else
        raise "Erro ao obter detalhes do anime: #{response.code} - #{response.message}"
      end
    end
  
  
  end
  