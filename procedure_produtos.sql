DELIMITER $
CREATE PROCEDURE popula_categorias_produtos (usr_id int)
BEGIN
INSERT INTO categorias (descricao,usuario_id) values('Mão de Obra',usr_id);
INSERT INTO categorias (descricao,usuario_id) values('Elétrica',usr_id);
INSERT INTO categorias (descricao,usuario_id) values('Materiais Construção',usr_id);
-- produtos ( Mao de obra)
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Pedreiro','Mês','1400.00',1,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('1/2 Oficial','Mês','1100.00',1,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Ajudante','Mês','980.00',1,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Armador','Mês','1400.00',1,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Pintor','Mês','1400.00',1,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Eletricista','Mês','1400.00',1,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Encanador','Mês','1400.00',1,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Azulejista','Mês','1300.00',1,usr_id);
-- produtos ( Elétrica)
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Disjuntor 220v','Unidade','10.95',2,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Disjuntor 110v','Unidade','7.95',2,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Fio Elétrico 10mm','Metro','4.99',2,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Fio Elétrico 6mm','Metro','4.25',2,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Tomada 10a','Unidade','5.99',2,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Tomada 20a','Unidade','8.90',2,usr_id);

-- produtos (Material construcao)
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Cimento 20Kg','Unidade','25.90',3,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Argamassa 20Kg','Unidade','15.90',3,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Cal 20Kg','Unidade','12.90',3,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Areia Fina','m³','120.00',3,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Areia Grossa','m³','100.00',3,usr_id);
insert into produtos (nome,und_medida,valor,categoria_id,usuario_id)values ('Areia Media','m³','110.00',3,usr_id);

END 
$

