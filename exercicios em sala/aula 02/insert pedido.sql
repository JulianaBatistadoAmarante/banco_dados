USE loja_produtos;

INSERT INTO PEDIDO
(quant_produto, status, data, total, produto_id_produto)
VALUES
(2, 'Entregue', '2026-06-01', 99.80, 1),

(1, 'Em transporte', '2026-06-03', 299.90, 2),

(3, 'Processando', '2026-06-05', 389.70, 3),

(1, 'Entregue', '2026-06-06', 79.90, 4),

(2, 'Cancelado', '2026-06-07', 399.80, 5),

(4, 'Entregue', '2026-06-08', 199.60, 1),

(1, 'Processando', '2026-06-09', 129.90, 3);