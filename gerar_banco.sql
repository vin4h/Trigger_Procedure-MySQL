-- MySQL Workbench Synchronization
-- Generated: 2019-02-28 10:31
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Vin4h

create database et_prod;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `et_prod`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

CREATE TABLE IF NOT EXISTS `et_prod`.`usuario` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `et_prod`.`categoria` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  `usuario_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_categoria_usuario_idx` (`usuario_id` ASC),
  CONSTRAINT `fk_categoria_usuario`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `et_prod`.`usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `et_prod`.`produto` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  `unidade_medida` VARCHAR(45) NOT NULL,
  `valor` DECIMAL(5,2) NOT NULL,
  `categoria_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produto_categoria1_idx` (`categoria_id` ASC),
  CONSTRAINT `fk_produto_categoria1`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `et_prod`.`categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
