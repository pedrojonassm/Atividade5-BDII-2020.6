DROP FUNCTION IF EXISTS total_voos cascade;

CREATE FUNCTION total_voos(cod_cliente INTEGER) RETURNS INTEGER
	AS $$
DECLARE
	total INTEGER;
BEGIN
	select into total count(*) from cliente_voo cv where cv.cliente = cod_cliente;
	return total;
END;
$$ LANGUAGE plpgsql;