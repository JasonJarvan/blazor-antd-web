/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80027 (8.0.27)
 Source Host           : localhost:3306
 Source Schema         : WebBlazor

 Target Server Type    : MySQL
 Target Server Version : 80027 (8.0.27)
 File Encoding         : 65001

 Date: 21/11/2023 12:00:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ColorTable
-- ----------------------------
DROP TABLE IF EXISTS `ColorTable`;
CREATE TABLE `ColorTable` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ColorName` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ColorTable
-- ----------------------------
BEGIN;
INSERT INTO `ColorTable` (`Id`, `ColorName`) VALUES (1, '白色');
INSERT INTO `ColorTable` (`Id`, `ColorName`) VALUES (2, '黑色');
INSERT INTO `ColorTable` (`Id`, `ColorName`) VALUES (3, '黄色');
INSERT INTO `ColorTable` (`Id`, `ColorName`) VALUES (4, '紫色');
INSERT INTO `ColorTable` (`Id`, `ColorName`) VALUES (5, '天蓝色');
INSERT INTO `ColorTable` (`Id`, `ColorName`) VALUES (6, '深灰色');
INSERT INTO `ColorTable` (`Id`, `ColorName`) VALUES (7, '浅灰色');
INSERT INTO `ColorTable` (`Id`, `ColorName`) VALUES (8, '淡红色');
INSERT INTO `ColorTable` (`Id`, `ColorName`) VALUES (9, '红色');
INSERT INTO `ColorTable` (`Id`, `ColorName`) VALUES (18, '橘黄色');
COMMIT;

-- ----------------------------
-- Table structure for SizeTable
-- ----------------------------
DROP TABLE IF EXISTS `SizeTable`;
CREATE TABLE `SizeTable` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `SizeName` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of SizeTable
-- ----------------------------
BEGIN;
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (1, '32B');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (2, '33A');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (3, '33B');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (4, '34A');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (5, '35B');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (6, '36A');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (7, '37B');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (8, '38A');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (9, '38B');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (10, '39A');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (11, '39B');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (12, '39C');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (13, '39D');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (14, '75A');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (15, '75B');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (16, '75C');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (17, '75D');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (18, '86A');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (19, '86B');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (20, '86C');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (21, '86D');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (22, '93A');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (23, '93B');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (24, '93C');
INSERT INTO `SizeTable` (`Id`, `SizeName`) VALUES (25, '93D');
COMMIT;

-- ----------------------------
-- Table structure for StyleNumTable
-- ----------------------------
DROP TABLE IF EXISTS `StyleNumTable`;
CREATE TABLE `StyleNumTable` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `StyleName` varchar(45) NOT NULL,
  `ColorId` int NOT NULL,
  `SizeId` int NOT NULL,
  `Number` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_ColorId` (`ColorId`),
  KEY `idx_SizeId` (`SizeId`)
) ENGINE=InnoDB AUTO_INCREMENT=456 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of StyleNumTable
-- ----------------------------
BEGIN;
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (374, '001', 1, 1, 12);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (375, '001', 1, 3, 23);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (376, '001', 1, 16, 23);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (377, '001', 1, 21, 23);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (378, '001', 1, 25, 0);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (379, '001', 1, 15, 0);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (380, '001', 1, 5, 4);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (381, '001', 3, 1, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (382, '001', 3, 3, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (383, '001', 3, 16, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (384, '001', 3, 21, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (385, '001', 3, 25, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (386, '001', 3, 15, 0);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (387, '001', 3, 5, 0);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (388, '001', 9, 1, 5);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (389, '001', 9, 3, 5);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (390, '001', 9, 16, 5);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (391, '001', 9, 21, 5);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (392, '001', 9, 25, 5);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (393, '001', 9, 15, 5);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (394, '001', 9, 5, 5);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (395, '001', 5, 1, 13);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (396, '001', 5, 3, 13);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (397, '001', 5, 16, 13);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (398, '001', 5, 21, 13);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (399, '001', 5, 25, 13);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (400, '001', 5, 15, 13);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (401, '001', 5, 5, 12);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (402, '001', 4, 1, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (403, '001', 4, 3, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (404, '001', 4, 16, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (405, '001', 4, 21, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (406, '001', 4, 25, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (407, '001', 4, 15, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (408, '001', 4, 5, 0);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (409, '001', 7, 1, 3);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (410, '001', 7, 3, 0);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (411, '001', 7, 16, 0);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (412, '001', 7, 21, 7);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (413, '001', 7, 25, 0);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (414, '001', 7, 15, 0);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (415, '001', 7, 5, 3);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (447, '003', 1, 9, 2);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (448, '003', 1, 14, 5);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (449, '003', 1, 21, 0);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (450, '003', 2, 9, 12);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (451, '003', 2, 14, 12);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (452, '003', 2, 21, 12);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (453, '003', 3, 9, 45);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (454, '003', 3, 14, 40);
INSERT INTO `StyleNumTable` (`Id`, `StyleName`, `ColorId`, `SizeId`, `Number`) VALUES (455, '003', 3, 21, 45);
COMMIT;

-- ----------------------------
-- Procedure structure for sp_ColorGet
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_ColorGet`;
delimiter ;;
CREATE PROCEDURE `sp_ColorGet`()
BEGIN
	SELECT * FROM ColorTable;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_ColorGetAll
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_ColorGetAll`;
delimiter ;;
CREATE PROCEDURE `sp_ColorGetAll`()
BEGIN
	SELECT DISTINCT ColorName
	FROM ColorTable;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_SizeGet
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_SizeGet`;
delimiter ;;
CREATE PROCEDURE `sp_SizeGet`()
BEGIN
	SELECT *
    FROM SizeTable;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_StyleGet
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_StyleGet`;
delimiter ;;
CREATE PROCEDURE `sp_StyleGet`(IN styleNames VARCHAR(255))
BEGIN
	SELECT Id, StyleName, ColorId, SizeId, Number
    FROM StyleNumTable
    WHERE StyleName = styleNames;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_StyleGetAll
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_StyleGetAll`;
delimiter ;;
CREATE PROCEDURE `sp_StyleGetAll`()
BEGIN
	SELECT DISTINCT StyleName
	FROM StyleNumTable;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_UpdateStyle
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_UpdateStyle`;
delimiter ;;
CREATE PROCEDURE `sp_UpdateStyle`(IN UpdatedData JSON)
BEGIN
    DECLARE styleNumId INT;
    DECLARE styleNameToDelete VARCHAR(255);

    SET styleNameToDelete = JSON_UNQUOTE(UpdatedData->'$[0].stylename');
    
    -- 删除该行
    DELETE FROM StyleNumTable
    WHERE StyleName = styleNameToDelete;

    -- 插入新的数据
    INSERT INTO StyleNumTable (StyleName, ColorId, SizeId, Number)
    SELECT stylename, stylecoloid, stylesizeid, stylenum
    FROM JSON_TABLE(UpdatedData, 
        '$[*]' COLUMNS (
            stylename VARCHAR(255) PATH '$.stylename',
            stylecoloid INT PATH '$.stylecoloid',
            stylesizeid INT PATH '$.stylesizeid',
            stylenum INT PATH '$.stylenum'
        )
    ) AS data;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_UpdateStyleData
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_UpdateStyleData`;
delimiter ;;
CREATE PROCEDURE `sp_UpdateStyleData`(IN UpdatedData JSON)
BEGIN
    WHILE JSON_LENGTH(UpdatedData) > 0 DO        
        SET @jsonValue = JSON_UNQUOTE(JSON_EXTRACT(UpdatedData, '$[0]'));        
        SET UpdatedData = JSON_REMOVE(UpdatedData, '$[0]');
        SET @StyleColoid = JSON_UNQUOTE(JSON_EXTRACT(@jsonValue, '$.stylecoloid'));
        SET @StyleSizeId = JSON_UNQUOTE(JSON_EXTRACT(@jsonValue, '$.stylesizeid'));
        SET @StyleNum = JSON_UNQUOTE(JSON_EXTRACT(@jsonValue, '$.stylenum'));
        UPDATE StyleNumTable
        SET Number = @StyleNum WHERE ColorId = @StyleColoid AND SizeId = @StyleSizeId;
        
    END WHILE;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
