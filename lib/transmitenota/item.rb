module Transmitenota
  class Item
    attr_accessor :numero_item, :codigo_produto, :descricao, :cfop, :unidade_comercial, :quantidade_comercial, :valor_unitario_comercial, :codigo_ncm, :valor_desconto,
      :valor_frete, :valor_seguro, :valor_outras_despesas, :valor_total, :valor_total_sem_desconto, :icms_aliquota_calc_credito, :icms_valor_credito, :icms_origem_cstb,
      :icms_mod_base_calculo, :icms_base_calculo, :icms_reducao_base_calculo, :icms_aliquota, :icms_valor, :icms_valor_st, :icms_valor_bc_st_ret, :icms_valor_st_ret,
      :icms_mod_bc_st, :icms_mva_st, :icms_bc_st, :icms_red_bc_st, :icms_aliquota_st, :valor_bc_icms_uf_destino, :aliquota_icms_uf_destino, :valor_icms_int_uf_destino,
      :aliquota_int_uf_envolvidas, :valor_icms_int_uf_remetente, :aliquota_perc_prov_part_icms_int, :aliquota_icms_fundo_combate_pobreza_uf_dest,
      :valor_icms_fundo_combate_pobreza_uf_dest, :pis_situacao_tributaria, :aliquota_pis, :valor_pis, :base_calculo_pis, :cofins_situacao_tributaria, :aliquota_cofins,
      :valor_cofins, :base_calculo_cofins, :ipi_situacao_tributaria, :ipi_situacao_tributaria, :valor_ipi, :base_calculo_ipi, :aliquota_ipi, :cst_ipi,
      :ipi_codigo_enquadramento_legal, :aliquota_iof, :valor_ii, :valor_iof, :base_calculo_ii, :aliquota_ii, :valor_despesas_aduaneiras

    def to_hash
      hash = {}
      instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
      hash
    end
  end
end
