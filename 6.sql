DROP FUNCTION IF EXISTS ao_quadrado cascade;

CREATE FUNCTION ao_quadrado(valor INTEGER) RETURNS INTEGER
	AS $$
BEGIN
	return valor*valor;
END;
$$ LANGUAGE plpgsql;