-- PROJECT DB ST_BIACADEMY 
-- Author: Joao Paulo Vieira Ramos

-- Dropar tudo se precisar comecar de novo 
-- drop table cadastro_cliente, st_cliente cascade


-- Tabela Exemplo Legado 
create table if not exists cadastro_cliente (
	cdcli int not null, 
	nomecli varchar(100) not null, 
	emailcli varchar(100) not null, 
	constraint cadastro_cliente_pk primary key(cdcli)
);


-- insert dados ficticios no Legado
insert into cadastro_cliente(cdcli, nomecli, emailcli ) VALUES(1001, 'piton', 'suporte@raizzer.com');
INSERT into cadastro_cliente (cdcli , nomecli , emailcli ) VALUES(2001, 'doriva','doriva@doriva.com');
INSERT into cadastro_cliente (cdcli , nomecli , emailcli ) VALUES(3001, 'rigo', 'rigo@rigonis.com');
INSERT into cadastro_cliente (cdcli, nomecli, emailcli ) VALUES(4001, 'rob', 'rob@robhud.com');


-- Validar insert no Legado
SELECT * FROM cadastro_cliente cc ;




-- tabela exemplo STAGE

create table if not exists ST_CLIENTE ( -- sempre utilizar o prefixo ST_
	CD_CLIENTE integer, -- pode user um varchar tambem ... nao sabemos o que vai vir ... depois é so converter
	NOME_CLIENTE varchar(255), -- reserva um espaco maior sempre! Geralmente usa varchar para manipular isso depois
	ENAIL_CLIENTE varchar(255)
);

-- Podemos criar indices na tabela de stage para melhorar a performance do ETL e o processamento no banco
create index st_cliente_cd_cliente_idx on st_cliente(cd_cliente);


-- antes de inserir deve zerar a tabela de STAGE
truncate table st_cliente; -- stage e sempre limpa! trunca a tabela antes de carregar ela. Sempre!

-- insert Stage

insert into st_cliente
	select cdcli, nomecli, emailcli
	from cadastro_cliente