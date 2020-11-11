DROP FUNCTION IF EXISTS total_passageiros cascade;

CREATE FUNCTION total_passageiros(cod_voo INTEGER) RETURNS INTEGER
	AS $$
DECLARE
	total INTEGER;
BEGIN
	select into total count(*) from cliente_voo cv where cv.voo = cod_voo;
	return total;
END;
$$ LANGUAGE plpgsql;