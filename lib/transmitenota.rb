require "transmitenota/version"
require "transmitenota/item"
require "transmitenota/nota"
require "transmitenota/config"
require "transmitenota/dado"
require 'json'
require "net/http"
require "uri"
require 'httpclient'

module Transmitenota
  class Nfe

    def url
      if @configuration.environment == :production
        'prod'
      elsif @configuration.environment == :sandbox
        "http://api1.transmitenota.com.br/api/homologacao/"
        #"http://localhost:8080/"
      end
    end

    # The configuration instance
    def configuration
      @configuration ||= Transmitenota::Config.new
    end

    def enviar_nfe(nota)
      puts json = nota.to_json
      puts '### enviando nota ###'
      http = HTTPClient.new
      http.receive_timeout = 30000
      puts url + "EnviarNfe/"
      response = http.post(url + "EnviarNfe/", json.encode(@configuration.encoding), set_header)
      #response.body
      puts obj = JSON.parse(response.body)
      searchkey = obj['searchkey']
    end

    def consultar_nfe(nota)
      puts json = nota.to_json
      puts '### consultando nota ###'
      http = HTTPClient.new
      http.receive_timeout = 30000
      response = http.post(url + "ConsultarEmissaoNotaNfe/", json.encode("utf-8"), set_header)
      puts response.body
    end

    def enviar_email_nfe(nota)
      puts json = nota.to_json
      puts '### enviando nota por email ###'
      http = HTTPClient.new
      http.receive_timeout = 30000
      response = http.post(url + "EnviarEmailNfe/", json.encode("utf-8"), set_header)
      puts response.body
    end

    def cancelar_nfe
      puts 'teste'
    end

    def set_header
      headers = {
        'Content-Type' => 'application/json',
      }
    end

  end
end
