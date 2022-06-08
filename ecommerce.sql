-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 07-Jun-2022 às 23:55
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
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`id`, `amount`, `transaction`, `status`, `currency`) VALUES
(1, 7.98, '7J483592N9885135P', 'Completed', 'BRL'),
(2, 7.98, '7J483592N9885135P', 'Completed', 'BRL'),
(3, 2, '3GU54064KG400531M', 'Completed', 'BRL'),
(4, 2, '3GU54064KG400531M', 'Completed', 'BRL'),
(5, 2, '3GU54064KG400531M', 'Completed', 'BRL'),
(6, 2, '3GU54064KG400531M', 'Completed', 'BRL'),
(7, 2, '3GU54064KG400531M', 'Completed', 'BRL'),
(8, 15, '0YX203763G270393K', 'Completed', 'BRL'),
(9, 15, '0YX203763G270393K', 'Completed', 'BRL'),
(10, 15, '0YX203763G270393K', 'Completed', 'BRL'),
(11, 15, '0YX203763G270393K', 'Completed', 'BRL'),
(12, 15, '0YX203763G270393K', 'Completed', 'BRL'),
(13, 15, '0YX203763G270393K', 'Completed', 'BRL'),
(14, 5, '3AG51772V4821314E', 'Completed', 'BRL'),
(15, 5, '3AG51772V4821314E', 'Completed', 'BRL'),
(16, 5, '3AG51772V4821314E', 'Completed', 'BRL'),
(17, 31.9, '9DX216414G453822K', 'Completed', 'BRL'),
(18, 31.9, '9DX216414G453822K', 'Completed', 'BRL'),
(19, 31.9, '9DX216414G453822K', 'Completed', 'BRL'),
(20, 31.9, '9DX216414G453822K', 'Completed', 'BRL'),
(21, 31.9, '9DX216414G453822K', 'Completed', 'BRL'),
(22, 31.9, '9DX216414G453822K', 'Completed', 'BRL'),
(23, 1.99, '6HH068130U278811C', 'Completed', 'BRL'),
(24, 1.99, '6HH068130U278811C', 'Completed', 'BRL'),
(25, 1.99, '6HH068130U278811C', 'Completed', 'BRL'),
(26, 1.99, '6HH068130U278811C', 'Completed', 'BRL'),
(27, 1.99, '6HH068130U278811C', 'Completed', 'BRL'),
(28, 1.99, '6HH068130U278811C', 'Completed', 'BRL'),
(29, 1.99, '6HH068130U278811C', 'Completed', 'BRL'),
(30, 1.99, '6HH068130U278811C', 'Completed', 'BRL'),
(31, 1.99, '6HH068130U278811C', 'Completed', 'BRL'),
(32, 5, '7FA74384AG5244117', 'Completed', 'BRL'),
(33, 5, '7FA74384AG5244117', 'Completed', 'BRL'),
(34, 5, '7FA74384AG5244117', 'Completed', 'BRL');

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
  `description` text,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `title`, `cat_id`, `price`, `quantity`, `description_short`, `description`, `image`) VALUES
(20, 'Nantucket Pine Orangebanana', 17, 5, 27, 'Other effects of vibration', 'Other effects of vibration', '../uploads/products/202206070302151.jpeg'),
(30, 'Cod - Salted, Boneless', 10, 18, 46, 'Subac comb degeneration of spinal cord in dis classd elswhr', 'Subacute combined degeneration of spinal cord in diseases classified elsewhere', '../uploads/products/202206070302232.jpeg'),
(31, 'Turnip - Wax', 15, 2, 35, 'Poisoning by oth estrogens and progstrn, self-harm, sequela', 'Poisoning by other estrogens and progestogens, intentional self-harm, sequela', '../uploads/products/202206070302313.jpeg'),
(34, 'Sprouts - Alfalfa', 20, 1.99, 6, 'Chronic follicular conjunctivitis, unspecified eye', 'Chronic follicular conjunctivitis, unspecified eye', '../uploads/products/202206070518465.jpeg'),
(35, 'Sugar - Individual Portions', 17, 19.9, 41, 'Other articular cartilage disorders, left ankle', 'Other articular cartilage disorders, left ankle', '../uploads/products/202206070518556.jpeg'),
(37, 'Beef - Kindney, Whole', 10, 6, 34, 'Intertrochanteric fracture of femur', 'Intertrochanteric fracture of femur', '../uploads/products/202206070519027.jpeg'),
(40, 'Pork - Butt, Boneless', 15, 3, 34, 'Other peripheral vertigo, right ear', 'Other peripheral vertigo, right ear', '../uploads/products/202206070519328.png'),
(42, 'Bread - Multigrain Oval', 17, 2.89, 45, 'Machine gun discharge, undetermined intent, init encntr', 'Machine gun discharge, undetermined intent, initial encounter', '../uploads/products/202206070518394.jpeg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `reports`
--

INSERT INTO `reports` (`id`, `product_id`, `order_id`, `product_price`, `product_quantity`) VALUES
(1, 20, NULL, 5, 2),
(2, 31, NULL, 2, 1),
(3, 35, NULL, 19.9, 1),
(4, 20, NULL, 5, 2),
(5, 31, NULL, 2, 1),
(6, 35, NULL, 19.9, 1),
(7, 20, NULL, 5, 2),
(8, 31, NULL, 2, 1),
(9, 35, NULL, 19.9, 1),
(10, 34, NULL, 1.99, 1),
(11, 20, 32, 5, 1),
(12, 20, 33, 5, 1),
(13, 20, 34, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `password`) VALUES
(317, 'Sonia Josskoviz', NULL, 'sjosskoviz4@jigsy.com', 'N6k5zNgqFyW'),
(318, 'Hallsy Batkin', NULL, 'hbatkin5@usda.gov', 'hmalEJgueK'),
(319, 'Lise Shirlaw', NULL, 'lshirlaw6@google.es', 'r5O10Af'),
(320, 'Roley Pacey', NULL, 'rpacey7@rambler.ru', 'yH38YSznCS'),
(321, 'Jarad Crooks', NULL, 'jcrooks8@si.edu', 'If9NCsBDSyhH'),
(322, 'Tobye Spriggs', NULL, 'tspriggs9@opensource.org', 'yxOVuQiNyS7b'),
(323, 'Esther Hadlow', NULL, 'ehadlowa@newsvine.com', '8rWyLnIa'),
(324, 'Gregoor Coare', NULL, 'gcoareb@icq.com', 'ODiHss1S'),
(325, 'El Arlow', NULL, 'earlowc@fotki.com', '7ToSTnEC'),
(326, 'Jessa Bignell', NULL, 'jbignelld@mtv.com', 'qGRaSdiO5L'),
(327, 'Ward Cottel', NULL, 'wcottele@columbia.edu', 'SZ4rESlUX'),
(328, 'Vonnie Boydle', NULL, 'vboydlef@google.ca', 'e071pfCUZM2J'),
(329, 'Stafani Haggarth', NULL, 'shaggarthg@fotki.com', 'HSK3O8'),
(330, 'Latrena Wyborn', NULL, 'lwybornh@vistaprint.com', 'aBoUiTaMFLT'),
(331, 'Stacee Cawte', NULL, 'scawtei@wp.com', 'vxIReWCT'),
(332, 'Scarface Sibbe', NULL, 'ssibbej@businessinsider.com', 'Vu7vVOM'),
(333, 'Vallie Bilham', NULL, 'vbilhamk@mit.edu', 'ybBV7a'),
(334, 'Bartel Hancorn', NULL, 'bhancornl@soup.io', 'TBgzLFtWU5'),
(335, 'Yorke Langmead', NULL, 'ylangmeadm@state.gov', '7zDxvJNo0x'),
(336, 'Cletis Atley', NULL, 'catleyn@ezinearticles.com', 'poQdiLddC'),
(337, 'Chan Bryceson', NULL, 'cbrycesono@ustream.tv', '5POnHavi'),
(338, 'Elita Tomowicz', NULL, 'etomowiczp@last.fm', 'k5U6fV'),
(339, 'Madelle Llorens', NULL, 'mllorensq@phpbb.com', 'vntPAU'),
(340, 'Giffy St Quenin', NULL, 'gstr@so-net.ne.jp', 'KB6Lfq8VR1T'),
(341, 'Candra Franciottoi', NULL, 'cfranciottois@imageshack.us', 'SR8GeGec'),
(342, 'Georgetta Maysor', NULL, 'gmaysort@earthlink.net', 'IacXfoBtjp3'),
(343, 'Latashia Rawlinson', NULL, 'lrawlinsonu@huffingtonpost.com', 'to0OHZAjxqi8'),
(344, 'Paolina Glander', NULL, 'pglanderv@nih.gov', 'hOgay1jI3QZN'),
(345, 'Krystle Okenden', NULL, 'kokendenw@cornell.edu', 'YlCqD5tgAzn'),
(346, 'Tremaine Rawstorn', NULL, 'trawstornx@redcross.org', 'lUKJCRlnu0IL'),
(347, 'Lucretia Duffan', NULL, 'lduffany@comcast.net', 'ZeMCixu'),
(348, 'Nessie Fahy', NULL, 'nfahyz@forbes.com', 'xJB3UsIl653q'),
(349, 'Thomasa Scourfield', NULL, 'tscourfield10@ibm.com', 'zwzlrGwOg0'),
(350, 'Violet Copnar', NULL, 'vcopnar11@un.org', 'DfOHwQzduuS'),
(351, 'Gizela Kittley', NULL, 'gkittley12@google.pl', 'tNPZbCdReRq'),
(352, 'Shawna Schiementz', NULL, 'sschiementz13@aboutads.info', 'UzHVrp4ylCE6'),
(353, 'Mariel Heliet', NULL, 'mheliet14@technorati.com', 'uQd0MyYOY'),
(354, 'Conny Skain', NULL, 'cskain15@noaa.gov', 'BwZPiO0h'),
(355, 'Fredric Barwise', NULL, 'fbarwise16@paginegialle.it', 'eKVWUXTx'),
(356, 'Rubi Bosworth', NULL, 'rbosworth17@irs.gov', 'OxSOmqaJ3Fv'),
(357, 'Dasi Sprowles', NULL, 'dsprowles18@so-net.ne.jp', '4qu8S2Ms6'),
(358, 'Nico McGeechan', NULL, 'nmcgeechan19@discuz.net', 'h3zgGO'),
(359, 'Sarita Deetch', NULL, 'sdeetch1a@ask.com', 'WU7rhR7dC1PQ'),
(360, 'Vittorio McCreath', NULL, 'vmccreath1b@cdc.gov', '867OY7UMJL'),
(361, 'Cacilie Fowlie', NULL, 'cfowlie1c@google.fr', 'I00JG7SzlQ'),
(362, 'Monro Studdeard', NULL, 'mstuddeard1d@de.vu', 'vEKTAZgttq5'),
(363, 'Jasmin Gautrey', NULL, 'jgautrey1e@mit.edu', 'bUyeaERH2Y4J'),
(364, 'Demetria Balsillie', NULL, 'dbalsillie1f@topsy.com', 'NLnewT1'),
(365, 'Olga Benbow', NULL, 'obenbow1g@economist.com', 'TCVhpoQ4'),
(366, 'Riccardo Condict', NULL, 'rcondict1h@printfriendly.com', 'xYdlcM7RtZr'),
(367, 'Loni Towsey', NULL, 'ltowsey1i@sciencedirect.com', 'Ryi7Wf'),
(368, 'Danie Haslen', NULL, 'dhaslen1j@a8.net', 'zoaFlD3bzh'),
(369, 'Mildred Storror', NULL, 'mstorror1k@dagondesign.com', '9LSGJxiDfe'),
(370, 'Tamarah Bradock', NULL, 'tbradock1l@redcross.org', 'peFTcCEOHyf'),
(371, 'Yancey Petrillo', NULL, 'ypetrillo1m@buzzfeed.com', 'VXBXuSPe2'),
(372, 'Calvin Setterington', NULL, 'csetterington1n@blogtalkradio.com', 'kFX8PJIdy'),
(373, 'Mabel Sewards', NULL, 'msewards1o@tuttocitta.it', 'wuixtS028i7'),
(374, 'Timmie Edwinson', NULL, 'tedwinson1p@csmonitor.com', 'ZYsfNEvkwg'),
(375, 'Lucas Gauch', NULL, 'lgauch1q@businessinsider.com', 'X8Ts21'),
(376, 'Vonni McWaters', NULL, 'vmcwaters1r@naver.com', 'YvqOlIbtKsiw'),
(377, 'Clare Fee', NULL, 'cfee1s@acquirethisname.com', 'dmer4xwkv'),
(378, 'Ephrem Bewfield', NULL, 'ebewfield1t@fotki.com', 'V2ByuL'),
(379, 'Tallia Palffy', NULL, 'tpalffy1u@omniture.com', '8oZmbPT'),
(380, 'Elisabet Theseira', NULL, 'etheseira1v@shinystat.com', 'pDzWWkC52FPM'),
(381, 'Lazare Arnal', NULL, 'larnal1w@wordpress.com', '71tsDl4NT8'),
(382, 'Amata Rapkins', NULL, 'arapkins1x@amazonaws.com', 'z9dklSMGQ'),
(383, 'Ricki Mouatt', NULL, 'rmouatt1y@discovery.com', '6qdmZEMmGD'),
(384, 'Noah Meecher', NULL, 'nmeecher1z@xing.com', 'xmEfcLH'),
(385, 'Rosalind Frisby', NULL, 'rfrisby20@yolasite.com', 'ggh9LU8V'),
(386, 'Zola Lohrensen', NULL, 'zlohrensen21@answers.com', '54Z32242FWE'),
(387, 'Linda Van de Vlies', NULL, 'lvan22@multiply.com', 'VVeFyJ7'),
(388, 'Kelsey Carnow', NULL, 'kcarnow23@sbwire.com', '6BLdsXFfe'),
(389, 'Garrott Cuss', NULL, 'gcuss24@discuz.net', 'Rrz8FekpjJ'),
(390, 'Thorsten Blethin', NULL, 'tblethin25@dion.ne.jp', 'ciWNy1T'),
(391, 'Verla Bambery', NULL, 'vbambery26@addtoany.com', '240R12'),
(392, 'Christian Beartup', NULL, 'cbeartup27@dailymail.co.uk', '1IR4mhiJ'),
(393, 'Pen Bonifas', NULL, 'pbonifas28@freewebs.com', 'dD2EQanZ'),
(394, 'Onida Valentinetti', NULL, 'ovalentinetti29@sitemeter.com', 'brg7Z0xz'),
(395, 'Alvan Jutson', NULL, 'ajutson2a@who.int', 'Yl7joANY'),
(396, 'Rogerio McShee', NULL, 'rmcshee2b@forbes.com', 'ynfgLDqK'),
(397, 'Orelle Liversley', NULL, 'oliversley2c@youtu.be', 'wEnhZ6tJDiGc'),
(398, 'Josh Menichino', NULL, 'jmenichino2d@pbs.org', 'w8oXgnFXt0'),
(399, 'Granger Crock', NULL, 'gcrock2e@thetimes.co.uk', 'OUGSfk'),
(400, 'Winifield Everix', NULL, 'weverix2f@independent.co.uk', 'UEjhcPf9Lfew'),
(401, 'Merralee Mabbott', NULL, 'mmabbott2g@sbwire.com', 'C74ET7p3EOy'),
(402, 'Claybourne Tortoishell', NULL, 'ctortoishell2h@symantec.com', 'H9wOeGA0GfG1'),
(403, 'Rochelle Munden', NULL, 'rmunden2i@last.fm', 'JOvxm4t'),
(404, 'Elisabetta Pelchat', NULL, 'epelchat2j@fotki.com', '52YRnNHo'),
(405, 'Nissy Doumerque', NULL, 'ndoumerque2k@163.com', 'zWwBBHojNTd'),
(406, 'Eadith Mutton', NULL, 'emutton2l@usda.gov', '7QgqFNC66L'),
(407, 'Jules Ianelli', NULL, 'jianelli2m@stanford.edu', 'bAKuZAcv'),
(408, 'Raine Raff', NULL, 'rraff2n@cisco.com', 'ZIwE9c7W'),
(409, 'Fern Wasielewski', NULL, 'fwasielewski2o@wikimedia.org', 'RbZOvtq5'),
(410, 'Gregoor Frenchum', NULL, 'gfrenchum2p@about.com', 'nE749sUtNW2'),
(411, 'Cathryn Durdle', NULL, 'cdurdle2q@vimeo.com', 'cl7mKnUFbJ'),
(412, 'Torie Rawkesby', NULL, 'trawkesby2r@geocities.com', '0JeTNdl'),
(415, 'tiago', NULL, 'tiago@email.com', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cat_product` (`cat_id`);

--
-- Índices para tabela `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_report` (`product_id`),
  ADD KEY `fk_order_report` (`order_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_cat_product` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `fk_order_report` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_report` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
