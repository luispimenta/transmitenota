module Transmitenota
  class Nota
    attr_accessor :Dados

    def initialize(apiKey, cnpj)
      @ApiKey = apiKey
      @Cnpj = cnpj
      @Dados = {}
    end

    def to_hash
      hash = {}
      instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
      hash
    end
  end
end
