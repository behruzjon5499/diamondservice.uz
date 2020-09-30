-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 26, 2020 at 10:15 PM
-- Server version: 10.3.13-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diamondservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `abdualiym_block_blocks`
--

CREATE TABLE `abdualiym_block_blocks` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `data_0` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) UNSIGNED NOT NULL,
  `updated_at` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abdualiym_block_categories`
--

CREATE TABLE `abdualiym_block_categories` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) UNSIGNED NOT NULL,
  `updated_at` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abdualiym_cms_articles`
--

CREATE TABLE `abdualiym_cms_articles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title_0` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_0` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_1` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_2` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_3` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(11) UNSIGNED DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` int(11) UNSIGNED NOT NULL,
  `updated_at` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abdualiym_cms_article_categories`
--

CREATE TABLE `abdualiym_cms_article_categories` (
  `id` int(11) NOT NULL,
  `title_0` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_0` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) UNSIGNED NOT NULL,
  `updated_at` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abdualiym_cms_menu`
--

CREATE TABLE `abdualiym_cms_menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title_0` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(3) NOT NULL,
  `type_helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` int(11) UNSIGNED NOT NULL,
  `updated_at` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abdualiym_cms_pages`
--

CREATE TABLE `abdualiym_cms_pages` (
  `id` int(11) NOT NULL,
  `title_0` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_0` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_1` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_2` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_3` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) UNSIGNED NOT NULL,
  `updated_at` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abdualiym_slider_categories`
--

CREATE TABLE `abdualiym_slider_categories` (
  `id` int(11) NOT NULL,
  `common_image` tinyint(1) NOT NULL,
  `common_link` tinyint(1) NOT NULL,
  `common_text` tinyint(1) NOT NULL,
  `use_tags` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_0` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_0` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) UNSIGNED NOT NULL,
  `updated_at` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `abdualiym_slider_categories`
--

INSERT INTO `abdualiym_slider_categories` (`id`, `common_image`, `common_link`, `common_text`, `use_tags`, `slug`, `title_0`, `title_1`, `title_2`, `title_3`, `description_0`, `description_1`, `description_2`, `description_3`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 0, 'services', 'services', 'services', NULL, NULL, '', '', NULL, NULL, 1593112307, 1593112307),
(2, 0, 0, 0, 0, 'serviceskartridjey', 'serviceskartridjey', 'serviceskartridjey', 'serviceskartridjey', NULL, '', '', '', NULL, 1593113561, 1593113561),
(3, 0, 0, 0, 0, 'clients', 'clients', 'clients', 'clients', NULL, '', '', '', NULL, 1593113719, 1593113719),
(4, 1, 1, 1, 1, 'ourclients', 'ourclients', 'ourclients', 'ourclients', NULL, '', '', '', NULL, 1593156834, 1593156887),
(5, 1, 1, 1, 1, 'pricelist', 'pricelist', 'pricelist', 'pricelist', NULL, '', '', '', NULL, 1593158499, 1593158513),
(6, 1, 1, 0, 0, 'homeslider', 'homeslider', 'homeslider', 'homeslider', NULL, '', '', '', NULL, 1593181176, 1593181176),
(7, 1, 1, 0, 0, 'homeabout', 'homeabout', 'homeabout', 'homeabout', NULL, '', '', '', NULL, 1593181725, 1593181734),
(8, 1, 1, 0, 0, 'adviceslider', 'adviceslider', 'adviceslider', 'adviceslider', NULL, '', '', '', NULL, 1593183642, 1593183651);

-- --------------------------------------------------------

--
-- Table structure for table `abdualiym_slider_slides`
--

CREATE TABLE `abdualiym_slider_slides` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(3) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `photo_0` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_0` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_0` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_0` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) UNSIGNED NOT NULL,
  `updated_at` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `abdualiym_slider_slides`
--

INSERT INTO `abdualiym_slider_slides` (`id`, `category_id`, `active`, `sort`, `photo_0`, `photo_1`, `photo_2`, `photo_3`, `link_0`, `link_1`, `link_2`, `link_3`, `title_0`, `title_1`, `title_2`, `title_3`, `content_0`, `content_1`, `content_2`, `content_3`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 2, 'slider1.jpg', 'slider1.jpg', 'news1.jpg', NULL, '', '', '', NULL, 'УСЛУГИ ПО РЕМОНТУ', 'УСЛУГИ ПО РЕМОНТУ', 'УСЛУГИ ПО РЕМОНТУ', NULL, 'Ноутбук, стационарный компьютер или любая другая техника имеет свой рабочий ресурс. Кроме того, на стабильность и качество работы столь сложных систем влияет масса факторов от правильности и своевременности периодического обслуживания до некоторых нюансов эксплуатации.\r\n\r\nПоэтому неполадки в работе домашнего или офисного ПК неизбежны и их появление – вопрос времени. Все неисправности, в зависимости от причины возникновения, делятся на два типа: аппаратные и программные.\r\n\r\nПервые возникают вследствие нарушения работы физических компонентов системы (жёсткого диска, блока питания, видеокарты и прочего), а вторые из-за нарушений в работе программного обеспечения.', 'Ноутбук, стационарный компьютер или любая другая техника имеет свой рабочий ресурс. Кроме того, на стабильность и качество работы столь сложных систем влияет масса факторов от правильности и своевременности периодического обслуживания до некоторых нюансов эксплуатации.\r\n\r\nПоэтому неполадки в работе домашнего или офисного ПК неизбежны и их появление – вопрос времени. Все неисправности, в зависимости от причины возникновения, делятся на два типа: аппаратные и программные.\r\n\r\nПервые возникают вследствие нарушения работы физических компонентов системы (жёсткого диска, блока питания, видеокарты и прочего), а вторые из-за нарушений в работе программного обеспечения.', 'Ноутбук, стационарный компьютер или любая другая техника имеет свой рабочий ресурс. Кроме того, на стабильность и качество работы столь сложных систем влияет масса факторов от правильности и своевременности периодического обслуживания до некоторых нюансов эксплуатации.\r\n\r\nПоэтому неполадки в работе домашнего или офисного ПК неизбежны и их появление – вопрос времени. Все неисправности, в зависимости от причины возникновения, делятся на два типа: аппаратные и программные.\r\n\r\nПервые возникают вследствие нарушения работы физических компонентов системы (жёсткого диска, блока питания, видеокарты и прочего), а вторые из-за нарушений в работе программного обеспечения.', NULL, 1593112903, 1593113494),
(5, 2, 1, 1, 'repair.jpg', 'repair.jpg', 'aboutpict.jpg', NULL, '', '', '', NULL, 'УСЛУГИ ПО КАРТРИДЖЕЙ', 'УСЛУГИ ПО КАРТРИДЖЕЙ', 'УСЛУГИ ПО КАРТРИДЖЕЙ', NULL, 'Ноутбук, стационарный компьютер или любая другая техника имеет свой рабочий ресурс. Кроме того, на стабильность и качество работы столь сложных систем влияет масса факторов от правильности и своевременности периодического обслуживания до некоторых нюансов эксплуатации.\r\n\r\nПоэтому неполадки в работе домашнего или офисного ПК неизбежны и их появление – вопрос времени. Все неисправности, в зависимости от причины возникновения, делятся на два типа: аппаратные и программные.\r\n\r\nПервые возникают вследствие нарушения работы физических компонентов системы (жёсткого диска, блока питания, видеокарты и прочего), а вторые из-за нарушений в работе программного обеспечения.', 'Ноутбук, стационарный компьютер или любая другая техника имеет свой рабочий ресурс. Кроме того, на стабильность и качество работы столь сложных систем влияет масса факторов от правильности и своевременности периодического обслуживания до некоторых нюансов эксплуатации.\r\n\r\nПоэтому неполадки в работе домашнего или офисного ПК неизбежны и их появление – вопрос времени. Все неисправности, в зависимости от причины возникновения, делятся на два типа: аппаратные и программные.\r\n\r\nПервые возникают вследствие нарушения работы физических компонентов системы (жёсткого диска, блока питания, видеокарты и прочего), а вторые из-за нарушений в работе программного обеспечения.', 'Ноутбук, стационарный компьютер или любая другая техника имеет свой рабочий ресурс. Кроме того, на стабильность и качество работы столь сложных систем влияет масса факторов от правильности и своевременности периодического обслуживания до некоторых нюансов эксплуатации.\r\n\r\nПоэтому неполадки в работе домашнего или офисного ПК неизбежны и их появление – вопрос времени. Все неисправности, в зависимости от причины возникновения, делятся на два типа: аппаратные и программные.\r\n\r\nПервые возникают вследствие нарушения работы физических компонентов системы (жёсткого диска, блока питания, видеокарты и прочего), а вторые из-за нарушений в работе программного обеспечения.', NULL, 1593113623, 1593113623),
(6, 3, 1, 1, 'partners.jpg', 'service2.jpg', 'service4.jpg', NULL, '', '', '', NULL, 'НАШИ КЛИЕНТЫ', 'Bizning klientlar', 'Our Clients', NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\r\n\r\n', NULL, 1593113774, 1593189515),
(7, 4, 1, 1, 'cart2.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 'Avtolar', NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', NULL, NULL, NULL, 1593156919, 1593156919),
(8, 4, 1, 2, 'cart1.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 'ipak yoli bank', NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', NULL, NULL, NULL, 1593156945, 1593156945),
(9, 4, 1, 3, 'price.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 'kapital bank', NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', NULL, NULL, NULL, 1593156965, 1593156965),
(10, 5, 1, 1, 'price.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 'Price List', NULL, NULL, NULL, 'pricelist', NULL, NULL, NULL, 1593158535, 1593180080),
(11, 6, 1, 1, 'slider1.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 'Компьютерный  Мастер в Ташкенте', 'Компьютерный  Мастер в Ташкенте', 'Компьютерный  Мастер в Ташкенте', NULL, 'Высококвалифицированные специалисты фирмы «Diamond Service» имеют большой опыт в ремонте и обслуживании любых моделей компьютеров, ноутбуков, роутеров и других видов цифровой и вычислительной техники', 'Высококвалифицированные специалисты фирмы «Diamond Service» имеют большой опыт в ремонте и обслуживании любых моделей компьютеров, ноутбуков, роутеров и других видов цифровой и вычислительной техники', 'Высококвалифицированные специалисты фирмы «Diamond Service» имеют большой опыт в ремонте и обслуживании любых моделей компьютеров, ноутбуков, роутеров и других видов цифровой и вычислительной техники', NULL, 1593181247, 1593181247),
(12, 6, 1, 2, 'slider1.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 'Компьютерный Мастер', 'Компьютерный Мастер', 'Компьютерный Мастер', NULL, 'Высококвалифицированные специалисты фирмы «Diamond Service» имеют большой опыт в ремонте и обслуживании любых моделей компьютеров, ноутбуков, роутеров и других видов цифровой и вычислительной техники', 'Высококвалифицированные специалисты фирмы «Diamond Service» имеют большой опыт в ремонте и обслуживании любых моделей компьютеров, ноутбуков, роутеров и других видов цифровой и вычислительной техники', 'Высококвалифицированные специалисты фирмы «Diamond Service» имеют большой опыт в ремонте и обслуживании любых моделей компьютеров, ноутбуков, роутеров и других видов цифровой и вычислительной техники', NULL, 1593181302, 1593181302),
(13, 7, 1, 1, 'aboutpict.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 'О КОМПАНИИ', 'Bizning kompaniya', 'Оur company', NULL, 'Наш сервисный центр проводит техническое обслуживание для восстановления состояния копировальной техники, принтеров и многофункциональных устройств. Мы оперативно устраним все неполадки. Нет, мы далеко не волшебники, просто мы умеем выполнять ремонт, ремонт – для нас приятная творческая задача.\r\n\r\nМожете без всяких сомнений заказать ремонт в нашем сервисном центре. Нашим специалистам подвластны даже самые сложные задачи, так как они имеют стаж работы более 25 лет, положитесь на их опыт и умение. Вам достаточно позвонить нам и все ваши проблемы будут устранены.\r\n\r\nМы сможем провести диагностику неисправности по телефону и определим точную стоимость ремонта. Вы можете отказаться от ремонта полностью, но рекомендуем прислушиваться к советам наших инженеров.', 'Наш сервисный центр проводит техническое обслуживание для восстановления состояния копировальной техники, принтеров и многофункциональных устройств. Мы оперативно устраним все неполадки. Нет, мы далеко не волшебники, просто мы умеем выполнять ремонт, ремонт – для нас приятная творческая задача.\r\n\r\nМожете без всяких сомнений заказать ремонт в нашем сервисном центре. Нашим специалистам подвластны даже самые сложные задачи, так как они имеют стаж работы более 25 лет, положитесь на их опыт и умение. Вам достаточно позвонить нам и все ваши проблемы будут устранены.\r\n\r\nМы сможем провести диагностику неисправности по телефону и определим точную стоимость ремонта. Вы можете отказаться от ремонта полностью, но рекомендуем прислушиваться к советам наших инженеров.', 'Наш сервисный центр проводит техническое обслуживание для восстановления состояния копировальной техники, принтеров и многофункциональных устройств. Мы оперативно устраним все неполадки. Нет, мы далеко не волшебники, просто мы умеем выполнять ремонт, ремонт – для нас приятная творческая задача.\r\n\r\nМожете без всяких сомнений заказать ремонт в нашем сервисном центре. Нашим специалистам подвластны даже самые сложные задачи, так как они имеют стаж работы более 25 лет, положитесь на их опыт и умение. Вам достаточно позвонить нам и все ваши проблемы будут устранены.\r\n\r\nМы сможем провести диагностику неисправности по телефону и определим точную стоимость ремонта. Вы можете отказаться от ремонта полностью, но рекомендуем прислушиваться к советам наших инженеров.', NULL, 1593181784, 1593181784),
(14, 8, 1, 1, 'cart2.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 'На 100% фиксированные цены', 'На 100% фиксированные цены', 'На 100% фиксированные цены', NULL, 'Не меняются на ровном месте в процессе ремонта.', 'Не меняются на ровном месте в процессе ремонта.', 'Не меняются на ровном месте в процессе ремонта.', NULL, 1593183758, 1593183758),
(15, 8, 1, 2, 'cart1.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 'Выдаем гарантию на все проведенные работы', 'Выдаем гарантию на все проведенные работы', 'Выдаем гарантию на все проведенные работы', NULL, 'Официальные документы с печатью компании.', 'Официальные документы с печатью компании.', 'Официальные документы с печатью компании.', NULL, 1593183787, 1593183787),
(16, 8, 1, 3, 'cart2.jpg', NULL, NULL, NULL, '', NULL, NULL, NULL, 'Бережное отношение к устройствам клиентов', 'Бережное отношение к устройствам клиентов', 'Бережное отношение к устройствам клиентов', NULL, 'Официальные документы с печатью компании.', 'Официальные документы с печатью компании.', 'Официальные документы с печатью компании.', NULL, 1593183813, 1593183813);

-- --------------------------------------------------------

--
-- Table structure for table `abdualiym_slider_slides_and_tags`
--

CREATE TABLE `abdualiym_slider_slides_and_tags` (
  `slide_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abdualiym_slider_tags`
--

CREATE TABLE `abdualiym_slider_tags` (
  `id` int(11) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_0` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) UNSIGNED NOT NULL,
  `updated_at` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hours` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_ru` text COLLATE utf8_unicode_ci NOT NULL,
  `description_uz` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `photo`, `phone`, `address`, `email`, `hours`, `description_ru`, `description_uz`, `description_en`) VALUES
(1, 'aboutpict.jpg', ' 99871 123 45 67 99871 123 45 67', ' г. Ташкент, ул. Амир Темур 111', '  info@diamondservice.uz', ' пн.-чт. 9-30 - 19-00, пт. 9-30 - 18-00', '<p>Наш сервисный центр проводит техническое обслуживание для восстановления состояния копировальной техники, принтеров и многофункциональных устройств. Мы оперативно устраним все неполадки. Нет, мы далеко не волшебники, просто мы умеем выполнять ремонт, ремонт &ndash; для нас приятная творческая задача.</p>\r\n\r\n<p>Можете без всяких сомнений заказать ремонт в нашем сервисном центре. Нашим специалистам подвластны даже самые сложные задачи, так как они имеют стаж работы более 25 лет, положитесь на их опыт и умение. Вам достаточно позвонить нам и все ваши проблемы будут устранены.</p>\r\n\r\n<p>Мы сможем провести диагностику неисправности по телефону и определим точную стоимость ремонта. Вы можете отказаться от ремонта полностью, но рекомендуем прислушиваться к советам наших инженеров.</p>\r\n\r\n<h6>Оборудование</h6>\r\n\r\n<p>В нашем арсенале есть все необходимое оборудование для профессионального и самого сложного ремонта практически любой техники:</p>\r\n\r\n<ul style=\"list-style-type:none\">\r\n	<li>Осциллограф. Проходит периодическую калибровку и плановую поверку в &laquo;Ростест&raquo;;</li>\r\n	<li>Паяльные станции разного калибра, в том числе инфракрасная для пайки BGA;</li>\r\n	<li>Диагностические карты для ноутбуков всех производителей;</li>\r\n	<li>Тестовые запчасти для блочной диагностики;</li>\r\n	<li>Цифровой микроскоп для детальной диагностики;</li>\r\n	<li>Ультразвуковая ванна для борьбы с залитыми платами и окислением;</li>\r\n	<li>Лабораторные блоки питания.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n', '<p>Наш сервисный центр проводит техническое обслуживание для восстановления состояния копировальной техники, принтеров и многофункциональных устройств. Мы оперативно устраним все неполадки. Нет, мы далеко не волшебники, просто мы умеем выполнять ремонт, ремонт &ndash; для нас приятная творческая задача.</p>\r\n\r\n<p>Можете без всяких сомнений заказать ремонт в нашем сервисном центре. Нашим специалистам подвластны даже самые сложные задачи, так как они имеют стаж работы более 25 лет, положитесь на их опыт и умение. Вам достаточно позвонить нам и все ваши проблемы будут устранены.</p>\r\n\r\n<p>Мы сможем провести диагностику неисправности по телефону и определим точную стоимость ремонта. Вы можете отказаться от ремонта полностью, но рекомендуем прислушиваться к советам наших инженеров.</p>\r\n\r\n<h6>Оборудование</h6>\r\n\r\n<p>В нашем арсенале есть все необходимое оборудование для профессионального и самого сложного ремонта практически любой техники:</p>\r\n\r\n<ul style=\"list-style-type:none\">\r\n	<li>Осциллограф. Проходит периодическую калибровку и плановую поверку в &laquo;Ростест&raquo;;</li>\r\n	<li>Паяльные станции разного калибра, в том числе инфракрасная для пайки BGA;</li>\r\n	<li>Диагностические карты для ноутбуков всех производителей;</li>\r\n	<li>Тестовые запчасти для блочной диагностики;</li>\r\n	<li>Цифровой микроскоп для детальной диагностики;</li>\r\n	<li>Ультразвуковая ванна для борьбы с залитыми платами и окислением;</li>\r\n	<li>Лабораторные блоки питания.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n', '<p>Наш сервисный центр проводит техническое обслуживание для восстановления состояния копировальной техники, принтеров и многофункциональных устройств. Мы оперативно устраним все неполадки. Нет, мы далеко не волшебники, просто мы умеем выполнять ремонт, ремонт &ndash; для нас приятная творческая задача.</p>\r\n\r\n<p>Можете без всяких сомнений заказать ремонт в нашем сервисном центре. Нашим специалистам подвластны даже самые сложные задачи, так как они имеют стаж работы более 25 лет, положитесь на их опыт и умение. Вам достаточно позвонить нам и все ваши проблемы будут устранены.</p>\r\n\r\n<p>Мы сможем провести диагностику неисправности по телефону и определим точную стоимость ремонта. Вы можете отказаться от ремонта полностью, но рекомендуем прислушиваться к советам наших инженеров.</p>\r\n\r\n<h6>Оборудование</h6>\r\n\r\n<p>В нашем арсенале есть все необходимое оборудование для профессионального и самого сложного ремонта практически любой техники:</p>\r\n\r\n<ul style=\"list-style-type:none\">\r\n	<li>Осциллограф. Проходит периодическую калибровку и плановую поверку в &laquo;Ростест&raquo;;</li>\r\n	<li>Паяльные станции разного калибра, в том числе инфракрасная для пайки BGA;</li>\r\n	<li>Диагностические карты для ноутбуков всех производителей;</li>\r\n	<li>Тестовые запчасти для блочной диагностики;</li>\r\n	<li>Цифровой микроскоп для детальной диагностики;</li>\r\n	<li>Ультразвуковая ванна для борьбы с залитыми платами и окислением;</li>\r\n	<li>Лабораторные блоки питания.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_uz` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title_ru`, `title_uz`, `title_en`, `photo`) VALUES
(1, 'Ремонт компьютеров', 'Ремонт компьютеров', 'Ремонт компьютеров', 'service1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories_kartridjey`
--

CREATE TABLE `categories_kartridjey` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_uz` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_kartridjey`
--

INSERT INTO `categories_kartridjey` (`id`, `title_ru`, `title_uz`, `title_en`, `photo`) VALUES
(1, 'Принтеры', 'Принтеры', 'Принтеры', 'service6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1592981074),
('m130524_201442_init', 1592981076),
('m190124_110200_add_verification_token_column_to_user_table', 1592981077),
('m191004_071012_create_pages_table', 1593107230),
('m191004_071721_create_article_categories_table', 1593107230),
('m191004_071728_create_articles_table', 1593107231),
('m191004_071826_create_slider_categories_table', 1593107064),
('m191004_071827_create_slider_slides_table', 1593107065),
('m191004_071828_create_slider_tags_table', 1593107066),
('m191004_071838_create_slider_slides_and_tags_table', 1593107066),
('m191004_072253_create_menu_table', 1593107231),
('m200305_121442_create_block_categories_table', 1593107211),
('m200305_121443_create_block_blocks_table', 1593107212),
('m200622_184417_create_news_table', 1592981077),
('m200622_185948_create_feedback_table', 1592981077),
('m200624_061111_create_about_table', 1592981077),
('m200624_063433_create_categories_table', 1592981077),
('m200624_063618_create_services_table', 1592981078),
('m200624_064022_create_categories_kartridjey_table', 1592981079),
('m200624_064036_create_services_kartridjey_table', 1592981080);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_uz` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(11) NOT NULL,
  `description_ru` text COLLATE utf8_unicode_ci NOT NULL,
  `description_uz` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title_ru`, `title_uz`, `title_en`, `photo`, `date`, `description_ru`, `description_uz`, `description_en`, `created_at`, `updated_at`) VALUES
(1, 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT.', 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT.', 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT.', 'news.jpg', 1593189960, '<ul style=\"list-style-type:none\">\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n', '<ul style=\"list-style-type:none\">\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n', '<ul style=\"list-style-type:none\">\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n', 1593190026, 1593190026),
(2, 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT.', 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT.', 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT.', 'new.jpg', 1593190020, '<ul style=\"list-style-type:none\">\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n', '<ul style=\"list-style-type:none\">\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n', '<ul style=\"list-style-type:none\">\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n', 1593190057, 1593190057),
(3, 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT.', 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT.', 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT.', 'news.jpg.jpg', 1593190020, '<ul style=\"list-style-type:none\">\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n', '<ul style=\"list-style-type:none\">\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n', '<ul style=\"list-style-type:none\">\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n', 1593190096, 1593190096);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_uz` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_ru`, `title_uz`, `title_en`, `price`, `category_id`) VALUES
(1, 'Не включается компьютер', 'Не включается компьютер', 'Не включается компьютер', '20000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services_kartridjey`
--

CREATE TABLE `services_kartridjey` (
  `id` int(11) NOT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_uz` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_kartridjey_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services_kartridjey`
--

INSERT INTO `services_kartridjey` (`id`, `title_ru`, `title_uz`, `title_en`, `price`, `category_kartridjey_id`) VALUES
(1, 'Настройка принтера', 'Настройка принтера', 'Настройка принтера', '30000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', '5C4Zfe4ssibILey94GJBASqFIcrMdKwy', '$2y$13$NeLTO2LNEtBx3VnlJdltm.KPU0XQDP060yt1cKmL/L7QZrc4UW412', NULL, NULL, 10, 1592981076, 1592981076, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abdualiym_block_blocks`
--
ALTER TABLE `abdualiym_block_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index-abdualiym_block_blocks-slug` (`slug`),
  ADD KEY `index-abdualiym_block_blocks-updated_at` (`updated_at`),
  ADD KEY `index-abdualiym_block_blocks-category_id` (`category_id`);

--
-- Indexes for table `abdualiym_block_categories`
--
ALTER TABLE `abdualiym_block_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `index-abdualiym_block_categories-slug` (`slug`);

--
-- Indexes for table `abdualiym_cms_articles`
--
ALTER TABLE `abdualiym_cms_articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `index-abdualiym_cms_articles-slug` (`slug`),
  ADD KEY `index-abdualiym_cms_articles-status` (`status`),
  ADD KEY `index-abdualiym_cms_articles-category_id` (`category_id`);

--
-- Indexes for table `abdualiym_cms_article_categories`
--
ALTER TABLE `abdualiym_cms_article_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `index-abdualiym_cms_article_categories-slug` (`slug`);

--
-- Indexes for table `abdualiym_cms_menu`
--
ALTER TABLE `abdualiym_cms_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `abdualiym_cms_pages`
--
ALTER TABLE `abdualiym_cms_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `index-abdualiym_cms_pages-slug` (`slug`);

--
-- Indexes for table `abdualiym_slider_categories`
--
ALTER TABLE `abdualiym_slider_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `index-abdualiym_slider_categories-slug` (`slug`);

--
-- Indexes for table `abdualiym_slider_slides`
--
ALTER TABLE `abdualiym_slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index-abdualiym_slider_slides-active` (`active`),
  ADD KEY `index-abdualiym_slider_slides-category_id` (`category_id`);

--
-- Indexes for table `abdualiym_slider_slides_and_tags`
--
ALTER TABLE `abdualiym_slider_slides_and_tags`
  ADD PRIMARY KEY (`slide_id`,`tag_id`);

--
-- Indexes for table `abdualiym_slider_tags`
--
ALTER TABLE `abdualiym_slider_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `index-abdualiym_slider_tags-slug` (`slug`);

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_kartridjey`
--
ALTER TABLE `categories_kartridjey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index-services-category_id` (`category_id`);

--
-- Indexes for table `services_kartridjey`
--
ALTER TABLE `services_kartridjey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index-services_kartridjey-category_kartridjey_id` (`category_kartridjey_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abdualiym_block_blocks`
--
ALTER TABLE `abdualiym_block_blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abdualiym_block_categories`
--
ALTER TABLE `abdualiym_block_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abdualiym_cms_articles`
--
ALTER TABLE `abdualiym_cms_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abdualiym_cms_article_categories`
--
ALTER TABLE `abdualiym_cms_article_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abdualiym_cms_menu`
--
ALTER TABLE `abdualiym_cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abdualiym_cms_pages`
--
ALTER TABLE `abdualiym_cms_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abdualiym_slider_categories`
--
ALTER TABLE `abdualiym_slider_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `abdualiym_slider_slides`
--
ALTER TABLE `abdualiym_slider_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `abdualiym_slider_tags`
--
ALTER TABLE `abdualiym_slider_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories_kartridjey`
--
ALTER TABLE `categories_kartridjey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services_kartridjey`
--
ALTER TABLE `services_kartridjey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abdualiym_block_blocks`
--
ALTER TABLE `abdualiym_block_blocks`
  ADD CONSTRAINT `fkey-abdualiym_block_blocks-category_id` FOREIGN KEY (`category_id`) REFERENCES `abdualiym_block_categories` (`id`);

--
-- Constraints for table `abdualiym_cms_articles`
--
ALTER TABLE `abdualiym_cms_articles`
  ADD CONSTRAINT `fkey-abdualiym_cms_articles-category_id` FOREIGN KEY (`category_id`) REFERENCES `abdualiym_cms_article_categories` (`id`);

--
-- Constraints for table `abdualiym_slider_slides`
--
ALTER TABLE `abdualiym_slider_slides`
  ADD CONSTRAINT `fkey-abdualiym_slider_slides-category_id` FOREIGN KEY (`category_id`) REFERENCES `abdualiym_slider_categories` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `fkey-services-category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `services_kartridjey`
--
ALTER TABLE `services_kartridjey`
  ADD CONSTRAINT `fkey-services_kartridjey-category_kartridjey_id` FOREIGN KEY (`category_kartridjey_id`) REFERENCES `categories_kartridjey` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
