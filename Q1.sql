SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

DROP SCHEMA IF EXISTS `as3` ;
CREATE SCHEMA IF NOT EXISTS `as3` DEFAULT CHARACTER SET utf8 ;
USE `as3` ;

-- -----------------------------------------------------
-- Create below: Table `as3`.`regions`
-- -----------------------------------------------------
CREATE TABLE regions(REGION_ID DECIMAL(5, 0), REGION_NAME VARCHAR(25) NOT NULL ) ;










-- -----------------------------------------------------
-- Create below: Table `as3`.`countries`
-- -----------------------------------------------------
CREATE TABLE countries(COUNTRY_ID CHAR(2), COUNTRY_NAME VARCHAR(1000), REGION_ID DECIMAL(5, 0)) ;









-- -----------------------------------------------------
-- Create below: Table `as3`.`locations`
-- -----------------------------------------------------
CREATE TABLE locations(LOCATION_ID INT(4), STREET_ADDRESS VARCHAR(40), POSTAL_CODE VARCHAR(12), CITY VARCHAR(30) NOT NULL , STATE_PROVINCE VARCHAR(25), COUNTRY_ID CHAR(2));









-- -----------------------------------------------------
-- Create below: Table `as3`.`jobs`
-- -----------------------------------------------------
CREATE TABLE jobs(JOB_ID VARCHAR(10), JOB_TITLE VARCHAR(35) NOT NULL , MIN_SALARY INT(6), MAX_SALARY INT(6));









-- -----------------------------------------------------
-- Create below: Table `as3`.`employees`
-- -----------------------------------------------------
CREATE TABLE employees(EMPLOYEE_ID INT(6), FIRST_NAME VARCHAR(20), LAST_NAME VARCHAR(25) NOT NULL, EMAIL VARCHAR(1000) NOT NULL, PHONE_NUMBER VARCHAR(20),
                       HIRE_DATE VARCHAR(1000), JOB_ID VARCHAR(10), SALARY DECIMAL(8,2), COMMISSION_PCT DECIMAL (2, 2), MANAGER_ID INT(6), DEPARTMENT_ID INT);









-- -----------------------------------------------------
-- Create below: Table `as3`.`departments`
-- -----------------------------------------------------
CREATE TABLE departments(DEPARTMENT_ID INT, DEPARTMENT_NAME VARCHAR(1000) NOT NULL, MANAGER_ID INT(6), LOCATION_ID INT(4));









-- -----------------------------------------------------
-- Create below: Table `as3`.`job_history`
-- -----------------------------------------------------
CREATE TABLE job_history(EMPLOYEE_ID INT, START_DATE VARCHAR(1000), END_DATE VARCHAR(1000), JOB_ID VARCHAR(10), DEPARTMENT_ID INT);









-- -----------------------------------------------------
-- End of coding
-- -----------------------------------------------------

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
