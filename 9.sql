
DROP FUNCTION IF EXISTS piloto_voos cascade;

CREATE FUNCTION piloto_voos(cod_piloto INTEGER) RETURNS table(nome character varying, milhas integer)
	AS $$
BEGIN
	select nome, num_voos from piloto where piloto.codigo = cod_piloto;
END;
$$ LANGUAGE sql;