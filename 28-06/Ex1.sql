SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS db_game ;
USE db_game ;
CREATE TABLE IF NOT EXISTS db_game.tb_classe (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS db_game.tb_personagem (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  level INT NOT NULL,
  ataque DECIMAL(6,2) NOT NULL,
  defesa DECIMAL(6,2) NOT NULL,
  velocidade DECIMAL(6,2) NOT NULL,
  classe_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_tb_personagem_tb_classe_idx (classe_id ASC),
  CONSTRAINT fk_tb_personagem_tb_classe
    FOREIGN KEY (classe_id)
    REFERENCES db_game.tb_classe (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO tb_classe(nome, descricao)
VALUES
	("Mago", "Classe para quem gosta de usar muita magia"),
    ("Guerreiro", "Classe para combate físico"),
    ("Arqueiro", "Classe para lutar a distância"),
    ("Sacerdote", "Classe para dar suporte a equipe"),
    ("Bardo", "Classe para buffar a equipe");
    
SELECT * FROM tb_classe;
SELECT * FROM tb_personagem;
    
INSERT INTO tb_personagem(nome, level, ataque, defesa, velocidade, classe_id)
VALUES
	("CarlinhoMatador", 10, 10, 4, 12, 1),
    ("UrubuDoPix", 20, 15, 7, 10, 2),
    ("Luluzinha", 37, 15, 15, 25, 3),
    ("Thor", 45, 50, 10, 10, 4),
    ("MinaLoca", 77, 50, 35, 37, 5),
    ("ManoBrow", 7, 5, 5, 5, 1),
    ("ZeDaManga", 40, 30, 30, 10, 2),
    ("MecaTech", 27, 10, 32, 15, 3);
    
SELECT * FROM tb_personagem WHERE ataque > 25;

SELECT * FROM tb_personagem WHERE defesa > 10 AND defesa < 30;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem
INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id;
    
SELECT * FROM tb_personagem
INNER JOIN tb_classe
ON tb_personagem.classe_id = tb_classe.id
WHERE tb_classe.nome = "Mago";
    