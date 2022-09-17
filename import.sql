-- Adminer 4.8.1 MySQL 5.5.5-10.3.25-MariaDB-0ubuntu0.20.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'L''identifiant de notre auteur',
  `name` varchar(255) NOT NULL COMMENT 'Le nom de l''auteur',
  `image` varchar(255) DEFAULT NULL COMMENT 'L''avatar de l''auteur',
  `email` varchar(255) NOT NULL COMMENT 'L''e-mail de l''auteur',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `author` (`id`, `name`, `image`, `email`) VALUES
(1,	'Vincent',	'vinz.jpg',	'vincent@yahoo.com'),
(2,	'Julie',	NULL,	'julie@gmail.com');

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'L''identifiant de la catégorie',
  `name` varchar(255) NOT NULL COMMENT 'Le nom de la catégorie',
  `position` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'La position de la catégorie dans le menu',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `category` (`id`, `name`, `position`) VALUES
(1,	'Ma vie de dev',	0),
(2,	'Teamfront',	0);

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'L''identifiant de l''article',
  `title` varchar(255) NOT NULL COMMENT 'Le titre de l''article',
  `resume` mediumtext NOT NULL COMMENT 'Le résumé de l''article',
  `content` longtext NOT NULL COMMENT 'Le contenu de l''article',
  `published_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'La date de publication de l''article',
  `views` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Le nombre de vues de l''article',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `post` (`id`, `title`, `resume`, `content`, `published_date`, `views`) VALUES
(1,	'Ivre, j\'ai refait tous les challenges.',	'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',	'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	'2022-07-21 16:58:41',	12),
(2,	'POO or not POO, that is the question.',	'La POO est-elle vraiment indispensable pour une architecture solide ? Etude de cas avec PHP.',	'La POO est-elle vraiment indispensable pour une architecture solide ? Etude de cas avec PHP. La POO est-elle vraiment indispensable pour une architecture solide ? Etude de cas avec PHP. La POO est-elle vraiment indispensable pour une architecture solide ? Etude de cas avec PHP. La POO est-elle vraiment indispensable pour une architecture solide ? Etude de cas avec PHP.\r\n',	'2022-07-21 17:25:27',	50),
(3,	'Git, pour les n00bs.',	'Un p\'tit récap rapide pour tout ceux qui, comme moi, ont galéré sur ce magnifique outil de versionning.\r\n',	'Un p\'tit récap rapide pour tout ceux qui, comme moi, ont galéré sur ce magnifique outil de versionning.\r\nUn p\'tit récap rapide pour tout ceux qui, comme moi, ont galéré sur ce magnifique outil de versionning.\r\nUn p\'tit récap rapide pour tout ceux qui, comme moi, ont galéré sur ce magnifique outil de versionning.\r\nUn p\'tit récap rapide pour tout ceux qui, comme moi, ont galéré sur ce magnifique outil de versionning.\r\n',	'2022-07-21 17:26:35',	543),
(4,	'Le syndrome de la page blanche',	'Cette frustration quand le code ne vient pas, le temps passe, la deadline approche...\r\n',	'Cette frustration quand le code ne vient pas, le temps passe, la deadline approche...\r\nCette frustration quand le code ne vient pas, le temps passe, la deadline approche...\r\nCette frustration quand le code ne vient pas, le temps passe, la deadline approche...\r\nCette frustration quand le code ne vient pas, le temps passe, la deadline approche...\r\n',	'2022-07-21 17:27:20',	45);