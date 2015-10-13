-- phpMyAdmin SQL Dump
-- version 4.4.15deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2015 at 06:37 PM
-- Server version: 5.6.25-4
-- PHP Version: 5.6.14-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crc`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `title_en` varchar(300) NOT NULL,
  `title_ua` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title_en`, `title_ua`) VALUES
(1, 'Energy', 'Енергозбереження'),
(2, 'Ecology', 'Екологія'),
(3, 'Tourism', 'Туризм'),
(4, 'Soc-projects', 'Соцпроекти');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(11) NOT NULL,
  `project_name_ua` varchar(320) NOT NULL,
  `project_name_en` varchar(320) NOT NULL,
  `project_text_ua` text NOT NULL,
  `project_text_en` text NOT NULL,
  `project_text_avatar_ua` varchar(400) NOT NULL,
  `project_text_avatar_en` varchar(400) NOT NULL,
  `project_avatar` varchar(500) NOT NULL,
  `project_category` int(11) NOT NULL,
  `project_is_delete` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name_ua`, `project_name_en`, `project_text_ua`, `project_text_en`, `project_text_avatar_ua`, `project_text_avatar_en`, `project_avatar`, `project_category`, `project_is_delete`) VALUES
(1, 'TENERIFE', 'TENERIFE', '<p>\r\n                                                Проект  “Через енергію надихаємо майбутні покоління” виконувався на підтримку заходів з підвищення енергоефективності в малих містах України в рамках Програми підтримки реалізації енергетичної стратегії України  в галузі енергоефективності та відновлювальних  джерел енергії.\r\n                                            </p>  \r\n                                            <p style="text-align: center;margin-top: 68px;"><img src="${Constants.URL}files/images/tenerife-logo.png"></p>\r\n                                            <p>\r\n                                                <strong>Виконавець проекту:</strong> ГО «Перехресні зв’язки» \r\n                                            </p>\r\n                                            <p>\r\n                                                <strong>Партнер проекту:</strong> Іршавська міська рада\r\n                                            </p>\r\n                                            <p>\r\n\r\n                                                <strong>Термін реалізації проекту:</strong> 22.12.2012р. - 21.03.2014р.\r\n                                            </p>\r\n                                            <p>\r\n\r\n                                                <strong>Результати:</strong>\r\n                                            </p>\r\n                                            <p>\r\n                                                \r\n                                                <strong>1.1	Покращення енергетичної ефективності у дитячому садку №1 </strong><br/>\r\n                                                -	Встановлено  сонячні колектори; <br/>\r\n                                                -	Замінено систему опалення; <br/>\r\n                                                -	Замінено вікна та двері; <br/>\r\n                                                -	Теплоізольовано фасад будівлі. \r\n                                            </p>\r\n                                            <p>\r\n                                                <img src="${Constants.URL}files/images/tenerife-1.png">\r\n                                            </p>\r\n                                            <p style=" margin-top: 43px;text-align: center;">\r\n                                                <span>Фото 2013 року.</span><br/>\r\n                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-2.png"><br/>\r\n                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-3.png">\r\n                                            </p>\r\n                                            <br/>\r\n                                            <p style=" margin-top: -12px;;text-align: center;">\r\n                                                <span>Фото 2014 року.</span><br/>\r\n                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-4.png"><br/>\r\n                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-5.png">\r\n                                            </p>\r\n                                            <p style="padding-right: 15px; margin-top: 60px;line-height: 120%;">\r\n                                                <strong>2.1	Підвищення обізнаності щодо проблеми неефективного використання енергії у дитячих садках малих міст України та забезпечення інформаційної підтримки.</strong><br/>\r\n                                        -	Проведено енергоаудит до/після реконструкції та розповсюджено їх результати серед освітніх закладів малих міст Закарпаття;<br/>\r\n                                        -	Розроблено Практичний посібник щодо покращення енергоефективиності.\r\n                                            </p>\r\n                                            <p style="padding-right: 47px;margin-top: 75px;line-height: 120%;">\r\n                                            <strong>3.1 Підвищення рівня зацікавленості молоді в проблемах енергоефективності та енергозбереження</strong><br/>\r\n                                            -	Проведено навчання по енергозбереженню Літня школа “Тиждень енергії” для 25 учнів 6 малих міст Закарпаття. \r\n                                            </p>\r\n                                            <p>\r\n                                                <img style="margin-left: -50px;margin-top: 7px;" src="${Constants.URL}files/images/tenerife-6.png">\r\n                                            </p>\r\n                                            <p style="padding-right: 92px;margin-top: 70px;line-height: 120%;">\r\n                                            <strong>4.1	Покращення рівня менеджменту реалізації енергоефективних проектів державними службовцями шести малих міст Закарпаття</strong><br/>\r\n                                            -	Проведено тренінг по енергозбереженню для держслужбовців;<br/>\r\n                                            -	Шість малих міст Закарпаття забезпечені Практичним посібником щодо покращення енергоефективиності.\r\n                                            </p>', '<p>\r\n                                                Проект  “Через енергію надихаємо майбутні покоління” виконувався на підтримку заходів з підвищення енергоефективності в малих містах України в рамках Програми підтримки реалізації енергетичної стратегії України  в галузі енергоефективності та відновлювальних  джерел енергії.\r\n                                            </p>  \r\n                                            <p style="text-align: center;margin-top: 68px;"><img src="${Constants.URL}files/images/tenerife-logo.png"></p>\r\n                                            <p>\r\n                                                <strong>Виконавець проекту:</strong> ГО «Перехресні зв’язки» \r\n                                            </p>\r\n                                            <p>\r\n                                                <strong>Партнер проекту:</strong> Іршавська міська рада\r\n                                            </p>\r\n                                            <p>\r\n\r\n                                                <strong>Термін реалізації проекту:</strong> 22.12.2012р. - 21.03.2014р.\r\n                                            </p>\r\n                                            <p>\r\n\r\n                                                <strong>Результати:</strong>\r\n                                            </p>\r\n                                            <p>\r\n                                                \r\n                                                <strong>1.1	Покращення енергетичної ефективності у дитячому садку №1 </strong><br/>\r\n                                                -	Встановлено  сонячні колектори; <br/>\r\n                                                -	Замінено систему опалення; <br/>\r\n                                                -	Замінено вікна та двері; <br/>\r\n                                                -	Теплоізольовано фасад будівлі. \r\n                                            </p>\r\n                                            <p>\r\n                                                <img src="${Constants.URL}files/images/tenerife-1.png">\r\n                                            </p>\r\n                                            <p style=" margin-top: 43px;text-align: center;">\r\n                                                <span>Фото 2013 року.</span><br/>\r\n                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-2.png"><br/>\r\n                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-3.png">\r\n                                            </p>\r\n                                            <br/>\r\n                                            <p style=" margin-top: -12px;;text-align: center;">\r\n                                                <span>Фото 2014 року.</span><br/>\r\n                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-4.png"><br/>\r\n                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-5.png">\r\n                                            </p>\r\n                                            <p style="padding-right: 15px; margin-top: 60px;line-height: 120%;">\r\n                                                <strong>2.1	Підвищення обізнаності щодо проблеми неефективного використання енергії у дитячих садках малих міст України та забезпечення інформаційної підтримки.</strong><br/>\r\n                                        -	Проведено енергоаудит до/після реконструкції та розповсюджено їх результати серед освітніх закладів малих міст Закарпаття;<br/>\r\n                                        -	Розроблено Практичний посібник щодо покращення енергоефективиності.\r\n                                            </p>\r\n                                            <p style="padding-right: 47px;margin-top: 75px;line-height: 120%;">\r\n                                            <strong>3.1 Підвищення рівня зацікавленості молоді в проблемах енергоефективності та енергозбереження</strong><br/>\r\n                                            -	Проведено навчання по енергозбереженню Літня школа “Тиждень енергії” для 25 учнів 6 малих міст Закарпаття. \r\n                                            </p>\r\n                                            <p>\r\n                                                <img style="margin-left: -50px;margin-top: 7px;" src="${Constants.URL}files/images/tenerife-6.png">\r\n                                            </p>\r\n                                            <p style="padding-right: 92px;margin-top: 70px;line-height: 120%;">\r\n                                            <strong>4.1	Покращення рівня менеджменту реалізації енергоефективних проектів державними службовцями шести малих міст Закарпаття</strong><br/>\r\n                                            -	Проведено тренінг по енергозбереженню для держслужбовців;<br/>\r\n                                            -	Шість малих міст Закарпаття забезпечені Практичним посібником щодо покращення енергоефективиності.\r\n                                            </p>', '', '', '', 1, 0),
(2, 'TENERIFE 2', 'TENERIFE 2', 'Проект  “Через енергію надихаємо майбутні покоління” виконувався на підтримку заходів з підвищення енергоефективності в малих містах України в рамках Програми підтримки реалізації енергетичної стратегії України  в галузі енергоефективності та відновлювальних  джерел енергії.\r\n', 'Проект  “Через енергію надихаємо майбутні покоління” виконувався на підтримку заходів з підвищення енергоефективності в малих містах України в рамках Програми підтримки реалізації енергетичної стратегії України  в галузі енергоефективності та відновлювальних  джерел енергії.\r\n', '', '', 'ten.jpg', 1, 0),
(3, 'TENERIFE 3', 'TENERIFE 3', 'Проект  “Через енергію надихаємо майбутні покоління” виконувався на підтримку заходів з підвищення енергоефективності в малих містах України в рамках Програми підтримки реалізації енергетичної стратегії України  в галузі енергоефективності та відновлювальних  джерел енергії.\r\n', 'Проект  “Через енергію надихаємо майбутні покоління” виконувався на підтримку заходів з підвищення енергоефективності в малих містах України в рамках Програми підтримки реалізації енергетичної стратегії України  в галузі енергоефективності та відновлювальних  джерел енергії.\r\n', '', '', 'ten.jpg', 2, 0),
(4, 'TENERIFE 4', 'TENERIFE 4', 'Проект  “Через енергію надихаємо майбутні покоління” виконувався на підтримку заходів з підвищення енергоефективності в малих містах України в рамках Програми підтримки реалізації енергетичної стратегії України  в галузі енергоефективності та відновлювальних  джерел енергії.\r\n', 'Проект  “Через енергію надихаємо майбутні покоління” виконувався на підтримку заходів з підвищення енергоефективності в малих містах України в рамках Програми підтримки реалізації енергетичної стратегії України  в галузі енергоефективності та відновлювальних  джерел енергії.\r\n', '', '', 'ten.jpg', 3, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
