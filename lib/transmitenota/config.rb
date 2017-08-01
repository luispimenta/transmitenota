module Transmitenota
  class Config
    # The api key
    attr_accessor :ApiKey

    # The cnpj
    attr_accessor :Cnpj

    # The encoding that will be used.
    attr_accessor :encoding

    attr_accessor :environment

    def initialize
      @environment = :sandbox
      @encoding = "UTF-8"
    end
  end
end
