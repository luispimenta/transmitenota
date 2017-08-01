module Transmitenota
  class Dado
    attr_accessor :natureza_operacao, :data_emissao, :data_saida_entrada, :hora_saida_entrada, :tipo_operacao, :codigo_cfop, :forma_pagamento,
      :finalidade_emissao, :nome_destinatario, :cnpj_destinatario, :inscricao_estadual_destinatario, :telefone_destinatario, :logradouro_destinatario,
      :numero_destinatario, :complemento_destinatario, :bairro_destinatario, :municipio_destinatario, :uf_destinatario, :pais_destinatario,
      :cep_destinatario, :icms_base_calculo, :icms_valor_total, :icms_base_calculo_st, :icms_valor_total_st, :icms_modalidade_base_calculo,
      :icms_valor, :valor_frete, :valor_seguro, :valor_total, :valor_total_sem_desconto, :valor_ipi, :modalidade_frete, :informacoes_adicionais_contribuinte,
      :nome_transportadora, :cnpj_transportadora, :endereco_transportadora, :municipio_transportadora, :uf_transportadora, :inscricao_estadual_transportadora

    attr_accessor :Itens

    attr_accessor :searchkey

    attr_accessor :de, :para, :assunto, :mensagem

    def initialize
      @Itens = []
    end

    def to_hash
      hash = {}
      instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
      hash
    end
  end
end
