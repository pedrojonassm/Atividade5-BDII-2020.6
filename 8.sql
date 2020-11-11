
DROP FUNCTION IF EXISTS nome_milhas cascade;

CREATE FUNCTION nome_milhas(cod_cliente INTEGER) RETURNS table(nome character varying, milhas integer)
	AS $$
BEGIN
	select cl.nome, mi.quantidade from cliente cl, milhas mi where cl.codigo = cod_cliente and mi.cliente = cod_cliente;
END;
$$ LANGUAGE sql;