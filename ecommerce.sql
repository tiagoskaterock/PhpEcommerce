-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 02-Jun-2022 às 18:00
-- Versão do servidor: 5.7.38-0ubuntu0.18.04.1
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(6, 'Wall Protection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(10, 'Roofing (Asphalt)', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'),
(11, 'Hard Tile & Stone', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?'),
(15, 'Masonry & Precast', 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.'),
(17, 'EIFS', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.'),
(19, 'Soft Flooring and Base', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?'),
(20, 'Exterior Signage', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `description_short` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `title`, `cat_id`, `price`, `quantity`, `description_short`, `description`, `image`) VALUES
(12, 'Ice Cream - Fudge Bars', 20, 1610.14, 21, 'Path fx in neopltc dis, unsp ulna & rad, 7thG', 'Pathological fracture in neoplastic disease, unspecified ulna and radius, subsequent encounter for fracture with delayed healing', 'http://dummyimage.com/156x100.png/dddddd/000000'),
(20, 'Nantucket Pine Orangebanana', 19, 2348.59, 27, 'Other effects of vibration', 'Other effects of vibration', 'http://dummyimage.com/239x100.png/dddddd/000000'),
(29, 'The Pop Shoppe - Cream Soda', 10, 4501.29, 22, 'Foreign body in uterus, sequela', 'Foreign body in uterus, sequela', 'http://dummyimage.com/123x100.png/5fa2dd/ffffff'),
(30, 'Cod - Salted, Boneless', 19, 952.81, 46, 'Subac comb degeneration of spinal cord in dis classd elswhr', 'Subacute combined degeneration of spinal cord in diseases classified elsewhere', 'http://dummyimage.com/246x100.png/5fa2dd/ffffff'),
(31, 'Turnip - Wax', 15, 1764.77, 35, 'Poisoning by oth estrogens and progstrn, self-harm, sequela', 'Poisoning by other estrogens and progestogens, intentional self-harm, sequela', 'http://dummyimage.com/109x100.png/5fa2dd/ffffff'),
(34, 'Sprouts - Alfalfa', 20, 1528.14, 6, 'Chronic follicular conjunctivitis, unspecified eye', 'Chronic follicular conjunctivitis, unspecified eye', 'http://dummyimage.com/228x100.png/5fa2dd/ffffff'),
(35, 'Sugar - Individual Portions', 17, 1799.6, 41, 'Other articular cartilage disorders, left ankle', 'Other articular cartilage disorders, left ankle', 'http://dummyimage.com/214x100.png/dddddd/000000'),
(37, 'Beef - Kindney, Whole', 10, 2913.62, 34, 'Intertrochanteric fracture of femur', 'Intertrochanteric fracture of femur', 'http://dummyimage.com/221x100.png/dddddd/000000'),
(40, 'Pork - Butt, Boneless', 15, 4965.22, 34, 'Other peripheral vertigo, right ear', 'Other peripheral vertigo, right ear', 'http://dummyimage.com/117x100.png/cc0000/ffffff'),
(42, 'Bread - Multigrain Oval', 19, 4473.3, 45, 'Machine gun discharge, undetermined intent, init encntr', 'Machine gun discharge, undetermined intent, initial encounter', 'http://dummyimage.com/202x100.png/cc0000/ffffff'),
(43, 'Crush - Grape, 355 Ml', 17, 227.19, 16, 'Monteggia\'s fracture of right ulna', 'Monteggia\'s fracture of right ulna', 'http://dummyimage.com/126x100.png/cc0000/ffffff'),
(44, 'Pork Loin Bine - In Frenched', 15, 794.95, 20, 'Disp fx of body of unsp calcaneus, subs for fx w delay heal', 'Displaced fracture of body of unspecified calcaneus, subsequent encounter for fracture with delayed healing', 'http://dummyimage.com/202x100.png/5fa2dd/ffffff'),
(45, 'Pastry - Apple Muffins - Mini', 6, 3257.23, 40, 'Poisoning by smallpox vaccines, accidental, init', 'Poisoning by smallpox vaccines, accidental (unintentional), initial encounter', 'http://dummyimage.com/229x100.png/ff4444/ffffff'),
(46, 'Cattail Hearts', 20, 3173.05, 11, 'Abnormal findings in cerebrospinal fluid', 'Abnormal findings in cerebrospinal fluid', 'http://dummyimage.com/152x100.png/ff4444/ffffff');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'rico', 'rico@email.com', '123'),
(2, 'edwin', 'edwin@email.com', '123'),
(3, 'tiago', 'tiago@email.com', '123'),
(4, 'Carly Risley', 'crisley0@github.com', 'D0BO2zA'),
(5, 'Nessie Emes', 'nemes1@4shared.com', 'EoaiA0iRLv'),
(7, 'Tomaso Leopold', 'tleopold3@ustream.tv', 'RSAftmWd5Z'),
(8, 'Filmore Patzelt', 'fpatzelt4@wikipedia.org', 'y84v8cH'),
(9, 'Amitie Curtis', 'acurtis5@narod.ru', 'M3vh5bfqh'),
(11, 'Meier Quinnette', 'mquinnette7@simplemachines.org', '0KjrCQU'),
(12, 'Mathian Pulteneye', 'mpulteneye8@narod.ru', 'YZNDslhdYyA6'),
(13, 'Hortensia Povah', 'hpovah9@sakura.ne.jp', 'OZ6c5T0Blj'),
(15, 'Hamid Madoc-Jones', 'hmadocjonesb@so-net.ne.jp', 'oLGF81efqn'),
(16, 'Son Shout', 'sshoutc@opensource.org', 'ggMwCz0YRy'),
(17, 'Alexa Maasz', 'amaaszd@home.pl', 'ETDxWjtHQmOq'),
(18, 'Petronella Breewood', 'pbreewoode@ebay.co.uk', 'I61w5pL5omKo'),
(19, 'Amalle Copelli', 'acopellif@flickr.com', 'qHtNaK8T3vid'),
(20, 'See Attfield', 'sattfieldg@goodreads.com', 'FpIOIKo2'),
(21, 'Corabel Demanche', 'cdemancheh@etsy.com', 'rYUq2LIjBJz'),
(22, 'Alexandros Lampaert', 'alampaerti@telegraph.co.uk', 'qz1HkWkx3Zv1'),
(23, 'Yasmeen Tokell', 'ytokellj@sbwire.com', 'UJV1f8P'),
(24, 'Zachery Di Biagi', 'zdik@merriam-webster.com', 'wbzxPcj'),
(25, 'Kippar Bettesworth', 'kbettesworthl@oaic.gov.au', 'U1BCjQ'),
(26, 'Teodora Deplacido', 'tdeplacidom@psu.edu', 'HPxc1ISC'),
(27, 'Ethelyn Nequest', 'enequestn@mtv.com', 'na9tdXaVL'),
(28, 'Vince Yanukhin', 'vyanukhino@blogs.com', 'ceAWqy'),
(29, 'Lynnea Blastock', 'lblastockp@yandex.ru', 'wVzw9SSle6'),
(30, 'Alphonse Tonkes', 'atonkesq@netlog.com', 'aiXEhvNuZ6td'),
(31, 'Alicia Trevon', 'atrevonr@creativecommons.org', 'euE3RNC'),
(32, 'Felice Archbell', 'farchbells@sciencedirect.com', '0SDMQ5'),
(33, 'Giulietta Hamsson', 'ghamssont@amazon.de', '9O3Ll91T'),
(34, 'Even Saintsbury', 'esaintsburyu@diigo.com', 'yiZA2NHbk'),
(35, 'Amil Caustic', 'acausticv@boston.com', 'MiLpQbVE7M'),
(36, 'Brooks Scholcroft', 'bscholcroftw@npr.org', 'E8lB1uPJrwM'),
(37, 'Elmer Enderle', 'eenderlex@usda.gov', 'LC58NZtU'),
(38, 'Rheta Tireman', 'rtiremany@yahoo.com', 'bL7C3Nbc'),
(39, 'Briney Plumm', 'bplummz@theglobeandmail.com', 'c9gFJjb'),
(40, 'Lilas Ottee', 'lottee10@51.la', 'XPwFj8Zn7fg'),
(41, 'Wallache Haggett', 'whaggett11@liveinternet.ru', '7VPiMUm'),
(42, 'Crawford Kennifeck', 'ckennifeck12@cpanel.net', 'p3HfC5A'),
(43, 'Reece Jaze', 'rjaze13@washingtonpost.com', 'QvIg0CjhH6'),
(44, 'Rozalin Kehir', 'rkehir14@cloudflare.com', 'KSCrmE1'),
(45, 'Alan Jeppe', 'ajeppe15@mtv.com', '8VxFutLm0Eqm'),
(46, 'Gert Force', 'gforce16@prlog.org', '3cyedP'),
(47, 'Jenilee Daffey', 'jdaffey17@mashable.com', 'naLEHVt'),
(48, 'Peyter Newlyn', 'pnewlyn18@ftc.gov', '9eGIEkQTwl'),
(49, 'Twila McGeachie', 'tmcgeachie19@sitemeter.com', '5MlSFpgSC2M'),
(50, 'Mala MacDowall', 'mmacdowall1a@discovery.com', 'C3aunQG'),
(51, 'Orelle Kewzick', 'okewzick1b@mediafire.com', 'URvB0zrZ'),
(52, 'Byram Falla', 'bfalla1c@nba.com', 'zBZpDXLjDE'),
(53, 'Augusto Frankcom', 'afrankcom1d@ed.gov', 'Xka76OHCY'),
(54, 'Blythe Crannach', 'bcrannach1e@admin.ch', 'jGCWZy'),
(55, 'Dasi Carn', 'dcarn1f@gravatar.com', 'K6jPJF0TqC'),
(56, 'Dotti Cranke', 'dcranke1g@apple.com', 'iMFBtDdV0d'),
(57, 'Hayden Fery', 'hfery1h@mozilla.org', 'j2Fc4KR'),
(58, 'Norrie Turpie', 'nturpie1i@netscape.com', 'qNFQQNRwW'),
(59, 'Sidonnie Folds', 'sfolds1j@cloudflare.com', '9jmeal'),
(60, 'Nolan Leedes', 'nleedes1k@bbc.co.uk', 'Iold1VQtHkK'),
(61, 'Camille Phateplace', 'cphateplace1l@mayoclinic.com', 'bEm4BVuW59z'),
(62, 'Damon Von Der Empten', 'dvon1m@diigo.com', 'fmhe5lmAlb'),
(63, 'Margalit McNalley', 'mmcnalley1n@google.com.au', 'XFIfRkg0B2u'),
(64, 'Augustus Juschke', 'ajuschke1o@bloglovin.com', 'iem3ZlIoc4B'),
(65, 'Jameson Withnall', 'jwithnall1p@comsenz.com', '2ivLb2'),
(66, 'Urson Vardy', 'uvardy1q@google.ru', 'j2SkNxheJK'),
(67, 'Sutherlan Tompkinson', 'stompkinson1r@miibeian.gov.cn', 'skW7Wb'),
(68, 'Marabel Hallford', 'mhallford1s@privacy.gov.au', 'E3KB0L0Xt6'),
(69, 'Erika Albert', 'ealbert1t@example.com', '5dF1umZJY'),
(70, 'Karol Ryley', 'kryley1u@reverbnation.com', 'Y0XDLI39i2'),
(71, 'Jeanie Boscott', 'jboscott1v@privacy.gov.au', 'KaCEv1us8th'),
(72, 'Paulie Dillingstone', 'pdillingstone1w@digg.com', 'MlZiholj'),
(73, 'Jaynell Prowting', 'jprowting1x@si.edu', 'Z1ns5l7thCm3'),
(74, 'Austine Winsbury', 'awinsbury1y@elegantthemes.com', 'vKwQOZc8EEi'),
(75, 'Dov Fippe', 'dfippe1z@cdc.gov', 'Bj6jZwVuY'),
(76, 'Hasheem Hazeman', 'hhazeman20@dot.gov', 'zdL7aVoIATP'),
(77, 'Rhys Truss', 'rtruss21@pinterest.com', 'qVCDasUIkp'),
(78, 'Stephanie Sanchiz', 'ssanchiz22@taobao.com', 'rX7xAKDbE'),
(79, 'Daile Winyard', 'dwinyard23@hhs.gov', 'F0kcWH'),
(80, 'Hew Rix', 'hrix24@sbwire.com', 'tHr1iqJat'),
(81, 'Dalila Druce', 'ddruce25@examiner.com', 'yu0ggVce'),
(82, 'Dionne Penrose', 'dpenrose26@nyu.edu', 'WCNU4A'),
(83, 'Lexy Gwyllt', 'lgwyllt27@japanpost.jp', 'vYWImky5QD7C'),
(84, 'Harrietta Perassi', 'hperassi28@topsy.com', 'nqSKYtz3oCa'),
(85, 'Paxton Savins', 'psavins29@arizona.edu', 'TDObGYjVEV'),
(86, 'Hervey Hymer', 'hhymer2a@reuters.com', 'qQa2D9KDr'),
(87, 'Dermot Crawshaw', 'dcrawshaw2b@google.it', 'lrNXnR8jO1Bt'),
(88, 'Sid Fittes', 'sfittes2c@163.com', '41x4sH9'),
(89, 'Kingsly Crilley', 'kcrilley2d@ucoz.com', 'ydk6JVFYrsK'),
(90, 'Cad Gravatt', 'cgravatt2e@lycos.com', 'dGndtVHsm'),
(91, 'Nat Klainman', 'nklainman2f@usatoday.com', 'HVV4zBAGL3'),
(92, 'Vernen Beernaert', 'vbeernaert2g@blogtalkradio.com', 'hoqmsZu'),
(93, 'Kassey Hartles', 'khartles2h@yellowpages.com', 'h2elmCjoluTz'),
(94, 'Lanni Sharvill', 'lsharvill2i@illinois.edu', 'rRA9ZUDlZcN'),
(95, 'Dusty Clemits', 'dclemits2j@ucla.edu', 'HEOnJhdMj2c3'),
(96, 'Starlin Grayling', 'sgrayling2k@opera.com', 'qbd8xZ'),
(97, 'Allis Chettle', 'achettle2l@chicagotribune.com', '0kH2aaNk'),
(98, 'Genni Padgham', 'gpadgham2m@hubpages.com', 'BM4CzcZGhhG'),
(99, 'Raimund Monard', 'rmonard2n@weebly.com', 'TTpIHSmg6'),
(100, 'Bibby Tiffany', 'btiffany2o@comsenz.com', 'lqlueBkH585'),
(101, 'Humfrey Bortolussi', 'hbortolussi2p@ibm.com', 'nb06IwfWC0t'),
(102, 'Darill Pusill', 'dpusill2q@census.gov', 'KP6msPHeLf'),
(103, 'Aida Smedmore', 'asmedmore2r@home.pl', 'p1EWhhM5'),
(104, 'Myrwyn Yurygyn', 'myurygyn2s@edublogs.org', 'QdAgOTWAK6k'),
(105, 'Christopher Sneesby', 'csneesby2t@cafepress.com', 'zzvN4oYY'),
(106, 'Hewe Duthie', 'hduthie2u@ocn.ne.jp', 'P3nlQhwPV'),
(107, 'Dollie Sturman', 'dsturman2v@answers.com', 'qHMXzQ7Heb'),
(108, 'Darwin Gladdolph', 'dgladdolph2w@xrea.com', '3dhPUOVoa'),
(109, 'Scotti Gambles', 'sgambles2x@mac.com', 'zC1gXqHxR'),
(110, 'Leila Wallsworth', 'lwallsworth2y@purevolume.com', 'Jfz14MBcx'),
(111, 'Lona Leidl', 'lleidl2z@businesswire.com', 'RcaYvEZ7BR'),
(112, 'Helsa Moorton', 'hmoorton30@alexa.com', 'zAu5W92'),
(113, 'Penni Twinterman', 'ptwinterman31@creativecommons.org', 'EBwY9C'),
(114, 'Nickolaus Clayden', 'nclayden32@opensource.org', 'nobORr6Ulvm5'),
(115, 'Jenny Southernwood', 'jsouthernwood33@instagram.com', 'Fk01LP'),
(116, 'Jone Critchlow', 'jcritchlow34@ifeng.com', 'D4btLt'),
(117, 'Dur Crowch', 'dcrowch35@sciencedirect.com', 'D9yb7mlFwJN'),
(118, 'Randall Corness', 'rcorness36@aboutads.info', 'KDJKeC'),
(119, 'Camila Billany', 'cbillany37@skyrock.com', 'xZ1SJa3h'),
(120, 'Hammad McFall', 'hmcfall38@list-manage.com', 'W1PJFBen0'),
(121, 'Dela Anglin', 'danglin39@freewebs.com', 'z5GheWI0F'),
(122, 'Reggie Juett', 'rjuett3a@jugem.jp', 'lcPhPfOq'),
(123, 'Carly Cristol', 'ccristol3b@nyu.edu', 'JIz3cS'),
(124, 'Guinna Larner', 'glarner3c@va.gov', 'moTs2AqXEHI'),
(125, 'Melissa Sexon', 'msexon3d@bloglovin.com', 'O0nrLd6eMCf'),
(126, 'Lorianna Stendell', 'lstendell3e@jigsy.com', 'BsgpfZYYYYgd'),
(127, 'Dale Durrad', 'ddurrad3f@harvard.edu', 'gdA850e'),
(128, 'Albertina Monroe', 'amonroe3g@smh.com.au', 'SngiVvF7W'),
(129, 'Hallsy Labbati', 'hlabbati3h@ca.gov', 'cca0FUDQY'),
(130, 'Sadella Roseman', 'sroseman3i@google.it', 'YucO8S5f2gD'),
(131, 'Guy Kneeshaw', 'gkneeshaw3j@gravatar.com', 'Zy2Lczlvp'),
(132, 'Roman Renny', 'rrenny3k@bing.com', 'TvRwXlycSyG'),
(133, 'Hollis Iglesiaz', 'higlesiaz3l@is.gd', 'zNpFckQgd7'),
(134, 'Ronny Hryskiewicz', 'rhryskiewicz3m@skyrock.com', 'HautVyvZxSRI'),
(135, 'Osborn Basham', 'obasham3n@va.gov', 'dfCNCI'),
(136, 'Shepard August', 'saugust3o@imdb.com', 'b6BULi'),
(137, 'Owen Harlin', 'oharlin3p@fda.gov', 'VrXuEkGyEx6h'),
(138, 'Royce Richemont', 'rrichemont3q@oaic.gov.au', 'LCjy6isXmo'),
(139, 'Patty Duffy', 'pduffy3r@fotki.com', 'luLW51Bc'),
(140, 'Donni Churchley', 'dchurchley3s@plala.or.jp', 'VcfsfKNld'),
(141, 'Bernardine Comazzo', 'bcomazzo3t@techcrunch.com', 'hzvsCTVPWjF'),
(142, 'Frannie Test', 'ftest3u@goodreads.com', 'CWgzxMSu'),
(143, 'Denni Windows', 'dwindows3v@hhs.gov', 'Rub13J3cZ'),
(144, 'Pepito Diprose', 'pdiprose3w@wisc.edu', 'KLFbZf'),
(145, 'Roderic Schimonek', 'rschimonek3x@java.com', '4KndJ3Q'),
(146, 'Hatty Airlie', 'hairlie3y@jiathis.com', '0RE9t8wbJQf'),
(147, 'Teri Rawle', 'trawle3z@bizjournals.com', 'ZyYw6wbX'),
(148, 'Iago Varvell', 'ivarvell40@ameblo.jp', 'bPyeoJJxT'),
(149, 'Vidovic Sextie', 'vsextie41@examiner.com', 'qBHpmNKWr'),
(150, 'Waite Sawfoot', 'wsawfoot42@weibo.com', '4IYju1F'),
(151, 'Melicent Bellinger', 'mbellinger43@mail.ru', 'XTxSfpEn1'),
(152, 'Lorettalorna Kerwin', 'lkerwin44@nytimes.com', 'vJUbNpJyN'),
(153, 'Brier Leynton', 'bleynton45@bbc.co.uk', 'v2IKt1qiGs'),
(154, 'Janean Bettleson', 'jbettleson46@zdnet.com', 't1H9QwVlr05'),
(155, 'Durward Calvie', 'dcalvie47@lycos.com', 'u5tsR7hgxFc'),
(156, 'Edeline Guthrie', 'eguthrie48@yellowbook.com', 'A0jWzP3'),
(157, 'Shepherd Guirau', 'sguirau49@instagram.com', 'Cxoby1gVCIoS'),
(158, 'Gil Songhurst', 'gsonghurst4a@examiner.com', '15qVlsXZ'),
(159, 'Pierette Satcher', 'psatcher4b@exblog.jp', '5qY770o6O9'),
(160, 'Travus Jiggle', 'tjiggle4c@soundcloud.com', '6DXta3Aly2j'),
(161, 'Chris Claybourne', 'cclaybourne4d@buzzfeed.com', 'M0ut2MYA'),
(162, 'Janeen Malthouse', 'jmalthouse4e@eepurl.com', '0plNgJtTJ0'),
(163, 'Gordy Pearsall', 'gpearsall4f@myspace.com', 'eVmPFRG5Ffu'),
(164, 'Ilyse Malcolm', 'imalcolm4g@google.com.br', 'jkBBCIf'),
(165, 'Stefania Barclay', 'sbarclay4h@redcross.org', 'l2SlUMh8NrgV'),
(166, 'Adella Fulloway', 'afulloway4i@youtu.be', 'GaV2nBdxE0'),
(167, 'Hazel Matousek', 'hmatousek4j@photobucket.com', 'DFMB8xb3CE1O'),
(168, 'Merrilee Probate', 'mprobate4k@weebly.com', 'emW7ryAD'),
(169, 'Saba Luckie', 'sluckie4l@pagesperso-orange.fr', 'YPhms4'),
(170, 'Dickie McAirt', 'dmcairt4m@hubpages.com', '5QV4RwH'),
(171, 'Karna Dedham', 'kdedham4n@github.com', '2ggXPbyN9n'),
(172, 'Chaddie Kettle', 'ckettle4o@wunderground.com', '3EMIBI'),
(173, 'Daron Thirlwell', 'dthirlwell4p@prlog.org', 'WWfcBJ2g'),
(174, 'Saundra Jakobssen', 'sjakobssen4q@weibo.com', 'YTSLrFiHYl'),
(175, 'Sergei Carthew', 'scarthew4r@drupal.org', 'tSTVkE67Gk6'),
(176, 'Cazzie Kingaby', 'ckingaby4s@sogou.com', 'cYLyHMs'),
(177, 'Horst Strode', 'hstrode4t@naver.com', 'FJqj4TTiL4k'),
(178, 'Selma McNaughton', 'smcnaughton4u@deviantart.com', 'ymyevxW'),
(179, 'Renado Southcombe', 'rsouthcombe4v@purevolume.com', 'zUp9QrkWx'),
(180, 'Hillard Outright', 'houtright4w@wunderground.com', 'v6BN5DKrkPzk'),
(181, 'Faina Fulbrook', 'ffulbrook4x@amazon.co.jp', '51jFmHWy'),
(182, 'Joly McNaught', 'jmcnaught4y@51.la', 'IaqJu1Q'),
(183, 'Betti Pruckner', 'bpruckner4z@miibeian.gov.cn', 'vhEYiy'),
(184, 'Morse Caulket', 'mcaulket50@multiply.com', 'aaDczKsKbEo'),
(185, 'Luca Dyster', 'ldyster51@qq.com', 'mdBI9Bx'),
(186, 'Clare Gainsbury', 'cgainsbury52@arstechnica.com', 'ImYlEi6VIfF'),
(187, 'Phillida Ragdale', 'pragdale53@dagondesign.com', 'fd0vnqY1RL'),
(188, 'Salim Ginglell', 'sginglell54@cocolog-nifty.com', 'Xxxr5CCc'),
(189, 'Rowan O\'Calleran', 'rocalleran55@google.com.au', 'Lk9Nbwm1CRa'),
(190, 'Zackariah Lounds', 'zlounds56@google.pl', 'jJ4Sz7a1'),
(191, 'Jodi Ryott', 'jryott57@etsy.com', 'M8A6dPYUsU'),
(192, 'Murray Mussett', 'mmussett58@naver.com', 'c3tDJIR'),
(193, 'Erhart Ollet', 'eollet59@sitemeter.com', 'C5V4vc'),
(194, 'Bradney Mayze', 'bmayze5a@meetup.com', 'W9rFDJevTt'),
(195, 'Foss Shird', 'fshird5b@yellowbook.com', 'LvHmnlFtT'),
(196, 'Mathew Matusevich', 'mmatusevich5c@fastcompany.com', 'iLOreaBeBW'),
(197, 'Alexandr Truswell', 'atruswell5d@reuters.com', 'A7ejoI'),
(198, 'Warner Klimontovich', 'wklimontovich5e@jugem.jp', 'hPV8cHh5Z0'),
(199, 'Claudina Giacomoni', 'cgiacomoni5f@geocities.com', 'pKjZuYKKCaKn'),
(200, 'Harriette Greeson', 'hgreeson5g@ezinearticles.com', 'yuTgLP'),
(201, 'Adrian Scutter', 'ascutter5h@thetimes.co.uk', '4rFUK40OYo'),
(202, 'Joane Ilyukhov', 'jilyukhov5i@tiny.cc', 'R8mgddB'),
(203, 'Bale Colnet', 'bcolnet5j@narod.ru', 'f4aHInJB3c'),
(204, 'Smith Craise', 'scraise5k@wikia.com', 'r5It1a'),
(205, 'Rolf Romeo', 'rromeo5l@alexa.com', 'uzgcsN7DT3p'),
(206, 'Matelda Cardew', 'mcardew5m@reuters.com', '9yJnOXX'),
(207, 'Eleni Cobby', 'ecobby5n@prlog.org', 'geO5tqS'),
(208, 'Bram Shepeard', 'bshepeard5o@imgur.com', 'tttbqN'),
(209, 'Bessie Veltman', 'bveltman5p@ebay.com', 'OyC7EhQhnj5'),
(210, 'Shae Leiden', 'sleiden5q@prweb.com', '83HXsiqrXqd'),
(211, 'Cynde Garm', 'cgarm5r@cdc.gov', 'AntLsKhv'),
(212, 'Cherri Suddell', 'csuddell5s@behance.net', 'lL0wiD5YZx'),
(213, 'Ruthy Steenson', 'rsteenson5t@stumbleupon.com', 'a0rCQZAn9HS'),
(214, 'Lombard Rodnight', 'lrodnight5u@pagesperso-orange.fr', 'SFSXsP15'),
(215, 'Merrick Mousley', 'mmousley5v@newsvine.com', 'ku64Nsk'),
(216, 'Kellen O\'Shesnan', 'koshesnan5w@deliciousdays.com', '1i2JOK'),
(217, 'Estel Cantopher', 'ecantopher5x@utexas.edu', 'L5iOhQ3j8AB'),
(218, 'Jameson Pillman', 'jpillman5y@dell.com', 'AqUch85k'),
(219, 'Evangelina Lacoste', 'elacoste5z@wsj.com', 'NqEXhAG'),
(220, 'Beau Peacocke', 'bpeacocke60@github.com', 'YWOQkO'),
(221, 'Ceil Lottrington', 'clottrington61@boston.com', 'bQ0ZA4mNojw'),
(222, 'Noel Mollnar', 'nmollnar62@scribd.com', 'AQLmEwT'),
(223, 'Rosemonde Eckford', 'reckford63@shop-pro.jp', 'mlsIbZkU'),
(224, 'Xenos McAlpin', 'xmcalpin64@msu.edu', '8wYQNo'),
(225, 'Jaclyn Callender', 'jcallender65@nasa.gov', 'EPQXP61'),
(226, 'Alexio Lemerle', 'alemerle66@topsy.com', '2aFSaJEVaDC'),
(227, 'Barbie Hatchett', 'bhatchett67@ovh.net', 'PSrdYnUbTNp'),
(228, 'Kamila Wild', 'kwild68@ibm.com', 'Tz2K9MtFcju6'),
(229, 'Noby McGoldrick', 'nmcgoldrick69@cyberchimps.com', 'qtse7e4z'),
(230, 'Chantal Grizard', 'cgrizard6a@reference.com', '5oFGGeWMS5FB'),
(231, 'Fayth Pedreschi', 'fpedreschi6b@usa.gov', 'vwApMGN'),
(232, 'Crissy Gwin', 'cgwin6c@utexas.edu', '8uVbwLtl'),
(233, 'Virge Abramski', 'vabramski6d@indiatimes.com', 'EsCbMQ8P'),
(234, 'Fowler Croysdale', 'fcroysdale6e@fda.gov', '3B7Bn7j'),
(235, 'Aime Wattisham', 'awattisham6f@addthis.com', 'ZwRpUxrGohCF'),
(236, 'Marcy Sultana', 'msultana6g@bing.com', '5evvTgWpuui8'),
(237, 'Luz Melbert', 'lmelbert6h@census.gov', 'VHhrPDfW8w08'),
(238, 'Franzen Wootton', 'fwootton6i@webnode.com', 'Qb2U32R'),
(239, 'Oates Barbrick', 'obarbrick6j@wix.com', 'YxXcvC'),
(240, 'Shaw Maywood', 'smaywood6k@usa.gov', 'k3zsKWbTDY'),
(241, 'Reyna McBrearty', 'rmcbrearty6l@microsoft.com', 'Twt2b8'),
(242, 'Homerus Hathway', 'hhathway6m@arstechnica.com', 'NS788vG'),
(243, 'Henrik Houseago', 'hhouseago6n@devhub.com', 'Vv4oAzWB0Q4'),
(244, 'Sarene Erat', 'serat6o@dyndns.org', 'W65imq6DpV'),
(245, 'Delinda Couchman', 'dcouchman6p@webs.com', 'aAbwI33m'),
(246, 'Demetria Hospital', 'dhospital6q@ft.com', 'HdI37jgYcw9'),
(247, 'Miof mela Gandey', 'mmela6r@freewebs.com', 'G8W7xL'),
(248, 'Currie Veregan', 'cveregan6s@mediafire.com', 'fyaCUKXqvDkA'),
(249, 'Catlee Klimaszewski', 'cklimaszewski6t@photobucket.com', '4PmkHqM'),
(250, 'Salvidor Luter', 'sluter6u@addthis.com', 'epfmUyiVbS7'),
(251, 'Trix Harroway', 'tharroway6v@example.com', 'coIdI3Gbs4L'),
(252, 'Kizzee Elphinstone', 'kelphinstone6w@globo.com', 'pTrVkGc8'),
(253, 'Ceil Dudney', 'cdudney6x@disqus.com', 'Q0l0sl'),
(254, 'Diane-marie McEwan', 'dmcewan6y@indiatimes.com', '5F5N22Zi'),
(255, 'June Evitts', 'jevitts6z@usda.gov', 'LQxN61rcKx'),
(256, 'Zorina Wilce', 'zwilce70@google.ca', 'EFEzCH'),
(257, 'Leland Casbourne', 'lcasbourne71@eepurl.com', 'YnyazDwc'),
(258, 'Mikey Andrioletti', 'mandrioletti72@usda.gov', 'nASR0p0w'),
(259, 'Gaspard Roubay', 'groubay73@usa.gov', 'Mp4Htqp'),
(260, 'Callie Shepeard', 'cshepeard74@netlog.com', 'jtWXRfyr'),
(261, 'Webb Bagshawe', 'wbagshawe75@comsenz.com', 'wxyyI4IW'),
(262, 'Gherardo Boote', 'gboote76@purevolume.com', 'Ka8NNZ'),
(263, 'Viviana Stickells', 'vstickells77@nba.com', 'B9psSC'),
(264, 'Clark Cresswell', 'ccresswell78@dagondesign.com', 'I4rTAg2dzId'),
(265, 'Nedi Januszewski', 'njanuszewski79@baidu.com', 'kHRISZHjOdC'),
(266, 'Don Erskin', 'derskin7a@liveinternet.ru', 'S1zTxJzJ8D1'),
(267, 'Gavan Fowgies', 'gfowgies7b@com.com', 'bDYUpFAWi'),
(268, 'Sallie Le Galle', 'sle7c@cafepress.com', 'VJUd3lD'),
(269, 'Denice Wetherburn', 'dwetherburn7d@rediff.com', 'm8MlOSCQ1'),
(270, 'Spence Pilley', 'spilley7e@sogou.com', 'xbwjkFeERu'),
(271, 'Dallon Beeck', 'dbeeck7f@t.co', 'BgcYXr'),
(272, 'Nelie Harbison', 'nharbison7g@meetup.com', 'BIW9t47b1QQ'),
(273, 'Manya Brokenshaw', 'mbrokenshaw7h@vimeo.com', '8WOhvl'),
(274, 'Delilah Henrique', 'dhenrique7i@phoca.cz', 'kkUqLwe4M'),
(275, 'Minne Patty', 'mpatty7j@cbsnews.com', '8h7eKBv'),
(276, 'Conn Meddemmen', 'cmeddemmen7k@wiley.com', 'CKkycZF1'),
(277, 'Constancy Roches', 'croches7l@jimdo.com', 'DWVcyfcY1EVi'),
(278, 'Torr Chapelle', 'tchapelle7m@unesco.org', '0LiTKvM'),
(279, 'Xenos Johansen', 'xjohansen7n@linkedin.com', 'oHLEjS7'),
(280, 'Nels Davidovits', 'ndavidovits7o@cargocollective.com', 'AfrI39jKM'),
(281, 'Nap Le Leu', 'nle7p@chicagotribune.com', 'nlody4GD6kC'),
(282, 'Ephraim Whaley', 'ewhaley7q@ow.ly', 'WenK1vPHMsKq'),
(283, 'Gnni Taplow', 'gtaplow7r@macromedia.com', 'u5ETMzT'),
(284, 'Marcellina Lesslie', 'mlesslie7s@miitbeian.gov.cn', 'f4OrMXR'),
(285, 'Parrnell Camocke', 'pcamocke7t@hugedomains.com', 'U4XCT7dd9'),
(286, 'Shaylah Oldridge', 'soldridge7u@wordpress.com', 'RZ6XmBBKkGW'),
(287, 'Ken Frankcomb', 'kfrankcomb7v@admin.ch', '564oVrk'),
(288, 'Flo Brando', 'fbrando7w@lulu.com', 'AkqeoPEtM'),
(289, 'Tedie Sonley', 'tsonley7x@t.co', 'IM1TZkH7f70t'),
(290, 'Griswold Caccavella', 'gcaccavella7y@shinystat.com', 'VZSkFpArSaJn'),
(291, 'Ruperta Faithfull', 'rfaithfull7z@prweb.com', 'dkiodoLGRo1y'),
(292, 'Marika Scandred', 'mscandred80@google.ca', '3p39cvbhmllV'),
(293, 'Bevon Cortin', 'bcortin81@dion.ne.jp', 'pDDufVkkb8I'),
(294, 'Gypsy Cordel', 'gcordel82@infoseek.co.jp', 'UxAUwowdxF'),
(295, 'Anica Trenaman', 'atrenaman83@ft.com', 'DOYrFYiE4e1'),
(296, 'Augy Joris', 'ajoris84@multiply.com', 'jXkvwdsQ1kN'),
(297, 'Halsey Dinnage', 'hdinnage85@stumbleupon.com', 'I7aWkDYmR'),
(298, 'Catarina Bushell', 'cbushell86@hibu.com', 'hMSFLslHf'),
(299, 'Trumaine Elson', 'telson87@nasa.gov', 'Xp0M33q'),
(300, 'Davidde Titta', 'dtitta88@cloudflare.com', 'KjTzKouQg'),
(301, 'Pincas Charter', 'pcharter89@liveinternet.ru', 'Ov5vaziZja5r'),
(302, 'Consuelo Chitham', 'cchitham8a@tamu.edu', 'jzhZs0RX'),
(303, 'Aron Pykett', 'apykett8b@free.fr', 'U7nPohG');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cat_product` (`cat_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_cat_product` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
