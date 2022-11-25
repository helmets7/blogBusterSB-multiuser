-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2022 at 09:19 AM
-- Server version: 8.0.18
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogbuster-multiuser`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `datetime` datetime DEFAULT NULL,
  `labels` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  `id_user` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `body`, `datetime`, `labels`, `visible`, `id_user`) VALUES
(1, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tempus lacus in tellus tempor, vel pellentesque nisl tincidunt. Ut iaculis eleifend commodo. Mauris tortor arcu, tincidunt a aliquam vel, pulvinar eget ligula. Phasellus posuere rhoncus dolor. Sed dapibus est id aliquam pretium. Sed purus quam, sagittis non aliquet quis, congue vel ante. Mauris vitae feugiat sapien. Nulla quis libero felis. Vivamus eu auctor neque, sit amet aliquet purus. Proin gravida egestas lacus eu dignissim.\r\n\r\n', '2021-10-14 09:14:00', 'purus tortor pretium ok', 1, 9),
(2, 'Quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.', 'Tonche mio si els olos polster', '2021-10-14 09:14:00', 'fghfgh', 1, 1),
(3, 'Fusce lacus leo, suscipit vitae turpis vitae', 'Aliquam faucibus eros augue. Nullam ullamcorper volutpat nisl id pulvinar. Etiam vitae nisi vulputate, aliquam dolor vitae, tempor tellus. Sed bibendum justo nec ligula fermentum, id gravida neque sodales. Maecenas id libero et quam vehicula viverra. Donec viverra condimentum tellus vel mattis. Nunc mi enim, viverra vel nunc ut, pharetra condimentum felis. In et ligula facilisis, consectetur odio ac, porttitor sapien.', '2021-10-03 09:45:39', 'nullam ullamcorper volutpat', 1, 2),
(4, 'Lacus leo, suscipit vitae turpis vitae', 'Aliquam faucibus eros augue. Nullam ullamcorper volutpat nisl id pulvinar. Etiam vitae nisi vulputate, aliquam dolor vitae, tempor tellus. Sed bibendum justo nec ligula fermentum, id gravida neque sodales. Maecenas id libero et quam vehicula viverra. Donec viverra condimentum tellus vel mattis. Nunc mi enim, viverra vel nunc ut, pharetra condimentum felis. In et ligula facilisis, consectetur odio ac, porttitor sapien.', '2021-10-20 02:59:00', 'nullam ullamcorper volutpat0011', 0, 1),
(12, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.', 'Lorem Ipsum is simply dummy textooo', '2021-01-30 10:59:00', 'lorem ipsum', 1, 2),
(13, 'Jolsy imo opi', 'Lorem Ipsum is simply dummy text', '2021-01-01 12:23:00', 'lorem ipsum', 1, 3),
(16, 'Milso oli', 'Lorem Ipsum is simply dummy text', '2021-01-01 12:23:00', 'lorem ipsum', 1, 4),
(19, 'Muo lio polisedo', 'Lorem Ipsum is simply dummy text', '2021-01-01 12:23:00', 'lorem ipsum', 1, 4),
(32, 'Donsio polsei mios trante', 'Lorem ipsum sig amet o mio', '2021-11-12 12:00:00', 'meto pol', 1, 5),
(37, 'Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Nam tincidunt viverra nulla. Nunc quis laoreet semQuisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Pellentesque non tortor varius, rhoncus enim a, tempor nulla. Ut ornare diam nisi, vel viverra ligula rutrum non. Integer commodo magna quis odio posuere, dignissim tincidunt sem mollis.Vivamus id vestibulum nulla.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Praesent vel libero eros.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.', '2019-04-03 11:19:03', 'id accumsan leo dapibus', 1, 9),
(38, 'Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.', 'Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Nam tincidunt viverra nulla. Nunc quis laoreet semLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Donec tristique justo et interdum dignissim.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Praesent vel libero eros.Praesent vel libero eros.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Vivamus id vestibulum nulla.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Nam tincidunt viverra nulla. Nunc quis laoreet sem', '2018-12-29 12:19:03', 'lectus lacus finibus Vestibulum Vestibulum lacus. fringilla,', 1, 3),
(39, 'Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.', 'Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Praesent vel libero eros.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Pellentesque non tortor varius, rhoncus enim a, tempor nulla. Ut ornare diam nisi, vel viverra ligula rutrum non. Integer commodo magna quis odio posuere, dignissim tincidunt sem mollis.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Vivamus id vestibulum nulla.Vivamus id vestibulum nulla.Praesent vel libero eros.', '2016-10-21 11:19:03', 'id odio vestibulum rutrum quam, id eros.Cras', 1, 2),
(40, 'Praesent vel libero eros.', 'Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Pellentesque non tortor varius, rhoncus enim a, tempor nulla. Ut ornare diam nisi, vel viverra ligula rutrum non. Integer commodo magna quis odio posuere, dignissim tincidunt sem mollis.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Praesent vel libero eros.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Nam tincidunt viverra nulla. Nunc quis laoreet semAliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Pellentesque non tortor varius, rhoncus enim a, tempor nulla. Ut ornare diam nisi, vel viverra ligula rutrum non. Integer commodo magna quis odio posuere, dignissim tincidunt sem mollis.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Praesent vel libero eros.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.', '2011-11-23 12:19:03', 'nec ut nunc aliquet, porttitor. maximus tortor', 1, 9),
(41, 'Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Donec tristique justo et interdum dignissim.Vivamus id vestibulum nulla.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Donec tristique justo et interdum dignissim.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Donec tristique justo et interdum dignissim.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Nam tincidunt viverra nulla. Nunc quis laoreet semProin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Nam tincidunt viverra nulla. Nunc quis laoreet semProin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Praesent vel libero eros.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Nam tincidunt viverra nulla. Nunc quis laoreet semCras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Donec tristique justo et interdum dignissim.Praesent vel libero eros.Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.', '2010-08-13 11:19:03', 'sem eget libero Vestibulum lorem viverra vehicula,', 1, 3),
(42, 'Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.', 'Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Vivamus id vestibulum nulla.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Nam tincidunt viverra nulla. Nunc quis laoreet semDonec tristique justo et interdum dignissim.Praesent vel libero eros.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Donec tristique justo et interdum dignissim.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Vivamus id vestibulum nulla.Donec tristique justo et interdum dignissim.Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Donec tristique justo et interdum dignissim.Donec tristique justo et interdum dignissim.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Pellentesque non tortor varius, rhoncus enim a, tempor nulla. Ut ornare diam nisi, vel viverra ligula rutrum non. Integer commodo magna quis odio posuere, dignissim tincidunt sem mollis.Praesent vel libero eros.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.', '2010-12-05 12:19:03', 'ipsum mauris', 1, 3),
(43, 'Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.', 'Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Praesent vel libero eros.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Donec tristique justo et interdum dignissim.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Vivamus id vestibulum nulla.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Donec tristique justo et interdum dignissim.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Donec tristique justo et interdum dignissim.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.', '2012-02-08 12:19:03', 'interdum dictum euismod eget fringilla,', 1, 8),
(44, 'Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.', 'Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Praesent vel libero eros.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Nam tincidunt viverra nulla. Nunc quis laoreet semProin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Nam tincidunt viverra nulla. Nunc quis laoreet semProin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Donec tristique justo et interdum dignissim.Praesent vel libero eros.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Nam tincidunt viverra nulla. Nunc quis laoreet semVivamus id vestibulum nulla.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.', '2012-08-25 11:19:03', 'eu eu Nunc quis erat id vehicula, libero', 1, 2),
(45, 'Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.', 'Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Vivamus id vestibulum nulla.Nam tincidunt viverra nulla. Nunc quis laoreet semPellentesque non tortor varius, rhoncus enim a, tempor nulla. Ut ornare diam nisi, vel viverra ligula rutrum non. Integer commodo magna quis odio posuere, dignissim tincidunt sem mollis.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Vivamus id vestibulum nulla.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Nam tincidunt viverra nulla. Nunc quis laoreet semVivamus id vestibulum nulla.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Pellentesque non tortor varius, rhoncus enim a, tempor nulla. Ut ornare diam nisi, vel viverra ligula rutrum non. Integer commodo magna quis odio posuere, dignissim tincidunt sem mollis.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Donec tristique justo et interdum dignissim.Donec tristique justo et interdum dignissim.Vivamus id vestibulum nulla.', '2014-10-02 11:19:03', 'enim ligula lacus. viverra ipsum Vestibulum adipiscing dignissim', 1, 4),
(46, 'Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.', 'Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Praesent vel libero eros.Proin fringilla, erat eleifend placerat ullamcorper, diam mauris maximus enim, eu scelerisque nunc libero quis mauris.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Praesent vel libero eros.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Cras dictum lacinia ligula id porttitor. Praesent rutrum turpis quam, nec posuere leo pellentesque sit amet. Duis eget euismod nisi.Pellentesque non tortor varius, rhoncus enim a, tempor nulla. Ut ornare diam nisi, vel viverra ligula rutrum non. Integer commodo magna quis odio posuere, dignissim tincidunt sem mollis.Quisque aliquet, sem vitae finibus ultricies, arcu elit tempus purus.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Aliquam id lectus lacus. Morbi aliquet, nibh eget ultricies vehicula, magna magna malesuada ligula, eget finibus quam lorem ut dui.Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Praesent vel libero eros.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Nullam scelerisque sit amet nisi quis dignissim. Vestibulum eu convallis nisl.Cras quam libero, ullamcorper nec lacus et, pharetra dictum orci.Mauris dapibus accumsan laoreet. Pellentesque accumsan orci eget ex ultricies faucibus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget leo massa.Donec tristique justo et interdum dignissim.Nam tincidunt viverra nulla. Nunc quis laoreet sem', '2014-04-16 11:19:03', 'dapibus orci.Quisque scelerisque ultricies, ullamcorper ultricies quam eget erat', 1, 3),
(47, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tempus lacus in tellus tempor, vel pellentesque nisl tincidunt. Ut iaculis eleifend commodo. Mauris tortor arcu, tincidunt a aliquam vel, pulvinar eget ligula. Phasellus posuere rhoncus dolor. Sed dapibus est id aliquam pretium. Sed purus quam, sagittis non aliquet quis, congue vel ante. Mauris vitae feugiat sapien. Nulla quis libero felis. Vivamus eu auctor neque, sit amet aliquet purus. Proin gravida egestas lacus eu dignissim.\r\n\r\n', '2022-11-24 11:40:26', 'purus tortor pretium ok ko', 1, 5),
(48, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tempus lacus in tellus tempor, vel pellentesque nisl tincidunt. Ut iaculis eleifend commodo. Mauris tortor arcu, tincidunt a aliquam vel, pulvinar eget ligula. Phasellus posuere rhoncus dolor. Sed dapibus est id aliquam pretium. Sed purus quam, sagittis non aliquet quis, congue vel ante. Mauris vitae feugiat sapien. Nulla quis libero felis. Vivamus eu auctor neque, sit amet aliquet purus. Proin gravida egestas lacus eu dignissim.\r\n\r\n', '2022-11-24 11:40:35', 'purus tortor pretium ok ko', 1, 5),
(49, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tempus lacus in tellus tempor, vel pellentesque nisl tincidunt. Ut iaculis eleifend commodo. Mauris tortor arcu, tincidunt a aliquam vel, pulvinar eget ligula. Phasellus posuere rhoncus dolor. Sed dapibus est id aliquam pretium. Sed purus quam, sagittis non aliquet quis, congue vel ante. Mauris vitae feugiat sapien. Nulla quis libero felis. Vivamus eu auctor neque, sit amet aliquet purus. Proin gravida egestas lacus eu dignissim.\r\n\r\n', '2022-11-24 11:40:40', 'purus tortor pretium ok ko', 1, 5),
(50, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tempus lacus in tellus tempor, vel pellentesque nisl tincidunt. Ut iaculis eleifend commodo. Mauris tortor arcu, tincidunt a aliquam vel, pulvinar eget ligula. Phasellus posuere rhoncus dolor. Sed dapibus est id aliquam pretium. Sed purus quam, sagittis non aliquet quis, congue vel ante. Mauris vitae feugiat sapien. Nulla quis libero felis. Vivamus eu auctor neque, sit amet aliquet purus. Proin gravida egestas lacus eu dignissim.\r\n\r\n', '2022-11-24 11:40:46', 'purus tortor pretium ok ko', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `last_name`, `email`, `username`, `password`) VALUES
(1, 'raimon', 'vilar', 'morera', 'test@email.com', 'raivi', '73ec8dee81ea4c9e7515d63c9e5bbb707c7bc4789363c5afa401d3aa780630f6'),
(2, 'alvaro', 'talaya', 'romance', 'test@email.com', 'alta', '73ec8dee81ea4c9e7515d63c9e5bbb707c7bc4789363c5afa401d3aa780630f6'),
(3, 'mario', 'tomas', 'zanon', 'test@email.com', 'mato', '73ec8dee81ea4c9e7515d63c9e5bbb707c7bc4789363c5afa401d3aa780630f6'),
(4, 'aitana', 'collado', 'soler', 'test@email.com', 'aico', '73ec8dee81ea4c9e7515d63c9e5bbb707c7bc4789363c5afa401d3aa780630f6'),
(5, 'carlos', 'merlos', 'pilar', 'test@email.com', 'came', '73ec8dee81ea4c9e7515d63c9e5bbb707c7bc4789363c5afa401d3aa780630f6'),
(6, 'luis', 'perez', 'derecho', 'test@email.com', 'lupe', '73ec8dee81ea4c9e7515d63c9e5bbb707c7bc4789363c5afa401d3aa780630f6'),
(7, 'estefania', 'boriko', 'izquierdo', 'test@email.com', 'esbo', '73ec8dee81ea4c9e7515d63c9e5bbb707c7bc4789363c5afa401d3aa780630f6'),
(8, 'quique', 'aroca', 'garcia', 'test@email.com', 'quiga', '73ec8dee81ea4c9e7515d63c9e5bbb707c7bc4789363c5afa401d3aa780630f6'),
(9, 'adrian', 'duyang', 'liang', 'test@email.com', 'adu', '73ec8dee81ea4c9e7515d63c9e5bbb707c7bc4789363c5afa401d3aa780630f6'),
(10, 'rafael', 'aznar', 'aparici', 'test@email.com', 'raza', '73ec8dee81ea4c9e7515d63c9e5bbb707c7bc4789363c5afa401d3aa780630f6'),
(11, 'Alvaro', 'Lazaro', 'Sanchez', 'alvarolazaro@blogbuster.net', 'alvarolazaro', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(12, 'Jose David', 'Talaya', 'Patricio', 'josedavidtalaya@blogbuster.net', 'josedavidtalaya', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(13, 'Nerea', 'Benito', 'Luz', 'nereabenito@blogbuster.net', 'nereabenito', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(14, 'Ruben', 'Lazaro', 'Benavent', 'rubenlazaro@blogbuster.net', 'rubenlazaro', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(15, 'Mario', 'Carrascosa', 'Benavent', 'mariocarrascosa@blogbuster.net', 'mariocarrascosa', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(16, 'Mario', 'Soler', 'Zanon', 'mariosoler@blogbuster.net', 'mariosoler', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(17, 'Estefania', 'Lazaro', 'Sanchez', 'estefanialazaro@blogbuster.net', 'estefanialazaro', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(18, 'Mario', 'Guerrero', 'Benavent', 'marioguerrero@blogbuster.net', 'marioguerrero', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(19, 'Lucas Ezequiel', 'Benito', 'Benavent', 'lucasezequielbenito@blogbuster.net', 'lucasezequielbenito', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(20, 'Kevin', 'Suay', 'Luz', 'kevinsuay@blogbuster.net', 'kevinsuay', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(21, 'Raimon', 'Carrascosa', 'Morera', 'rairascosaera@blogbuster.net', 'rairascosaera', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(22, 'Luis', 'Soler', 'Benavent', 'luieravent@blogbuster.net', 'luieravent', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(23, 'Carlos', 'Luque', 'Blayimir', 'carueyimir@blogbuster.net', 'carueyimir', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(24, 'Elliot', 'Perez', 'Fernández', 'elleznández@blogbuster.net', 'elleznández', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(25, 'Raimon', 'Carrascosa', 'Mourad', 'rairascosarad@blogbuster.net', 'rairascosarad', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(26, 'Nerea', 'Soler', 'Hurtado', 'nerertado@blogbuster.net', 'nerertado', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(27, 'Alexis', 'Vilar', 'Bañuls', 'alearuls@blogbuster.net', 'alearuls', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(28, 'Luis Fernando', 'Perez', 'Morera', 'luiezera@blogbuster.net', 'luiezera', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(29, 'Nerea', 'Perez', 'Morera', 'nerezera@blogbuster.net', 'nerezera', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(30, 'Estefania', 'Suay', 'Benavent', 'estyavent@blogbuster.net', 'estyavent', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(31, 'Elliot', 'Gyori', 'Bañuls', 'llorñu@blogbuster.net', 'llorñu', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(32, 'Jose Maria', 'Perez', 'Morera', 'osrere@blogbuster.net', 'osrere', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(33, 'Luis Fernando', 'Tomas', 'Mourad', 'uimaur@blogbuster.net', 'uimaur', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(34, 'Cristina', 'Rezgaoui', 'Mourad', 'rizgur@blogbuster.net', 'rizgur', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(35, 'Alexis', 'Perez', 'Benavent', 'lerena@blogbuster.net', 'lerena', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(36, 'Jose David', 'Lazaro', 'Blayimir', 'oszaay@blogbuster.net', 'oszaay', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(37, 'Alvaro', 'Suay', 'Sanchez', 'lvaync@blogbuster.net', 'lvaync', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(38, 'Alexis', 'Rezgaoui', 'Fernández', 'lezgrn@blogbuster.net', 'lezgrn', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(39, 'Mario', 'Perez', 'Benavent', 'arrena@blogbuster.net', 'arrena', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(41, 'ralph', 'villar', 'mora', 'test@email.com', 'oraivei', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(42, 'ooralphooo', 'villar', 'mora', 'test@email.com', 'raiv0ei', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(43, 'ooralphooo', 'villar', 'mora', 'test@email.com', 'raiv0ei', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d'),
(44, 'ralph', 'villar', 'mora', 'test@email.com', 'oreaivei', '2f5e3ae0871af36ba22b907ee772f10ddc632ad8e829f43c9421826e8fb2746d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
