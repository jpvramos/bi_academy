--drop table pedidos;

create table pedidos (
	numeroPedido integer not null, --799
	dataPedido timestamp not null, -- 15/01/2020
	dataPagamentoPedido timestamp default null,-- 16/01/2020
	dataEntregaPedido timestamp default null, --  25/01/2020
	statusPedido varchar(100) not null, -- pago
	comentarios text, --ultima peca 
	numeroCliente integer not null,-- 667584 
	primary key (numeroPedido)

);

-------
create table itenspedido (
  numeropedido integer not null, --799898989
  codigoproduto varchar(50) not null,  -- bm-120
  quantidadepedido integer not null, -- 03
  precounitario double precision not null, -- 80.000,00
  numerolinhapedido smallint not null, -- 1
  primary key (numeropedido,codigoproduto)
) ;


-------

-- truncate table pedidos;
insert into pedidos
(numeroPedido, dataPedido, dataPagamentoPedido, dataEntregaPedido, statusPedido, comentarios, numeroCliente)
VALUES(10100, '2017-01-06 00:00:00.000','2017-01-06 00:00:00.000', null, 'Aguardando Pagamento', null, 363);

insert into pedidos
(numeroPedido, dataPedido, dataPagamentoPedido, dataEntregaPedido, statusPedido, comentarios, numeroCliente)
VALUES(10101, '2017-01-09 00:00:00.000','2017-01-18 00:00:00.000', '2017-01-11 00:00:00.000', 'Pago', 'passou em 2 cartoes', 128);

insert into pedidos
(numeroPedido, dataPedido, dataPagamentoPedido, dataEntregaPedido, statusPedido, comentarios, numeroCliente)
VALUES(10102, '2017-01-10 00:00:00.000','2017-01-18 00:00:00.000', '2017-01-20 00:00:00.000', 'Pago', null, 181);

insert into pedidos
(numeroPedido, dataPedido, dataPagamentoPedido, dataEntregaPedido, statusPedido, comentarios, numeroCliente)
VALUES(10103, '2017-01-29 00:00:00.000','2017-02-07 00:00:00.000', '2017-02-02 00:00:00.000', 'Pedido Enviado', null, 121);

insert into pedidos
(numeroPedido, dataPedido, dataPagamentoPedido, dataEntregaPedido, statusPedido, comentarios, numeroCliente)
VALUES(10104, '2017-01-31 00:00:00.000','2017-02-09 00:00:00.000', '2017-02-01 00:00:00.000', 'Pedido Enviado', null, 141);

insert into pedidos
(numeroPedido, dataPedido, dataPagamentoPedido, dataEntregaPedido, statusPedido, comentarios, numeroCliente)
VALUES(10105, '2017-02-11 00:00:00.000','2017-02-21 00:00:00.000', '2017-02-12 00:00:00.000', 'Entregue', null, 145);

insert into pedidos
(numeroPedido, dataPedido, dataPagamentoPedido, dataEntregaPedido, statusPedido, comentarios, numeroCliente)
VALUES(10106, '2017-02-17 00:00:00.000','2017-02-24 00:00:00.000', '2017-02-21 00:00:00.000', 'Entregue', null, 278);

insert into pedidos
(numeroPedido, dataPedido, dataPagamentoPedido, dataEntregaPedido, statusPedido, comentarios, numeroCliente)
VALUES(10107, '2017-02-24 00:00:00.000','2017-03-03 00:00:00.000', '2017-02-26 00:00:00.000', 'Entregue', 'endereco errado', 131);

insert into pedidos
(numeroPedido, dataPedido, dataPagamentoPedido, dataEntregaPedido, statusPedido, comentarios, numeroCliente)
VALUES(10108, '2017-03-03 00:00:00.000','2017-03-12 00:00:00.000', '2017-03-08 00:00:00.000', 'Entregue', null, 385);

-- insert detalhes do pedido

-- truncate table itenspedidos

insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10100, 's18_1749', 30, 171.7, 3);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10100, 's18_2248', 50, 67.8, 2);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10100, 's18_4409', 22, 86.51, 4);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10100, 's18_3969', 49, 34.47, 1);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10101, 's18_2325', 49, 34.47, 4);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10101, 's18_2795', 26, 145.13, 1);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10101, 's18_1937', 45, 31.2, 3);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10101, 's18_2022', 46, 53.76, 2);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10102, 's18_1342', 39, 123.29, 2);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10102, 's18_1367', 41, 50.14, 1);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario, numerolinhapedido)
values(10103, 's10_1949', 26, 207.87, 11);
insert into itenspedido 
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's10_4962', 42, 128.53, 4);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's12_1666', 27, 125.74, 8);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's18_1097', 35, 112, 10);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's18_2432', 22, 54.09, 2);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's18_2949', 27, 83.07, 12);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's18_2957', 35, 57.46, 14);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's18_3136', 25, 101.58, 13);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's18_3320', 46, 104.17, 16);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's18_4600', 36, 117.45, 5);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's18_4668', 41, 47.29, 9);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's24_2300', 36, 102.23, 1);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's24_4258', 25, 114.92, 15);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's32_1268', 31, 104.01, 3);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's32_3522', 45, 75.63, 7);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10103, 's700_2824', 42, 106.21, 6);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's12_3148', 34, 175.25, 1);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's12_4473', 41, 112.58, 9);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's18_2238', 24, 144.08, 8);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's18_2319', 29, 130.09, 12);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's18_3232', 23, 198.13, 13);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's18_4027', 38, 140.75, 3);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's24_1444', 35, 55.49, 6);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's24_2840', 44, 39.6, 10);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's24_4048', 26, 112.37, 5);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's32_2509', 35, 47.62, 11);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's32_3207', 49, 65.87, 4);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's50_1392', 33, 112.28, 7);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10104, 's50_1514', 32, 53.31, 2);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's10_4757', 50, 144.16, 2);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's12_1108', 41, 211.96, 15);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's12_3891', 29, 157.45, 14);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's18_3140', 22, 139.32, 11);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's18_3259', 38, 113.95, 13);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's18_4522', 41, 82.5, 10);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's24_2011', 43, 147.47, 9);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's24_3151', 44, 72.58, 4);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's24_3816', 50, 79.67, 1);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's700_1138', 41, 70.67, 5);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's700_1938', 29, 70.15, 12);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's700_2610', 31, 65.77, 3);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's700_3505', 39, 81.14, 6);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's700_3962', 22, 116.19, 7);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10105, 's72_3212', 25, 56.78, 8);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's18_1662', 36, 146.65, 12);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's18_2581', 34, 90.39, 2);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's18_3029', 41, 83.44, 18);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's18_3856', 41, 116.46, 17);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's24_1785', 28, 88.63, 4);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's24_2841', 49, 74.68, 13);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's24_3420', 31, 52.6, 14);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's24_3949', 50, 64.83, 11);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's24_4278', 26, 63.76, 3);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's32_4289', 33, 72.92, 5);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's50_1341', 39, 40.15, 6);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's700_1691', 31, 106.87, 7);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's700_2047', 30, 105.91, 16);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's700_2466', 34, 110.69, 9);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's700_2834', 32, 124.58, 1);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's700_3167', 44, 74.4, 8);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's700_4002', 48, 61.44, 10);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10106, 's72_1253', 48, 52.64, 15);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10107, 's10_1678', 30, 95.7, 2);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10107, 's10_2016', 39, 99.91, 5);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10107, 's10_4698', 27, 224.65, 4);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10107, 's12_2823', 21, 144.6, 1);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10107, 's18_2625', 29, 70.87, 6);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10107, 's24_1578', 25, 113.83, 3);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10107, 's24_2000', 38, 83.03, 7);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10107, 's32_1374', 20, 92.9, 8);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's12_1099', 33, 159.55, 6);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's12_3380', 45, 136.23, 4);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's12_3990', 39, 89.38, 7);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's12_4675', 36, 103.64, 3);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's18_1889', 38, 82.39, 2);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's18_3278', 26, 68.35, 9);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's18_3482', 29, 139.64, 8);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's18_3782', 43, 67.77, 12);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's18_4721', 44, 126.48, 11);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's24_2360', 35, 58.87, 15);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's24_3371', 30, 63.07, 5);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's24_3856', 40, 136.22, 1);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's24_4620', 31, 68.71, 10);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's32_2206', 27, 43.45, 13);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's32_4485', 31, 118.38, 16);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10108, 's50_4713', 34, 82.99, 14);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10109, 's18_1129', 26, 168.43, 4);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10109, 's18_1984', 38, 116.65, 3);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10109, 's18_2870', 26, 121.44, 1);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10109, 's18_3232', 46, 179.5, 5);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10109, 's18_3685', 47, 132.8, 2);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10109, 's24_2972', 29, 32.1, 6);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's18_1589', 37, 146.84, 16);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's18_1749', 42, 144.5, 7);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's18_2248', 32, 50.25, 6);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's18_2325', 33, 116.96, 4);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's18_2795', 31, 163.69, 1);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's18_4409', 28, 89.27, 8);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's18_4933', 42, 61.29, 9);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's24_1046', 36, 85.25, 13);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's24_1628', 29, 59.37, 15);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's24_1937', 20, 35.51, 3);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's24_2022', 39, 44.35, 2);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's24_2766', 43, 78.15, 11);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's24_2887', 46, 129.18, 10);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's24_3191', 27, 73.62, 12);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's24_3432', 37, 100.66, 14);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10110, 's24_3969', 48, 34.47, 5);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10111, 's18_1342', 33, 99.66, 6);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10111, 's18_1367', 48, 49.06, 5);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10111, 's18_2957', 28, 64.33, 2);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10111, 's18_3136', 43, 112.05, 1);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10111, 's18_3320', 39, 107.15, 4);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10111, 's24_4258', 26, 86.68, 3);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10112, 's10_1949', 29, 248.59, 1);
insert into itenspedido
(numeropedido, codigoproduto, quantidadepedido, precounitario,numerolinhapedido)
values(10112, 's18_2949', 23, 110.43, 2);

-- validar inserts
select * from pedidos p ;
select * from itenspedido i ;

select * from pedidos p , itenspedido i
	where p.numeropedido = i.numeropedido and
--          p.numeropedido  = 10100;


-- CRIAR TABELA ST
create table st_venda
(
	dt_venda DATE, -- pedidos.dataPedido
	cd_venda integer, -- pedidos.numeroPedido
	cd_produto VARCHAR(255), -- itenspedido.codigoProduto
	qtd_vendida integer, -- itenspedidoquantidadepedido
	vl_vendido NUMERIC(10,4),-- itenspedido.precounitario X itenspedido.quantidadepedido
	cd_cliente varchar(255), -- pedidos.nunerocliente
	status_venda varchar(60) -- pedidos.statuspedido
);


insert into st_venda 
select p.datapedido, p.numeropedido, i.codigoproduto, i.quantidadepedido, 
(i.precounitario * i.quantidadepedido), p.numerocliente, p.statuspedido 
from pedidos p, itenspedido i
where p.numeropedido = i.numeropedido 













