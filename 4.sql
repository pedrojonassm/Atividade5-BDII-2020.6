DROP FUNCTION IF EXISTS total_milhas cascade;

CREATE FUNCTION total_milhas(cod_cliente INTEGER) RETURNS INTEGER
	AS $$
DECLARE
	total INTEGER;
BEGIN
	select into total sum(mi.quantidade) from milhas mi;
	return total;
END;
$$ LANGUAGE plpgsql;