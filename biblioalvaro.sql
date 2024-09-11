/* Alvaro Oliveira 11221103413 */

create table Biblioteca (
   id INT AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR(255) NOT NULL,
    ano YEAR,
   autor VARCHAR(255) NOT NULL,
   quantidade INT DEFAULT 0
);

DELIMITER //
create procedure adicionarlivro (
   IN p_nome VARCHAR(255),
   IN p_autor VARCHAR(255),
   IN p_ano YEAR,
   IN p_quantidade INT
)
begin
   insert into livros (titulo, autor, ano_publicacao, estoque)
   values (p_nome, p_autor, p_ano, p_quantidade);
end //
DELIMITER ;

