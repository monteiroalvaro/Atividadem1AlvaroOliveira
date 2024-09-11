CREATE TABLE teatro (
   id INT AUTO_INCREMENT PRIMARY KEY,
   nome varchar(100),
   autor varchar(100),
    ano year,  
   local varchar (100)
);
DELIMITER $$
CREATE PROCEDURE insercaopecas()
BEGIN
   DECLARE i INT DEFAULT 0;
   DECLARE random_ano YEAR;
   WHILE i < 100 DO
       SET @nome := CONCAT('Peça', i);
       SET @autor := CONCAT('Escritor', i);
        SET @ano := CONCAT('Ano', i);
       SET random_ano := FLOOR(RAND() * 124) + 1900;
       INSERT INTO peca (nome, autor, ano, local)
       VALUES (@nome, @autor, random_ano, @local);
       SET i = i + 1;
   END WHILE;
END$$
DELIMITER ;