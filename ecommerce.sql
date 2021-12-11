-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 11-Ago-2021 às 22:52
-- Versão do servidor: 5.7.35-0ubuntu0.18.04.1
-- versão do PHP: 7.4.22

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
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'esportes'),
(2, 'moda'),
(3, 'trabalho'),
(4, 'estudos'),
(5, 'casa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `description_short` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `title`, `cat_id`, `price`, `description_short`, `description`, `image`) VALUES
(4, 'product 1', 1, 25.99, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque feugiat massa mi, eget egestas turpis porttitor ut. Cras porttitor metus sed lectus scelerisque, sit amet blandit turpis ultrices. Morbi luctus tincidunt felis, quis tristique ipsum fringilla at. Donec vitae accumsan justo, ac tempor ipsum. Ut sit amet augue felis. Nam nec mi eget enim commodo faucibus in id nunc. Maecenas ultricies neque sapien, nec ultricies nibh tempor sed. Fusce faucibus libero lacinia dolor tempus ornare. Praesent eu efficitur ante. Nunc congue felis ac dui vulputate ornare. Ut eu iaculis magna. Suspendisse imperdiet nisi et libero dignissim sagittis. Aenean urna sem, sagittis vel vestibulum in, eleifend eu ante. Phasellus efficitur in justo eu tristique. Phasellus dui tellus, porttitor dignissim mi in, ornare tristique eros.', 'https://via.placeholder.com/320x150'),
(5, 'product 2', 3, 89.5, 'Proin viverra, arcu ac scelerisque vestibulum, neq', 'Proin viverra, arcu ac scelerisque vestibulum, neque lacus imperdiet nisi, non gravida est lorem nec metus. Sed dictum turpis tortor, vitae posuere leo gravida non. Nam volutpat quis sapien vel ullamcorper. Aenean sagittis, urna non molestie consequat, magna orci dictum nunc, non eleifend mi magna eget dolor. Aenean efficitur sapien eget lectus laoreet feugiat. Etiam sit amet eros mattis, accumsan ex at, rhoncus magna. Quisque lectus erat, blandit et ultrices ac, posuere non dolor. Mauris vehicula interdum est ac iaculis. Donec urna nulla, ultrices a consectetur sit amet, interdum nec massa. Sed arcu est, imperdiet vitae dolor sit amet, congue blandit nisi.', 'https://via.placeholder.com/320x150'),
(6, 'product 3', 3, 78.99, 'Ut felis turpis, porta vitae posuere in, sollicitu', 'Ut felis turpis, porta vitae posuere in, sollicitudin non lectus. Morbi non porta quam. Nullam finibus posuere nunc vitae condimentum. Nullam molestie fringilla nibh. Mauris pretium consectetur dui a porttitor. Etiam blandit, sem id lacinia hendrerit, lorem tortor bibendum nisl, sit amet gravida quam enim sed sapien. Pellentesque quis imperdiet mauris. Cras ut facilisis nibh. Vivamus est dolor, posuere at pulvinar eu, hendrerit sed quam. Pellentesque euismod quis sem a condimentum. Curabitur volutpat felis eu lorem pretium tincidunt. Pellentesque elementum est sit amet fringilla pellentesque. Mauris ex ipsum, luctus vel posuere a, placerat ac lorem. Nunc vel sem lectus.', 'https://via.placeholder.com/320x150'),
(7, 'product 4', 2, 45, 'Curabitur sit amet nisl ac purus sollicitudin mole', 'Curabitur sit amet nisl ac purus sollicitudin molestie nec ut metus. Mauris imperdiet urna enim, sed cursus arcu mattis bibendum. Curabitur quam erat, bibendum vel rutrum vitae, ullamcorper luctus odio. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris facilisis quam non ipsum facilisis, vitae ultricies nulla vulputate. Integer eleifend sem ac congue vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et tincidunt felis. Nam volutpat malesuada felis, id semper quam pulvinar in. Duis at vulputate enim.', 'https://via.placeholder.com/320x150'),
(8, 'product 5', 5, 99.99, 'Mauris ut metus nulla. Fusce sit amet maximus libe', 'Mauris ut metus nulla. Fusce sit amet maximus libero, nec fermentum sem. Nulla tincidunt aliquam metus. Etiam consequat malesuada lorem. Maecenas commodo urna a turpis blandit, sit amet mattis nibh tincidunt. Proin eu ipsum a magna mollis imperdiet et non orci. Sed ultrices lacus eget metus pharetra mattis.', 'https://via.placeholder.com/320x150');

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
