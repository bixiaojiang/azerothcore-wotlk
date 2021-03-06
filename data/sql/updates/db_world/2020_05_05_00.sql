-- DB update 2020_05_04_00 -> 2020_05_05_00
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2020_05_04_00';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2020_05_04_00 2020_05_05_00 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1584982393046787000'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1584982393046787000');

-- fix item_template missing spaces in description
UPDATE `item_template` SET `description` = 'Counts as an Air, Earth, Fire, and Water totem.' WHERE `entry` IN (42593, 42594, 42595, 42596, 42601, 42606);

-- deDE locale
UPDATE `item_template_locale` SET `Description` = 'Zählt als Luft-, Erd-, Feuer- und Wassertotem.' WHERE `ID` IN (22345, 22395, 22396, 23005, 23199, 23200, 24413, 25645, 27544, 27815, 27947, 27984, 28066, 28248, 28357, 28523, 29389, 30023, 31031, 32330, 33078, 33505, 33506, 33507, 33843, 33939, 33940, 33941, 33951, 33952, 33953, 35104, 35105, 35106, 37575, 38361, 38367, 38368, 39728, 40267, 40322, 40708, 40709, 40710, 42593, 42594, 42595, 42596, 42597, 42598, 42599, 42601, 42602, 42603, 42604, 42606, 42607, 42608, 42609, 45114, 45169, 45255, 46978, 47665, 47666, 47667, 50458, 50463, 50464, 51501, 51507, 51513) AND `locale` = 'deDE';

-- esES locale
UPDATE `item_template_locale` SET `Description` = 'Cuenta como un tótem de aire, tierra, fuego y agua.' WHERE `ID` IN (22345, 22395, 22396, 23005, 23199, 23200, 24413, 25645, 27544, 27815, 27947, 27984, 28066, 28248, 28357, 28523, 29389, 30023, 31031, 32330, 33078, 33505, 33506, 33507, 33843, 33939, 33940, 33941, 33951, 33952, 33953, 35104, 35105, 35106, 37575, 38361, 38367, 38368, 39728, 40267, 40322, 40708, 40709, 40710, 42593, 42594, 42595, 42596, 42597, 42598, 42599, 42601, 42602, 42603, 42604, 42606, 42607, 42608, 42609, 45114, 45169, 45255, 46978, 47665, 47666, 47667, 50458, 50463, 50464, 51501, 51507, 51513) AND `locale` = 'esES';

-- esMX locale
UPDATE `item_template_locale` SET `Description` = 'Cuenta como un tótem de aire, tierra, fuego y agua.' WHERE `ID` IN (22345, 22395, 22396, 23005, 23199, 23200, 24413, 25645, 27544, 27815, 27947, 27984, 28066, 28248, 28357, 28523, 29389, 30023, 31031, 32330, 33078, 33505, 33506, 33507, 33843, 33939, 33940, 33941, 33951, 33952, 33953, 35104, 35105, 35106, 37575, 38361, 38367, 38368, 39728, 40267, 40322, 40708, 40709, 40710, 42593, 42594, 42595, 42596, 42597, 42598, 42599, 42601, 42602, 42603, 42604, 42606, 42607, 42608, 42609, 45114, 45169, 45255, 46978, 47665, 47666, 47667, 50458, 50463, 50464, 51501, 51507, 51513) AND `locale` = 'esMX';

-- frFR locale
UPDATE `item_template_locale` SET `Description` = 'Compte comme un totem d''air, de terre, de feu et d''eau.' WHERE `ID` IN (22345, 22395, 22396, 23005, 23199, 23200, 24413, 25645, 27544, 27815, 27947, 27984, 28066, 28248, 28357, 28523, 29389, 30023, 31031, 32330, 33078, 33505, 33506, 33507, 33843, 33939, 33940, 33941, 33951, 33952, 33953, 35104, 35105, 35106, 37575, 38361, 38367, 38368, 39728, 40267, 40322, 40708, 40709, 40710, 42593, 42594, 42595, 42596, 42597, 42598, 42599, 42601, 42602, 42603, 42604, 42606, 42607, 42608, 42609, 45114, 45169, 45255, 46978, 47665, 47666, 47667, 50458, 50463, 50464, 51501, 51507, 51513) AND `locale` = 'frFR';

-- zhCN locale
UPDATE `item_template_locale` SET `Description` = '可以作为空气图腾、大地图腾、火焰图腾和水之图腾使用。' WHERE `ID` IN (22345, 22395, 22396, 23005, 23199, 23200, 24413, 25645, 27544, 27815, 27947, 27984, 28066, 28248, 28357, 28523, 29389, 30023, 31031, 32330, 33078, 33505, 33506, 33507, 33843, 33939, 33940, 33941, 33951, 33952, 33953, 35104, 35105, 35106, 37575, 38361, 38367, 38368, 39728, 40267, 40322, 40708, 40709, 40710, 42593, 42594, 42595, 42596, 42597, 42598, 42599, 42601, 42602, 42603, 42604, 42606, 42607, 42608, 42609, 45114, 45169, 45255, 46978, 47665, 47666, 47667, 50458, 50463, 50464, 51501, 51507, 51513) AND `locale` = 'zhCN';

--
-- END UPDATING QUERIES
--
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
