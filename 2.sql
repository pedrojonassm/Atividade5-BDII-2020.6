DROP FUNCTION IF EXISTS qual_classe cascade;

CREATE FUNCTION qual_classe(cod_voo INTEGER, cod_cliente integer) RETURNS character varying
	AS $$
DECLARE
	classe character varying;
BEGIN
	select into classe cl.classe from cliente_voo cv where cv.voo = cod_voo and cod_cliente = cv.cliente;
	return classe;
END;
$$ LANGUAGE plpgsql;