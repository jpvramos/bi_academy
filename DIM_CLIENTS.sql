/* PASSO 1: Criar a sequence para SURROGATE key. */
--drop sequence tabela_dim_id_seq cascade;

create sequence tabela_dim_id_seq
increment by 1
minvalue 1
maxvalue 9999999999
start 1;

-- select nextval('tabela_dim_id_seq');

/* PASSO 2: Criar Tabela de Dimensão */
--drop table tabela_dim cascade
create table tabela_dim (
	surrogate_key integer primary key not null default nextval ('tabela_dim_id_seq'), -- CHAVE ARTIFICIAL AUTO-INCREMENTAL. 
	natural_key varchar(60) not null,
	atributo_1 varchar(60) not null,
	atributo_2 varchar(60) not null,
	atributo_3 varchar(60) not null
);


/* PASSO 3: Inserir na Dimensão com base na STAGE AREA. */

insert into TABELA_DIMENSAO
	select  
	nextval('tabela_dim_id_seq'), --sk sequence
	CAMPO_1_TABELA_STAGE_AREA, -- campos da stage
	CAMPO2_TABELA_STAGE_AREA -- campos da Stage 
	from
	TABELA_STAGE_AREA
	
	
/* PASSO 4: Validar Carga */
	
select * from TABELA_DIMENSAO

/* EXEMPLO */

create sequence dim_cliente_id_seq
increment by 1
minvalue 1
maxvalue 999000000
start 200; 


drop table dim_cliente  cascade;
create table dim_cliente (
	sk_cliente integer primary key not null default nextval ('dim_cliente_id_seq'), -- CHAVE ARTIFICIAL AUTO-INCREMENTAL. 
	nk_cliente varchar(60) not null,
	nm_cliente varchar(100) not null,
	nm_email_cliente varchar(100) not null
	
);	


insert into dim_cliente
	select 
		nextval('dim_cliente_id_seq'), --sk_cliente
		st_cliente.cd_cliente, -- nk_cliente
		st_cliente.nome_cliente, -- nm_cliente
		st_cliente.enail_cliente -- nm_email
	from 
		st_cliente;