# Biblioteca não oficial de integração do site Transmitenota em Ruby 

## Descrição

Essa biblioteca foi desenvolvida para facilitar o envio de NFE através do site https://transmitenota.com.br/

## Instalação

 - Adicione a biblioteca ao seu Gemfile.

```ruby
gem "transmitenota"
```

Ou instale:

    $ gem install transmitenota

## Configuração

Para fazer a autenticação, você precisará configurar as credenciais da api do Transmitenota.

```ruby
require 'transmitenota'
transmitenota = Transmitenota::Nfe.new
transmitenota.configuration
transmitenota.configuration.ApiKey = "SUA_KEY_AQUI"
transmitenota.configuration.Cnpj = "SEU_CNPJ_AQUI"
```

## Criando uma NFE e transmitindo

```ruby
nota = Transmitenota::Nota.new(transmitenota.configuration.ApiKey, transmitenota.configuration.Cnpj)

dado = Transmitenota::Dado.new
dado.natureza_operacao = "VENDAS"
dado.data_emissao = "18/01/2017"
dado.data_saida_entrada = "18/01/2017"
dado.hora_saida_entrada = "05:35:00"
dado.tipo_operacao = "1"
dado.codigo_cfop = "5405"
dado.forma_pagamento = "0"
dado.finalidade_emissao = "1"
dado.nome_destinatario = "CRISTIANO FRANCISCO"
dado.cnpj_destinatario = "14074178000511"
dado.inscricao_estadual_destinatario = ""
dado.telefone_destinatario = "51984951792"
dado.logradouro_destinatario = "RUA TESTE"
dado.numero_destinatario = "242"
dado.complemento_destinatario = ""
dado.bairro_destinatario = "LEOPOLDINA"
dado.municipio_destinatario = "Porto Alegre"
dado.uf_destinatario = "RS"
dado.pais_destinatario = "Brasil"
dado.cep_destinatario = "91250200"
dado.icms_base_calculo = "0"
dado.icms_valor_total = "0"
dado.icms_base_calculo_st = "0"
dado.icms_valor_total_st = "0"
dado.icms_modalidade_base_calculo = "0"
dado.icms_valor = "0"
dado.valor_frete = "0.0000"
dado.valor_seguro = "0"
dado.valor_total = "12.00"
dado.valor_total_sem_desconto = "12.00"
dado.valor_ipi = "0"
dado.modalidade_frete = "1"
dado.informacoes_adicionais_contribuinte = "REFERENTE AO PEDIDO X"
dado.nome_transportadora = ""
dado.cnpj_transportadora = ""
dado.endereco_transportadora = ""
dado.municipio_transportadora = ""
dado.uf_transportadora = ""
dado.inscricao_estadual_transportadora = ""

item = Transmitenota::Item.new
item.numero_item = "1"
item.codigo_produto = "9999999"
item.descricao = "Perfume Polo Black 1"
item.cfop = "5405"
item.unidade_comercial = "un"
item.quantidade_comercial = "1"
item.valor_unitario_comercial = "12.00"
item.codigo_ncm = "33030010"
item.valor_desconto = ""
item.valor_frete = ""
item.valor_seguro = ""
item.valor_outras_despesas = ""
item.valor_total = "12.00"
item.valor_total_sem_desconto = "12.00"
item.icms_aliquota_calc_credito = ""
item.icms_valor_credito = ""
item.icms_origem_cstb = ""
item.icms_mod_base_calculo = " "
item.icms_base_calculo = ""
item.icms_reducao_base_calculo = ""
item.icms_aliquota = ""
item.icms_valor = ""
item.icms_valor_st = ""
item.icms_valor_bc_st_ret = ""
item.icms_valor_st_ret = ""
item.icms_mod_bc_st = ""
item.icms_mva_st = ""
item.icms_bc_st = ""
item.icms_red_bc_st = ""
item.icms_aliquota_st = ""
item.valor_bc_icms_uf_destino = ""
item.aliquota_icms_uf_destino = ""
item.valor_icms_int_uf_destino = ""
item.aliquota_int_uf_envolvidas = ""
item.valor_icms_int_uf_remetente = ""
item.aliquota_perc_prov_part_icms_int = ""
item.aliquota_icms_fundo_combate_pobreza_uf_dest = ""
item.valor_icms_fundo_combate_pobreza_uf_dest = ""
item.pis_situacao_tributaria = ""
item.aliquota_pis = ""
item.valor_pis = ""
item.base_calculo_pis = ""
item.cofins_situacao_tributaria = ""
item.aliquota_cofins = ""
item.valor_cofins = ""
item.base_calculo_cofins = ""
item.ipi_situacao_tributaria = ""
item.aliquota_ipi = ""
item.valor_ipi = ""
item.base_calculo_ipi = ""
item.cst_ipi = ""
item.ipi_codigo_enquadramento_legal = ""
item.aliquota_iof = ""
item.valor_ii = ""
item.valor_iof = ""
item.base_calculo_ii = ""
item.aliquota_ii = ""
item.valor_despesas_aduaneiras = ""

items = []
items << item.to_hash
dado.Itens << items

item = Transmitenota::Item.new
item.numero_item = "2"
item.codigo_produto = "999"
item.descricao = "Serviço"
item.cfop = "5933"
item.unidade_comercial = "un"
item.quantidade_comercial = "1"
item.valor_unitario_comercial = "6.00"
item.codigo_ncm = "00000000"
item.valor_desconto = ""
item.valor_frete = ""
item.valor_seguro = ""
item.valor_outras_despesas = ""
item.valor_total = "12.00"
item.valor_total_sem_desconto = "12.00"
item.icms_aliquota_calc_credito = ""
item.icms_valor_credito = ""
item.icms_origem_cstb = ""
item.icms_mod_base_calculo = " "
item.icms_base_calculo = ""
item.icms_reducao_base_calculo = ""
item.icms_aliquota = ""
item.icms_valor = ""
item.icms_valor_st = ""
item.icms_valor_bc_st_ret = ""
item.icms_valor_st_ret = ""
item.icms_mod_bc_st = ""
item.icms_mva_st = ""
item.icms_bc_st = ""
item.icms_red_bc_st = ""
item.icms_aliquota_st = ""
item.valor_bc_icms_uf_destino = ""
item.aliquota_icms_uf_destino = ""
item.valor_icms_int_uf_destino = ""
item.aliquota_int_uf_envolvidas = ""
item.valor_icms_int_uf_remetente = ""
item.aliquota_perc_prov_part_icms_int = ""
item.aliquota_icms_fundo_combate_pobreza_uf_dest = ""
item.valor_icms_fundo_combate_pobreza_uf_dest = ""
item.pis_situacao_tributaria = ""
item.aliquota_pis = ""
item.valor_pis = ""
item.base_calculo_pis = ""
item.cofins_situacao_tributaria = ""
item.aliquota_cofins = ""
item.valor_cofins = ""
item.base_calculo_cofins = ""
item.ipi_situacao_tributaria = ""
item.valor_ipi = ""
item.base_calculo_ipi = ""
item.aliquota_ipi = ""
item.cst_ipi = ""
item.ipi_codigo_enquadramento_legal = ""
item.aliquota_iof = ""
item.valor_ii = ""
item.valor_iof = ""
item.base_calculo_ii = ""
item.aliquota_ii = ""
item.valor_despesas_aduaneiras = ""

items = []
items << item.to_hash
dado.Itens << items

nota.Dados = dado.to_hash

searchkey = transmitenota.enviar_nfe(nota.to_hash)
```

## Consultando uma NFE transmitida

```ruby
nota = Transmitenota::Nota.new(transmitenota.configuration.ApiKey, transmitenota.configuration.Cnpj)
dado = Transmitenota::Dado.new
dado.searchkey = searchkey
nota.Dados = dado.to_hash
transmitenota.consultar_nfe(nota.to_hash)
```

## Enviando por email uma NFE autilizada
```ruby
nota = Transmitenota::Nota.new(transmitenota.configuration.ApiKey, transmitenota.configuration.Cnpj)
dado = Transmitenota::Dado.new
dado.de = "pimenta@red4sis.com"
dado.para = "lfptwins@gmail.com"
dado.assunto = "Envio XML e PDF Nota Fiscal Eletrônica de Serviço"
dado.mensagem = "Prezado cliente segue e-mail com XML e PDF da Nota Fiscal solicitada"
dado.searchkey = searchkey
nota.Dados = dado.to_hash
transmitenota.enviar_email_nfe(nota.to_hash)
```

## TODO
Falta implementar e testar :
 - Testes
 - Cancelamento da NFE
 
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/luispimenta/transmitenota-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

