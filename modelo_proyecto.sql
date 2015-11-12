-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema modelo_proyecto
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `modelo_proyecto` ;

-- -----------------------------------------------------
-- Schema modelo_proyecto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `modelo_proyecto` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci ;
USE `modelo_proyecto` ;

-- -----------------------------------------------------
-- Table `modelo_proyecto`.`TB_tipo_clase`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`TB_tipo_clase` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`TB_tipo_clase` (
  `c_tipo_clase` VARCHAR(5) NOT NULL COMMENT '',
  `d_tipo_clase` VARCHAR(50) NULL COMMENT '',
  `f_ingreso` DATE NULL COMMENT '',
  PRIMARY KEY (`c_tipo_clase`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`TB_aplicativo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`TB_aplicativo` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`TB_aplicativo` (
  `c_aplicativo` VARCHAR(5) NOT NULL COMMENT '',
  `d_aplicativo` VARCHAR(100) NULL COMMENT '',
  `f_ingreso` DATE NULL COMMENT '',
  PRIMARY KEY (`c_aplicativo`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`AS_clase`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`AS_clase` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`AS_clase` (
  `c_clase` INT NOT NULL COMMENT '',
  `d_clase` VARCHAR(50) NOT NULL COMMENT '',
  `c_tipo_clase` VARCHAR(5) NOT NULL COMMENT '',
  `c_usuario` VARCHAR(30) NULL COMMENT '',
  `f_ingreso` DATE NOT NULL COMMENT '',
  `c_aplicativo` VARCHAR(5) NOT NULL COMMENT '',
  `c_clase_padre` INT NULL COMMENT '',
  PRIMARY KEY (`c_clase`)  COMMENT '',
  INDEX `fk_tipo_clase` (`c_tipo_clase` ASC)  COMMENT '',
  INDEX `fk_aplicativo` (`c_aplicativo` ASC)  COMMENT '',
  INDEX `fk_clase_padre` (`c_clase_padre` ASC)  COMMENT '',
  CONSTRAINT `fk_tipo_clase`
    FOREIGN KEY (`c_tipo_clase`)
    REFERENCES `modelo_proyecto`.`TB_tipo_clase` (`c_tipo_clase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aplicativo`
    FOREIGN KEY (`c_aplicativo`)
    REFERENCES `modelo_proyecto`.`TB_aplicativo` (`c_aplicativo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clase_padre`
    FOREIGN KEY (`c_clase_padre`)
    REFERENCES `modelo_proyecto`.`AS_clase` (`c_clase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`TB_tipo_atributo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`TB_tipo_atributo` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`TB_tipo_atributo` (
  `c_tipo_atributo` VARCHAR(1) NOT NULL COMMENT '',
  `d_tipo_atributo` VARCHAR(50) NULL COMMENT '',
  `f_ingreso` DATE NULL COMMENT '',
  PRIMARY KEY (`c_tipo_atributo`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`TB_tipo_metodo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`TB_tipo_metodo` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`TB_tipo_metodo` (
  `c_tipo_metodo` VARCHAR(1) NOT NULL COMMENT '',
  `d_tipo_metodo` VARCHAR(20) NULL COMMENT '',
  `f_ingreso` DATE NULL COMMENT '',
  PRIMARY KEY (`c_tipo_metodo`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`AS_metodo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`AS_metodo` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`AS_metodo` (
  `c_clase` INT NOT NULL COMMENT '',
  `c_metodo` INT NOT NULL COMMENT '',
  `d_metodo` VARCHAR(50) NULL COMMENT '',
  `d_tipo_retorno` VARCHAR(50) NULL COMMENT '',
  `c_usuario` VARCHAR(30) NULL COMMENT '',
  `f_ingreso` DATE NULL COMMENT '',
  `b_activo` INT NULL COMMENT '',
  `n_parametros` INT NULL COMMENT '',
  `c_tipo_metodo` VARCHAR(1) NOT NULL COMMENT '',
  PRIMARY KEY (`c_clase`, `c_metodo`)  COMMENT '',
  INDEX `fk_clase_metodo` (`c_clase` ASC)  COMMENT '',
  INDEX `fk_tipo_metodo` (`c_tipo_metodo` ASC)  COMMENT '',
  CONSTRAINT `fk_clase_metodo`
    FOREIGN KEY (`c_clase`)
    REFERENCES `modelo_proyecto`.`AS_clase` (`c_clase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipo_metodo`
    FOREIGN KEY (`c_tipo_metodo`)
    REFERENCES `modelo_proyecto`.`TB_tipo_metodo` (`c_tipo_metodo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`AS_atributo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`AS_atributo` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`AS_atributo` (
  `c_clase` INT NOT NULL COMMENT '',
  `c_atributo` INT NOT NULL COMMENT '',
  `c_metodo` INT NULL COMMENT '',
  `d_atributo` VARCHAR(50) NULL COMMENT '',
  `d_tipo_dato_atributo` VARCHAR(50) NULL COMMENT '',
  `c_usuario` VARCHAR(30) NULL COMMENT '',
  `f_ingreso` DATE NULL COMMENT '',
  `c_tipo_atributo` VARCHAR(1) NOT NULL COMMENT '',
  PRIMARY KEY (`c_clase`, `c_atributo`)  COMMENT '',
  INDEX `fk_clase_atributo` (`c_clase` ASC)  COMMENT '',
  INDEX `fk_tipo_atributo` (`c_tipo_atributo` ASC)  COMMENT '',
  INDEX `fk_metodo_atributo` (`c_clase` ASC, `c_metodo` ASC)  COMMENT '',
  CONSTRAINT `fk_clase_atributo`
    FOREIGN KEY (`c_clase`)
    REFERENCES `modelo_proyecto`.`AS_clase` (`c_clase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipo_atributo`
    FOREIGN KEY (`c_tipo_atributo`)
    REFERENCES `modelo_proyecto`.`TB_tipo_atributo` (`c_tipo_atributo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_metodo_atributo`
    FOREIGN KEY ( `c_clase`, `c_metodo`)
    REFERENCES `modelo_proyecto`.`AS_metodo` ( `c_clase`, `c_metodo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`AS_parametro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`AS_parametro` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`AS_parametro` (
  `c_clase` INT NULL COMMENT '',
  `c_metodo` INT NULL COMMENT '',
  `c_parametro` INT NULL COMMENT '',
  `d_parametro` VARCHAR(50) NULL COMMENT '',
  `d_tipo_parametro` VARCHAR(50) NULL COMMENT '',
  `c_usuario` VARCHAR(30) NULL COMMENT '',
  `f_ingreso` DATE NULL COMMENT '',
  PRIMARY KEY (`c_clase`, `c_metodo`, `c_parametro`)  COMMENT '',
  INDEX `fk_metodo_parametro` (`c_clase` ASC, `c_metodo` ASC)  COMMENT '',
  CONSTRAINT `fk_metodo_parametro`
    FOREIGN KEY (`c_clase` , `c_metodo`)
    REFERENCES `modelo_proyecto`.`AS_metodo` (`c_clase` , `c_metodo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`AS_observacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`AS_observacion` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`AS_observacion` (
  `c_observacion` INT NOT NULL COMMENT '',
  `d_observacion` VARCHAR(4000) NULL COMMENT '',
  `c_usuario` VARCHAR(30) NULL COMMENT '',
  `f_ingreso` DATE NULL COMMENT '',
  `b_activo` INT NULL COMMENT '',
  `c_clase` INT NOT NULL COMMENT '',
  `c_atributo` INT NULL COMMENT '',
  `c_metodo` INT NULL COMMENT '',
  `c_parametro` INT NULL COMMENT '',
  PRIMARY KEY (`c_observacion`)  COMMENT '',
  INDEX `fk_clase_observacion` (`c_clase` ASC)  COMMENT '',
  INDEX `fk_metodo_observacion` (`c_clase` ASC, `c_metodo` ASC)  COMMENT '',
  INDEX `fk_atributo_observacion` (`c_clase` ASC, `c_atributo` ASC)  COMMENT '',
  INDEX `fk_parametro_observacion` (`c_clase` ASC, `c_metodo` ASC, `c_parametro` ASC)  COMMENT '',
  CONSTRAINT `fk_clase_observacion`
    FOREIGN KEY (`c_clase`)
    REFERENCES `modelo_proyecto`.`AS_clase` (`c_clase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_metodo_observacion`
    FOREIGN KEY ( `c_clase`, `c_metodo`)
    REFERENCES `modelo_proyecto`.`AS_metodo` (`c_clase`, `c_metodo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_atributo_observacion`
    FOREIGN KEY ( `c_clase` ,`c_atributo`)
    REFERENCES `modelo_proyecto`.`AS_atributo` (`c_clase`, `c_atributo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_parametro_observacion`
    FOREIGN KEY ( `c_clase`,`c_metodo`, `c_parametro` )
    REFERENCES `modelo_proyecto`.`AS_parametro` (`c_clase` , `c_metodo` , `c_parametro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`AS_interface`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`AS_interface` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`AS_interface` (
  `c_interface` INT NOT NULL COMMENT '',
  `d_interface` VARCHAR(50) NULL COMMENT '',
  `c_usuario` VARCHAR(30) NULL COMMENT '',
  `f_ingreso` DATE NULL COMMENT '',
  PRIMARY KEY (`c_interface`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`AS_clase_interface`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`AS_clase_interface` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`AS_clase_interface` (
  `c_clase_interface` INT NOT NULL COMMENT '',
  `c_clase` INT NOT NULL COMMENT '',
  `c_interface` INT NOT NULL COMMENT '',
  PRIMARY KEY (`c_clase_interface`)  COMMENT '',
  INDEX `fk_clase` (`c_clase` ASC)  COMMENT '',
  INDEX `fk_interface` (`c_interface` ASC)  COMMENT '',
  CONSTRAINT `fk_clase`
    FOREIGN KEY (`c_clase`)
    REFERENCES `modelo_proyecto`.`AS_clase` (`c_clase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_interface`
    FOREIGN KEY (`c_interface`)
    REFERENCES `modelo_proyecto`.`AS_interface` (`c_interface`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelo_proyecto`.`AS_interface_implementa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `modelo_proyecto`.`AS_interface_implementa` ;

CREATE TABLE IF NOT EXISTS `modelo_proyecto`.`AS_interface_implementa` (
  `c_interface_implementa` INT NOT NULL COMMENT '',
  `c_interface_hijo` INT NOT NULL COMMENT '',
  `c_interface_padre` INT NOT NULL COMMENT '',
  INDEX `fk_interface_hija` (`c_interface_hijo` ASC)  COMMENT '',
  INDEX `fk_interface_padre` (`c_interface_padre` ASC)  COMMENT '',
  PRIMARY KEY (`c_interface_implementa`)  COMMENT '',
  CONSTRAINT `fk_interface_hija`
    FOREIGN KEY (`c_interface_hijo`)
    REFERENCES `modelo_proyecto`.`AS_interface` (`c_interface`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_interface_padre`
    FOREIGN KEY (`c_interface_padre`)
    REFERENCES `modelo_proyecto`.`AS_interface` (`c_interface`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
