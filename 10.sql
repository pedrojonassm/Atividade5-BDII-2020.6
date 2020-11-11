DROP FUNCTION IF EXISTS funcao_para_procedure_milhagem_zerada cascade;

CREATE FUNCTION funcao_para_procedure_milhagem_zerada(cod_cliente INTEGER)
	AS $$
BEGIN
	select mi.quantidade from milhas mi where mi.cliente = cod_cliente;
	call milhagem_zerada(cod_cliente);
	select cl.nome, mi.quantidade from cliente cl, milhas mi where mi.cliente = cod_cliente, cl.codigo = cod_cliente;
END;
$$ LANGUAGE plpgsql;

CREATE PROCEDURE milhagem_zerada(cod_cliente integer)
LANGUAGE SQL
AS $$
UPDATE milhas
	SET quantidade = 0
	WHERE cliente = cod_cliente;
$$;