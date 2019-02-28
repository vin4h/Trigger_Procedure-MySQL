DELIMITER $
 
CREATE TRIGGER trg_empresa AFTER INSERT ON usuario

FOR EACH ROW BEGIN
    call  popula_categorias_produtos(new.id);
END
$