DROP FUNCTION IF EXISTS func_to_procedure_mais_um_voo cascade;

CREATE FUNCTION func_to_procedure_mais_um_voo(cod_piloto INTEGER) RETURNS INTEGER
	AS $$
DECLARE
	total INTEGER;
BEGIN
	CALL insert_data(cod_piloto);
	select into total num_voos from piloto where piloto.codigo = cod_piloto;
END;
$$ LANGUAGE plpgsql;

CREATE PROCEDURE mais_um_voo(cod_piloto integer)
LANGUAGE SQL
AS $$
UPDATE piloto
	SET num_voos = piloto.num_voos+1
	WHERE codigo = cod_piloto;
$$;