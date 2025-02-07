 BEGIN; 
 ALTER TABLE IF EXISTS public.automacoes
    ADD CONSTRAINT automacoes_id_key UNIQUE (id);
ALTER TABLE IF EXISTS public.cad_chamados
    ADD CONSTRAINT cad_chamados_fk_cad_c_36b65abb FOREIGN KEY (id_contato)
    REFERENCES public.cad_contatos (id_contatos) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cad_chamados
    ADD CONSTRAINT cad_chamados_fk_cad_e_473cc331 FOREIGN KEY (id_empresa)
    REFERENCES public.cad_empresas (id_empresa) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cad_chamados
    ADD CONSTRAINT cad_chamados_fk_cad_m_134caf1f FOREIGN KEY (id_menu)
    REFERENCES public.cad_menus (id_menu) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cad_chamados
    ADD CONSTRAINT cad_chamados_fk_cad_t_87f5cde2 FOREIGN KEY (id_tipo)
    REFERENCES public.cad_tipos_chamados (id_tipo_chamados) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
ALTER TABLE IF EXISTS public.cad_campanhas_polos
    ADD CONSTRAINT cad_campanhas_polos_f_8a4bd8ce FOREIGN KEY (id_funil)
    REFERENCES public.funil (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

 END;
