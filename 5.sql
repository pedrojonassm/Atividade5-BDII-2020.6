DROP FUNCTION IF EXISTS milhas_500 cascade;

CREATE FUNCTION milhas_500(cod_cliente INTEGER) RETURNS INTEGER
	AS $$
DECLARE
	total INTEGER;
BEGIN
	select into total count(*) from milhas mi where mi.quantidade > 500;
	return total;
END;
$$ LANGUAGE plpgsql;