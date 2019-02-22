use geodata;
-- решение домашней работы от учителя 
ALTER TABLE `_countries`
		CHANGE `country_id` `id` INT(11) NOT NULL AUTO_INCREMENT,
	CHANGE `title_en` `title` VARCHAR(150) NOT NULL,
	DROP `title_ru`,
    DROP `title_ua`,
    DROP `title_be`,
    DROP `title_es`,
    DROP `title_pt`,
    DROP `title_de`,
    DROP `title_fr`,
    DROP `title_it`,
    DROP `title_pl`,
    DROP `title_ja`,
    DROP `title_lt`,
    DROP `title_lv`,
    DROP `title_cz`,
    ADD INDEX(`title`),
		ADD PRIMARY KEY(`id`);

SHOW COLUMNS FROM `_countries`;

----------------------------------------------

ALTER TABLE `_regions`
		CHANGE `region_id` `id` INT(11) NOT NULL AUTO_INCREMENT,
	CHANGE `title_en` `title` VARCHAR(150) NOT NULL,
	DROP `title_ru`,
    DROP `title_ua`,
    DROP `title_be`,
    DROP `title_es`,
    DROP `title_pt`,
    DROP `title_de`,
    DROP `title_fr`,
    DROP `title_it`,
    DROP `title_pl`,
    DROP `title_ja`,
    DROP `title_lt`,
    DROP `title_lv`,
    DROP `title_cz`,
    ADD INDEX(`title`),
		ADD PRIMARY KEY(`id`),
	ADD CONSTRAINT `fk_region_contry_id` FOREIGN KEY (`country_id`) REFERENCES `_countries`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

SHOW COLUMNS FROM `_regions`;

-------------------------------------------------

ALTER TABLE `_cities`
		CHANGE `city_id` `id` INT(11) NOT NULL AUTO_INCREMENT,
	CHANGE `title_en` `title` VARCHAR(150) NOT NULL,
	DROP `title_ru`,
    DROP `title_ua`,
    DROP `title_be`,
    DROP `title_es`,
    DROP `title_pt`,
    DROP `title_de`,
    DROP `title_fr`,
    DROP `title_it`,
    DROP `title_pl`,
    DROP `title_ja`,
    DROP `title_lt`,
    DROP `title_lv`,
    DROP `title_cz`,
	DROP `area_ru`,
	DROP `area_en`,
    DROP `area_ua`,
    DROP `area_be`,
    DROP `area_es`,
    DROP `area_pt`,
    DROP `area_de`,
    DROP `area_fr`,
    DROP `area_it`,
    DROP `area_pl`,
    DROP `area_ja`,
    DROP `area_lt`,
    DROP `area_lv`,
    DROP `area_cz`,
	DROP `region_ru`,
	DROP `region_en`,
    DROP `region_ua`,
    DROP `region_be`,
    DROP `region_es`,
    DROP `region_pt`,
    DROP `region_de`,
    DROP `region_fr`,
    DROP `region_it`,
    DROP `region_pl`,
    DROP `region_ja`,
    DROP `region_lt`,
    DROP `region_lv`,
    DROP `region_cz`,
    ADD INDEX(`title`),
		ADD PRIMARY KEY(`id`),
	ADD CONSTRAINT `fk_city_contry_id` FOREIGN KEY (`country_id`) REFERENCES `_countries`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT `fk_city_region_id` FOREIGN KEY (`region_id`) REFERENCES `_regions`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Показывает как создалась таблица
SHOW create table `_cities`;
-- Выводит результат создания таблицы
SHOW COLUMNS FROM `_cities`;
