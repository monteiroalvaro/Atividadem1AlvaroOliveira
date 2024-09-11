create table Hallowween (
   id INT AUTO_INCREMENT PRIMARY KEY,
   nome varchar(100),
   idade int,
   fantasia varchar(100)
);

DELIMITER $$
CREATE PROCEDURE InserehallowweenAleatorios()
BEGIN
   DECLARE i INT DEFAULT 0;
   WHILE i < 10000 DO
       SET @nome := CONCAT('Pessoa', i);
       SET @fantasia := CONCAT('Fantasia', i);
       SET @idade := FLOOR(RAND() * 75) + 16; 
       INSERT INTO halloween (nome, fantasia, idade) VALUES (@nome, @fantasia, @idade);
       SET i = i + 1;
   END WHILE;
END$$