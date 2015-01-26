-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2015 a las 15:00:18
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `agility`
--
CREATE DATABASE IF NOT EXISTS `agility` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `agility`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_perro`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `categorias_perro`;
CREATE TABLE IF NOT EXISTS `categorias_perro` (
  `Categoria` varchar(1) NOT NULL DEFAULT '-',
  `Observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias_perro`
--

INSERT INTO `categorias_perro` (`Categoria`, `Observaciones`) VALUES
('-', 'Sin especificar'),
('L', 'Large - Standard'),
('M', 'Medium - Midi'),
('S', 'Small - Mini'),
('T', 'Tiny - Enano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clubes`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `clubes`;
CREATE TABLE IF NOT EXISTS `clubes` (
`ID` int(4) NOT NULL,
  `Nombre` varchar(255) NOT NULL DEFAULT '',
  `Direccion1` varchar(255) DEFAULT NULL,
  `Direccion2` varchar(255) DEFAULT NULL,
  `Provincia` varchar(32) NOT NULL DEFAULT '-- Sin asignar --',
  `Contacto1` varchar(255) DEFAULT NULL,
  `Contacto2` varchar(255) DEFAULT NULL,
  `Contacto3` varchar(255) DEFAULT NULL,
  `GPS` varchar(255) DEFAULT NULL,
  `Web` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Facebook` varchar(255) DEFAULT NULL,
  `Google` varchar(255) DEFAULT NULL,
  `Twitter` varchar(255) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT 'rsce.png',
  `Observaciones` varchar(255) DEFAULT NULL,
  `Baja` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `clubes`:
--   `Provincia`
--       `provincias` -> `Provincia`
--

--
-- Volcado de datos para la tabla `clubes`
--

INSERT INTO `clubes` (`ID`, `Nombre`, `Direccion1`, `Direccion2`, `Provincia`, `Contacto1`, `Contacto2`, `Contacto3`, `GPS`, `Web`, `Email`, `Facebook`, `Google`, `Twitter`, `Logo`, `Observaciones`, `Baja`) VALUES
(1, '-- Sin asignar --', '', '', '-- Sin asignar --', '', '', '', '', '', '', '', '', '', 'rsce.png', 'NO BORRAR ESTA ENTRADA. SE USARA PARA AQUELLOS GUIAS QUE NO TENGAN CLUB ASIGNADO', 0),
(2, 'AA Y CIA', '28609 Sevilla La Nueva (Madrid)', '', 'Madrid', '+ 34 619 29 03 98', '', '', '', '', 'arribas.anabel@gmail.com', '', '', '', 'aaycia.png', '', 0),
(3, 'ACADE', 'Salvadas, 41, 2º C', '15705 Santiago de Compostela', 'Coruña, A', '+ 34 620 29 58 31', '+ 34 881 93 95 5', '', '', 'http://www.asociacionacade.com/', 'asociacioncansdeportistas@gmail.com', '', '', '', 'acade.png', '', 0),
(4, 'Agilcan', 'Paseo de los Olivos 10', '28330 San Martin de la Vega', 'Madrid', '634 417 893', '918 946 096', '659 146 878', NULL, 'http://www.agilcan.es/', 'info@agilcan.es', NULL, NULL, NULL, 'agilcan.png', NULL, 0),
(5, 'Alhambra', 'Urano, 24', '18200 Maracena (Granada)', 'Granada', ' + 34 958 42 12 85 ', '', '', '', '', 'agilityalhambra@hotmail.com', '', '', '', 'alhambra.png', '', 0),
(6, 'Askizu', 'Caserio Benta - Barrio Askizu', '20808 Getaria (Guipúzcoa)', 'Gipuzkoa/Guipúzcoa', '+ 34 656 76 60 65', '', '', '', 'http://www.agilityaskizu.com/', 'antonio@agilityaskizu.com', '', '', '', 'askizu.png', '', 0),
(7, 'Badalona', 'Camí del Xiprers, s/n', '08916 Badalona (Barcelona)', 'Barcelona', ' + 34 93 597 23 53 ', ' + 34 676 48 99 40 ', '', '', 'http://www.agilitybadalona.con/', 'info@agilitybadalona.com', '', '', '', 'badalona.png', '', 0),
(8, 'Baix Llobregat', 'Enric Borras, 10', '08820 El Prat de Llobregat (Barcelona)', 'Barcelona', '+34 695 79 42 74', '', '', '', 'http://www.agilitybaixllobregat.com/', 'agilitybaixllobregat@hotmail.com', '', '', '', 'baix_llobregat.png', '', 0),
(9, 'Campo de Gibraltar', 'Arbol de la Paz, 4', '11205 Algeciras (Cádiz)', 'Cádiz', ' + 34 647 80 32 64 ', '', '', '', '', 'villa-zahara@hotmail.com', '', '', '', 'campo_de_gibraltar.png', '', 0),
(10, 'Camu', 'Párraco Pedro Lozano, 26', '30007 Zarandona (Murcia)', 'Murcia', '+ 34 636 25 19 39', '', '', '', '', 'clubagilitymurcia@hotmail.com', '', '', '', 'camu.png', '', 0),
(11, 'Can Natura', 'Peñella Baja, 1', '33310 Cabranes (Asturias)', 'Asturias', '+ 34 696 86 08 63', '', '', '', 'http://www.cannatura.net/', 'cannatura@hotmail.com', '', '', '', 'cannatura.png', '', 0),
(12, 'Canedupo', 'Serra de Ancares, 18', '27004 Lugo', 'Lugo', '636 507 468.', '', '', '', '', 'lugo@canedupo.com', '', '', '', 'canedupo.png', '', 0),
(13, 'Canic', 'Sant Pere, 10', '08392 Llavaneres (Barcelona)', 'Barcelona', '+ 34 93 792 76 55', '', '', '', 'http://www.agilitycanic.cat/', 'info@agilitycanic.cat', '', '', '', 'canic.png', '', 0),
(14, 'Canino Algecireño', 'Los Naranjos, 8', '11380 Tarifa (Cádiz)', 'Cádiz', ' + 34 663 55 86 42 ', '', '', '', '', 'arquikm@gmail.com', '', '', '', 'canino_algecireno.png', '', 0),
(15, 'Castellón', 'Mar Cantábrico, 2, 1º C', '12100 Grao de Castellón (Castellón)', 'Castellón/Castelló', '+ 34 964 28 61 52', '+ 34 625 82 25 35', '', '', 'http://www.agilitycastellon.es/', 'agilitycastellon@gmx.es', '', '', '', 'castellon.png', '', 0),
(16, 'Cinco Huesos', 'Paseo de los Pozos, Km. 1,2', '28813 Torres de la Alameda', 'Madrid', '+ 34 91 832 83 00 ', '+ 34 691 77 75 24 ', '', '', 'http://www.cincohuesos.com/', 'cincohuesos@gmail.com', '', '', '', 'cinco_huesos.png', 'Antiguo club "Apata"', 0),
(17, 'Ciudad de Antequera', '', '', 'Málaga', '', '', '', '', '', '', '', '', '', 'ciudad_de_antequera.png', 'Baja 28-enero-2014', 1),
(18, 'Ciutat Comtal', 'Escultor Llimona, 38-40, Entr. 2ª', '08031 Barcelona', 'Barcelona', ' + 34 645 85 10 06 ', '', '', '', 'http://www.agilitybarcelona.com/', 'info@agilitybarcelona.com', '', '', '', 'ciutat_comtal.png', '', 0),
(19, 'Ciutat de Valencia', 'Sequia de Calvera, 33, Bajo', '46910 Sedaví (Valencia)', 'Valencia/Valéncia', '', '', '', '', 'http://www.bichopeludo.com/ciutat_de_valencia.html', 'ciutatdevalencia@bichopeludo.com', '', '', '', 'ciutat_de_valencia.png', '', 0),
(20, 'Clotet', 'Apdo. de correos 517', '12500 Vinaroz (Castellón)', 'Castellón/Castelló', '+ 34 687 52 38 11', '', '', '', 'http://www.degarrof.com/', 'declotet@hotmail.com', '', '', '', 'clotet.png', '', 0),
(21, 'Cornella', 'Mn. Andreu, 13-19', '08940 Cornellà de Llobregat (Barcelona)', 'Barcelona', '+ 34 638 98 75 91', '', '', '', 'http://www.agilitycornella.com/', 'info@agilitycornella.com', '', '', '', 'cornella.png', '', 0),
(22, 'Correcan', ' Lóndrés, 58, 1º D', '28850 Torrejón de Ardoz (Madrid)', 'Madrid', '+ 34 668 86 76 81', '', '', '', 'http://www.correcan.es/', 'info@correcan.es', '', '', '', 'correcan.png', '', 0),
(23, 'Costa Azahar', 'Camino Caminas, 223 - Apdo. de correos 717', '12080 Castellón', 'Castellón/Castelló', '+ 34 964 76 60 83', '', '', '', 'http://www.mediterraniacentrocanino.com/', 'info@mediterraniacentrocanino.com', '', '', '', 'costa_azahar.png', '', 0),
(24, 'Costa Blanca', 'C/ Baltasar Gracián Nº3, Urb. Montecid', '03670 Monforte del Cid ', 'Alicante/Alacant', NULL, NULL, NULL, NULL, 'http://www.agilitycostablanca.com/', 'agility@agilitycostablanca.com', NULL, NULL, NULL, 'costa_blanca.png', NULL, 0),
(25, 'Cousadecans', 'Lugar de Foxo, s/n - San Vicente de Vigo', '15175 Carral (La Coruña)', 'Coruña, A', '+ 34 652 83 28 34', '+ 34 620 67 61 40', '', '', '', 'cousadecans@gmail.com', '', '', '', 'cousadecans.png', '', 0),
(26, 'Cuatro Patas', 'Club social Urb/ El Socorro', 'Carmona', 'Sevilla', '630 52 72 42 (Isaac) ', '615 45 58 78 (Rafa)', '', 'N 37.43865 - W 5.79858', '', 'agiltiy4patas@hotmail.com', '', '', '', 'cuatro_patas.png', '', 1),
(27, 'Cubas', 'Paseo de los Cipreses s/n', 'Cubas de la Sagra', 'Madrid', '918143395', '619 56 43 49', NULL, NULL, 'http://clubagilitycubas.es/', 'clubagilitycubas@terra.com', NULL, NULL, NULL, 'cubas.png', NULL, 0),
(28, 'Deporcan', 'Jazmín, 16, Entreplanta', '28033 Madrid', 'Madrid', '629 843 681', ' + 34 91 302 44 35', '', '40.32132, -3.41895', 'http://www.clubagilityboadilla.org/', 'agility.deporcan@gmail.com', '', '', '', 'deporcan.png', 'Antiguo "Club Boadilla"', 0),
(29, 'Depordog', 'Avd del Mueble s/n', '11130 Chiclana', 'Cádiz', '652 73 45 17', NULL, NULL, NULL, 'http://www.clubagilitydepordog.es/', 'ildegolo@hotmail.com', NULL, NULL, NULL, 'depordog.png', NULL, 0),
(30, 'Educan', 'Mester de Juglaría, 20', '28978 Cubas de la Sagra (Madrid)', 'Madrid', '617 469 312', '+ 34 676 67 76 38', '', '', 'http://www.madrid.educan.es/', 'agility.madrid@educan.es', '', '', '', 'educan.png', '', 0),
(31, 'El Hechizo del Border C.', 'Ctra. Monserrat, Km. 7''5, nº 26', '46900 Torrent ', 'Valencia/Valéncia', '+ 34 96 156 56 75', NULL, NULL, NULL, 'http://www.elhechizo.com/', 'elhechizobc@gmail.com', NULL, NULL, NULL, 'el_hechizo_del_border_collie.png', NULL, 0),
(32, 'El Nogueral', 'Cami del Camp, 23', '03460 Beneixama', 'Alicante/Alacant', '+ 34 695 45 23 69', NULL, NULL, NULL, 'http://www.clubagility.es/', 'info@clubagility.es', NULL, NULL, NULL, 'el_nogueral.png', NULL, 0),
(33, 'El Tramusser Benifaio', 'Polígono 16 - Cami Prefasic', '46450 Benifaió (Valencia)', 'Valencia/Valéncia', '+ 34 678 57 47 86', '', '', '', 'http://www.escuelacaninavalencia.com/', 'madamagility@hotmail.com', '', '', '', 'el_tramusser_benifaio.png', '', 0),
(34, 'Els Dimonis de Bascara', 'Apartado de correos 241', '17600 Figueres (Gerona)', 'Girona/Gerona', ' + 34 657 20 44 81', '', '', '', 'http://www.dimonisdebascara.cat/', 'dimonisdebascara@hotmail.es', '', '', '', 'els_dimonis_de_bascara.png', '', 0),
(35, 'Eslón', 'Carretera de Carranque s/n', 'Serranillos del Valle', 'Madrid', '657 209 274', '', '', '', 'http://www.agilityeslon.com', 'info@agilityeslon.com', '', '', '', 'eslon.png', '', 0),
(36, 'Euskadi', 'CLUB DE AGILITY EUSKADI Beike Bidea, 2, 2º Dcha', '48950 Asua - Erandio (Vizcaya)', 'Bizkaia/Vizcaya', '619 423 720 - Pedro Martinez', '', '', '', ' www.agilityeuskadi.com', 'info@agilityeuskadi.com', '', '', '', 'euskadi.png', '', 0),
(37, 'Hoop Agility', 'Alberto Conti, 8, 7º C', '28935 Móstoles (Madrid)', 'Madrid', '+ 34 635 65 78 42', '', '', '', 'http://www.agilityclub.es/', 'info@agilityclub.es', '', '', '', 'hoop.png', '', 0),
(38, 'Illa Blanca', 'Washington, 18, 2º', '07820 San Antonio de Portmany (Ibiza)', 'Balears, Illes', '+ 34 672 32 39 22', NULL, NULL, NULL, 'http://www.agilityillablanca.com/', 'info@agilityillablanca.com', NULL, NULL, NULL, 'illa_blanca.png', NULL, 0),
(39, 'Indog Maria de Huerva', 'Calle Orfeón 13  Nave A', '50410  Cuarte de Huerva', 'Zaragoza', '', '', '', '', 'http://www.agilityindog.com/', 'info@agilityindog.com', '', '', '', 'indog.png', '', 0),
(40, 'Junior', 'Calle de la Fuente, nº 8', '16162-Villar del Horno', 'Cuenca', '626389032', NULL, NULL, NULL, 'http://www.agilityjunior.es/', 'agilityjunior@gmail.com, info@agilityjunior.es', NULL, NULL, NULL, 'junior.png', NULL, 0),
(41, 'Kai Argi', 'Oiartzun, 6, Entlo. B', '20110 Pasaia San Pedro (Guipúzcoa)', 'Gipuzkoa/Guipúzcoa', '+ 34 656 71 51 31', '', '', '', 'http://www.kaiargi.com', 'kaiargi@kaiargi.com', '', '', '', 'kai_argi.png', '', 0),
(42, 'L''Almozara', 'Camino de Pinseque, 147-A', '50190 Garrapinillos (Zaragoza)', 'Zaragoza', ' + 34 637 54 15 86', '', '', '', '', '', '', '', '', 'almozara.png', '', 0),
(43, 'L''Horta Nord', 'Vora Vía, 2', '46132 Almassera (Valencia)', 'Valencia/Valéncia', '+ 34 651 30 41 47', '', '', '', 'http://clubagilitylhortanord.blogspot.com.es/', '', 'https://www.facebook.com/agility.lhortanordvalencia', '', '', 'horta_nord.png', '', 0),
(44, 'La Daga', '25230 Mollerussa (Lérida)', '', 'Lleida/Lérida', ' + 34 660 72 04 90 ', '', '', '', 'http://www.clubagilityladaga.blogspot.com/', 'niisia84@hotmail.com', '', '', '', 'la_daga.png', '', 0),
(45, 'La Dama', 'Partida de las Casicas, 5', '03330 Crevillente (Alicante) – España', 'Alicante/Alacant', ' +34 622 109 409', '', '', ' 38° 10′ 44″ N – 0° 48′ 30″ W”', 'http://www.agilityladama.com/ladama/', 'agilityladama@gmail.com', '', '', '', 'la_dama.png', '', 0),
(46, 'La Manada', 'Partida Calvet, 37, Bajo', '46120 Alboraia (Valencia)', 'Valencia/Valéncia', '+ 34 659 89 78 40 (Vicent)', '', '', '39° 29'' 47.55'''' N - 0° 20'' 37.1'''' W', 'http://www.la-manada.org/agility/', 'info@la-manada.org', '', '', '', 'la_manada.png', '', 0),
(47, 'La Palma', 'Paraje Los Pérez de Arriba', '30593 La Palma - Cartagena (Murcia)', 'Murcia', ' + 34 669 23 31 83', '', '', '', 'http://www.agilitycartagena.com/', 'agilitycartagena@gmail.com', '', '', '', 'la_palma.png', '', 0),
(48, 'La Princesa', 'Ocaña, 104, Bajo', '28047 Madrid', 'Madrid', '+ 34 91 465 50 05 ', '', '', '+40° 19'' 35,41", -3° 50'' 50,61" ', 'http://www.agilitylaprincesa.es/', 'agilitylaprincesa@gmail.com', '', '', '', 'la_princesa.png', '', 0),
(49, 'La Ribera', 'Plaza España, 11', '50638 Cabañas de Ebro (Zaragoza)', 'Zaragoza', ' + 34 976 75 86 33', ' + 34 649 58 65 98 ', '', '', 'http://www.agilitylaribera.es/', 'agilitylaribera@hotmail.com', '', '', '', 'la_ribera.png', '', 0),
(50, 'La Selva', 'Carretera Vella de Riudarenes, s/n', '17430 Santa Coloma de Farners (Gerona)', 'Girona/Gerona', '+ 34 606 77 64 65', ' + 34 629 36 37 39', '', '', 'http://www.asscaninalaselva.com/', 'agility@asscaninalaselva.com', '', '', '', 'la_selva.png', '', 0),
(51, 'Lealcan', 'José Luis Sampedro, 14, 2º D', '28529 Rivas Vaciamadrid (Madrid)', 'Madrid', ': + 34 646 44 45 55', '', '', '', 'http://www.lealcan.com/', 'info@lealcan.com', '', '', '', 'lealcan.png', '', 0),
(52, 'Maresme', 'Santiago Rusiñol, 90', '08340 Vilassar de Mar (Barcelona)', 'Barcelona', ' + 34 93 759 70 54 ', '', '', '', '', 'agilitymaresme@telefonica.net', '', '', '', 'maresme.png', '', 0),
(53, 'Marvi', '40 Pins, 36 - Urb. Roca II', '08430 La Roca del Valles (Barcelona)', 'Barcelona', '+ 34 93 842 21 05 ', '', '', '', '', 'Marvistel@hotmail.com', '', '', '', 'marvi.png', '', 0),
(54, 'Mediterráneo', 'Senda Estrecha, 14', '30011 Murcia', 'Murcia', '+ 34 968 25 77 83', '+ 34 677 40 98 57', '', '', '', '', '', '', '', 'mediterraneo.png', '', 0),
(55, 'Mi Perro 10', 'Andalucía, 25', '28750 San Agustín de Guadalix (Madrid)', 'Madrid', '+ 34 651 91 41 46', '', '', '', 'http://www.miperro10.com/', 'info@miperro10.com', '', '', '', 'mi_perro_10.png', '', 0),
(56, 'Miramar', 'Carrer del Llorer, 3', '08789 La Torre de Claramunt (Barcelona)', 'Barcelona', '+ 34 679 27 27 91 ', '', '', '', '', 'jmtorres323@gmail.com', '', '', '', 'miramar.png', '', 0),
(57, 'Negreira', 'Avda. Recinto Ferial, 2, 4º A', '36540 Silleda (Pontevedra)', 'Pontevedra', '+ 34 629 50 71 76', '', '', '', '', '', '', '', '', 'negreira.png', '', 0),
(58, 'Neo Reus', 'Mª Aurelia Campany, 4, 6º, 2º', '43204 Reus (Tarragona)', 'Tarragona', '+ 34 616 44 62 41', '', '', '', '', 'agilityneo@hotmail.com', '', '', '', 'neo_reus.png', '', 0),
(59, 'Palaciego', 'Roble, 7', '41720 Los Palacios y Villafranca (Sevilla)', 'Sevilla', '+ 34 619 12 73 25 ', '', '', '', 'http://www.actiweb.es/palaciego/', '', 'https://www.facebook.com/pages/Club-Deportivo-Agility-Palaciego/192778427478835', '', '', 'palaciego.png', '', 0),
(60, 'Parbayon Cantabria', 'Bº Sorribero Bajo, nº 4', '39470 Renedo de Piélagos (Cantabria)', 'Cantabria', '+ 34 626 79 14 54 ', '', '', '', 'http://www.agilitycantabria.com/', 'agilitycantabria@gmail.com', '', '', '', 'parbayon.png', '', 0),
(61, 'Parque del Alamillo', 'Antonio Machín, 9, 1º Izda.', '41009 Sevilla', 'Sevilla', ' + 34 655 76 46 03', '+ 34 95 443 45 77 ', '', '', 'http://www.clubagilityalamillo.com/', 'clubagilityalamillo@hotmail.com', '', '', '', 'parque_del_alamillo.png', '', 0),
(62, 'Pataplán', ' N-320a carretera de Valencia Km.134.', '', 'Cuenca', ' Juan José González (Presidente del Club) - tfn: 639776502', '	 Javier Martínez (Tesorero y Webmaster) - tfn: 605914763', '', 'N40.033819,W2.11415', 'http://www.agilitypataplan.es/', 'info@agilitypataplan.es', '', '', '', 'pataplan.png', '', 0),
(63, 'Patas', 'Ameixoada, 28C', '36954 Moaña (Pontevedra)', 'Pontevedra', '+ 34 986 31 10 13', '+ 34 659 01 36 68 ', '', '', 'http://patas.blogaliza.org/', 'agilitypatas@hotmail.com', '', '', '', 'patas.png', '', 0),
(64, 'Paterna', 'Cid Campeador, 12-13', '46980 Paterna (Valencia)', 'Valencia/Valéncia', '+ 34 677 72 27 30', '', '', '', 'http://www.agilitypaterna.com/', 'info@agilitypaterna.com', '', '', '', 'paterna.png', '', 0),
(65, 'Pican', 'Marqués de Dos Aguas, 39, p. 8', '46220 Picassent (Valencia)', 'Valencia/Valéncia', '+ 34 687 70 69 90', '', '', '', '', 'clubagilitypican@gmail.com', '', '', '', 'pican.png', '', 0),
(66, 'Pura Vida', 'Almendro, 3, Bl. 2, 1º C', '28710 El Molar (Madrid)', 'Madrid', ' + 34 680 19 08 42', '', '', '', 'http://www.mascotaspuravida.es/', 'agility@mascotaspuravida.es', '', '', '', 'pura_vida.png', '', 0),
(67, 'Santa Quiteria', '08410 Vilanova del Valles (Barcelona)', '', 'Barcelona', '+ 34 651 89 21 07', '', '', '', 'http://www.agilitysantaquiteria.es/', 'info@agilitysantaquiteria.es', '', '', '', 'santa_quiteria.png', '', 0),
(68, 'Star Can', 'Avda. del Vincle, 28', '03560 Campello (Alicante)', 'Alicante/Alacant', '+ 34 96 563 01 60', '(Ana Alonso) anastarcan@hotmail.com', '', 'W 0º 33´ 03" N 38º 22´31"', 'http://www.starcan.es/', 'nsoler@starcan.es', '', '', '', 'star_can.png', '', 0),
(69, 'Talavera', 'Cervera - Local 39', '45600 Talavera de la Reina (Toledo)', 'Toledo', '+ 34 610 01 79 75 ', '', '', '', '', 'reinaboxtalavera@hotmail.com', '', '', '', 'talavera.png', '', 0),
(70, 'Tandem', 'Carretera M413 km 8,5 de Arroyomolinos a Moraleja de Enmedio', 'Madrid.', 'Madrid', '687 964891', '627 964845', '', '', '', 'informacion@agilitytandem.es', '', '', '', 'tandem.png', '', 0),
(71, 'Tercans', 'Reibon, 192-A  -  Meira', '36955 Moaña (Pontevedra)', 'Pontevedra', ' + 34 617 34 07 63 ', '', '', '', '', 'tercans@gmail.com', '', '', '', 'tercans.png', '', 0),
(72, 'Torrevieja', 'Moriones, 43, 3º E', '03182 Torrevieja (Alicante)', 'Alicante/Alacant', '+ 34 635 41 30 31', '', '', '', '', 'info.agilitytorrevieja@gmail.com', '', '', '', 'torrevieja.png', '', 0),
(73, 'Toskahua', 'Cmno Santa Pau, 233 Garrapinillos-ZARAGOZA', '', 'Zaragoza', 'Tel.- 976-780583 movil.-666-436111', '', '', '', 'http://perso.wanadoo.es/vjuan/agility.htm', 'grupotoskahua@eresmas.com', '', '', '', 'toskaua.png', '', 0),
(74, 'Valles Club Cani', '08140 Caldes de Montbui (Barcelona)', '', 'Barcelona', ' telèfon:    619 28 68 82 ', '', '', ' N 41º 37'' 07''''    E 2º 10'' 31.7''''', '', 'info@vallesgrupcani.org', '', '', '', 'valles_club_cani.png', '', 0),
(75, 'Vallgorguina', 'Vila Carina Ctra. C-61, Km. 15,5', '08471 Vallgorguina (Barcelona)', 'Barcelona', '+ 34 93 867 93 18 ', '+ 34 600 00 54 99 ', '', '', '', 'agilityvallgorguina@centrecani.cat', '', '', '', 'vallgorguina.png', '', 0),
(76, 'Vila-Real', 'Padre Lluis María Llop, 54, 1º B', '12540 Vila-real (Castellón)', 'Castellón/Castelló', '+ 34 964 52 40 09', '', '', '', 'http://www.agilityvila-real.es/', 'agilityvilareal@gmail.com', '', '', '', 'vila_real.png', '', 0),
(77, 'Vilcan', 'Nou, 20', '46270 Villanueva de Castellón (Valencia)', 'Valencia/Valéncia', '+ 34 96 245 31 81', '', '', '', '', '', '', '', '', 'vilcan.png', '', 0),
(78, 'Villena', 'Plaza El Rollo, 5', '03400 Villena (Alicante)', 'Alicante/Alacant', '+ 34 636 42 67 13', '', '', '', 'http://clubagilityvillena.blogspot.com.es/', '', '', '', '', 'villena.png', '', 0),
(79, 'W.E.L.P.E.', 'Polideportivo Municipal La Canaleja', 'Alcorcón', 'Madrid', '+ 34 91 619 52 79', NULL, NULL, NULL, 'http://www.grupowelpe.com', 'gwelpe@teleline.es', 'https://www.facebook.com/groups/484854411592829/', NULL, '@gwelpe', 'welpe.png', NULL, 0),
(80, 'Xanastur', ' Baleares, 39, 3º D', '33208 Gijón (Asturias)', 'Asturias', '+ 34 607 11 90 56', '', '', '', 'http://www.xanastur.org/', 'xanasturcentrocanino@gmail.com', '', '', '', 'xanastur.png', '', 0),
(81, 'Zampican', 'Río Navía, 2', '12006 Castellón', 'Castellón/Castelló', '+ 34 629 07 06 75', '', '', '', 'http://www.agilityzampican.es/', '', '', '', '', 'zampican.png', '', 0),
(82, 'Buscans', '07810 Cala de San Vicente (Ibiza)', '', 'Balears, Illes', ' + 34 661 02 12 6', '+34 637 13 62 73', '', '', '', 'buscans@hotmail.com', '', '', '', 'buscans.png', '', 0),
(83, 'Eivissa', 'Elx, s/n, B. 1, nº 4', '07820 Sant Agusti - Sant Josep (Ibiza)', 'Balears, Illes', '+ 34 971 34 58 28', '+34 609 35 40 00', '', '', 'http://www.agilityeivissa.com/', 'info@agilityeivissa.com', '', '', '', 'eivissa.png', '', 0),
(84, 'Insular', 'Pablo Picasso', '07820 San Antonio (Baleares)', 'Balears, Illes', '+34 655 76 10 94', '', '', '', 'http://www.agilityinsular.com/', 'agilityinsular@gmail.com', '', '', '', 'insular.png', '', 0),
(85, 'Teocan', 'Rarís, s/n', '15883 Teo (La Coruña)', 'Coruña, A', '+ 34 627 93 72 81', '', '', '', '', 'adteocan@gmail.com', '', '', '', 'teocan.png', '', 0),
(86, 'Los Angeles de San Antón', 'Camino del Tiro Pichón, 1', '11500 El Puerto de Santa María', 'Cádiz', '+ 34 667 48 61 06', '+ 34 617 41 06 52', '', '', '', 'cdagilityladsa@hotmail.com', '', '', '', 'ladsa.png', '', 0),
(87, 'A-0', 'Cº de los Santos, s/n - Avda. de la Vega, s/n', '28500 Arganda del Rey', 'Madrid', '+ 34 626 43 68 18', '+ 34 646 79 51 55', '', '', '', '', '', '', '', 'logo_87.png', '', 0),
(88, 'A. D. C. Pozuelo', 'Felipe de la Guerra, 7', '28224 Pozuelo de Alarcón', 'Madrid', '', '', '', '', '', '', '', '', '', 'logo_88.png', '', 0),
(89, 'El Campet de Pobla Llarga', 'Partida Codona, Pol. 1 parc. 78', '46670 La Poble Llarga', 'Valencia/Valéncia', '669 088 200', '606 428 438 ', '', '', '', 'agilityelcampet@gmail.com', '', '', '', 'logo_89.png', '', 0),
(90, 'La Huella', 'Miguel Servet 80', '46540 El Puig de Santa Maria', 'Valencia/Valéncia', '', '', '', '', '', 'agilitylahuella@hotmail.com', '', '', '', 'rsce.png', '', 0),
(91, 'Almussafes', 'Camí Burriaga s/n (Parque Rural de Almussafes)', '46440 Almussafes', 'Valencia/Valéncia', '', '', '', '', '', '', '', '', '', 'logo_91.png', '', 0),
(92, 'Tinerfe', 'Los Adernos s/n', '38441 Santo Domingo - La Guancha', 'Santa Cruz de Te', '', '', '', '', '', '', '', '', '', 'logo_92.png', '', 0),
(93, 'Tolouse Veto Agility', '', '', '-- Sin asignar --', '', '', '', '', '', '', '', '', '', 'rsce.png', '', 0),
(94, 'Avila', 'Camino de Avila, 4', '05289 San Esteban de los Patos', 'Ávila', '619 36 47 21', '', '', '', '', 'agilityavila@gmail.com', 'https://www.facebook.com/profile.php?id=100008197471949', '', '', 'logo_94.png', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `equipos`;
CREATE TABLE IF NOT EXISTS `equipos` (
`ID` int(4) NOT NULL,
  `Prueba` int(4) NOT NULL DEFAULT '1',
  `Nombre` varchar(255) NOT NULL,
  `Observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `equipos`:
--   `Prueba`
--       `pruebas` -> `ID`
--

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`ID`, `Prueba`, `Nombre`, `Observaciones`) VALUES
(1, 2, '-- Sin asignar --', 'NO BORRAR: PRUEBA 2 - Equipo por defecto'),
(2, 3, '-- Sin asignar --', 'NO BORRAR: PRUEBA 3 - Equipo por defecto'),
(3, 4, '-- Sin asignar --', 'NO BORRAR: PRUEBA 4 - Equipo por defecto'),
(4, 5, '-- Sin asignar --', 'NO BORRAR: PRUEBA 5 - Equipo por defecto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
`ID` int(4) NOT NULL,
  `Session` int(4) NOT NULL,
  `Source` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Data` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `eventos`:
--   `Session`
--       `sesiones` -> `ID`
--

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`ID`, `Session`, `Source`, `Type`, `Timestamp`, `Data`) VALUES
(1, 1, 'tablet_1', 'init', '2014-12-06 10:41:38', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"init","Source":"tablet_1","Prueba":3,"Jornada":10,"Manga":0,"Tanda":0,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(2, 1, 'tablet_1', 'llamada', '2014-12-06 10:41:56', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":3,"Jornada":10,"Manga":8,"Tanda":1,"Perro":562,"Dorsal":19,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(3, 1, 'tablet_1', 'cancelar', '2014-12-06 10:42:41', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":3,"Jornada":10,"Manga":8,"Tanda":1,"Perro":562,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(4, 1, 'tablet_1', 'llamada', '2014-12-06 10:42:44', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":3,"Jornada":10,"Manga":8,"Tanda":1,"Perro":562,"Dorsal":19,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(5, 1, 'tablet_1', 'salida', '2014-12-06 10:42:53', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"salida","Source":"tablet_1","Prueba":3,"Jornada":10,"Manga":8,"Tanda":1,"Perro":562,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":1417862573154}'),
(6, 1, 'tablet_1', 'salida', '2014-12-06 10:43:12', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"salida","Source":"tablet_1","Prueba":3,"Jornada":10,"Manga":8,"Tanda":1,"Perro":562,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":1417862592255}'),
(7, 1, 'tablet_1', 'cancelar', '2014-12-06 10:43:59', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":3,"Jornada":10,"Manga":8,"Tanda":1,"Perro":562,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(8, 1, 'tablet_1', 'open', '2014-12-06 10:44:01', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":3,"Jornada":10,"Manga":9,"Tanda":3,"Perro":562,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(9, 1, 'tablet_1', 'open', '2014-12-06 10:44:29', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":3,"Jornada":10,"Manga":10,"Tanda":7,"Perro":562,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(10, 1, 'tablet_1', 'init', '2014-12-27 01:07:14', '{"Operador":"5","SessionKey":"XFLYZKAPrc9OGeVy","Prueba":4,"Jornada":17,"Manga":0,"Tanda":0,"Perro":0,"UserID":"5","Login":"assistant","Password":"","Gecos":"Asistente del juez (tablet)","Phone":"","Email":"","Perms":"3","Type":"init","Source":"tablet_1"}'),
(11, 1, 'tablet_1', 'init', '2014-12-27 01:09:28', '{"Operador":"5","SessionKey":"fPvzNnVgMhweLW2C","Prueba":4,"Jornada":17,"Manga":0,"Tanda":0,"Perro":0,"UserID":"5","Login":"assistant","Password":"","Gecos":"Asistente del juez (tablet)","Phone":"","Email":"","Perms":"3","Type":"init","Source":"tablet_1"}'),
(12, 1, 'tablet_1', 'init', '2014-12-27 01:24:53', '{"Operador":"5","SessionKey":"yt4LvbNCS3HVD615","Prueba":4,"Jornada":17,"Manga":0,"Tanda":0,"Perro":0,"UserID":"5","Login":"assistant","Password":"","Gecos":"Asistente del juez (tablet)","Phone":"","Email":"","Perms":"3","Type":"init","Source":"tablet_1"}'),
(13, 1, 'tablet_1', 'llamada', '2014-12-27 01:25:33', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(14, 1, 'tablet_1', 'datos', '2014-12-27 01:25:46', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(15, 1, 'tablet_1', 'start', '2014-12-27 01:25:50', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"start","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":1419643550816}'),
(16, 1, 'tablet_1', 'stop', '2014-12-27 01:26:03', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"stop","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":1419643563987}'),
(17, 1, 'tablet_1', 'cancelar', '2014-12-27 01:26:15', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(18, 1, 'tablet_1', 'llamada', '2014-12-27 01:26:25', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(19, 1, 'tablet_1', 'datos', '2014-12-27 01:26:30', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(20, 1, 'tablet_1', 'datos', '2014-12-27 01:26:46', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(21, 1, 'tablet_1', 'salida', '2014-12-27 01:26:54', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"salida","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":1419643614033}'),
(22, 1, 'tablet_1', 'start', '2014-12-27 01:27:22', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"start","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":1419643642250}'),
(23, 1, 'tablet_1', 'stop', '2014-12-27 01:27:26', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"stop","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":1419643646579}'),
(24, 1, 'tablet_1', 'cancelar', '2014-12-27 01:27:36', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(25, 1, 'tablet_1', 'open', '2014-12-27 01:28:06', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(26, 1, 'tablet_1', 'open', '2014-12-27 01:28:20', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":5,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(27, 1, 'tablet_1', 'open', '2014-12-27 01:28:28', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":5,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(28, 1, 'tablet_1', 'init', '2014-12-27 15:28:43', '{"Operador":"3","SessionKey":"1YD6pekSgnwHfVuA","Prueba":4,"Jornada":17,"Manga":0,"Tanda":0,"Perro":0,"UserID":"3","Login":"admin","Password":"","Gecos":"Administrador de la aplicacion","Phone":"","Email":"","Perms":"1","Type":"init","Source":"tablet_1"}'),
(29, 1, 'tablet_0', 'open', '2014-12-27 15:29:19', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(30, 1, 'tablet_1', 'llamada', '2014-12-27 15:29:39', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":371,"Dorsal":22,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(31, 1, 'tablet_1', 'datos', '2014-12-27 15:29:46', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":371,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(32, 1, 'tablet_1', 'datos', '2014-12-27 15:29:48', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":371,"Dorsal":0,"Celo":0,"Faltas":1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(33, 1, 'tablet_1', 'datos', '2014-12-27 15:29:50', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":371,"Dorsal":0,"Celo":0,"Faltas":2,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(34, 1, 'tablet_1', 'datos', '2014-12-27 15:29:51', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":371,"Dorsal":0,"Celo":0,"Faltas":1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(35, 1, 'tablet_1', 'datos', '2014-12-27 15:29:53', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":371,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(36, 1, 'tablet_1', 'datos', '2014-12-27 15:29:56', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":371,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(37, 1, 'tablet_1', 'cancelar', '2014-12-27 15:30:14', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":371,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(38, 1, 'tablet_1', 'llamada', '2014-12-27 15:30:19', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":356,"Dorsal":24,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(39, 1, 'tablet_1', 'datos', '2014-12-27 15:30:32', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":356,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(40, 1, 'tablet_1', 'salida', '2014-12-27 15:30:35', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"salida","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":356,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":1419694233961}'),
(41, 1, 'tablet_1', 'start', '2014-12-27 15:30:56', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"start","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":356,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":1419694255516}'),
(42, 1, 'tablet_1', 'stop', '2014-12-27 15:31:03', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"stop","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":356,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":1419694262418}'),
(43, 1, 'tablet_1', 'cancelar', '2014-12-27 15:31:35', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":356,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(44, 1, 'tablet_1', 'open', '2014-12-27 15:31:42', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":356,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(45, 1, 'tablet_1', 'llamada', '2014-12-27 15:32:11', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(46, 1, 'tablet_1', 'datos', '2014-12-27 15:32:33', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(47, 1, 'tablet_1', 'datos', '2014-12-27 15:32:38', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":2,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(48, 1, 'tablet_1', 'datos', '2014-12-27 15:32:41', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(49, 1, 'tablet_1', 'datos', '2014-12-27 15:32:42', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(50, 1, 'tablet_1', 'datos', '2014-12-27 15:32:44', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(51, 1, 'tablet_1', 'datos', '2014-12-27 15:32:48', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":0,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(52, 1, 'tablet_1', 'datos', '2014-12-27 15:32:49', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":0,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(53, 1, 'tablet_1', 'datos', '2014-12-27 15:32:54', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(54, 1, 'tablet_1', 'aceptar', '2014-12-27 15:33:51', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"aceptar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(55, 1, 'tablet_1', 'init', '2014-12-27 15:57:58', '{"Operador":"3","SessionKey":"IgPMC0EWYir8fwO7","Prueba":3,"Jornada":9,"Manga":0,"Tanda":0,"Perro":0,"UserID":"3","Login":"admin","Password":"","Gecos":"Administrador de la aplicacion","Phone":"","Email":"","Perms":"1","Type":"init","Source":"tablet_1"}'),
(56, 1, 'tablet_0', 'open', '2014-12-27 15:58:01', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(57, 1, 'tablet_0', 'open', '2014-12-27 16:12:56', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(58, 1, 'tablet_1', 'init', '2015-01-03 15:56:51', '{"Operador":"4","SessionKey":"Z9hWYMOCl2b3pLsa","Prueba":3,"Jornada":9,"Manga":0,"Tanda":0,"Perro":0,"UserID":"4","Login":"operator","Password":"","Gecos":"Operador de consola","Phone":"","Email":"","Perms":"2","Type":"init","Source":"tablet_1"}'),
(59, 1, 'tablet_0', 'open', '2015-01-03 15:57:56', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(60, 1, 'tablet_1', 'init', '2015-01-03 15:58:25', '{"Operador":"4","SessionKey":"xOK1F9MXJUvR67ra","Prueba":4,"Jornada":17,"Manga":0,"Tanda":0,"Perro":0,"UserID":"4","Login":"operator","Password":"","Gecos":"Operador de consola","Phone":"","Email":"","Perms":"2","Type":"init","Source":"tablet_1"}'),
(61, 1, 'tablet_0', 'open', '2015-01-03 15:58:35', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(62, 1, 'tablet_0', 'open', '2015-01-03 15:59:06', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(63, 1, 'tablet_0', 'open', '2015-01-03 15:59:26', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":4,"Jornada":17,"Manga":15,"Tanda":4,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(64, 1, 'tablet_0', 'open', '2015-01-03 16:01:49', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(65, 1, 'tablet_0', 'open', '2015-01-03 16:02:05', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":4,"Jornada":17,"Manga":15,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(66, 1, 'tablet_1', 'llamada', '2015-01-03 16:02:10', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(67, 1, 'tablet_1', 'cancelar', '2015-01-03 16:02:23', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(68, 1, 'tablet_1', 'open', '2015-01-03 16:02:42', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(69, 1, 'tablet_1', 'llamada', '2015-01-03 16:03:02', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":586,"Dorsal":21,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(70, 1, 'tablet_1', 'datos', '2015-01-03 16:03:19', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":586,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(71, 1, 'tablet_1', 'aceptar', '2015-01-03 16:03:21', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"aceptar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":586,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(72, 1, 'tablet_1', 'open', '2015-01-03 16:03:34', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":586,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(73, 1, 'tablet_1', 'llamada', '2015-01-03 16:04:28', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(74, 1, 'tablet_1', 'aceptar', '2015-01-03 16:04:37', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"aceptar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(75, 1, 'tablet_1', 'open', '2015-01-03 16:05:06', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(76, 1, 'tablet_1', 'open', '2015-01-03 16:14:38', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(77, 1, 'tablet_1', 'llamada', '2015-01-03 16:15:26', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(78, 1, 'tablet_1', 'aceptar', '2015-01-03 16:15:35', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"aceptar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(79, 1, 'tablet_1', 'open', '2015-01-03 16:16:09', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(80, 1, 'tablet_1', 'open', '2015-01-03 16:17:37', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(81, 1, 'tablet_1', 'llamada', '2015-01-03 16:17:50', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(82, 1, 'tablet_1', 'cancelar', '2015-01-03 16:25:15', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(83, 1, 'tablet_1', 'open', '2015-01-03 16:25:54', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(84, 1, 'tablet_1', 'llamada', '2015-01-03 16:26:10', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(85, 1, 'tablet_1', 'cancelar', '2015-01-03 16:26:19', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(86, 1, 'tablet_1', 'open', '2015-01-03 16:26:34', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(87, 1, 'tablet_1', 'llamada', '2015-01-03 16:26:43', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(88, 1, 'tablet_1', 'datos', '2015-01-03 16:26:47', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"datos","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(89, 1, 'tablet_1', 'aceptar', '2015-01-03 16:26:48', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"aceptar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(90, 1, 'tablet_1', 'llamada', '2015-01-03 16:27:11', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(91, 1, 'tablet_1', 'cancelar', '2015-01-03 16:27:13', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(92, 1, 'tablet_1', 'llamada', '2015-01-03 16:27:33', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":586,"Dorsal":21,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(93, 1, 'tablet_1', 'aceptar', '2015-01-03 16:28:02', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"aceptar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":586,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":23.45,"Value":-1}'),
(94, 1, 'tablet_1', 'llamada', '2015-01-03 16:33:29', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":26,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(95, 1, 'tablet_1', 'cancelar', '2015-01-03 16:33:32', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":4,"Jornada":17,"Manga":16,"Tanda":7,"Perro":510,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":1,"Tiempo":0,"Value":-1}'),
(96, 1, 'tablet_1', 'init', '2015-01-04 18:41:59', '{"Operador":"5","SessionKey":"Y82bv6lZk4oIrpGe","Prueba":2,"Jornada":1,"Manga":0,"Tanda":0,"Perro":0,"UserID":"5","Login":"assistant","Password":"","Gecos":"Asistente del juez (tablet)","Phone":"","Email":"","Perms":"3","Type":"init","Source":"tablet_1"}'),
(97, 1, 'tablet_0', 'open', '2015-01-04 18:42:24', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(98, 1, 'tablet_0', 'open', '2015-01-04 18:42:39', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(99, 1, 'tablet_0', 'open', '2015-01-04 18:42:44', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":29,"Tanda":4,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(100, 1, 'tablet_0', 'open', '2015-01-04 18:42:49', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":29,"Tanda":41,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(101, 1, 'tablet_0', 'open', '2015-01-04 18:43:00', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":30,"Tanda":6,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(102, 1, 'tablet_0', 'open', '2015-01-04 18:43:13', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(103, 1, 'tablet_0', 'open', '2015-01-04 18:43:22', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":10,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(104, 1, 'tablet_0', 'open', '2015-01-04 18:43:30', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":43,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(105, 1, 'tablet_0', 'open', '2015-01-04 18:43:37', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":11,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(106, 1, 'tablet_0', 'open', '2015-01-04 18:43:45', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":10,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(107, 1, 'tablet_0', 'open', '2015-01-04 18:44:51', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":10,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(108, 1, 'tablet_0', 'open', '2015-01-04 18:45:16', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":11,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(109, 1, 'tablet_0', 'open', '2015-01-04 18:45:33', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":32,"Tanda":23,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(110, 1, 'tablet_0', 'open', '2015-01-04 18:45:54', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":32,"Tanda":23,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(111, 1, 'tablet_1', 'init', '2015-01-04 22:44:19', '{"Operador":"5","SessionKey":"jxkXH2aMKF6hp5IQ","Prueba":2,"Jornada":1,"Manga":0,"Tanda":0,"Perro":0,"UserID":"5","Login":"assistant","Password":"","Gecos":"Asistente del juez (tablet)","Phone":"","Email":"","Perms":"3","Type":"init","Source":"tablet_1"}'),
(112, 1, 'tablet_0', 'open', '2015-01-04 22:44:25', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":30,"Tanda":6,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(113, 1, 'tablet_0', 'open', '2015-01-04 22:44:42', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(114, 1, 'tablet_0', 'open', '2015-01-04 22:45:18', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(115, 1, 'tablet_0', 'open', '2015-01-04 22:45:23', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(116, 1, 'tablet_0', 'open', '2015-01-04 22:45:38', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":43,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(117, 1, 'tablet_0', 'open', '2015-01-04 22:46:39', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":43,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(118, 1, 'tablet_0', 'open', '2015-01-04 22:47:25', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(119, 1, 'tablet_1', 'init', '2015-01-05 10:02:35', '{"Operador":"4","SessionKey":"wb1NOn4CoErfVc7M","Prueba":3,"Jornada":9,"Manga":0,"Tanda":0,"Perro":0,"UserID":"4","Login":"operator","Password":"","Gecos":"Operador de consola","Phone":"","Email":"","Perms":"2","Type":"init","Source":"tablet_1"}'),
(120, 1, 'tablet_0', 'open', '2015-01-05 10:02:39', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(121, 1, 'tablet_1', 'llamada', '2015-01-05 10:02:56', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":562,"Dorsal":19,"Celo":0,"Faltas":3,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":27.15,"Value":-1}'),
(122, 1, 'tablet_1', 'cancelar', '2015-01-05 10:03:33', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":562,"Dorsal":0,"Celo":0,"Faltas":3,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":27.15,"Value":-1}'),
(123, 1, 'tablet_1', 'init', '2015-01-05 10:03:46', '{"Operador":"4","SessionKey":"wM58ATlHPNYXiucB","Prueba":3,"Jornada":10,"Manga":0,"Tanda":0,"Perro":0,"UserID":"4","Login":"operator","Password":"","Gecos":"Operador de consola","Phone":"","Email":"","Perms":"2","Type":"init","Source":"tablet_1"}'),
(124, 1, 'tablet_0', 'open', '2015-01-05 10:03:48', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":10,"Manga":8,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(125, 1, 'tablet_0', 'open', '2015-01-05 10:03:49', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":10,"Manga":8,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(126, 1, 'tablet_0', 'open', '2015-01-05 10:09:25', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":10,"Manga":8,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(127, 1, 'tablet_1', 'init', '2015-01-05 10:10:53', '{"Operador":"4","SessionKey":"1VNrxGkI23qDFiYM","Prueba":3,"Jornada":10,"Manga":0,"Tanda":0,"Perro":0,"UserID":"4","Login":"operator","Password":"","Gecos":"Operador de consola","Phone":"","Email":"","Perms":"2","Type":"init","Source":"tablet_1"}'),
(128, 1, 'tablet_0', 'open', '2015-01-05 10:33:05', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":10,"Manga":9,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(129, 1, 'tablet_0', 'open', '2015-01-05 10:45:02', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":10,"Manga":8,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(130, 1, 'tablet_0', 'open', '2015-01-05 10:45:27', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":10,"Manga":11,"Tanda":9,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(131, 1, 'tablet_0', 'open', '2015-01-05 10:46:28', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":10,"Manga":10,"Tanda":8,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(132, 1, 'tablet_0', 'open', '2015-01-05 10:46:57', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":10,"Manga":11,"Tanda":9,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(133, 1, 'tablet_1', 'init', '2015-01-05 14:18:13', '{"Operador":"4","SessionKey":"bgFGD34xCoMYZWBL","Prueba":3,"Jornada":9,"Manga":0,"Tanda":0,"Perro":0,"UserID":"4","Login":"operator","Password":"","Gecos":"Operador de consola","Phone":"","Email":"","Perms":"2","Type":"init","Source":"tablet_1"}'),
(134, 1, 'tablet_0', 'open', '2015-01-05 14:18:40', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(135, 1, 'tablet_0', 'open', '2015-01-05 14:23:53', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(136, 1, 'tablet_0', 'open', '2015-01-05 14:26:00', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(137, 1, 'tablet_1', 'init', '2015-01-05 14:41:17', '{"Operador":"4","SessionKey":"6FSWV7YbEZqv5fgr","Prueba":3,"Jornada":9,"Manga":0,"Tanda":0,"Perro":0,"UserID":"4","Login":"operator","Password":"","Gecos":"Operador de consola","Phone":"","Email":"","Perms":"2","Type":"init","Source":"tablet_1"}'),
(138, 1, 'tablet_0', 'open', '2015-01-05 14:41:21', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":2,"Tanda":4,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(139, 1, 'tablet_0', 'open', '2015-01-05 14:42:14', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":4,"Tanda":11,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(140, 1, 'tablet_0', 'open', '2015-01-05 14:48:20', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(141, 1, 'tablet_0', 'open', '2015-01-05 14:51:11', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":2,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(142, 1, 'tablet_0', 'open', '2015-01-05 15:05:25', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":1,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(143, 1, 'tablet_0', 'open', '2015-01-05 15:05:52', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":4,"Tanda":9,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(144, 1, 'tablet_0', 'open', '2015-01-05 15:33:07', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":2,"Tanda":4,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(145, 1, 'tablet_0', 'open', '2015-01-05 15:33:33', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":3,"Jornada":9,"Manga":6,"Tanda":12,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(146, 1, 'tablet_1', 'init', '2015-01-05 15:35:14', '{"Operador":"4","SessionKey":"HbeS38KiBQGtr2WC","Prueba":2,"Jornada":1,"Manga":0,"Tanda":0,"Perro":0,"UserID":"4","Login":"operator","Password":"","Gecos":"Operador de consola","Phone":"","Email":"","Perms":"2","Type":"init","Source":"tablet_1"}'),
(147, 1, 'tablet_0', 'open', '2015-01-05 15:35:20', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(148, 1, 'tablet_1', 'llamada', '2015-01-05 15:45:15', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":585,"Dorsal":2,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":1,"NoPresentado":0,"Eliminado":0,"Tiempo":34.45,"Value":-1}'),
(149, 1, 'tablet_1', 'cancelar', '2015-01-05 15:45:21', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":1,"NoPresentado":0,"Eliminado":0,"Tiempo":34.45,"Value":-1}'),
(150, 1, 'tablet_1', 'open', '2015-01-05 15:45:22', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(151, 1, 'tablet_1', 'open', '2015-01-05 15:45:27', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(152, 1, 'tablet_1', 'open', '2015-01-05 15:46:49', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(153, 1, 'tablet_1', 'open', '2015-01-05 16:09:15', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(154, 1, 'tablet_1', 'open', '2015-01-05 16:10:59', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(155, 1, 'tablet_1', 'open', '2015-01-05 16:24:28', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(156, 1, 'tablet_1', 'open', '2015-01-05 16:24:51', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":44,"Tanda":2,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(157, 1, 'tablet_1', 'open', '2015-01-05 16:25:28', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(158, 1, 'tablet_1', 'open', '2015-01-05 16:26:04', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(159, 1, 'tablet_1', 'open', '2015-01-05 16:33:16', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":585,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(160, 1, 'tablet_1', 'llamada', '2015-01-05 16:33:23', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":556,"Dorsal":7,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(161, 1, 'tablet_1', 'cancelar', '2015-01-05 16:33:32', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(162, 1, 'tablet_1', 'open', '2015-01-05 16:33:37', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(163, 1, 'tablet_1', 'init', '2015-01-05 16:46:09', '{"Operador":"4","SessionKey":"0exBufbCQ7tiHgLh","Prueba":2,"Jornada":1,"Manga":0,"Tanda":0,"Perro":0,"UserID":"4","Login":"operator","Password":"","Gecos":"Operador de consola","Phone":"","Email":"","Perms":"2","Type":"init","Source":"tablet_1"}'),
(164, 1, 'tablet_0', 'open', '2015-01-05 16:46:12', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(165, 1, 'tablet_1', 'llamada', '2015-01-05 16:46:30', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"llamada","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":556,"Dorsal":7,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(166, 1, 'tablet_1', 'cancelar', '2015-01-05 16:46:42', '{"ID":0,"Session":1,"TimeStamp":0,"Type":"cancelar","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":0,"Tocados":0,"Rehuses":0,"NoPresentado":0,"Eliminado":0,"Tiempo":0,"Value":-1}'),
(167, 1, 'tablet_1', 'open', '2015-01-05 16:46:43', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":30,"Tanda":6,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(168, 1, 'tablet_1', 'open', '2015-01-05 16:46:55', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(169, 1, 'tablet_1', 'open', '2015-01-05 16:48:03', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}');
INSERT INTO `eventos` (`ID`, `Session`, `Source`, `Type`, `Timestamp`, `Data`) VALUES
(170, 1, 'tablet_1', 'open', '2015-01-05 16:56:11', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(171, 1, 'tablet_1', 'open', '2015-01-05 17:11:07', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(172, 1, 'tablet_1', 'open', '2015-01-05 17:12:18', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(173, 1, 'tablet_1', 'open', '2015-01-05 17:15:11', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(174, 1, 'tablet_1', 'open', '2015-01-05 17:23:32', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_1","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":556,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(175, 1, 'tablet_1', 'init', '2015-01-05 20:00:41', '{"Operador":"4","SessionKey":"HF4KDqPoSsWbAVIw","Prueba":2,"Jornada":1,"Manga":0,"Tanda":0,"Perro":0,"UserID":"4","Login":"operator","Password":"","Gecos":"Operador de consola","Phone":"","Email":"","Perms":"2","Type":"init","Source":"tablet_1"}'),
(176, 1, 'tablet_0', 'open', '2015-01-05 20:01:19', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(177, 1, 'tablet_0', 'open', '2015-01-05 20:01:28', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":30,"Tanda":8,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(178, 1, 'tablet_0', 'open', '2015-01-05 20:01:31', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(179, 1, 'tablet_0', 'open', '2015-01-05 20:01:39', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":44,"Tanda":2,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(180, 1, 'tablet_0', 'open', '2015-01-05 20:01:58', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(181, 1, 'tablet_0', 'open', '2015-01-05 20:02:06', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(182, 1, 'tablet_0', 'open', '2015-01-05 20:02:10', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":44,"Tanda":2,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(183, 1, 'tablet_0', 'open', '2015-01-05 20:02:14', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(184, 1, 'tablet_0', 'open', '2015-01-05 20:02:21', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(185, 1, 'tablet_0', 'open', '2015-01-05 20:03:27', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(186, 1, 'tablet_0', 'open', '2015-01-05 20:03:54', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(187, 1, 'tablet_0', 'open', '2015-01-05 20:06:47', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":30,"Tanda":6,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(188, 1, 'tablet_0', 'open', '2015-01-05 20:07:29', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(189, 1, 'tablet_0', 'open', '2015-01-05 20:08:19', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(190, 1, 'tablet_0', 'open', '2015-01-05 20:16:49', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(191, 1, 'tablet_0', 'open', '2015-01-05 20:19:58', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(192, 1, 'tablet_0', 'open', '2015-01-05 20:21:23', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(193, 1, 'tablet_0', 'open', '2015-01-05 20:23:23', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(194, 1, 'tablet_0', 'open', '2015-01-05 20:25:29', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(195, 1, 'tablet_0', 'open', '2015-01-05 20:26:09', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":44,"Tanda":2,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(196, 1, 'tablet_0', 'open', '2015-01-05 20:26:19', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(197, 1, 'tablet_0', 'open', '2015-01-05 20:26:39', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":29,"Tanda":5,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(198, 1, 'tablet_0', 'open', '2015-01-05 20:26:48', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":30,"Tanda":42,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(199, 1, 'tablet_0', 'open', '2015-01-05 20:27:03', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":32,"Tanda":23,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(200, 1, 'tablet_0', 'open', '2015-01-05 20:34:44', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":43,"Tanda":1,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(201, 1, 'tablet_0', 'open', '2015-01-05 20:35:05', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":29,"Tanda":3,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}'),
(202, 1, 'tablet_0', 'open', '2015-01-05 20:35:47', '{"ID":1,"Session":1,"TimeStamp":0,"Type":"open","Source":"tablet_0","Prueba":2,"Jornada":1,"Manga":31,"Tanda":9,"Perro":0,"Dorsal":0,"Celo":0,"Faltas":-1,"Tocados":-1,"Rehuses":-1,"NoPresentado":-1,"Eliminado":-1,"Tiempo":-1,"Value":-1}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados_perro`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `grados_perro`;
CREATE TABLE IF NOT EXISTS `grados_perro` (
  `Grado` varchar(16) NOT NULL,
  `Comentarios` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grados_perro`
--

INSERT INTO `grados_perro` (`Grado`, `Comentarios`) VALUES
('-', 'Sin especificar'),
('Baja', 'Baja temporal'),
('GI', 'Grado I'),
('GII', 'Grado II'),
('GIII', 'Grado III'),
('P.A.', 'Pre-Agility'),
('P.B.', 'Perro en Blanco'),
('Ret.', 'Retirado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guias`
--
-- Creación: 08-01-2015 a las 18:38:46
--

DROP TABLE IF EXISTS `guias`;
CREATE TABLE IF NOT EXISTS `guias` (
`ID` int(4) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Telefono` varchar(16) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Club` int(4) NOT NULL DEFAULT '1',
  `Observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `guias`:
--   `Club`
--       `clubes` -> `ID`
--

--
-- Volcado de datos para la tabla `guias`
--

INSERT INTO `guias` (`ID`, `Nombre`, `Telefono`, `Email`, `Club`, `Observaciones`) VALUES
(1, '-- Sin asignar --', NULL, NULL, 1, 'NO BORRAR. Valor por defecto cuando un perro se define por primera vez'),
(2, 'Aaron Laro', '', '', 27, ''),
(3, 'Ada Serrano', '', '', 67, ''),
(4, 'Adoración Morales', NULL, NULL, 45, NULL),
(5, 'Adrian Bajo', '', '', 76, ''),
(6, 'Adrian Díaz', NULL, NULL, 31, NULL),
(7, 'Adrian Martínez', '', '', 62, ''),
(8, 'Adrián Soria', '', '', 62, ''),
(9, 'Africa Cabañas', '', '', 22, ''),
(10, 'Agustin Centelles', NULL, NULL, 42, NULL),
(11, 'Agustín González', '', '', 43, ''),
(12, 'Aida Al-Nehlawi', NULL, NULL, 13, NULL),
(13, 'Alaitz Idarraga', '', '', 36, ''),
(14, 'Albert Ulldemolins', NULL, NULL, 7, NULL),
(15, 'Alberto Alonso', NULL, NULL, 24, NULL),
(16, 'Alberto Costas', NULL, NULL, 75, NULL),
(17, 'Alberto González', '', '', 75, ''),
(18, 'Alberto Marugan', '', '', 4, ''),
(19, 'Alberto Mudarra', NULL, NULL, 42, NULL),
(20, 'Alberto Pereda', NULL, NULL, 48, NULL),
(21, 'Alejandra Alvarez', '', '', 31, ''),
(22, 'Alejandro Piñeiro', NULL, NULL, 71, NULL),
(23, 'Alejandro Rodríguez Villalta', '', '', 59, ''),
(24, 'Alejandro Salas', '', '', 80, ''),
(25, 'Alex del Río', NULL, NULL, 18, NULL),
(26, 'Alex Olivera', NULL, NULL, 67, NULL),
(27, 'Alex Sabini', NULL, NULL, 18, NULL),
(28, 'Alfredo Ortíz', NULL, NULL, 40, NULL),
(29, 'Alicia Mejias', NULL, NULL, 61, NULL),
(30, 'Alicia Sanjurjo', NULL, NULL, 74, NULL),
(31, 'Almudena Novo', '', '', 16, ''),
(32, 'Amparo Roig', NULL, NULL, 43, NULL),
(33, 'Ana Alonso', NULL, NULL, 68, NULL),
(34, 'Ana Baeza', NULL, NULL, 40, NULL),
(35, 'Ana Beltran Bustamante', '', '', 32, ''),
(36, 'Ana Isabel Escobar', NULL, NULL, 28, NULL),
(37, 'Ana Mateu', NULL, NULL, 13, NULL),
(38, 'Ana Ontañon', NULL, NULL, 52, NULL),
(39, 'Ana Palet', '', '', 28, ''),
(40, 'Ana Valencia', '', '', 4, ''),
(41, 'Andrea García', NULL, NULL, 76, NULL),
(42, 'Andrés Gimeno', NULL, NULL, 45, NULL),
(43, 'Andrés López', NULL, NULL, 71, NULL),
(44, 'Andres Morillas Sanjuan', '', '', 87, ''),
(45, 'Angel Corroto', '', '', 35, ''),
(46, 'Angel Fernández', '', '', 27, ''),
(47, 'Angel González', '', '', 4, ''),
(48, 'Angel Insa', NULL, NULL, 42, NULL),
(49, 'Angel Puertolas', NULL, NULL, 41, NULL),
(50, 'Angel Rubio', '', '', 39, ''),
(51, 'Angeles Abad', NULL, NULL, 42, NULL),
(52, 'Angelica Castaño', NULL, NULL, 35, NULL),
(53, 'Ankie Kleijberg', NULL, NULL, 68, NULL),
(54, 'Anna Aguilella', NULL, NULL, 24, NULL),
(55, 'Antje Lippold', NULL, NULL, 21, NULL),
(56, 'Antonio Carmona', NULL, NULL, 21, NULL),
(57, 'Antonio Fernández Moreno', '', '', 22, ''),
(58, 'Antonio López', '', '', 87, ''),
(59, 'Antonio Molina', '', '', 79, ''),
(60, 'Antonio Ojeda', NULL, NULL, 15, NULL),
(61, 'Antonio Santos', '', '', 67, ''),
(62, 'Antonio Tovar', '', '', 42, ''),
(63, 'Arabia Vidal', NULL, NULL, 77, NULL),
(64, 'Araceli Montero', NULL, NULL, 7, NULL),
(65, 'Aracelis Rodríguez', NULL, NULL, 18, NULL),
(66, 'Arcadio Nohales', NULL, NULL, 81, NULL),
(67, 'Ariadna Soriano', NULL, NULL, 42, NULL),
(68, 'Arianna Bucci', NULL, NULL, 50, NULL),
(69, 'Arturo Conejera', NULL, NULL, 22, NULL),
(70, 'Asier García', '', '', 36, ''),
(71, 'Astrid Hoffmeister', NULL, NULL, 51, NULL),
(72, 'Barbara Flemming', NULL, NULL, 68, NULL),
(73, 'Beatriz Juan', '', '', 87, ''),
(74, 'Belén de Carvalho', '', '', 30, ''),
(75, 'Berit Kittel', '', '', 39, ''),
(76, 'Carles Fortuny', NULL, NULL, 18, NULL),
(77, 'Carlos Alvarez', NULL, NULL, 71, NULL),
(78, 'Carlos Casado', NULL, NULL, 68, NULL),
(79, 'Carlos Iglesias', NULL, NULL, 75, NULL),
(80, 'Carlos Martínez R.', '', '', 35, ''),
(81, 'Carlos Pérez', '', '', 48, ''),
(82, 'Carlos Pulpón', '', '', 35, ''),
(83, 'Carlos Serra', NULL, NULL, 38, NULL),
(84, 'Carmen Alos', NULL, NULL, 13, NULL),
(85, 'Carmen Antequera', NULL, NULL, 43, NULL),
(86, 'Carmen Briceño', NULL, NULL, 42, NULL),
(87, 'Carmen Sotomayor', NULL, NULL, 35, NULL),
(88, 'Carmen Vázquez', NULL, NULL, 50, NULL),
(89, 'Carolina Verdú', NULL, NULL, 78, NULL),
(90, 'Celeste Zarzosa', NULL, NULL, 48, NULL),
(91, 'Celso Valle', NULL, NULL, 52, NULL),
(92, 'Cesar Losada Mera', '', '', 35, ''),
(93, 'Charly Castañer', '', '', 39, ''),
(94, 'Clara Ruisánchez', '', '', 80, ''),
(95, 'Concepción Fernández', NULL, NULL, 48, NULL),
(96, 'Concepción López', NULL, NULL, 49, NULL),
(97, 'Cristian Verde', NULL, NULL, 71, NULL),
(98, 'Cristina Blanco', '', '', 27, ''),
(99, 'Cristina Cortijo', '', '', 35, ''),
(100, 'Cristina García', NULL, NULL, 44, NULL),
(101, 'Cristina González', '', '', 75, ''),
(102, 'Cristina Pedraz', '', '', 2, ''),
(103, 'Cristina Ruill', '', '', 44, ''),
(104, 'Cristofol Albert', NULL, NULL, 43, NULL),
(105, 'Damian Alarcon', NULL, NULL, 30, NULL),
(106, 'Daniel Amigo', NULL, NULL, 7, NULL),
(107, 'Daniel Luna', NULL, NULL, 40, NULL),
(108, 'Daniel Menéndez', NULL, NULL, 31, NULL),
(109, 'David Alique', NULL, NULL, 28, NULL),
(110, 'David Asenjo', '', '', 42, ''),
(111, 'David Escribano', '', '', 27, ''),
(112, 'David Ferrer', NULL, NULL, 7, NULL),
(113, 'David Flix', NULL, NULL, 67, NULL),
(114, 'David Gómez-Calcerrada', '', '', 48, ''),
(115, 'David Gonzalbo', NULL, NULL, 31, NULL),
(116, 'David Molina', '', '', 42, ''),
(117, 'David Parejo', NULL, NULL, 17, NULL),
(118, 'David Sepulveda', NULL, NULL, 7, NULL),
(119, 'Debra Howard', NULL, NULL, 48, NULL),
(120, 'Diana Cozar', NULL, NULL, 13, NULL),
(121, 'Diana García', NULL, NULL, 61, NULL),
(122, 'Diego Rouco', NULL, NULL, 63, NULL),
(123, 'Dolores López', NULL, NULL, 78, NULL),
(124, 'Dolores Sampedro', NULL, NULL, 81, NULL),
(125, 'Eduard Bonet', NULL, NULL, 7, NULL),
(126, 'Eduard Giralt Canadell', '', '', 67, ''),
(127, 'Eduardo Adán', '', '', 39, ''),
(128, 'Efren Lucas', NULL, NULL, 68, NULL),
(129, 'Elena Alberich', NULL, NULL, 13, NULL),
(130, 'Elena Chinchilla', NULL, NULL, 43, NULL),
(131, 'Elena Miguel', '', '', 35, ''),
(132, 'Elena Sin', NULL, NULL, 42, NULL),
(133, 'Elisenda Huidobro', NULL, NULL, 13, NULL),
(134, 'Elvira Pertierra', '', '', 80, ''),
(135, 'Emilio Calvo', NULL, NULL, 31, NULL),
(136, 'Emilio José Pedrazuela', NULL, NULL, 30, NULL),
(137, 'Enma Gutiérrez', '', '', 60, ''),
(138, 'Enric García', NULL, NULL, 81, NULL),
(139, 'Enric Lleixa', NULL, NULL, 7, NULL),
(140, 'Enrique Alonso Queija', '', '', 66, ''),
(141, 'Enrique Camarero', '', '', 35, ''),
(142, 'Enrique Grau', NULL, NULL, 24, NULL),
(143, 'Enrique Herbera', NULL, NULL, 7, NULL),
(144, 'Enrique Lleixa', NULL, NULL, 7, NULL),
(145, 'Enrique Sendra', NULL, NULL, 71, NULL),
(146, 'Ernesto Sorribes', NULL, NULL, 81, NULL),
(147, 'Estefanía Pérez', NULL, NULL, 30, NULL),
(148, 'Estíbaliz Pereda Navarro', '', '', 28, ''),
(149, 'Estíbaliz Pujana', '', '', 43, ''),
(150, 'Eugenio Villares', NULL, NULL, 27, NULL),
(151, 'Eva Grau', NULL, NULL, 64, NULL),
(152, 'Eva Vázquez Morales', '', '', 42, ''),
(153, 'Fermin Gil', NULL, NULL, 43, NULL),
(154, 'Fernando Benet', NULL, NULL, 81, NULL),
(155, 'Fernando Bibián', '', '', 4, ''),
(156, 'Fernando Cardeña', '', '', 80, ''),
(157, 'Fernando De La Fuente', '', '', 42, ''),
(158, 'Fito Rodríguez', '', '', 80, ''),
(159, 'Francisco Aguilera', NULL, NULL, 17, NULL),
(160, 'Francisco de la Cruz', '', '', 88, ''),
(161, 'Francisco Esteban', NULL, NULL, 24, NULL),
(162, 'Francisco Javier Jaen', '', '', 75, ''),
(163, 'Francisco Javier Luque', NULL, NULL, 61, NULL),
(164, 'Francisco José Sousa', NULL, NULL, 71, NULL),
(165, 'Francisco Maestre', NULL, NULL, 43, NULL),
(166, 'Francisco Martín', NULL, NULL, 74, NULL),
(167, 'Francisco Medina', NULL, NULL, 13, NULL),
(168, 'Francisco Pérez', NULL, NULL, 53, NULL),
(169, 'Francisco Sobral', NULL, NULL, 63, NULL),
(170, 'Gabriel Gómez', '', '', 42, ''),
(171, 'Gabriel Martín', NULL, NULL, 60, NULL),
(172, 'Gema López', '', '', 35, ''),
(173, 'Gemma González', '', '', 80, ''),
(174, 'Gerard Barberá', NULL, NULL, 58, NULL),
(175, 'Gerardo Alvarez', '', '', 62, ''),
(176, 'Gerardo González', NULL, NULL, 35, NULL),
(177, 'Gisela Solis', NULL, NULL, 44, NULL),
(178, 'Gorka Pozuelo', '', '', 43, ''),
(179, 'Gregorio Conde', NULL, NULL, 7, NULL),
(180, 'Gustavo Deus', '', '', 31, ''),
(181, 'Iago Sánchez', NULL, NULL, 71, NULL),
(182, 'Iban Cubedo', NULL, NULL, 24, NULL),
(183, 'Imanol López', NULL, NULL, 42, NULL),
(184, 'Iñaki García', '', '', 36, ''),
(185, 'Inmaculada Rubio', '', '', 62, ''),
(186, 'Irati Diego', '', '', 43, ''),
(187, 'Irena', '', '', 42, ''),
(188, 'Irene Artacho', NULL, NULL, 16, NULL),
(189, 'Isabel Gómez', NULL, NULL, 29, NULL),
(190, 'Isabel Natera', '', '', 36, ''),
(191, 'Isabel Rodríguez', NULL, NULL, 74, NULL),
(192, 'Isidoro Vázquez', NULL, NULL, 27, NULL),
(193, 'Ismael Pérez', '', '', 13, ''),
(194, 'Israel Díaz', '', '', 22, ''),
(195, 'Israel Fernández', NULL, NULL, 75, NULL),
(196, 'Ivan Amez Alvarez', '', '', 80, ''),
(197, 'Iván Pardo García', '', '', 75, ''),
(198, 'Iván San Antonio', NULL, NULL, 16, NULL),
(199, 'Iván Sánchez García', '', '', 35, ''),
(200, 'Jacqueline Holemans', NULL, NULL, 67, NULL),
(201, 'Jaime Gamir', NULL, NULL, 8, NULL),
(202, 'Jara Pérez', '', '', 4, ''),
(203, 'Jaume Fernández', NULL, NULL, 18, NULL),
(204, 'Javier Gómez', NULL, NULL, 65, NULL),
(205, 'Javier Iniesta', '', '', 75, ''),
(206, 'Javier López', NULL, NULL, 67, NULL),
(207, 'Javier Martín', '', '', 4, ''),
(208, 'Javier Martínez', '', '', 62, ''),
(209, 'Javier Mora Canales', '', '', 87, ''),
(210, 'Javier Ovejero', NULL, NULL, 35, NULL),
(211, 'Javier Sanchis', NULL, NULL, 52, NULL),
(212, 'Javier Santisteban', '', '', 16, ''),
(213, 'Jenifer Tolín', '', '', 48, ''),
(214, 'Jennifer Tolín', NULL, NULL, 48, NULL),
(215, 'Jenny Funcke', NULL, NULL, 7, NULL),
(216, 'Jerónimo Martínez', NULL, NULL, 68, NULL),
(217, 'Jessica Graciano', '', '', 48, ''),
(218, 'Jesús Crespo', NULL, NULL, 55, NULL),
(219, 'Jesús Cuellar', NULL, NULL, 35, NULL),
(220, 'Jesús Gómez', '', '', 4, ''),
(221, 'Jesús Manuel Romero', NULL, NULL, 59, NULL),
(222, 'Joan Castillo', '', '', 52, ''),
(223, 'Joan Wenceslao Pastor', NULL, NULL, 74, NULL),
(224, 'Joaquín Andrés', '', '', 4, ''),
(225, 'Jonathan Guillen', NULL, NULL, 77, NULL),
(226, 'Jordi Boix', NULL, NULL, 13, NULL),
(227, 'Jordi Gómez', NULL, NULL, 13, NULL),
(228, 'Jorge Arcas Perales', '', '', 42, ''),
(229, 'Jorge Bala', '', '', 42, ''),
(230, 'Jorge Muñoz Leal', '', '', 27, ''),
(231, 'Jorge Valero', NULL, NULL, 42, NULL),
(232, 'José Angel Beired', '', '', 73, ''),
(233, 'José Angel Torres', NULL, NULL, 71, NULL),
(234, 'José Antonio Encinas', '', '', 87, ''),
(235, 'José Antonio Pascual', NULL, NULL, 42, NULL),
(236, 'José Antonio Vega', NULL, NULL, 4, NULL),
(237, 'José Carlos Iglesias', NULL, NULL, 75, NULL),
(238, 'José Castaño', NULL, NULL, 74, NULL),
(239, 'José Francisco Martorell', NULL, NULL, 65, NULL),
(240, 'José Guix', NULL, NULL, 65, NULL),
(241, 'José Luis García', NULL, NULL, 81, NULL),
(242, 'Jose Luis J. Mori', '', '', 2, ''),
(243, 'José Luis Prieto', NULL, NULL, 38, NULL),
(244, 'José Luis Quiroga', NULL, NULL, 21, NULL),
(245, 'José Luis Romero', NULL, NULL, 27, NULL),
(246, 'José Luis Sogorb', NULL, NULL, 45, NULL),
(247, 'José Mahillo', NULL, NULL, 48, NULL),
(248, 'José Manuel Basco', NULL, NULL, 59, NULL),
(249, 'José Manuel Linares', NULL, NULL, 72, NULL),
(250, 'José Martí', NULL, NULL, 43, NULL),
(251, 'José Mateo Moreno', NULL, NULL, 21, NULL),
(252, 'José Miguel Agustín', NULL, NULL, 4, NULL),
(253, 'José Miguel Morant', NULL, NULL, 48, NULL),
(254, 'José Miguel Paredes', NULL, NULL, 72, NULL),
(255, 'José Moreno', NULL, NULL, 26, NULL),
(256, 'José Pavon', NULL, NULL, 29, NULL),
(257, 'José Peris', NULL, NULL, 64, NULL),
(258, 'Jose Ramón López', '', '', 35, ''),
(259, 'José Santos Luna', '', '', 27, ''),
(260, 'José Soliño', NULL, NULL, 71, NULL),
(261, 'Josep Barbera', NULL, NULL, 58, NULL),
(262, 'Josep Mª Pineda', NULL, NULL, 74, NULL),
(263, 'Juan', '', '', 3, ''),
(264, 'Juan Antonio Martinez', '', 'juansgaviota@gmail.com', 35, ''),
(265, 'Juan Campin', NULL, NULL, 48, NULL),
(266, 'Juan Carlos Blas', NULL, NULL, 35, NULL),
(267, 'Juan Carlos Companys', NULL, NULL, 24, NULL),
(268, 'Juan Carlos Hinojal', NULL, NULL, 60, NULL),
(269, 'Juan Carlos Redondo', '', '', 70, ''),
(270, 'Juan Carlos Ruiz', '', '', 35, ''),
(271, 'Juan del Amo', NULL, NULL, 40, NULL),
(272, 'Juan Escos', '', '', 49, ''),
(273, 'Juan Francisco Pelegrin', NULL, NULL, 49, NULL),
(274, 'Juan Francisco Torres', NULL, NULL, 7, NULL),
(275, 'Juan José Espadas', NULL, NULL, 13, NULL),
(276, 'Juan José González', '', '', 62, ''),
(277, 'Juan José Paz', '', '', 12, ''),
(278, 'Juan Luis Colmano', NULL, NULL, 42, NULL),
(279, 'Juan Manuel Caballo', NULL, NULL, 43, NULL),
(280, 'Juan Martín de las Blancas', '', '', 27, ''),
(281, 'Juan Miguel Cifuentes', NULL, NULL, 43, NULL),
(282, 'Juan Pablo Díaz', NULL, NULL, 27, NULL),
(283, 'Juan Pedro Martínez', NULL, NULL, 15, NULL),
(284, 'Juan Rodríguez', '', '', 48, ''),
(285, 'Juan Solanes', NULL, NULL, 77, NULL),
(286, 'Judith Cortes', NULL, NULL, 42, NULL),
(287, 'Judith Franco', '', '', 16, ''),
(288, 'Judith Herms', NULL, NULL, 18, NULL),
(289, 'Julia Faci Green', '', '', 42, ''),
(290, 'Julian Sánchez', NULL, NULL, 74, NULL),
(291, 'Julio Freire', '', '', 60, ''),
(292, 'Katia Moeller', NULL, NULL, 14, NULL),
(293, 'Katy Navarro', NULL, NULL, 60, NULL),
(294, 'Laura Carrasco', NULL, NULL, 18, NULL),
(295, 'Laura Chiva', NULL, NULL, 7, NULL),
(296, 'Laura Monrabal', '', '', 42, ''),
(297, 'Leire Herrera', '', '', 36, ''),
(298, 'Lorena Díez', '', '', 87, ''),
(299, 'Lorena García', NULL, NULL, 60, NULL),
(300, 'Lorena Gargoles', NULL, NULL, 13, NULL),
(301, 'Lourdes Giménez', NULL, NULL, 31, NULL),
(302, 'Lourdes Peñarrocha', NULL, NULL, 68, NULL),
(303, 'Lourdes Rivera', '', '', 48, ''),
(304, 'Lucía Montalbán', '', '', 42, ''),
(305, 'Lucía Romero', '', '', 59, ''),
(306, 'Luciano Fernández', '', '', 48, ''),
(307, 'Luis Alberto Pereira', NULL, NULL, 60, NULL),
(308, 'Luis Carlos Sanchez', NULL, NULL, 4, NULL),
(309, 'Luis de Frías', '', '', 48, ''),
(310, 'Luis Ignacio Carazo', NULL, NULL, 74, NULL),
(311, 'Luis Luque', NULL, NULL, 75, NULL),
(312, 'Luis Miguel Rodrigo', '', '', 87, ''),
(313, 'Luis Miguel Rodriguez', '', '', 48, ''),
(314, 'Luisa Fernanda Millan', '', '', 62, ''),
(315, 'Luna Ramírez', NULL, NULL, 52, NULL),
(316, 'Maitane Luengo', '', '', 36, ''),
(317, 'Maite Guerrero', '', '', 35, ''),
(318, 'Manel Martínez', NULL, NULL, 74, NULL),
(319, 'Manuel Basco', NULL, NULL, 59, NULL),
(320, 'Manuel Jesús García', NULL, NULL, 9, NULL),
(321, 'Manuel Lara', NULL, NULL, 18, NULL),
(322, 'Manuel peña', '', '', 80, ''),
(323, 'Manuel Santomé', NULL, NULL, 71, NULL),
(324, 'Mar Bermúdez', NULL, NULL, 10, NULL),
(325, 'Marc Rabada', NULL, NULL, 44, NULL),
(326, 'Marco Maldonado', '', '', 39, ''),
(327, 'Marcos Martínez', NULL, NULL, 65, NULL),
(328, 'María López', NULL, NULL, 74, NULL),
(329, 'Maria Nogueira', '', '', 25, ''),
(330, 'Marina López', NULL, NULL, 18, NULL),
(331, 'Mario Rodríguez', NULL, NULL, 79, NULL),
(332, 'Marisa Jarabo', NULL, NULL, 79, NULL),
(333, 'Marta de la Rosa', NULL, NULL, 81, NULL),
(334, 'Marta Gregorio', NULL, NULL, 71, NULL),
(335, 'Marta Jiménez', '', '', 4, ''),
(336, 'Marta Ponce', '', '', 42, ''),
(337, 'Marta Sánchez', '', '', 87, ''),
(338, 'Marta Solar', '', '', 31, ''),
(339, 'Massimiliano Miggiano', NULL, NULL, 75, NULL),
(340, 'Matias Monleón', NULL, NULL, 43, NULL),
(341, 'Matias Rodríguez', NULL, NULL, 75, NULL),
(342, 'Mayte Pérez', '', '', 80, ''),
(343, 'Menchu Melcom', '', '', 28, ''),
(344, 'Mercedes Fernández', NULL, NULL, 68, NULL),
(345, 'Michael Volkert', NULL, NULL, 50, NULL),
(346, 'Miguel Angel Fernández', NULL, NULL, 80, NULL),
(347, 'Miguel Angel García', NULL, NULL, 35, NULL),
(348, 'Miguel Angel Morales', NULL, NULL, 4, NULL),
(349, 'Miguel Angel Soriano', NULL, NULL, 68, NULL),
(350, 'Miguel García Rodríguez', '', '', 71, ''),
(351, 'Mireia Carrascoso', NULL, NULL, 44, NULL),
(352, 'Miriam García', NULL, NULL, 58, NULL),
(353, 'Mónica Muñiz', NULL, NULL, 30, NULL),
(354, 'Mónica Rodríguez', '', '', 2, ''),
(355, 'Mónica Saavedra', NULL, NULL, 55, NULL),
(356, 'Monica Zaballa', '', '', 60, ''),
(357, 'Montserrat Calvet', NULL, NULL, 7, NULL),
(358, 'María José Manzano', NULL, NULL, 42, NULL),
(359, 'Narciso Leita', NULL, NULL, 49, NULL),
(360, 'Natalia Cuadrado', NULL, NULL, 21, NULL),
(361, 'Natividad Ruiz García', '', '', 87, ''),
(362, 'Natividad Soler', NULL, NULL, 68, NULL),
(363, 'Neus Baró', NULL, NULL, 13, NULL),
(364, 'Noelia Gimeno', NULL, NULL, 64, NULL),
(365, 'Noelia Mouchet', '', '', 75, ''),
(366, 'Nuria Alonso', NULL, NULL, 18, NULL),
(367, 'Nuria Costa', NULL, NULL, 74, NULL),
(368, 'Nuria Díez', '', '', 80, ''),
(369, 'Nuria Fortuny', NULL, NULL, 18, NULL),
(370, 'Nuria Morell Nadal', '', '', 74, ''),
(371, 'Olga Palomares', '', '', 28, ''),
(372, 'Oria Micó', NULL, NULL, 78, NULL),
(373, 'Oscar Bravo', NULL, NULL, 21, NULL),
(374, 'Oscar Muñiz', '', '', 40, ''),
(375, 'Oscar Reboredo', NULL, NULL, 18, NULL),
(376, 'Oscar Sacristan', NULL, NULL, 48, NULL),
(377, 'Pablo Ballesta', NULL, NULL, 10, NULL),
(378, 'Pablo Miró', NULL, NULL, 81, NULL),
(379, 'Paloma Faci Green', '', '', 42, ''),
(380, 'Pau Serrano Ciratusa', '', '', 42, ''),
(381, 'Paula de Lucas', NULL, NULL, 27, NULL),
(382, 'Paula Rello', NULL, NULL, 27, NULL),
(383, 'Paulino Iranzo', NULL, NULL, 65, NULL),
(384, 'Pedro Delgado Fernandez', '', '', 87, ''),
(385, 'Pedro Jesús Tazón', NULL, NULL, 60, NULL),
(386, 'Pedro Martínez', '', '', 36, ''),
(387, 'pepe', '', 'pepe@pepe.com', 3, ''),
(388, 'pepepepe', '', '', 3, ''),
(389, 'Pilar Collado', '', '', 39, ''),
(390, 'Pilar Matesanz', NULL, NULL, 79, NULL),
(391, 'Pilar Rodríguez', NULL, NULL, 60, NULL),
(392, 'Rachel Stevens', NULL, NULL, 58, NULL),
(393, 'Rafael Altava', NULL, NULL, 24, NULL),
(394, 'Rafael Camacho', NULL, NULL, 75, NULL),
(395, 'Rafael Fernández', NULL, NULL, 65, NULL),
(396, 'Rafael García', NULL, NULL, 76, NULL),
(397, 'Rafael Torregrosa', NULL, NULL, 24, NULL),
(398, 'Ramón Arribas', '', '', 2, ''),
(399, 'Ramón García Maroto', '', '', 16, ''),
(400, 'Raquel Frago', NULL, NULL, 49, NULL),
(401, 'Raquel Garrido', NULL, NULL, 27, NULL),
(402, 'Raúl Sánchez', NULL, NULL, 27, NULL),
(403, 'Remedios Torres', NULL, NULL, 68, NULL),
(404, 'Reyes García', NULL, NULL, 31, NULL),
(405, 'Ricardo Benito', NULL, NULL, 79, NULL),
(406, 'Ricardo Martínez', NULL, NULL, 29, NULL),
(407, 'Ricardo Santolaya', '', '', 88, ''),
(408, 'Roberto Castro', NULL, NULL, 35, NULL),
(409, 'Roberto Iñigo', NULL, NULL, 16, NULL),
(410, 'Roberto Reina Vega', '', '', 48, ''),
(411, 'Rocio Hermelo', NULL, NULL, 71, NULL),
(412, 'Rocio Santos', NULL, NULL, 61, NULL),
(413, 'Rodrigo González', '', '', 48, ''),
(414, 'Roque Alonso', '', '', 40, ''),
(415, 'Rosa Rubio', '', '', 28, ''),
(416, 'Ruben Jurado', NULL, NULL, 44, NULL),
(417, 'Ruben Lopera', NULL, NULL, 53, NULL),
(418, 'Ruben Montero', NULL, NULL, 48, NULL),
(419, 'Sabina González', NULL, NULL, 50, NULL),
(420, 'Salvador Martí', NULL, NULL, 67, NULL),
(421, 'Sandra Gracia', '', '', 42, ''),
(422, 'Sara Bellido', NULL, NULL, 14, NULL),
(423, 'Sara Lara', '', '', 43, ''),
(424, 'Sara Montila', NULL, NULL, 28, NULL),
(425, 'Sara Montoya', NULL, NULL, 35, NULL),
(426, 'Sebastian González', NULL, NULL, 7, NULL),
(427, 'Sergio Casalins', NULL, NULL, 30, NULL),
(428, 'Sergio Colomé', NULL, NULL, 42, NULL),
(429, 'Sergio García', NULL, NULL, 76, NULL),
(430, 'Sergio Martín', NULL, NULL, 42, NULL),
(431, 'Sergio Romeo', '', '', 42, ''),
(432, 'Sergio Ruiz', NULL, NULL, 22, NULL),
(433, 'Sergio Tella', '', '', 49, ''),
(434, 'Sheila Giménez', '', '', 42, ''),
(435, 'Silvia León', NULL, NULL, 81, NULL),
(436, 'Silvia Perea', '', '', 79, ''),
(437, 'Silvia Rodríguez', NULL, NULL, 74, NULL),
(438, 'Sofía Díaz', '', '', 67, ''),
(439, 'Sonia Asensio', NULL, NULL, 10, NULL),
(440, 'Sonia Conejero', NULL, NULL, 78, NULL),
(441, 'Stefan Eggenschwiler', NULL, NULL, 72, NULL),
(442, 'Stina Sandquist', NULL, NULL, 17, NULL),
(443, 'Tamara Vidal', NULL, NULL, 44, NULL),
(444, 'Tomás Pérez Ayuso', '', '', 88, ''),
(445, 'Toni Rios', NULL, NULL, 13, NULL),
(446, 'Ubaldo Delgado', NULL, NULL, 10, NULL),
(447, 'Valentín de la Mesa', NULL, NULL, 24, NULL),
(448, 'Vanessa Calpe', NULL, NULL, 76, NULL),
(449, 'Vanessa Hermoso', NULL, NULL, 9, NULL),
(450, 'Verónica Díez Gómez', '', '', 60, ''),
(451, 'Verónica Fernández', '', '', 80, ''),
(452, 'Verónica Ibañez', NULL, NULL, 17, NULL),
(453, 'Verónica Rodríguez', NULL, NULL, 48, NULL),
(454, 'Vicente Cambra', NULL, NULL, 46, NULL),
(455, 'Vicente Martín', '', '', 4, ''),
(456, 'Vicente Micó', NULL, NULL, 78, NULL),
(457, 'Vicente Villalba', NULL, NULL, 43, NULL),
(458, 'Victor García', NULL, NULL, 53, NULL),
(459, 'Virginia García', '', '', 30, ''),
(460, 'Wladimiro', '', '', 42, ''),
(461, 'Xavier López', NULL, NULL, 67, NULL),
(462, 'Yolanda Larena', NULL, NULL, 58, NULL),
(463, 'Yolanda Moreno', NULL, NULL, 43, NULL),
(464, 'Yolanda Torres', NULL, NULL, 52, NULL),
(465, 'Yulia Morugova', '', '', 32, ''),
(466, 'Maria Jorge', '', '', 2, ''),
(467, 'Carmen Gutiérrez', '', '', 2, ''),
(468, 'Veronica Roda', '', '', 87, ''),
(469, 'Elena Cardenal', '', '', 4, ''),
(470, 'Natalia Peral', '', '', 2, ''),
(471, 'Antonio Fernandez Ortiz', '', '', 22, ''),
(472, 'Oscar Uceda', '', '', 27, ''),
(473, 'Iván García Puebla', '', '', 42, ''),
(474, 'Ainhoa de Frias', '', '', 48, ''),
(475, 'Sonia García', '', '', 48, ''),
(476, 'Jesus Perea', '', '', 48, ''),
(477, 'Dolores Rosas', '', '', 87, ''),
(478, 'Pablo Martínez', '', '', 87, ''),
(479, 'Sara María Lara', '', '', 43, ''),
(480, 'Fabian Santolaya', '', '', 88, ''),
(481, 'David Calviño', '', '', 35, ''),
(482, 'Yaiza Caballero Fernández', '', '', 80, ''),
(483, 'Carlos Escribano', '', '', 35, ''),
(484, 'Rosa Maria Cañadillas', '', '', 35, ''),
(485, 'Arancha Ruipérez Moslares', '', '', 35, ''),
(486, 'Rubén García', '', '', 35, ''),
(487, 'Carlos Martínez S.', '', '', 35, ''),
(488, 'Sandra Rodrigo', '', '', 87, ''),
(489, 'Sonia Gil', '', '', 16, ''),
(490, 'Beatriz Sánchez Casares', '', '', 16, ''),
(491, 'Isabel Fernández', '', '', 16, ''),
(492, 'Mari Carmen Martí Sanz', '', '', 16, ''),
(493, 'Irene Escribano', '', '', 22, ''),
(494, 'Cynthia Sánchez', '', '', 22, ''),
(496, 'Irene Blanco', '', '', 28, ''),
(497, 'Oscar López', '', '', 28, ''),
(498, 'Virginia Pastor', '', '', 28, ''),
(499, 'Ruben López', '', '', 48, ''),
(500, 'Ana Belén Ondategui Casas', '', '', 80, ''),
(501, 'Jose Luis de la Vara', '', '', 16, ''),
(502, 'Yaiza', '', '', 16, ''),
(504, 'Luis Miguel Jiménez', '', '', 2, ''),
(505, 'Susana Martín', '', '', 28, ''),
(506, 'Javier Perez', '', '', 28, ''),
(507, 'Beatriz Gómez', '', '', 30, ''),
(508, 'Rodrigo García-Vidal', '', '', 37, ''),
(509, 'Pablo Parra', '', '', 55, ''),
(510, 'Daniel Zamora', '', '', 62, ''),
(511, 'Gregory Bielle-Bidalot', '', '', 93, ''),
(512, 'Ludiwine Dabezies', '', '', 93, ''),
(513, 'Alberto Pérez', '', '', 80, ''),
(514, 'Rómulo Parrilla', '', '', 35, ''),
(515, 'Javier González', '', '', 35, ''),
(516, 'Rafael Arjona', '', '', 9, ''),
(517, 'Nina Causevic', '', '', 9, ''),
(518, 'Eli Brandsaeter', '', '', 28, ''),
(519, 'Nicolas Alcaide', '', '', 28, ''),
(520, 'Patricia Sevillano García', '', '', 80, ''),
(521, 'Daniel Colás Avilés', '', '', 80, ''),
(522, 'Marta Acero', '', '', 75, ''),
(523, 'Jesús Fernández Crespo', '', '', 55, ''),
(524, 'Susana Calvelo', '', '', 16, ''),
(525, 'Laura', '', '', 80, ''),
(526, 'Beatriz', '', '', 80, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--
-- Creación: 08-01-2015 a las 18:38:46
--

DROP TABLE IF EXISTS `inscripciones`;
CREATE TABLE IF NOT EXISTS `inscripciones` (
`ID` int(4) NOT NULL,
  `Prueba` int(4) NOT NULL DEFAULT '1',
  `Perro` int(4) NOT NULL,
  `Dorsal` int(4) NOT NULL DEFAULT '0',
  `Celo` tinyint(1) NOT NULL DEFAULT '0',
  `Observaciones` varchar(255) DEFAULT NULL,
  `Equipo` int(4) DEFAULT NULL,
  `Jornadas` int(4) NOT NULL DEFAULT '0',
  `Pagado` int(4) NOT NULL DEFAULT '24'
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `inscripciones`:
--   `Perro`
--       `perros` -> `ID`
--   `Prueba`
--       `pruebas` -> `ID`
--   `Equipo`
--       `equipos` -> `ID`
--

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`ID`, `Prueba`, `Perro`, `Dorsal`, `Celo`, `Observaciones`, `Equipo`, `Jornadas`, `Pagado`) VALUES
(1, 3, 220, 1, 0, '', 2, 3, 0),
(2, 3, 559, 2, 0, '', 2, 3, 0),
(3, 3, 560, 3, 0, '', 2, 3, 0),
(4, 3, 440, 4, 0, '', 2, 3, 0),
(7, 3, 371, 7, 0, '', 2, 2, -12),
(8, 3, 372, 8, 0, '', 2, 2, -12),
(9, 3, 356, 9, 0, '', 2, 1, -12),
(10, 3, 358, 10, 0, '', 2, 1, -12),
(11, 3, 357, 11, 0, '', 2, 1, -12),
(12, 3, 510, 12, 0, '', 2, 2, -12),
(13, 3, 561, 13, 0, '', 2, 3, 0),
(14, 3, 412, 14, 0, '', 2, 2, -12),
(15, 3, 361, 15, 0, '', 2, 3, 0),
(16, 3, 378, 16, 0, '', 2, 3, 0),
(17, 3, 379, 17, 0, '', 2, 3, 0),
(18, 3, 25, 18, 0, '', 2, 3, 0),
(19, 3, 562, 19, 0, '', 2, 3, 0),
(20, 3, 563, 20, 0, '', 2, 3, 0),
(21, 3, 564, 21, 0, '', 2, 3, 0),
(22, 3, 360, 22, 0, '', 2, 3, 0),
(23, 3, 411, 23, 0, '', 2, 3, 0),
(24, 3, 323, 24, 0, '', 2, 3, 0),
(25, 3, 359, 25, 0, '', 2, 3, 0),
(26, 3, 565, 26, 0, '', 2, 3, 0),
(27, 3, 514, 27, 0, '', 2, 1, -12),
(28, 3, 24, 28, 0, '', 2, 2, -12),
(29, 3, 513, 29, 0, '', 2, 2, -12),
(30, 3, 566, 30, 0, '', 2, 2, -12),
(31, 3, 567, 31, 0, '', 2, 2, -12),
(32, 3, 568, 32, 0, '', 2, 2, -12),
(33, 3, 569, 33, 0, '', 2, 2, -12),
(34, 3, 382, 35, 0, '', 2, 2, -12),
(35, 3, 383, 36, 0, '', 2, 2, -12),
(36, 3, 571, 37, 0, '', 2, 2, -12),
(37, 3, 572, 38, 0, '', 2, 2, -12),
(38, 3, 573, 39, 0, '', 2, 2, -12),
(39, 3, 574, 40, 0, '', 2, 1, -12),
(40, 3, 521, 41, 0, '', 2, 1, -12),
(41, 3, 575, 42, 0, '', 2, 2, -12),
(42, 3, 423, 43, 0, '', 2, 2, -12),
(43, 3, 94, 44, 0, '', 2, 1, -12),
(44, 3, 401, 45, 0, '', 2, 1, -12),
(45, 3, 61, 46, 0, '', 2, 1, -12),
(46, 3, 113, 47, 0, '', 2, 3, 0),
(47, 3, 57, 48, 0, '', 2, 2, -12),
(48, 3, 398, 49, 0, '', 2, 1, -12),
(49, 3, 352, 50, 0, '', 2, 3, 0),
(50, 3, 351, 51, 0, '', 2, 3, 0),
(51, 3, 350, 52, 0, '', 2, 3, 0),
(52, 3, 576, 53, 0, '', 2, 2, -12),
(53, 3, 577, 54, 0, '', 2, 3, 0),
(54, 3, 570, 34, 0, '', 2, 2, -12),
(57, 3, 581, 55, 0, '', 2, 3, 0),
(58, 3, 583, 56, 0, '', 2, 3, 0),
(59, 3, 582, 57, 0, '', 2, 3, 0),
(62, 4, 584, 12, 0, '', 3, 3, 0),
(63, 4, 559, 11, 0, '', 3, 2, -12),
(64, 4, 440, 10, 0, '', 3, 3, 0),
(65, 4, 560, 9, 0, '', 3, 2, -12),
(66, 4, 18, 8, 0, '', 3, 3, 0),
(67, 4, 71, 6, 0, '', 3, 3, 0),
(68, 4, 220, 7, 0, '', 3, 2, -12),
(69, 4, 389, 2, 0, '', 3, 3, 0),
(70, 4, 387, 4, 0, '', 3, 3, 0),
(71, 4, 68, 5, 0, '', 3, 3, 0),
(72, 4, 391, 3, 0, '', 3, 3, 0),
(73, 4, 585, 1, 0, '', 3, 3, 0),
(74, 4, 371, 22, 0, '', 3, 1, -12),
(75, 4, 510, 26, 0, '', 3, 1, -12),
(76, 4, 356, 24, 0, '', 3, 1, -12),
(77, 4, 372, 23, 0, '', 3, 1, -12),
(78, 4, 377, 25, 0, '', 3, 2, -12),
(79, 4, 75, 19, 0, '', 3, 1, 0),
(80, 4, 410, 20, 0, '', 3, 3, 12),
(81, 4, 586, 21, 0, '', 3, 1, 0),
(82, 4, 565, 31, 0, '', 3, 2, -12),
(83, 4, 411, 32, 0, '', 3, 3, 0),
(84, 4, 323, 33, 0, '', 3, 3, 0),
(85, 4, 360, 30, 0, '', 3, 3, 0),
(86, 4, 359, 34, 0, '', 3, 3, 0),
(87, 4, 379, 28, 0, '', 3, 2, -12),
(88, 4, 25, 29, 0, '', 3, 3, 0),
(89, 4, 361, 27, 0, '', 3, 3, 0),
(90, 4, 514, 35, 0, '', 3, 2, -12),
(91, 4, 363, 37, 0, '', 3, 1, -12),
(92, 4, 309, 38, 0, '', 3, 1, -12),
(93, 4, 24, 36, 0, '', 3, 2, -12),
(94, 4, 365, 39, 0, '', 3, 3, 0),
(95, 4, 516, 41, 0, '', 3, 1, -12),
(96, 4, 587, 45, 0, '', 3, 3, 0),
(97, 4, 272, 42, 0, '', 3, 2, -12),
(98, 4, 241, 43, 0, '', 3, 1, -12),
(99, 4, 34, 40, 0, '', 3, 3, 0),
(100, 4, 253, 44, 0, '', 3, 1, -12),
(101, 4, 383, 50, 0, '', 3, 1, -12),
(102, 4, 588, 49, 0, '', 3, 1, -12),
(103, 4, 590, 46, 0, '', 3, 1, -12),
(104, 4, 589, 47, 0, '', 3, 1, -12),
(105, 4, 384, 48, 0, '', 3, 1, -12),
(106, 4, 314, 51, 0, '', 3, 1, -12),
(107, 4, 591, 52, 0, '', 3, 1, 0),
(108, 4, 418, 54, 0, '', 3, 2, 0),
(109, 4, 65, 53, 0, '', 3, 2, 0),
(110, 4, 592, 76, 0, '', 3, 3, 0),
(111, 4, 593, 77, 0, '', 3, 1, 0),
(112, 4, 520, 78, 0, '', 3, 1, 0),
(113, 4, 575, 82, 0, '', 3, 1, 0),
(114, 4, 159, 79, 0, '', 3, 1, 0),
(115, 4, 398, 89, 0, '', 3, 2, 0),
(116, 4, 94, 84, 0, '', 3, 2, 0),
(117, 4, 401, 85, 0, '', 3, 2, 0),
(118, 4, 522, 81, 0, '', 3, 2, 0),
(119, 4, 400, 80, 0, '', 3, 2, 0),
(120, 4, 113, 87, 0, '', 3, 2, 0),
(121, 4, 61, 86, 0, '', 3, 2, 0),
(122, 4, 57, 88, 0, '', 3, 2, 0),
(123, 4, 423, 83, 0, '', 3, 2, 0),
(124, 4, 595, 90, 0, '', 3, 2, 0),
(125, 4, 596, 92, 0, '', 3, 1, 0),
(126, 4, 597, 91, 0, '', 3, 1, 0),
(127, 4, 294, 95, 0, '', 3, 1, 0),
(128, 4, 405, 94, 0, '', 3, 1, 0),
(129, 4, 404, 93, 0, '', 3, 1, 0),
(130, 4, 397, 13, 0, '', 3, 3, 0),
(131, 4, 8, 14, 0, '', 3, 3, 0),
(132, 4, 78, 16, 0, '', 3, 3, 0),
(133, 4, 413, 17, 0, '', 3, 3, 0),
(134, 4, 330, 18, 0, '', 3, 3, 0),
(135, 4, 3, 15, 0, '', 3, 1, -12),
(136, 4, 598, 96, 0, '', 3, 3, 0),
(137, 4, 148, 97, 0, '', 3, 3, 0),
(138, 4, 599, 98, 0, '', 3, 2, 0),
(139, 4, 600, 99, 0, '', 3, 2, 0),
(140, 4, 601, 100, 0, '', 3, 1, 0),
(141, 4, 95, 101, 0, '', 3, 2, 0),
(142, 4, 602, 102, 0, '', 3, 3, 0),
(143, 4, 229, 104, 0, '', 3, 3, 0),
(144, 4, 10, 105, 0, '', 3, 3, 0),
(145, 4, 351, 106, 0, '', 3, 3, 0),
(146, 4, 350, 107, 0, '', 3, 3, 0),
(147, 4, 352, 103, 0, '', 3, 2, 0),
(148, 4, 576, 108, 0, '', 3, 1, 0),
(149, 4, 577, 110, 0, '', 3, 1, 0),
(150, 4, 603, 109, 0, '', 3, 3, 0),
(151, 4, 79, 56, 0, '', 3, 3, 0),
(152, 4, 427, 75, 0, '', 3, 3, 0),
(153, 4, 52, 64, 0, '', 3, 3, 0),
(154, 4, 84, 63, 0, '', 3, 3, 0),
(155, 4, 156, 61, 0, '', 3, 3, 0),
(156, 4, 424, 69, 0, '', 3, 3, 0),
(157, 4, 393, 68, 0, '', 3, 3, 0),
(158, 4, 428, 58, 0, '', 3, 3, 0),
(159, 4, 607, 60, 0, '', 3, 3, 0),
(160, 4, 608, 67, 0, '', 3, 3, 0),
(161, 4, 610, 59, 0, '', 3, 3, 0),
(162, 4, 609, 62, 0, '', 3, 3, 0),
(163, 4, 27, 71, 0, '', 3, 3, 0),
(164, 4, 51, 70, 0, '', 3, 3, 0),
(165, 4, 46, 74, 0, '', 3, 3, 0),
(166, 4, 31, 73, 0, '', 3, 3, 0),
(167, 4, 85, 72, 0, '', 3, 3, 0),
(168, 4, 606, 65, 0, '', 3, 2, 0),
(169, 4, 103, 66, 0, '', 3, 2, 0),
(170, 4, 605, 55, 0, '', 3, 1, 0),
(171, 4, 604, 57, 0, '', 3, 3, 0),
(172, 2, 585, 2, 0, '', 1, 1, 0),
(173, 2, 389, 3, 0, '', 1, 1, 0),
(174, 2, 556, 7, 0, '', 1, 1, 0),
(175, 2, 558, 8, 0, '', 1, 1, 0),
(176, 2, 119, 12, 0, '', 1, 1, 0),
(177, 2, 91, 13, 0, '', 1, 1, 0),
(178, 2, 351, 15, 0, '', 1, 1, 0),
(179, 2, 353, 10, 0, '', 1, 1, 0),
(180, 2, 559, 5, 0, '', 1, 1, 0),
(181, 2, 584, 6, 0, '', 1, 1, 0),
(182, 2, 560, 4, 0, '', 1, 1, 0),
(183, 2, 586, 9, 0, '', 1, 1, 0),
(184, 2, 510, 11, 0, '', 1, 1, 0),
(185, 2, 354, 1, 0, '', 1, 1, 0),
(186, 2, 293, 14, 0, '', 1, 1, 0),
(187, 5, 156, 65, 0, '', 4, 1, 0),
(188, 5, 424, 68, 0, '', 4, 1, 0),
(189, 5, 393, 67, 0, '', 4, 1, 0),
(190, 5, 607, 64, 0, '', 4, 3, 0),
(191, 5, 609, 66, 0, '', 4, 3, 0),
(192, 5, 350, 72, 0, '', 4, 3, 0),
(193, 5, 27, 69, 0, '', 4, 3, 0),
(194, 5, 31, 71, 0, '', 4, 3, 0),
(195, 5, 85, 70, 0, '', 4, 3, 0),
(196, 5, 514, 42, 0, '', 4, 3, 0),
(197, 5, 513, 44, 0, '', 4, 3, 0),
(198, 5, 24, 43, 0, '', 4, 3, 0),
(199, 5, 512, 46, 0, '', 4, 2, 0),
(200, 5, 568, 45, 0, '', 4, 3, 0),
(201, 5, 220, 6, 0, '', 4, 3, 0),
(202, 5, 57, 78, 0, '', 4, 3, 0),
(203, 5, 423, 75, 0, '', 4, 3, 0),
(204, 5, 399, 74, 0, '', 4, 1, 0),
(205, 5, 594, 79, 0, '', 4, 1, 0),
(206, 5, 401, 76, 0, '', 4, 1, 0),
(207, 5, 520, 73, 0, '', 4, 1, 0),
(208, 5, 113, 77, 0, '', 4, 2, 0),
(209, 5, 589, 50, 1, '', 4, 3, 0),
(210, 5, 314, 60, 0, '', 4, 3, 0),
(211, 5, 384, 51, 0, '', 4, 1, 0),
(212, 5, 571, 53, 0, '', 4, 2, 0),
(213, 5, 383, 55, 0, '', 4, 2, 0),
(214, 5, 590, 49, 0, '', 4, 2, 0),
(215, 5, 570, 52, 0, '', 4, 2, 0),
(216, 5, 382, 54, 0, '', 4, 2, 0),
(217, 5, 572, 57, 0, '', 4, 2, 0),
(218, 5, 573, 58, 0, '', 4, 2, 0),
(219, 5, 167, 22, 0, '', 4, 1, 0),
(220, 5, 357, 23, 0, '', 4, 1, 0),
(221, 5, 358, 21, 0, '', 4, 1, 0),
(222, 5, 356, 20, 0, '', 4, 1, 0),
(223, 5, 511, 18, 0, '', 4, 1, 0),
(224, 5, 370, 19, 0, '', 4, 1, 0),
(225, 5, 577, 96, 0, '', 4, 3, 0),
(226, 5, 603, 97, 0, '', 4, 3, 0),
(227, 5, 71, 5, 0, '', 4, 1, 0),
(228, 5, 559, 9, 0, '', 4, 1, 0),
(229, 5, 68, 4, 0, '', 4, 2, 0),
(230, 5, 440, 8, 0, '', 4, 3, 0),
(231, 5, 584, 10, 0, '', 4, 3, 0),
(232, 5, 3, 13, 0, '', 4, 3, 0),
(233, 5, 78, 14, 0, '', 4, 3, 0),
(234, 5, 397, 11, 0, '', 4, 3, 0),
(235, 5, 8, 12, 0, '', 4, 3, 0),
(236, 5, 330, 16, 0, '', 4, 3, 0),
(237, 5, 413, 15, 0, '', 4, 3, 0),
(238, 5, 601, 84, 0, '', 4, 3, 0),
(239, 5, 312, 92, 0, '', 4, 3, 0),
(240, 5, 407, 89, 0, '', 4, 3, 0),
(241, 5, 342, 91, 0, '', 4, 3, 0),
(242, 5, 408, 90, 0, '', 4, 3, 0),
(243, 5, 95, 88, 0, '', 4, 3, 0),
(244, 5, 602, 93, 0, '', 4, 3, 0),
(245, 5, 229, 94, 0, '', 4, 3, 0),
(246, 5, 10, 95, 0, '', 4, 1, 0),
(247, 5, 405, 81, 0, '', 4, 2, 0),
(248, 5, 404, 80, 0, '', 4, 2, 0),
(249, 5, 412, 30, 0, '', 4, 2, 0),
(250, 5, 361, 31, 0, '', 4, 3, 0),
(251, 5, 323, 40, 0, '', 4, 3, 0),
(252, 5, 565, 39, 0, '', 4, 3, 0),
(253, 5, 378, 32, 0, '', 4, 3, 0),
(254, 5, 25, 34, 0, '', 4, 3, 0),
(255, 5, 379, 33, 0, '', 4, 3, 0),
(256, 5, 561, 29, 0, '', 4, 3, 0),
(257, 5, 582, 38, 0, '', 4, 3, 0),
(258, 5, 583, 41, 0, '', 4, 3, 0),
(259, 5, 563, 37, 0, '', 4, 3, 0),
(260, 5, 581, 36, 0, '', 4, 3, 0),
(261, 5, 562, 35, 0, '', 4, 3, 0),
(262, 5, 612, 25, 0, '', 4, 3, 0),
(263, 5, 613, 26, 0, '', 4, 3, 0),
(264, 5, 615, 27, 0, '', 4, 3, 0),
(265, 5, 614, 28, 0, '', 4, 3, 0),
(266, 5, 34, 7, 0, '', 4, 3, 0),
(267, 5, 392, 2, 0, '', 4, 3, 0),
(268, 5, 94, 3, 0, '', 4, 2, 0),
(269, 5, 616, 59, 0, '', 4, 2, 0),
(270, 5, 617, 56, 0, '', 4, 2, 0),
(271, 5, 618, 24, 0, '', 4, 1, 0),
(272, 5, 253, 48, 0, '', 4, 1, 0),
(273, 5, 396, 47, 0, '', 4, 3, 0),
(274, 5, 585, 1, 0, '', 4, 3, 0),
(275, 5, 620, 98, 0, '', 4, 2, 0),
(276, 5, 621, 99, 0, '', 4, 2, 0),
(277, 5, 622, 86, 0, '', 4, 3, 0),
(278, 5, 348, 87, 0, '', 4, 3, 0),
(279, 5, 517, 85, 0, '', 4, 3, 0),
(280, 5, 380, 83, 0, '', 4, 3, 0),
(281, 5, 623, 82, 0, '', 4, 2, 0),
(282, 5, 410, 17, 1, '', 4, 3, 0),
(283, 5, 418, 63, 0, '', 4, 1, 0),
(284, 5, 65, 61, 0, '', 4, 1, 0),
(285, 5, 624, 62, 0, '', 4, 1, 0),
(286, 5, 625, 100, 0, '', 4, 1, -12),
(288, 5, 627, 102, 0, '', 4, 3, 0),
(289, 5, 628, 103, 0, '', 4, 3, 0),
(290, 5, 629, 104, 0, '', 4, 3, 0),
(291, 5, 630, 105, 0, '', 4, 3, 0),
(292, 5, 626, 106, 0, '', 4, 1, -12),
(293, 5, 632, 107, 0, '', 4, 2, 0),
(294, 5, 631, 108, 0, '', 4, 2, 0);

--
-- Disparadores `inscripciones`
--
DROP TRIGGER IF EXISTS `Increase_Dorsal`;
DELIMITER //
CREATE TRIGGER `Increase_Dorsal` BEFORE INSERT ON `inscripciones`
 FOR EACH ROW BEGIN
     select count(*) into @rows from Inscripciones where Prueba = NEW.Prueba;
     if @rows>0 then
     select Dorsal + 1 into @newDorsal from Inscripciones where Prueba = NEW.Prueba order by Dorsal desc limit 1;
       set NEW.Dorsal = @newDorsal;
     else
       set NEW.Dorsal = 1;
     end if;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `jornadas`;
CREATE TABLE IF NOT EXISTS `jornadas` (
`ID` int(4) NOT NULL,
  `Prueba` int(4) NOT NULL DEFAULT '1',
  `Numero` int(4) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Grado1` tinyint(1) NOT NULL DEFAULT '1',
  `Grado2` tinyint(1) NOT NULL DEFAULT '1',
  `Grado3` tinyint(1) NOT NULL DEFAULT '1',
  `Open` tinyint(1) NOT NULL DEFAULT '0',
  `Equipos3` tinyint(1) NOT NULL DEFAULT '0',
  `Equipos4` tinyint(1) NOT NULL DEFAULT '0',
  `PreAgility` tinyint(1) NOT NULL DEFAULT '1',
  `KO` tinyint(1) NOT NULL DEFAULT '0',
  `Especial` tinyint(1) NOT NULL DEFAULT '0',
  `PreAgility2` tinyint(1) NOT NULL DEFAULT '0',
  `Cerrada` tinyint(1) NOT NULL DEFAULT '0',
  `Observaciones` varchar(255) NOT NULL DEFAULT '',
  `Orden_Tandas` varchar(255) NOT NULL DEFAULT 'BEGIN,END'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `jornadas`:
--   `Prueba`
--       `pruebas` -> `ID`
--

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`ID`, `Prueba`, `Numero`, `Nombre`, `Fecha`, `Hora`, `Grado1`, `Grado2`, `Grado3`, `Open`, `Equipos3`, `Equipos4`, `PreAgility`, `KO`, `Especial`, `PreAgility2`, `Cerrada`, `Observaciones`, `Orden_Tandas`) VALUES
(1, 2, 1, 'sabado', '2013-01-01', '00:00:00', 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, '(sin especificar)', 'BEGIN,1,2,3,4,5,41,6,7,8,42,9,10,11,43,23,24,25,49,END'),
(2, 2, 2, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,END'),
(3, 2, 3, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,END'),
(4, 2, 4, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,END'),
(5, 2, 5, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,END'),
(6, 2, 6, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,END'),
(7, 2, 7, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,END'),
(8, 2, 8, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,END'),
(9, 3, 1, 'Sábado', '2014-12-06', '08:30:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '(sin especificar)', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(10, 3, 2, 'Domingo', '2014-12-07', '08:30:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '(sin especificar)', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(11, 3, 3, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(12, 3, 4, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(13, 3, 5, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(14, 3, 6, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(15, 3, 7, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(16, 3, 8, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(17, 4, 1, 'Sabado', '2014-12-13', '00:00:00', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '(sin especificar)', 'BEGIN,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(18, 4, 2, 'Domingo', '2014-12-14', '00:00:00', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '(sin especificar)', 'BEGIN,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(19, 4, 3, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(20, 4, 4, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(21, 4, 5, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(22, 4, 6, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(23, 4, 7, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(24, 4, 8, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(25, 5, 1, 'Sábado', '2015-01-10', '09:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '(sin especificar)', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(26, 5, 2, 'Domingo', '2015-01-11', '09:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '(sin especificar)', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(27, 5, 3, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(28, 5, 4, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(29, 5, 5, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(30, 5, 6, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(31, 5, 7, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END'),
(32, 5, 8, '-- Sin asignar --', '2013-01-01', '00:00:00', 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, '', 'BEGIN,1,3,4,5,6,7,8,9,10,11,23,24,25,12,13,14,26,27,28,END');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jueces`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `jueces`;
CREATE TABLE IF NOT EXISTS `jueces` (
`ID` int(4) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Direccion1` varchar(255) DEFAULT NULL,
  `Direccion2` varchar(255) DEFAULT NULL,
  `Telefono` varchar(32) DEFAULT NULL,
  `Internacional` tinyint(1) NOT NULL DEFAULT '0',
  `Practicas` tinyint(1) NOT NULL DEFAULT '0',
  `Email` varchar(255) DEFAULT NULL,
  `Observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jueces`
--

INSERT INTO `jueces` (`ID`, `Nombre`, `Direccion1`, `Direccion2`, `Telefono`, `Internacional`, `Practicas`, `Email`, `Observaciones`) VALUES
(1, '-- Sin asignar --', '--------', '--------', '--------', 1, 1, 'nobody@nomail.com', 'NO BORRAR: Asignacion de juez por defecto'),
(2, 'Beltrán Bustamante, Ana', 'Camí del Camp, 23', '03460 Beneixama (Alicante)', '639 67 86 09', 0, 0, 'sadda\\_874@hotmail.com', ''),
(3, 'Boix Balaguer, Josep', 'Sant Pere, 10', '08392 San Andreu de Llavaneres (Barcelona)', ' 93 792 76 55', 1, 0, 'josep@agilitycanic.cat', NULL),
(4, 'Conde Delgado, Gregorio', NULL, NULL, ' 93 389 35 83 / 619 39 39 28', 1, 0, 'gconde@xtec.cat', NULL),
(5, 'Correa Arqueros, Mariano', 'Avda. de Moratalaz, 178, 2º A', '28030 Madrid', ' 91 301 47 58', 1, 0, 'mariano.correa@nsn.com', NULL),
(6, 'Diez Pérez, Esteban', 'Ocaña, 104, Bajo', '28047 Madrid', '91 465 50 05', 1, 0, 'estebanagility@gmail.com', NULL),
(7, 'Escalera Salamanca, Javier de la', 'Avda. de San Luis, 95, 2º D', '28033 Madrid', '91 767 07 45 / 607 43 34 13', 1, 0, 'javierdelae@gmail.com', NULL),
(8, 'Felix Fuentes, José', 'Vinaroz, 19', '18100 Armilla (Granada)', '958 55 05 74 / 617 93 54 32', 0, 0, NULL, NULL),
(9, 'García Alvarez, José Luis', 'Río Navia, 2', '12006 Castellón', '629 07 06 75', 1, 0, 'zampican@yahoo.es', NULL),
(10, 'García Rudilla, Juan', 'Rulda, 12', '03400 Villena (Alicante)', ' 96 580 30 63 / 652 83 08 85', 1, 0, NULL, NULL),
(11, 'Garrido Fuentes, Manuel', 'Paseo de los Olivos, 10', '28330 San Martín de la Vega (Madrid)', ' 91 894 60 96', 1, 0, 'mgfcom@telefonica.net', NULL),
(12, 'Gil Solis, Esperanza', 'Paseo de los Olivos, 10', '28330 San Martín de la Vega (Madrid)', ' 91 894 60 96', 1, 0, 'agilcan@telefonica.net', NULL),
(13, 'Guerra Guerra, Juan Pedro', 'Mariano Martín, 9', '10161 Arroyomolinos (Cáceres)', ' 927 28 82 56', 1, 0, 'jaracar@ono.com', NULL),
(14, 'Humanes Almonte, Miguel Angel', 'Zamora, 23, 3º C', '28941 Fuenlabrada (Madrid)', '607 70 55 75', 1, 0, 'agilblack@hotmail.com', NULL),
(15, 'Lanzó, Juan Antonio', 'Recinto Ferial, 2, 4º A', '36540 Silleda (Pontevedra)', ' 629 50 71 76 / 986 57 70 00', 1, 0, 'tonylanzo@gmail.com', NULL),
(16, 'Linares García, José Manuel', 'Carril de los Córdobas, 2', '30161 Llano de Brujas (Murcia)', '968 85 12 60 / 696 75 07 67', 0, 1, 'jomaliga1@gmail.com', NULL),
(17, 'Muñiz Martínez, Oscar', 'León Felipe, 31, 4º, 1ª', '28942 Fuenlabrada (Madrid)', '665 79 86 49', 1, 0, 'agilityzeus@gmail.com', ''),
(18, 'Navarro Costas, Jordi', 'Santiago Rusiñol, 90', '08340 Vilassar de Mar (Barcelona)', '93 759 70 54 / 609 30 97 10', 1, 0, 'jordinuc@telefonica.net', NULL),
(19, 'Parejo Carregalo, Manuel', 'Ctra. Valle de Abdalajis, Km. 1,7', '29260 La Joya (Málaga)', '95 270 26 04', 0, 1, 'losparejos@hotmail.com', NULL),
(20, 'Pineda Puig, Josep Mª', 'Sant Ramón, 69, B-3', '08140 Caldes de Montbui (Barcelona)', '93 865 46 16 / 678 43 36 45', 0, 0, 'pepagility@movistar.es', NULL),
(21, 'Poble Rosas, Ramón', 'Jaume I, 18', '08140 Caldes de Montbui (Barcelona)', '93 865 20 32', 1, 0, 'pobleramon@gmail.com', NULL),
(22, 'Rodríguez Matesanz, Mario', 'Plaza del Peñón, 10', '28923 Alcorcón (Madrid)', ' 91 619 52 79', 1, 0, 'gwelpe@terra.es', NULL),
(23, 'Santome González, Manuel', 'Fonte da Tella, 133 - A - Moureira - Meira', '36955 Moaña (Pontevedra)', '986 31 27 77 / 607 83 20 53', 0, 0, 'lolosantome@gmail.com', ''),
(24, 'Ulldemolins Santisteve, Albert', 'Llorer, 28, Casa 4', '08415 Bigues I Riells (Barcelona)', ' 93 865 89 64 / 636 96 33 77', 0, 1, 'albert23m@hotmail.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mangas`
--
-- Creación: 08-01-2015 a las 18:38:46
--

DROP TABLE IF EXISTS `mangas`;
CREATE TABLE IF NOT EXISTS `mangas` (
`ID` int(4) NOT NULL,
  `Jornada` int(4) NOT NULL,
  `Tipo` int(4) NOT NULL DEFAULT '1',
  `Grado` varchar(16) NOT NULL DEFAULT '-',
  `Recorrido` int(4) NOT NULL DEFAULT '0',
  `Dist_L` int(4) NOT NULL DEFAULT '0',
  `Obst_L` int(4) NOT NULL DEFAULT '0',
  `Dist_M` int(4) NOT NULL DEFAULT '0',
  `Obst_M` int(4) NOT NULL DEFAULT '0',
  `Dist_S` int(4) NOT NULL DEFAULT '0',
  `Obst_S` int(4) NOT NULL DEFAULT '0',
  `Dist_T` int(4) NOT NULL DEFAULT '0',
  `Obst_T` int(4) NOT NULL DEFAULT '0',
  `TRS_L_Tipo` int(4) NOT NULL DEFAULT '0',
  `TRS_L_Factor` int(4) NOT NULL DEFAULT '0',
  `TRS_L_Unit` varchar(1) NOT NULL DEFAULT 's',
  `TRM_L_Tipo` int(4) NOT NULL DEFAULT '1',
  `TRM_L_Factor` int(4) NOT NULL DEFAULT '50',
  `TRM_L_Unit` varchar(1) NOT NULL DEFAULT '%',
  `TRS_M_Tipo` int(4) NOT NULL DEFAULT '0',
  `TRS_M_Factor` int(4) NOT NULL DEFAULT '0',
  `TRS_M_Unit` varchar(1) NOT NULL DEFAULT 's',
  `TRM_M_Tipo` int(4) NOT NULL DEFAULT '1',
  `TRM_M_Factor` int(4) NOT NULL DEFAULT '50',
  `TRM_M_Unit` varchar(1) NOT NULL DEFAULT '%',
  `TRS_S_Tipo` int(4) NOT NULL DEFAULT '0',
  `TRS_S_Factor` int(4) NOT NULL DEFAULT '0',
  `TRS_S_Unit` varchar(1) NOT NULL DEFAULT 's',
  `TRM_S_Tipo` int(4) NOT NULL DEFAULT '1',
  `TRM_S_Factor` int(4) NOT NULL DEFAULT '50',
  `TRM_S_Unit` varchar(1) NOT NULL DEFAULT '%',
  `TRS_T_Tipo` int(4) NOT NULL DEFAULT '0',
  `TRS_T_Factor` int(4) NOT NULL DEFAULT '0',
  `TRS_T_Unit` varchar(1) NOT NULL DEFAULT 's',
  `TRM_T_Tipo` int(4) NOT NULL DEFAULT '1',
  `TRM_T_Factor` int(4) NOT NULL DEFAULT '50',
  `TRM_T_Unit` varchar(1) NOT NULL DEFAULT '%',
  `Juez1` int(4) NOT NULL DEFAULT '1',
  `Juez2` int(4) NOT NULL DEFAULT '1',
  `Observaciones` varchar(255) DEFAULT NULL,
  `Orden_Salida` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `mangas`:
--   `Tipo`
--       `tipo_manga` -> `ID`
--   `Grado`
--       `grados_perro` -> `Grado`
--   `Juez1`
--       `jueces` -> `ID`
--   `Juez2`
--       `jueces` -> `ID`
--   `Jornada`
--       `jornadas` -> `ID`
--

--
-- Volcado de datos para la tabla `mangas`
--

INSERT INTO `mangas` (`ID`, `Jornada`, `Tipo`, `Grado`, `Recorrido`, `Dist_L`, `Obst_L`, `Dist_M`, `Obst_M`, `Dist_S`, `Obst_S`, `Dist_T`, `Obst_T`, `TRS_L_Tipo`, `TRS_L_Factor`, `TRS_L_Unit`, `TRM_L_Tipo`, `TRM_L_Factor`, `TRM_L_Unit`, `TRS_M_Tipo`, `TRS_M_Factor`, `TRS_M_Unit`, `TRM_M_Tipo`, `TRM_M_Factor`, `TRM_M_Unit`, `TRS_S_Tipo`, `TRS_S_Factor`, `TRS_S_Unit`, `TRM_S_Tipo`, `TRM_S_Factor`, `TRM_S_Unit`, `TRS_T_Tipo`, `TRS_T_Factor`, `TRS_T_Unit`, `TRM_T_Tipo`, `TRM_T_Factor`, `TRM_T_Unit`, `Juez1`, `Juez2`, `Observaciones`, `Orden_Salida`) VALUES
(1, 9, 1, 'P.A.', 2, 80, 11, 80, 11, 80, 11, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 7, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,562,581,563,564,582,TAG_L1,TAG_M0,TAG_M1,TAG_S0,565,583,TAG_S1,TAG_T0,TAG_T1,END'),
(2, 9, 3, 'GI', 1, 148, 21, 148, 21, 148, 21, 0, 0, 0, 52, 's', 0, 100, 's', 0, 54, 's', 0, 100, 's', 4, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 7, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,356,561,514,574,577,TAG_L1,TAG_M0,398,TAG_M1,TAG_S0,559,411,TAG_S1,TAG_T0,TAG_T1,END'),
(3, 9, 4, 'GI', 1, 148, 21, 148, 21, 148, 21, 0, 0, 0, 52, 's', 0, 100, 's', 0, 54, 's', 0, 100, 's', 4, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 7, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,356,561,514,574,577,TAG_L1,TAG_M0,398,TAG_M1,TAG_S0,559,411,TAG_S1,TAG_T0,TAG_T1,END'),
(4, 9, 5, 'GII', 1, 160, 22, 160, 22, 160, 22, 0, 0, 0, 51, 's', 0, 80, 's', 0, 52, 's', 0, 80, 's', 4, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 7, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,358,357,361,378,379,521,94,401,61,113,352,TAG_L1,TAG_M0,360,351,TAG_M1,TAG_S0,560,440,323,359,TAG_S1,TAG_T0,TAG_T1,END'),
(5, 9, 10, 'GII', 1, 135, 20, 135, 20, 135, 20, 0, 0, 0, 34, 's', 0, 55, 's', 0, 35, 's', 0, 55, 's', 4, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 7, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,358,357,361,378,379,521,94,401,61,113,352,TAG_L1,TAG_M0,360,351,TAG_M1,TAG_S0,560,440,323,359,TAG_S1,TAG_T0,TAG_T1,END'),
(6, 9, 6, 'GIII', 1, 160, 22, 160, 22, 160, 22, 0, 0, 0, 50, 's', 0, 80, 's', 0, 51, 's', 0, 80, 's', 4, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 7, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,220,25,TAG_L1,TAG_M0,350,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(7, 9, 11, 'GIII', 1, 135, 20, 135, 20, 135, 20, 0, 0, 0, 33, 's', 0, 55, 's', 0, 34, 's', 0, 55, 's', 4, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 7, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,220,25,TAG_L1,TAG_M0,350,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(8, 10, 1, 'P.A.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,562,581,563,564,582,566,567,568,569,570,TAG_L1,TAG_M0,571,572,TAG_M1,TAG_S0,565,583,TAG_S1,TAG_T0,TAG_T1,END'),
(9, 10, 3, 'GI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,371,372,561,576,577,TAG_L1,TAG_M0,510,382,383,TAG_M1,TAG_S0,559,411,573,TAG_S1,TAG_T0,TAG_T1,END'),
(10, 10, 4, 'GI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,371,372,561,576,577,TAG_L1,TAG_M0,510,382,383,TAG_M1,TAG_S0,559,411,573,TAG_S1,TAG_T0,TAG_T1,END'),
(11, 10, 5, 'GII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,412,361,378,379,24,513,575,423,113,352,TAG_L1,TAG_M0,360,351,TAG_M1,TAG_S0,413,330,560,440,323,359,TAG_S1,TAG_T0,TAG_T1,END'),
(12, 10, 10, 'GII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,412,361,378,379,24,513,575,423,113,352,TAG_L1,TAG_M0,360,351,TAG_M1,TAG_S0,413,330,560,440,323,359,TAG_S1,TAG_T0,TAG_T1,END'),
(13, 10, 6, 'GIII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,220,25,57,TAG_L1,TAG_M0,350,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(14, 10, 11, 'GIII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,220,25,57,TAG_L1,TAG_M0,350,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(15, 17, 3, 'GI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,371,372,356,590,589,591,592,593,596,597,601,576,577,603,79,605,604,TAG_L1,TAG_M0,510,586,588,383,TAG_M1,TAG_S0,411,587,TAG_S1,TAG_T0,TAG_T1,END'),
(16, 17, 4, 'GI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,371,372,356,590,589,591,592,593,596,597,601,576,577,603,79,605,604,TAG_L1,TAG_M0,510,586,588,383,TAG_M1,TAG_S0,411,587,TAG_S1,TAG_T0,TAG_T1,END'),
(17, 17, 5, 'GII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,387,391,585,75,410,361,365,384,520,575,159,405,404,397,8,598,602,229,52,84,156,424,393,428,607,608,610,609,389,TAG_L1,TAG_M0,360,516,294,351,TAG_M1,TAG_S0,584,440,323,359,363,413,330,427,TAG_S1,TAG_T0,TAG_T1,END'),
(18, 17, 10, 'GII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,387,391,585,75,410,361,365,384,520,575,159,405,404,397,8,598,602,229,52,84,156,424,393,428,607,608,610,609,389,TAG_L1,TAG_M0,360,516,294,351,TAG_M1,TAG_S0,584,440,323,359,363,413,330,427,TAG_S1,TAG_T0,TAG_T1,END'),
(19, 17, 6, 'GIII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,18,71,68,25,34,78,3,10,27,51,46,31,85,148,TAG_L1,TAG_M0,253,241,350,TAG_M1,TAG_S0,309,314,TAG_S1,TAG_T0,TAG_T1,END'),
(20, 17, 11, 'GIII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,18,71,68,25,34,78,3,10,27,51,46,31,85,148,TAG_L1,TAG_M0,253,241,350,TAG_M1,TAG_S0,309,314,TAG_S1,TAG_T0,TAG_T1,END'),
(21, 18, 3, 'GI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,514,592,603,79,604,TAG_L1,TAG_M0,398,595,TAG_M1,TAG_S0,411,565,587,TAG_S1,TAG_T0,TAG_T1,END'),
(22, 18, 4, 'GI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,514,592,603,79,604,TAG_L1,TAG_M0,398,595,TAG_M1,TAG_S0,411,565,587,TAG_S1,TAG_T0,TAG_T1,END'),
(23, 18, 5, 'GII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,387,391,585,377,410,361,379,24,365,94,401,522,400,113,61,423,397,8,598,95,602,229,352,52,84,156,424,393,428,607,608,610,609,606,103,389,TAG_L1,TAG_M0,360,272,351,TAG_M1,TAG_S0,584,440,559,560,323,359,418,413,330,427,TAG_S1,TAG_T0,TAG_T1,END'),
(24, 18, 10, 'GII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,387,391,585,377,410,361,379,24,365,94,401,522,400,113,61,423,397,8,598,95,602,229,352,52,84,156,424,393,428,607,608,610,609,606,103,389,TAG_L1,TAG_M0,360,272,351,TAG_M1,TAG_S0,584,440,559,560,323,359,418,413,330,427,TAG_S1,TAG_T0,TAG_T1,END'),
(25, 18, 6, 'GIII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,18,71,68,220,25,34,65,57,78,599,600,10,27,51,46,31,85,148,TAG_L1,TAG_M0,350,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(26, 18, 11, 'GIII', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,18,71,68,220,25,34,65,57,78,599,600,10,27,51,46,31,85,148,TAG_L1,TAG_M0,350,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(29, 1, 3, 'GI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,556,558,TAG_L1,TAG_M0,586,510,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(30, 1, 4, 'GI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,556,558,TAG_L1,TAG_M0,586,510,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(31, 1, 5, 'GII', 1, 165, 21, 165, 21, 165, 21, 165, 21, 0, 100, 's', 1, 50, '%', 3, 0, 's', 1, 50, '%', 3, 3, 's', 1, 50, '%', 5, 0, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,585,389,119,91,TAG_L1,TAG_M0,351,293,TAG_M1,TAG_S0,559,584,560,TAG_S1,TAG_T0,353,354,TAG_T1,END'),
(32, 1, 10, 'GII', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,585,389,119,91,TAG_L1,TAG_M0,351,293,TAG_M1,TAG_S0,559,584,560,TAG_S1,TAG_T0,353,354,TAG_T1,END'),
(43, 1, 1, 'P.A.', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 3, 0, 's', 1, 50, '%', 3, 0, 's', 1, 50, '%', 3, 0, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,TAG_L1,TAG_M0,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(44, 1, 2, 'P.A.', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,TAG_L1,TAG_M0,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(45, 25, 1, 'P.A.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 0, 100, 's', 1, 50, '%', 1, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,630,624,627,582,629,581,568,562,563,628,583,TAG_L1,TAG_M0,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(46, 25, 3, 'GI', 1, 168, 20, 168, 20, 168, 20, 0, 0, 0, 66, 's', 0, 99, 's', 0, 99, 's', 0, 101, 's', 4, 0, 's', 1, 50, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,622,514,601,577,511,356,370,561,625,TAG_L1,589,TAG_M0,612,TAG_M1,TAG_S0,565,TAG_S1,TAG_T0,TAG_T1,END'),
(47, 25, 4, 'GI', 1, 160, 19, 160, 19, 160, 19, 0, 0, 0, 64, 's', 0, 96, 's', 3, 64, 's', 0, 96, 's', 4, 0, 's', 0, 117, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,601,589,577,622,370,356,561,514,511,625,TAG_L1,TAG_M0,612,TAG_M1,TAG_S0,565,TAG_S1,TAG_T0,TAG_T1,END'),
(48, 25, 5, 'GII', 1, 175, 21, 175, 21, 175, 21, 0, 0, 0, 50, 's', 0, 75, 's', 0, 54, 's', 0, 81, 's', 4, 0, 's', 1, 50, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,397,396,424,229,393,358,348,95,379,361,609,602,156,603,167,357,513,520,423,401,24,392,384,607,378,399,517,8,380,585,618,626,TAG_L1,410,TAG_M0,407,613,TAG_M1,TAG_S0,413,440,584,559,408,323,418,594,342,330,TAG_S1,TAG_T0,TAG_T1,END'),
(49, 25, 10, 'GII', 1, 160, 21, 160, 21, 160, 21, 0, 0, 0, 45, 's', 0, 68, 's', 0, 48, 's', 0, 72, 's', 4, 0, 's', 1, 50, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,348,397,609,520,517,602,357,424,379,392,361,167,380,378,156,393,8,384,603,358,95,399,423,513,401,585,607,24,396,229,410,618,626,TAG_L1,TAG_M0,613,407,TAG_M1,TAG_S0,413,342,584,559,440,408,594,418,323,330,TAG_S1,TAG_T0,TAG_T1,END'),
(50, 25, 6, 'GIII', 1, 194, 22, 194, 22, 194, 22, 0, 0, 0, 49, 's', 0, 74, 's', 0, 52, 's', 0, 78, 's', 4, 0, 's', 0, 50, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,34,27,57,78,220,85,71,31,65,3,25,10,TAG_L1,TAG_M0,615,253,350,TAG_M1,TAG_S0,614,312,314,TAG_S1,TAG_T0,TAG_T1,END'),
(51, 25, 11, 'GIII', 1, 167, 22, 167, 22, 167, 22, 0, 0, 0, 38, 's', 0, 57, 's', 0, 39, 's', 0, 59, 's', 4, 0, 's', 1, 50, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,85,10,78,57,25,31,65,27,220,3,34,71,TAG_L1,TAG_M0,615,253,350,TAG_M1,TAG_S0,312,614,314,TAG_S1,TAG_T0,TAG_T1,END'),
(52, 26, 1, 'P.A.', 2, 70, 20, 70, 20, 70, 20, 0, 0, 0, 100, 's', 1, 50, '%', 3, 0, 's', 1, 50, '%', 3, 0, 's', 1, 50, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,620,563,570,631,632,628,630,562,629,581,621,582,627,568,583,TAG_L1,TAG_M0,572,TAG_M1,TAG_S0,TAG_S1,TAG_T0,TAG_T1,END'),
(53, 26, 3, 'GI', 1, 181, 20, 181, 20, 181, 20, 0, 0, 0, 73, 's', 0, 110, 's', 0, 73, 's', 0, 110, 's', 4, 0, 's', 0, 110, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,590,561,577,601,622,514,TAG_L1,589,TAG_M0,383,382,617,612,571,TAG_M1,TAG_S0,573,565,616,TAG_S1,TAG_T0,TAG_T1,END'),
(54, 26, 4, 'GI', 1, 196, 22, 196, 22, 196, 22, 0, 0, 0, 79, 's', 0, 119, 's', 0, 79, 's', 0, 119, 's', 4, 0, 's', 1, 50, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,590,561,622,601,514,577,589,TAG_L1,TAG_M0,612,383,617,571,382,TAG_M1,TAG_S0,565,616,573,TAG_S1,TAG_T0,TAG_T1,END'),
(55, 26, 5, 'GII', 1, 190, 22, 190, 22, 190, 22, 0, 0, 0, 55, 's', 0, 83, 's', 0, 58, 's', 0, 87, 's', 4, 0, 's', 1, 50, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,517,380,412,396,229,95,423,623,404,392,607,8,602,513,361,603,405,94,378,609,113,585,348,379,397,24,TAG_L1,410,TAG_M0,407,613,TAG_M1,TAG_S0,413,408,512,440,323,584,342,330,TAG_S1,TAG_T0,TAG_T1,END'),
(56, 26, 10, 'GII', 1, 160, 21, 160, 21, 160, 21, 0, 0, 0, 42, 's', 0, 63, 's', 0, 45, 's', 0, 66, 's', 4, 0, 's', 1, 66, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,113,94,412,361,348,585,513,24,517,404,379,410,405,397,380,392,607,623,378,423,603,396,602,95,8,229,609,TAG_L1,TAG_M0,613,407,TAG_M1,TAG_S0,413,342,512,584,440,323,408,330,TAG_S1,TAG_T0,TAG_T1,END'),
(57, 26, 6, 'GIII', 1, 198, 22, 198, 22, 198, 22, 0, 0, 0, 50, 's', 0, 75, 's', 0, 53, 's', 0, 80, 's', 4, 0, 's', 0, 80, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,34,68,27,220,57,85,31,25,3,78,TAG_L1,TAG_M0,615,350,TAG_M1,TAG_S0,614,312,314,TAG_S1,TAG_T0,TAG_T1,END'),
(58, 26, 11, 'GIII', 1, 175, 22, 175, 22, 175, 22, 0, 0, 0, 39, 's', 0, 59, 's', 0, 41, 's', 0, 62, 's', 4, 0, 's', 0, 62, '%', 0, 0, 's', 0, 0, 's', 17, 1, '', 'BEGIN,TAG_-0,TAG_-1,TAG_L0,34,85,78,57,27,31,220,25,68,3,TAG_L1,TAG_M0,615,350,TAG_M1,TAG_S0,614,314,312,TAG_S1,TAG_T0,TAG_T1,END');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `perroguiaclub`
--
DROP VIEW IF EXISTS `perroguiaclub`;
CREATE TABLE IF NOT EXISTS `perroguiaclub` (
`ID` int(4)
,`Nombre` varchar(255)
,`Raza` varchar(255)
,`Licencia` varchar(255)
,`LOE_RRC` varchar(255)
,`Categoria` varchar(1)
,`NombreCategoria` varchar(255)
,`Grado` varchar(16)
,`NombreGrado` varchar(255)
,`Guia` int(4)
,`NombreGuia` varchar(255)
,`Club` int(4)
,`NombreClub` varchar(255)
,`LogoClub` varchar(255)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perros`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `perros`;
CREATE TABLE IF NOT EXISTS `perros` (
`ID` int(4) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Raza` varchar(255) DEFAULT NULL,
  `LOE_RRC` varchar(255) DEFAULT NULL,
  `Licencia` varchar(255) DEFAULT '--------',
  `Categoria` varchar(1) NOT NULL DEFAULT '-',
  `Guia` int(4) NOT NULL DEFAULT '1',
  `Grado` varchar(16) DEFAULT '-'
) ENGINE=InnoDB AUTO_INCREMENT=633 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `perros`:
--   `Categoria`
--       `categorias_perro` -> `Categoria`
--   `Grado`
--       `grados_perro` -> `Grado`
--   `Guia`
--       `guias` -> `ID`
--

--
-- Volcado de datos para la tabla `perros`
--

INSERT INTO `perros` (`ID`, `Nombre`, `Raza`, `LOE_RRC`, `Licencia`, `Categoria`, `Guia`, `Grado`) VALUES
(2, 'Yuma', 'P.B.Malinoise', '1936256', 'A330', 'L', 281, 'GIII'),
(3, 'Hannibal Lecter XIII', '', '1764520', 'A090', 'L', 444, 'GIII'),
(4, 'Ardi', '', '79097', '729', 'L', 379, '-'),
(5, 'William', NULL, '1667920', '920', 'L', 215, '-'),
(6, 'Xonny', NULL, '1317156', '622', 'L', 92, '-'),
(7, 'Indiana Jones', '', '1720531', '987', 'L', 273, 'GIII'),
(8, 'Thelma', '', '1515702', '824', 'L', 480, 'GII'),
(9, 'Boss', '', '1528991', '797', 'L', 374, 'GIII'),
(10, 'Lee', 'Border Collie', '95245', 'A084', 'L', 59, 'GIII'),
(11, 'Chinouk', NULL, '1390419', '724', 'L', 345, '-'),
(12, 'Angie', NULL, '1370168', '691', 'L', 59, '-'),
(13, 'Burundi', '', '1874262', 'A310', 'L', 130, 'GIII'),
(14, 'Piter', '', '110594', 'A360', 'L', 104, 'GIII'),
(15, 'Napa', '', '1975832', 'A401', 'L', 379, 'GIII'),
(16, 'Gon', '', '1725855', 'A024', 'L', 323, 'GIII'),
(17, 'Valerie', '', '1467667', '786', 'L', 318, 'GIII'),
(18, 'Woman', 'Border Collie', '1866186', 'A206', 'L', 209, 'GIII'),
(19, 'Baloo', NULL, '86974', '991', 'L', 389, '-'),
(20, 'Piter Winers', NULL, '100338', 'A188', 'L', 240, '-'),
(21, 'Lula', NULL, '1891977', 'A344', 'L', 49, '-'),
(22, 'Karen', NULL, '1970258', 'A427', 'L', 32, '-'),
(23, 'Runa', '', '112361', 'A347', 'L', 26, 'GIII'),
(24, 'Chiruca', 'Border Collie', '1635759', '986', 'L', 57, 'GII'),
(25, 'Moss', 'Border Collie', '113891', 'A391', 'L', 409, 'GIII'),
(26, 'Nena', NULL, '1521753', '930', 'L', 289, '-'),
(27, 'Deby', 'BorderCollie', '101610', 'A147', 'L', 92, 'GIII'),
(28, 'Noah', '', '1887262', 'A268', 'L', 457, 'GIII'),
(29, 'Sil', NULL, '1831356', 'A150', 'L', 323, '-'),
(30, 'Furia', '', '1554907', '892', 'L', 369, 'GIII'),
(31, 'Mc Coy', 'Border Collie', '1905162', 'A322', 'L', 87, 'GIII'),
(32, 'Argi', '', '110120', 'A241', 'L', 319, 'GIII'),
(33, 'Lua', NULL, '118441', 'A327', 'L', 249, '-'),
(34, 'Zoe', 'Border Collie', '109748', 'A289', 'L', 337, 'GIII'),
(35, 'Juice', NULL, '117997', 'A387', 'L', 75, '-'),
(36, 'Vega', NULL, '1552296', '855', 'L', 32, '-'),
(37, 'Idris', NULL, '83909', '880', 'L', 359, '-'),
(38, 'Izar', NULL, '1596718', '851', 'L', 166, '-'),
(39, 'Pica', '', '104103', 'A091', 'L', 16, 'GIII'),
(40, 'Nana', '', '1780849', 'A073', 'L', 241, 'GIII'),
(41, 'Tara', NULL, 'No tiene', '1466', 'L', 375, '-'),
(42, 'Finn', '', '2074557', 'A596', 'L', 392, 'GIII'),
(43, 'Rocky', '', '1796496', 'A355', 'L', 69, 'GIII'),
(44, 'Neil', 'Flat Coated Retriever', '122117', 'A417', 'L', 192, '-'),
(45, 'Asia', 'Border Collie', '1958017', 'A364', 'L', 245, 'GIII'),
(46, 'Xodro', 'BorderCollie', '1959124', 'A371', 'L', 80, 'GIII'),
(47, 'Bec', NULL, '87712', '979', 'L', 250, '-'),
(48, 'Bely', NULL, '1370171', '692', 'L', 168, '-'),
(49, 'Laia', '', '1594320', '921', 'L', 195, 'GIII'),
(50, 'Bamba', '', '1887258', 'A242', 'L', 41, 'GII'),
(51, 'Akane', 'Euskal A Txakurra', '101429', 'A249', 'L', 176, 'GIII'),
(52, 'Mister', 'Border Collie', '99971', 'A250', 'L', 486, 'GII'),
(53, 'Spyro', NULL, '89457', 'A155', 'L', 49, '-'),
(54, 'Becho', NULL, '1831350', 'A203', 'L', 22, '-'),
(55, 'Luna', NULL, '1798021', 'A163', 'L', 456, '-'),
(56, 'Buh', '', '1929147', 'A297', 'L', 389, 'GIII'),
(57, 'Aby', 'Border Collie', '105806', 'A204', 'L', 410, 'GIII'),
(58, 'Yuma', 'Border Collie', '113067', 'A385', 'L', 307, 'GIII'),
(59, 'Zak', NULL, '1831579', 'A160', 'L', 378, '-'),
(60, 'Tanga', 'Border Collie', '119678', 'A366', 'L', 425, 'GIII'),
(61, 'Viconte', 'Mudi', '1561797', '813', 'L', 313, 'GII'),
(62, 'Dela', '', '2028765', 'A377', 'L', 311, 'GII'),
(63, 'Brus', NULL, '1763613', 'A140', 'L', 117, '-'),
(64, 'King', '', '1520008', '856', 'L', 353, 'GIII'),
(65, 'Brujostel', 'Border Collie', '1717447', 'A231', 'L', 465, 'GIII'),
(66, 'Kora', 'P.B.Malinoise', '111627', 'A332', 'L', 384, 'GII'),
(67, 'Rubia', NULL, '127474', 'A481', 'L', 312, '-'),
(68, 'Fito', 'Borde Collie', '127473', 'A529', 'L', 312, 'GIII'),
(69, 'Visente', NULL, '116863', 'A359', 'L', 383, '-'),
(70, 'Maia', NULL, '1780846', 'A132', 'L', 66, '-'),
(71, 'Mecha', 'P.B.Malinoise', '129549', 'A558', 'L', 234, 'GIII'),
(72, 'Ari', NULL, '1893230', 'A301', 'L', 54, '-'),
(73, 'Aslan', '', '1970223', 'A457', 'L', 182, 'GIII'),
(74, 'Mambo', '', '1392048', '753', 'L', 126, 'GIII'),
(75, 'Nut', 'Sabueso Anglo-Francés', '120681', 'A430', 'L', 354, 'GII'),
(76, 'Xena', NULL, '1570666', 'A118', 'L', 252, '-'),
(77, 'Fiona', NULL, '2010068', 'A491', 'L', 393, '-'),
(78, 'Winner', 'Border Collie', '127815', 'A497', 'L', 407, 'GIII'),
(79, 'Jade', 'Euskal A Txakurra', '', '', 'L', 484, 'GI'),
(80, 'Dasher', '', '2000291', 'A411', 'L', 273, 'GIII'),
(81, 'Gaston', NULL, '1717449', 'A340', 'L', 168, '-'),
(82, 'Pipo', NULL, '118271', 'A458', 'L', 395, '-'),
(83, 'Grey', NULL, '1717450', 'A066', 'L', 64, '-'),
(84, 'Maty', 'Border Collie', '1964043', 'A333', 'L', 99, 'GII'),
(85, 'Dylan', 'Border Collie', '127444', 'A461', 'L', 199, 'GIII'),
(86, 'Magia', NULL, '1753228', 'A104', 'L', 89, '-'),
(87, 'Lia', NULL, '1842317', 'A389', 'L', 435, '-'),
(88, 'Coma', NULL, '1957039', 'A538', 'L', 120, '-'),
(89, 'Isis', '', '1443353', '838', 'L', 33, 'GIII'),
(90, 'Otto', NULL, '91641', 'A070', 'L', 396, '-'),
(91, 'Nana', '', '1781905', 'A225', 'L', 143, 'GII'),
(92, 'Assucar', 'Border Collie', '1594318', '992', 'L', 269, 'GII'),
(93, 'Fantastico', NULL, '109814', 'A218', 'L', 380, '-'),
(94, 'Panda', 'Border Collie', '1936233', 'A474', 'L', 298, 'GII'),
(95, 'Raissa', 'American Stanford', '131570', 'A563', 'L', 205, 'GII'),
(96, 'Nuka', NULL, '127265', 'A486', 'L', 27, '-'),
(97, 'Halcon', '', '126805', 'A482', 'L', 83, 'GIII'),
(98, 'California', '', '1967653', 'A414', 'L', 228, 'GII'),
(99, 'Astra', NULL, '1551831', '783', 'L', 22, '-'),
(100, 'Fito', '', '1980971', 'A490', 'L', 435, 'GII'),
(101, 'Magic-Black', NULL, '101184', 'A318', 'L', 401, '-'),
(102, 'Blacky', NULL, 'No tiene', '1493', 'L', 330, '-'),
(103, 'Red Magic', 'Border Collie', '1834052', 'A124', 'L', 131, 'GII'),
(104, 'Beauty', '', '120728', 'A452', 'L', 380, 'GIII'),
(105, 'Savannah', NULL, '1627377', '833', 'L', 38, '-'),
(106, 'Ra', '', '2009048', 'A494', 'L', 323, 'GII'),
(107, 'Flay', NULL, '123186', 'A418', 'L', 179, '-'),
(108, 'Bu', NULL, '111416', 'A519', 'L', 397, '-'),
(109, 'Heidy', NULL, '1727593', 'A035', 'L', 430, '-'),
(110, 'Kiko', NULL, '1780843', 'A145', 'L', 146, '-'),
(111, 'Koba', NULL, '1533440', '843', 'L', 183, '-'),
(112, 'Kiwi', NULL, '1908098', 'A267', 'L', 183, '-'),
(113, 'Yun', 'Border Collie', '2001179', 'A484', 'L', 95, 'GII'),
(114, 'Nora', NULL, '80601', '735', 'L', 437, '-'),
(115, 'Liss', NULL, '1779665', 'A212', 'L', 117, '-'),
(116, 'Rayko', 'Border Collie', '2027590', 'A321', 'L', 381, 'GIII'),
(117, 'Nani', NULL, '1838888', 'A238', 'L', 286, '-'),
(118, 'Rasca', '', '2047380', 'A564', 'L', 16, 'GIII'),
(119, 'Abby', 'P. B. Groenendael', '2104382', 'A533', 'L', 215, 'GII'),
(120, 'Merlin', NULL, '1996593', 'A523', 'L', 121, '-'),
(121, 'Rusti', '', '1831356', 'A227', 'L', 164, 'GII'),
(122, 'Cora', '', 'No tiene', '1525', 'L', 48, 'GII'),
(123, 'Dux', '', '1727100', 'A134', 'L', 169, 'GIII'),
(124, 'Urko', NULL, '127390', 'A565', 'L', 79, '-'),
(125, 'Blues', NULL, '1756737', 'A083', 'L', 327, '-'),
(126, 'Lia', NULL, 'No tiene', '1481', 'L', 302, '-'),
(127, 'Broc', NULL, '1596717', '902', 'L', 262, '-'),
(128, 'Bell', NULL, '1831577', 'A205', 'L', 429, '-'),
(129, 'Colombo', NULL, '119957', 'A437', 'L', 159, '-'),
(130, 'Cooper', NULL, '1942046', 'A468', 'L', 219, '-'),
(131, 'Dunja', NULL, '131504', 'A568', 'L', 55, '-'),
(132, 'Nova', NULL, '1472107', '765', 'L', 367, '-'),
(133, 'Nuca', NULL, '105491', 'A431', 'L', 394, '-'),
(134, 'Nora', 'Braco', '113894', 'A356', 'L', 402, 'GII'),
(135, 'Kimi', NULL, '1908103', 'A271', 'L', 107, '-'),
(136, 'Samba', NULL, '131663', 'A608', 'L', 78, '-'),
(137, 'Liss', NULL, '1988114', 'A429', 'L', 124, '-'),
(138, 'Nuka', NULL, 'No tiene', '1418', 'L', 244, '-'),
(139, 'Samy', NULL, '120731', 'A432', 'L', 227, '-'),
(140, 'Kim', NULL, '125522', 'A511', 'L', 25, '-'),
(141, 'Blues', NULL, 'No tiene', '1400', 'L', 271, '-'),
(142, 'Naia', NULL, '1970259', 'A459', 'L', 463, '-'),
(143, 'Aragorn', NULL, '1568043', 'A380', 'L', 458, '-'),
(144, 'Aizu', NULL, '1680441', 'A499', 'L', 293, '-'),
(145, 'Avemar', NULL, '1677435', 'A335', 'L', 320, '-'),
(146, 'Completa', NULL, '95707', 'A121', 'L', 380, '-'),
(147, 'Jayna', '', '1779666', 'A173', 'L', 235, 'GII'),
(148, 'Kira', 'Border Collie', '1710175', 'A116', 'L', 140, 'GIII'),
(149, 'Elfo', NULL, '1496681', '963', 'L', 260, '-'),
(150, 'Choco', NULL, '96941', 'A058', 'L', 77, '-'),
(151, 'Gini', NULL, '1891331', 'A193', 'L', 292, '-'),
(152, 'Alinka', NULL, '1677160', '982', 'L', 452, '-'),
(153, 'Zazpi', NULL, '1779668', 'A278', 'L', 117, '-'),
(154, 'Frasqui', NULL, '1962362', 'A438', 'L', 159, '-'),
(155, 'Yhara', NULL, '1827258', 'A357', 'L', 288, '-'),
(156, 'Lennon', 'A. Foxhound', '111486', 'A336', 'L', 347, 'GII'),
(157, 'Irma', NULL, '1779789', 'A096', 'L', 132, '-'),
(158, 'Yai', '', '1879217', 'A475', 'L', 42, '-'),
(159, 'Clara', 'Border Collie', '1936237', 'A462', 'L', 418, 'GII'),
(160, 'Laika', NULL, '93988', 'A224', 'L', 400, '-'),
(161, 'Argon', '', '1926695', '987', 'L', 96, 'GII'),
(162, 'Nube', NULL, '124447', 'A465', 'L', 248, '-'),
(163, 'Blue', '', '1863534', 'A552', 'L', 293, 'GII'),
(164, 'Hana', NULL, 'No tiene', '1526', 'L', 412, '-'),
(165, 'Liss', NULL, '86748', '961', 'L', 237, '-'),
(166, 'Tara', NULL, '123013', 'A442', 'L', 216, '-'),
(167, 'Onis', '', '1478689', 'A498', 'L', 236, 'GII'),
(168, 'Qumba', NULL, '2007589', 'A546', 'L', 275, '-'),
(169, 'Jotave', NULL, '1962366', 'A407', 'L', 279, '-'),
(170, 'Kora', NULL, '124215', 'A585', 'L', 279, '-'),
(171, 'Zana', NULL, '1634512', 'A014', 'L', 430, '-'),
(172, 'Hugo', NULL, '97357', 'A201', 'L', 246, '-'),
(173, 'Gus', NULL, '111335', 'A548', 'L', 454, '-'),
(174, 'Paco', NULL, '85033', 'A550', 'L', 454, '-'),
(175, 'Thor', NULL, '1839333', 'A348', 'L', 257, '-'),
(176, 'Fol', '', '86747', '940', 'L', 350, 'GIII'),
(177, 'Fito', NULL, '1914405', 'A362', 'L', 164, '-'),
(178, 'Troy', '', '98617', 'A044', 'L', 370, 'GII'),
(179, 'Dana', NULL, 'No tiene', '1528', 'L', 341, '-'),
(180, 'Doña Sol', NULL, '1885107', 'A261', 'L', 285, '-'),
(181, 'Martina', NULL, '1833796', 'A545', 'L', 129, '-'),
(182, 'Kiss', NULL, '1626167', '912', 'L', 60, '-'),
(183, 'Nano', NULL, '94485', '964', 'L', 279, '-'),
(184, 'Ariel', NULL, '1835675', 'A213', 'L', 1, '-'),
(185, 'Cristina', NULL, '1929150', 'A352', 'L', 67, '-'),
(186, 'Rulo', NULL, '1676914', '978', 'L', 115, '-'),
(187, 'Hechizada', NULL, '1663984', 'A064', 'L', 135, '-'),
(188, 'Cindy', NULL, '1812230', 'A189', 'L', 6, '-'),
(189, 'Rotten', NULL, 'No tiene', '1518', 'L', 243, '-'),
(190, 'Pixie Moon', '', '1879218', 'A260', 'L', 246, '-'),
(191, 'Timba', '', '119645', 'A403', 'L', 88, 'GIII'),
(192, 'Nuwa', '', '132677', 'A597', 'L', 443, 'GII'),
(193, 'Kora', NULL, '99230', 'A466', 'L', 221, '-'),
(194, 'Kona', NULL, '1986188', 'A524', 'L', 53, '-'),
(195, 'Arwen', NULL, '1753230', 'A151', 'L', 97, '-'),
(196, 'Blas', NULL, '1761207', 'A086', 'L', 254, '-'),
(197, 'Rudy', NULL, '102435', 'A113', 'L', 310, '-'),
(198, 'Ira', 'P.B.Malinoise', '101193', 'A141', 'L', 18, 'GII'),
(199, 'Terra', NULL, '114522', 'A328', 'L', 274, '-'),
(200, 'Kira', NULL, '120733', 'A405', 'L', 12, '-'),
(201, 'Nube', NULL, '97289', 'A515', 'L', 245, '-'),
(202, 'Mara', NULL, '80787', 'A396', 'L', 36, '-'),
(203, 'Trasto', NULL, 'No tiene', '1391', 'L', 6, '-'),
(204, 'Kiria', '', 'No tiene', 'A155', 'L', 231, 'GII'),
(205, 'Wind', 'Border Collie', '1881696', 'A421', 'L', 416, 'GII'),
(206, 'Rocky', NULL, '1756734', 'A156', 'L', 239, '-'),
(207, 'Pepo', NULL, '1756735', 'A200', 'L', 239, '-'),
(208, 'Mina', NULL, '124583', 'A501', 'L', 204, '-'),
(209, 'Gipsy', NULL, 'No tiene', '1542', 'L', 206, '-'),
(210, 'Atril', NULL, '1985153', 'A454', 'L', 334, '-'),
(211, 'Max', NULL, '1945286', 'A487', 'L', 43, '-'),
(212, 'N''Hug', '', '110043', 'A283', 'L', 238, 'GII'),
(213, 'Che', NULL, '1472786', 'A313', 'L', 285, '-'),
(214, 'Chincheta', NULL, '97802', 'A165', 'L', 439, '-'),
(215, 'Nemo', NULL, '1950998', 'A478', 'L', 142, '-'),
(216, 'Tao', NULL, '1807243', 'A554', 'L', 424, '-'),
(217, 'Luna', '', 'No tiene', '1539', 'L', 406, 'GII'),
(218, 'Molsa', NULL, '1710467', 'A103', 'L', 419, '-'),
(219, 'Dina', 'Border Collie', '1798019', 'A136', 'L', 208, 'GII'),
(220, 'Neo', 'Border Collie', '99972', 'A077', 'L', 58, 'GIII'),
(221, 'Zidane', NULL, '2081050', 'A591', 'L', 19, '-'),
(222, 'Poly', NULL, '2060633', 'A587', 'L', 246, '-'),
(223, 'Kinder', '', '101433', 'A223', 'L', 400, 'GII'),
(224, 'Juno', NULL, 'No tiene', '1552', 'L', 68, '-'),
(225, 'Flash', NULL, '109519', 'A420', 'L', 174, '-'),
(226, 'Troya', NULL, '127255', 'A527', 'L', 461, '-'),
(227, 'Pluto', NULL, '80602', '785', 'L', 328, '-'),
(228, 'Poli', NULL, '98654', 'A290', 'L', 437, '-'),
(229, 'Shasta', 'Border Collie', '109487', 'A272', 'L', 331, 'GII'),
(230, 'Kira', NULL, '83038', '789', 'L', 320, '-'),
(231, 'Maya', NULL, '1683945', 'A110', 'L', 283, '-'),
(232, 'Grace', NULL, '127031', 'A575', 'L', 375, '-'),
(233, 'Artemisa', NULL, '1911726', 'A406', 'L', 449, '-'),
(234, 'Ron', NULL, '94045', 'A265', 'L', 132, '-'),
(235, 'Maña', NULL, '1872301', 'A423', 'L', 86, '-'),
(236, 'Blue', NULL, '86743', 'A180', 'L', 122, '-'),
(237, 'Golfa', NULL, '1719195', 'A557', 'L', 200, '-'),
(238, 'Runa', NULL, '2006235', 'A537', 'L', 302, '-'),
(239, 'Fanta', '', '1940535', 'A544', 'L', 362, 'GII'),
(240, 'Xula', NULL, '83896', '844', 'M', 289, '-'),
(241, 'Danko', 'Ratonero Bodeguero Andaluz', '113906', 'A325', 'M', 230, 'GIII'),
(242, 'Hanna', NULL, '1843070', 'A159', 'M', 369, '-'),
(243, 'Guti', 'Cocker Spaniel', '111666', 'A215', 'M', 210, 'GIII'),
(244, 'Cala', NULL, '1691264', 'A095', 'M', 15, '-'),
(245, 'Milo', NULL, '1399802', '718', 'M', 269, '-'),
(246, 'Gotika', NULL, '1682493', '971', 'M', 67, '-'),
(247, 'Drac', '', '106327', 'A196', 'M', 133, 'GIII'),
(248, 'Neo', NULL, '109522', 'A445', 'M', 174, '-'),
(249, 'Sra. Maruja', NULL, '1695088', '997', 'M', 144, '-'),
(250, 'Duna', '', '93084', '953', 'M', 161, 'GII'),
(251, 'Kiwi', '', '1982934', 'A525', 'M', 450, 'GIII'),
(252, 'Sucre', NULL, '1558711', '938', 'M', 366, '-'),
(253, 'Lass', 'Perro de Aguas Español', '131981', 'A580', 'M', 150, 'GIII'),
(254, 'Tuna', NULL, '1731780', 'A057', 'M', 319, '-'),
(255, 'Norai', NULL, '97039', 'A015', 'M', 154, '-'),
(256, 'Menta', '', '1459964', '767', 'M', 14, 'GIII'),
(257, 'Wirbel', 'Schnnauzer', '1252941', '588', 'M', 331, 'Ret.'),
(258, 'Pepsi', '', '1849505', 'A270', 'M', 76, 'GII'),
(259, 'Kiss', NULL, '1258632', '762', 'M', 106, '-'),
(260, 'Ina', NULL, 'No tiene', '1549', 'M', 446, '-'),
(261, 'Kenia', NULL, '86609', '954', 'M', 403, '-'),
(262, 'Gamma', '', '1988761', 'A307', 'M', 226, 'GIII'),
(263, 'Goku', 'Fox Terrier Wire ', 'No tiene', '1513', 'M', 266, 'GIII'),
(264, 'Coockie', NULL, '120745', 'A434', 'M', 445, '-'),
(265, 'Habana', NULL, '131393', 'A634', 'M', 147, '-'),
(266, 'Dau', NULL, '113713', 'A446', 'M', 366, '-'),
(267, 'Jolie', 'Mudi', '1561798', '808', 'M', 90, 'GII'),
(268, 'Boira', '', '1809307', 'A281', 'M', 100, 'GIII'),
(269, 'Queen', NULL, '93971', '989', 'M', 278, '-'),
(270, 'Legend', NULL, '1606337', '927', 'M', 440, '-'),
(271, 'Koku', NULL, '1394913', '714', 'M', 372, '-'),
(272, 'Luna', 'Fox Terrier Wire', '103250', 'A240', 'M', 382, 'GII'),
(273, 'Nell', NULL, '1329279', 'A293', 'M', 152, '-'),
(274, 'Lucas', 'Podenco Andaluz', '112275', 'A248', 'M', 20, 'GII'),
(275, 'Benavis', NULL, '1803327', 'A195', 'M', 29, '-'),
(276, 'Paquita', NULL, '1852290', 'A229', 'M', 377, '-'),
(277, 'Fey', NULL, '2063400', 'A440', 'M', 442, '-'),
(278, 'Robbi', NULL, '104953', 'A146', 'M', 448, '-'),
(279, 'Mate', 'Schnauzer', '1930526', 'A469', 'M', 109, 'GII'),
(280, 'Veron', '', '1423605', 'A412', 'M', 152, 'GII'),
(281, 'Lume', NULL, '1985134', 'A416', 'M', 233, '-'),
(282, 'Foska', NULL, '108199', 'A182', 'M', 285, '-'),
(283, 'Bimba', NULL, '1968121', 'A451', 'M', 344, '-'),
(284, 'Chocolate', NULL, '93486', 'A045', 'M', 439, '-'),
(285, 'Tuna', 'Bodeguero Andaliuz', '122113', 'A408', 'M', 230, 'GII'),
(286, 'Naru', NULL, '132678', 'A598', 'M', 443, '-'),
(287, 'Mizar', NULL, '1876817', 'A274', 'M', 145, '-'),
(288, 'Tina', NULL, 'No tiene', '1532', 'M', 201, '-'),
(289, 'Kenya', NULL, '112354', 'A233', 'M', 294, '-'),
(290, 'Duque', NULL, 'No tiene', '1551', 'M', 29, '-'),
(291, 'Harley', NULL, '2025374', 'A428', 'M', 128, '-'),
(292, 'Johnny Cash', '', '2057033', 'A594', 'M', 456, 'GIII'),
(293, 'Striptease', '', '2023589', 'A577', 'M', 84, 'GII'),
(294, 'Tuco', 'Shetland', '2026054', 'A419', 'M', 185, 'GII'),
(295, 'Mia', NULL, '121232', 'A547', 'M', 340, '-'),
(296, 'Gunilla', NULL, 'No tiene', '1471', 'M', 315, '-'),
(297, 'Alma', NULL, '90313', 'A566', 'M', 301, '-'),
(298, 'Noa', '', '1926077', 'A526', 'M', 391, 'GII'),
(299, 'Magia', '', '2032179', 'A528', 'S', 86, 'GIII'),
(300, 'Saroa', '', '1789456', 'A149', 'S', 464, 'GIII'),
(301, 'Melendi', '', '1842276', 'A164', 'S', 311, 'GIII'),
(302, 'Mims', NULL, '102903', 'A279', 'S', 10, '-'),
(303, 'Hancock', NULL, '131702', 'A609', 'S', 349, '-'),
(304, 'Tris', NULL, '119441', 'A398', 'S', 411, '-'),
(305, 'Lula', NULL, '123192', 'A607', 'S', 118, '-'),
(306, 'Rufo', NULL, '123178', 'A435', 'S', 257, '-'),
(307, 'Sira', '', '106345', 'A168', 'S', 112, 'GIII'),
(308, 'Nit', '', '112007', 'A208', 'S', 357, 'GIII'),
(309, 'Xira', 'Schnauzer', '124731', 'A424', 'S', 432, 'GIII'),
(310, 'Che Guevara', 'Caniche', '112448', 'A230', 'S', 465, 'GIII'),
(311, 'Enzo', NULL, '117909', 'A444', 'S', 352, '-'),
(312, 'Nuca', 'Tibetan Spaniel', '109471', 'A181', 'S', 197, 'GIII'),
(313, 'Gismo', NULL, '123726', 'A449', 'S', 441, '-'),
(314, 'Nana', 'Caniche', '103211', 'A277', 'S', 424, 'GIII'),
(315, 'Nikita', '', '123006', 'A443', 'S', 33, 'GIII'),
(316, 'Xena', '', '125524', 'A509', 'S', 138, 'GIII'),
(317, 'Chula', '', '106335', 'A135', 'S', 193, 'GIII'),
(318, 'Dagga', NULL, '127338', 'A507', 'S', 181, '-'),
(319, 'Greta', NULL, '1849716', 'A337', 'S', 72, '-'),
(320, 'Bengel', 'Schnnauzer', '1433208', '760', 'S', 331, 'GII'),
(321, 'Nei', NULL, '1400011', '770', 'S', 191, '-'),
(322, 'Tess', NULL, '102439', 'A245', 'S', 203, '-'),
(323, 'Lia', 'Brazillian Terrier', '132000', 'A588', 'S', 188, 'GII'),
(324, 'Taca', '', '128455', 'A589', 'S', 37, 'GII'),
(325, 'Miche', '', '1706141', 'A097', 'S', 321, 'GII'),
(326, 'Manin', NULL, '104120', 'A100', 'S', 411, '-'),
(327, 'Doña Matilde', '', '2005359', 'A514', 'S', 139, 'GIII'),
(328, 'Aqua', NULL, '2056249', 'A513', 'S', 295, '-'),
(329, 'Nuca', 'Schnauzer', '1678476', 'A088', 'S', 2, 'GII'),
(330, 'Pepa', 'Jack Rusell', '1957259', 'A393', 'S', 160, 'GII'),
(331, 'Spyro', '', '131527', 'A569', 'S', 373, 'GIII'),
(332, 'Della', NULL, '2061744', 'A467', 'S', 106, '-'),
(333, 'Lua', NULL, '116884', 'A287', 'S', 267, '-'),
(334, 'Mayo', NULL, 'No tiene', '1419', 'S', 364, '-'),
(335, 'Nala', NULL, '108635', 'A530', 'S', 113, '-'),
(336, 'Lola', NULL, 'No tiene', '1464', 'S', 211, '-'),
(337, 'Noah', NULL, '131506', 'A590', 'S', 227, '-'),
(338, 'Sully', NULL, '116639', 'A520', 'S', 397, '-'),
(339, 'Gus', NULL, '119626', 'A346', 'S', 56, '-'),
(340, 'Lola', NULL, 'No tiene', '1541', 'S', 301, '-'),
(341, 'Thor', 'Schnauzer', '1939205', 'A535', 'S', 2, 'GII'),
(342, 'Quillo', 'Rusky Toy', '127443', 'A604', 'S', 101, 'GII'),
(343, 'Lennon', NULL, '103239', 'A144', 'S', 355, '-'),
(344, 'Boira', NULL, 'No tiene', '1554', 'S', 420, '-'),
(345, 'Kyra', NULL, '131481', 'A600', 'S', 30, '-'),
(346, 'Acha', '', '123731', 'A483', 'M', 324, '-'),
(347, 'Ada', 'Mestizo', '', '1459', 'S', 398, 'GII'),
(348, 'Aker', 'P.B. Malinoise', '1553051', 'A397', 'L', 162, 'GII'),
(349, 'Akira', NULL, '125877', 'A455', 'L', 255, 'GII'),
(350, 'Dama', 'Fox Terrier Wire', '0131204', 'A641', 'M', 264, 'GIII'),
(351, 'Flai', 'Fox Terrier Wire', '0129738', 'A815', 'M', 264, 'GII'),
(352, 'Donna', 'Border Collie', '', 'A795', 'L', 405, 'GII'),
(353, 'fito', 'mestizo', '', '', 'T', 387, 'GII'),
(354, 'paco', '', '', '', 'T', 1, 'GII'),
(355, 'Akela', 'Border Collie', '', 'A746', 'L', 155, 'GII'),
(356, 'Toska', 'Border Collie', '', '', 'L', 220, 'GI'),
(357, 'Sira', 'P.B.Malinoise', '', 'A584', 'L', 224, 'GII'),
(358, 'Duna', 'P. Aleman', '', 'A586', 'L', 455, 'GII'),
(359, 'Olivia', 'Schnauzer', '', 'A742', 'S', 287, 'GII'),
(360, 'Kyle', 'Schnauzer', '', 'A-539', 'M', 198, 'GII'),
(361, 'Kara', 'Border Collie', '', 'A-541', 'L', 399, 'GII'),
(362, 'Tibet', 'Border Collie', '', '', 'L', 59, 'GII'),
(363, 'Beltxa', 'Schnauzer', '', 'A622', 'S', 432, 'GII'),
(364, 'Yeni', 'Border Collie', '', '', 'L', 245, 'GI'),
(365, 'Danah', 'P. Australiano', '', 'A889', 'L', 280, 'GII'),
(366, 'Net', 'P. Australiano', '', '', 'L', 192, 'GI'),
(367, 'Sira', 'Boxer', '', '', 'L', 111, 'GI'),
(368, 'Maggie', 'Mestizo', '', '1570', 'S', 402, 'GII'),
(369, 'Kiss', '', '', '', 'L', 202, 'GI'),
(370, 'Milka', '', '', '', 'L', 207, 'GI'),
(371, 'Mitzy', 'Braco', '', '', 'L', 47, 'GI'),
(372, 'Sura', 'Shar Pei', '', '', 'L', 335, 'GI'),
(374, 'Neo', '', '', '', 'L', 220, 'GII'),
(375, 'Sitan', '', '', '795', 'L', 224, 'GII'),
(376, 'Kaiser', '', '', 'A383', 'S', 202, 'GII'),
(377, 'Geha', 'Border Collie', '', 'A162', 'L', 308, 'GII'),
(378, 'Momo', 'Borde Collie', '', 'A391', 'L', 409, 'GII'),
(379, 'Skay', 'Perro de Aguas Español', '', 'A605', 'L', 212, 'GII'),
(380, 'Keko', '', '', '', 'L', 17, 'GII'),
(381, 'Mambo', 'Border Collie', '', '', 'L', 39, 'GI'),
(382, 'Swing', '', '', '', 'M', 371, 'GI'),
(383, 'Trufa', 'Perro de Aguas Español', '', '', 'M', 415, 'GI'),
(384, 'Soma', 'Labrador Retriever', '', 'A696', 'L', 343, 'GII'),
(385, 'Phoebe', 'Border Collie', '', 'A555', 'M', 148, 'GII'),
(386, 'Izzie', 'West Higland White Terrier', '', 'A275', 'S', 148, 'GII'),
(387, 'Kyra', 'Border Collie', '', '1607', 'L', 44, 'GII'),
(388, 'Nika', 'Border Collie', '', '', 'L', 74, 'GI'),
(389, 'Dolce', 'Border Collie', '', 'A681', 'L', 44, 'GII'),
(390, 'Dolce', '', '', '', 'L', 361, 'GII'),
(391, 'Gilda', 'Border Collie', '', 'A723', 'L', 361, 'GII'),
(392, 'Noa', 'Border Collie', '', 'A540', 'L', 384, 'GII'),
(393, 'Thor', 'Border Collie', '', 'A835', 'L', 270, 'GII'),
(394, 'Akira Haru', 'BorderCollie', '', 'A311', 'L', 172, 'GII'),
(395, 'Nala', 'BorderCollie', '', 'A142', 'L', 141, 'GIII'),
(396, 'Peka', '', '', 'A615', 'L', 259, 'GII'),
(397, 'Milady', 'Border Collie', '', 'A791', 'L', 407, 'GII'),
(398, 'Yashi', 'Pastor de los Pirineos', '', '', 'M', 453, 'GI'),
(399, 'Dollar', 'Border Collie', '', '911', 'L', 309, 'GII'),
(400, 'Héctor', 'Pastor Vasco', '', '1597', 'L', 114, 'GII'),
(401, 'Ron', 'Border Collie', '', 'A617', 'L', 376, 'GII'),
(402, 'Viconte', '', '', 'A367', 'L', 284, 'GII'),
(403, 'Agran', 'Border Collie', '', 'A752', 'L', 8, 'GII'),
(404, 'Bimba', 'Border Collie', '', 'A288', 'L', 314, 'GII'),
(405, 'Dudy', 'Border Collie', '', 'A753', 'L', 276, 'GII'),
(406, 'Kember', 'Bóxer', '', '1558', 'L', 7, 'GII'),
(407, 'Luca', 'Ratonero Bodeguero Andaluz', '', 'A749', 'M', 101, 'GII'),
(408, 'Kika', 'West Higland White Terrier', '', 'A722', 'S', 365, 'GII'),
(409, 'Olivia', 'Caniche', '', 'A701', 'S', 102, 'GII'),
(410, 'Sombra', 'Border Collie', '', 'A679', 'L', 242, 'GII'),
(411, 'Noah', 'Schnauzer', '', '', 'S', 198, 'GI'),
(412, 'Brea', 'Mestizo', '', '', 'L', 31, 'GII'),
(413, 'Lola', 'Jack Rusell', '', 'A633', 'S', 160, 'GII'),
(414, 'Yeny', 'Border Collie', '', 'A747', 'L', 245, 'GII'),
(415, 'Sonic', 'Perro de Aguas Español', '', 'A495', 'L', 98, 'GII'),
(416, 'Wind', 'Border Collie', '', 'A561', 'L', 427, 'GII'),
(417, 'Crack', 'Border Collie', '', 'A719', 'L', 374, 'GII'),
(418, 'Nitra', 'Caniche', '', 'A743', 'S', 465, 'GII'),
(419, 'Nova', 'Border Collie', '', 'A642', 'L', 414, 'GII'),
(420, 'Momo', 'Border Collie', '', 'A621', 'L', 34, 'GII'),
(421, 'Byron', 'Border Collie', '', '', 'L', 413, 'GI'),
(422, 'Amis', 'Border Collie', '', 'A620', 'L', 247, 'GII'),
(423, 'Noa', 'BorderCollie', '', 'A143', 'L', 213, 'GII'),
(424, 'Vlad', 'Perro de Aguas Español', '', 'A752', 'L', 45, 'GII'),
(425, 'Mou', 'Kelpie Australiano', '', '', 'L', 82, 'GI'),
(426, 'Black', 'Border Collie', '', '', 'L', 258, 'GI'),
(427, 'Kala', 'Yorkshire Terrier', '', '1574', 'S', 99, 'GII'),
(428, 'Andy', 'Border Collie', '', 'A671', 'L', 317, 'GII'),
(429, 'beep', '', '', '', 'L', 392, 'GI'),
(430, 'Ella', '', '', '', 'L', 316, 'GI'),
(431, 'Nya', '', '', '', 'L', 3, 'GI'),
(432, 'Tibet', '', '', '', 'L', 103, 'GI'),
(433, 'Kenzo', '', '', '', 'L', 460, 'GI'),
(434, 'Dafne', '', '', '', 'L', 272, 'GI'),
(435, 'Nut', '', '', '', 'L', 421, 'GI'),
(436, 'Morgan', '', '', '', 'L', 133, 'GI'),
(437, 'Juke', '', '', '', 'L', 336, 'GI'),
(438, 'Argi', '', '', '', 'L', 149, 'GI'),
(439, 'Pi', '', '', '', 'L', 169, 'GI'),
(440, 'Horatio', 'Bulldog Frances', '', 'A847', 'S', 73, 'GII'),
(441, 'Goldie', '', '', '', 'S', 379, 'GI'),
(442, 'Cachirulo', '', '', 'A578', 'L', 116, 'GII'),
(443, 'Lucky', '', '', '1561', 'L', 23, 'GII'),
(444, 'Chika', '', '', 'A518', 'L', 291, 'GII'),
(445, 'Inka', '', '', 'A699', 'L', 100, 'GII'),
(446, 'Nupsi', '', '', '', 'L', 75, 'GII'),
(447, 'Inka', '', '', 'A381', 'L', 386, 'GII'),
(448, 'Tiri', '', '', 'A782', 'L', 241, 'GII'),
(449, 'Itoitz', '', '', 'A713', 'L', 13, 'GII'),
(450, 'Xira', '', '', '1499', 'L', 5, 'GII'),
(451, 'Gala', '', '', 'A500', 'L', 26, 'GII'),
(452, 'Luna', '', '', '', 'L', 50, 'GII'),
(453, 'Lorenzo', '', '', 'A666', 'L', 389, 'GII'),
(454, 'Bombon', '', '', 'A773', 'L', 51, 'GII'),
(455, 'Lluna', '', '', '1537', 'L', 51, 'GII'),
(456, 'Ardi de Rioja', '', '', '0729', 'L', 228, 'GII'),
(457, 'Danko', '', '', '1509', 'L', 110, 'GII'),
(458, 'Tessa', '', '', 'A317', 'L', 433, 'GII'),
(459, 'Rex', '', '', '1578', 'L', 438, 'GII'),
(460, 'Chicaa', '', '', 'A703', 'L', 170, 'GII'),
(461, 'Sue', '', '', 'A788', 'L', 435, 'GII'),
(462, 'Kira', '', '', '', 'L', 93, 'GII'),
(463, 'Heidy', '', '', 'A496', 'L', 282, 'GII'),
(464, 'Bella', '', '', '1586', 'L', 305, 'GII'),
(465, 'Hanna', '', '', '1584', 'L', 11, 'GII'),
(466, 'Eo', '', '', 'A768', 'L', 323, 'GII'),
(467, 'Panda', '', '', '', 'L', 296, 'GII'),
(468, 'Venus', '', '', 'A743', 'L', 311, 'GII'),
(469, 'Charly', '', '', '1592', 'L', 232, 'GII'),
(470, 'Argi', '', '', '1600', 'L', 186, 'GII'),
(471, 'Broto', '', '', 'A764', 'L', 431, 'GII'),
(472, 'Anouk', '', '', 'A480', 'L', 434, 'GII'),
(473, 'Flecha', '', '', 'A748', 'L', 423, 'GII'),
(474, 'Heidi', '', '', 'A035', 'L', 430, 'GII'),
(475, 'Moa', '', '', 'A508', 'L', 164, 'GII'),
(476, 'Greta', '', '', '', 'L', 229, 'GII'),
(477, 'Lur', '', '', 'A741', 'L', 178, 'GII'),
(478, 'Charli', '', '', 'A655', 'L', 63, 'GII'),
(479, 'Lia', '', '', '1563', 'L', 304, 'GII'),
(480, 'Nika', '', '', '1590', 'S', 157, 'GII'),
(481, 'Erinka', '', '', 'A761', 'S', 370, 'GII'),
(482, 'Ursus', '', '', '', 'S', 184, 'GII'),
(483, 'Ela', '', '', 'A618', 'S', 363, 'GII'),
(484, 'Lua', '', '', 'A763', 'S', 61, 'GII'),
(485, 'Wembley', '', '', 'A769', 'S', 76, 'GII'),
(486, 'Rikke', '', '', '', 'S', 62, 'GII'),
(487, 'Imo', '', '', 'A631', 'M', 229, 'GII'),
(488, 'Alpargata', '', '', 'A606', 'M', 152, 'GII'),
(489, 'Lucky Luque', '', '', 'A766', 'S', 195, 'GII'),
(490, 'Salma', '', '', 'A521', 'S', 222, 'GII'),
(491, 'Dracma', '', '', 'A626', 'S', 333, 'GII'),
(492, 'Jade', '', '', 'A629', 'L', 225, 'GIII'),
(493, 'Rinoa', '', '', 'A447', 'L', 325, 'GIII'),
(494, 'Chus', '', '', '934', 'L', 225, 'GIII'),
(495, 'Gala', '', '', 'A674', 'L', 127, 'GIII'),
(496, 'Chamán', '', '', 'A262', 'L', 386, 'GIII'),
(497, 'Koira', '', '', 'A252', 'L', 326, 'GIII'),
(498, 'Kobu', '', '', '1564', 'M', 187, 'GIII'),
(499, 'Zeus', '', '', 'A139', 'M', 325, 'GIII'),
(500, 'Gea', '', '', 'A175', 'M', 268, 'GIII'),
(501, 'Sacha', '', '', 'A632', 'M', 167, 'GIII'),
(502, 'Fran', '', '', 'A028', 'M', 116, 'GIII'),
(503, 'Peka', '', '', 'A291', 'M', 291, 'GIII'),
(504, 'Time', '', '', 'A571', 'M', 416, 'GIII'),
(505, 'Alma', '', '', '874', 'M', 136, 'GIII'),
(506, 'Kira', '', '', 'A600', 'S', 30, 'GIII'),
(507, 'Cleo', '', '', 'A152', 'S', 85, 'GIII'),
(508, 'Luna', '', '', '0956', 'S', 85, 'GIII'),
(509, 'Nika', '', '', 'A082', 'S', 325, 'GII'),
(510, 'Quenn', 'Palleiro', '', '', 'M', 47, 'GI'),
(511, 'Gala', 'Pastor Alemán', '', '', 'L', 40, 'GI'),
(512, 'Moly', 'Jack Rusell', '', '1633', 'S', 194, 'GII'),
(513, 'Vali', 'Border Collie', '', 'A811', 'L', 9, 'GII'),
(514, 'Isis', 'Border Collie', '', '', 'L', 471, 'GI'),
(515, 'Darco', 'Beagle', '', '', 'M', 46, 'GI'),
(516, 'Bruce', 'Ratonero Bodeguero Andaluz', '', 'A813', 'M', 230, 'GII'),
(517, 'Nut', 'Pastor Belga Malinoise', '', 'A-886', 'L', 162, 'GII'),
(518, 'Lluna', 'Border Collie', '', '', 'L', 459, 'GI'),
(519, 'Dunah', 'Cocker Spaniel', '', 'A635', 'M', 28, 'GII'),
(520, 'Aska', 'Border Collie', '', 'A899', 'L', 306, 'GII'),
(521, 'Buck', 'Border Collie', '', 'A877', 'L', 81, 'GII'),
(522, 'Merche', 'Schnauzer Gigante', '', 'A989', 'L', 303, 'GII'),
(523, 'Bambú', 'Border Collie', '', '', 'L', 217, 'GI'),
(524, 'King', '', '', 'A683', 'S', 263, 'GII'),
(525, 'Toxo', '', '', 'A677', 'S', 277, 'GII'),
(526, 'Newton', '', '', '', 'L', 137, 'GI'),
(527, 'Cala', '', '', 'A697', 'L', 293, 'GII'),
(528, 'Onna', '', '', '', 'L', 356, 'GII'),
(529, 'Trasgo', '', '', 'A650', 'L', 171, 'GII'),
(530, 'Samba', '', '', 'A702', 'M', 385, 'GII'),
(531, 'Charlie', '', '', 'A532', 'S', 385, 'GIII'),
(532, 'Alan', '', '', '', 'L', 190, 'GI'),
(533, 'Moly', '', '', '', 'L', 70, 'GI'),
(534, 'Pipa', '', '', 'A718', 'S', 297, 'GII'),
(535, 'Chola', '', '', 'A691', 'M', 329, 'GII'),
(536, 'Blue', '', '', '', 'S', 21, 'GI'),
(537, 'Fly', '', '', '', 'L', 180, 'GII'),
(538, 'Sira', '', '', '', 'L', 338, 'GII'),
(539, 'Xhyla', '', '', 'A711', 'L', 108, 'GII'),
(540, 'Lua', '', '', 'A689', 'M', 108, 'GII'),
(541, 'Deva', '', '', '', 'L', 451, 'GI'),
(542, 'Duna', '', '', '', 'L', 158, 'GI'),
(543, 'Jefrelú', '', '', '', 'L', 94, 'GI'),
(544, 'Lumy', '', '', '', 'L', 24, 'GI'),
(545, 'Magui', '', '', '', 'L', 94, 'GI'),
(546, 'Trenty', '', '', '', 'L', 322, 'GI'),
(547, 'Xana', '', '', '', 'L', 368, 'GI'),
(548, 'Zoe', '', '', '', 'L', 134, 'GI'),
(549, 'Zoe', '', '', '', 'L', 156, 'GI'),
(550, 'Eria', '', '', '', 'S', 173, 'GI'),
(551, 'Tinka', '', '', '', 'S', 342, 'GI'),
(552, 'Blue', '', '', '1572', 'L', 346, 'GII'),
(553, 'Dana', '', '', 'A688', 'L', 346, 'GII'),
(554, 'Phoebe', '', '', 'A690', 'L', 196, 'GII'),
(555, 'Sella', '', '', '', 'L', 94, 'GII'),
(556, 'botinera', '', '', '', 'L', 466, 'GI'),
(558, 'Rumba', '', '', '', 'L', 467, 'GI'),
(559, 'Perla', 'Yorkshire', '', '', 'S', 488, 'GII'),
(560, 'Arturo', 'Mestizo', '', '', 'S', 477, 'GII'),
(561, 'Yara', '', '', '', 'L', 489, 'GI'),
(562, 'Arya', '', '', '', 'L', 399, 'P.A.'),
(563, 'Sasha', '', '', '', 'L', 490, 'P.A.'),
(564, 'Zar', '', '', '', 'L', 491, 'P.A.'),
(565, 'Lillo', 'Jack Russel', '', '', 'S', 492, 'GI'),
(566, 'Amy', '', '', '', 'L', 493, 'P.A.'),
(567, 'Dana', '', '', '', 'L', 493, 'P.A.'),
(568, 'Golfo', '', '', '', 'L', 494, 'P.A.'),
(569, 'Ron', '', '', '', 'L', 494, 'P.A.'),
(570, 'Putt', '', '', '', 'L', 371, 'P.A.'),
(571, 'Onza', 'PDAE', '', '', 'M', 496, 'GI'),
(572, 'Sancho', '', '', '', 'M', 497, 'P.A.'),
(573, 'Manzanillo', '', '', '', 'S', 498, 'GI'),
(574, 'Arwen', '', '', '', 'L', 473, 'GI'),
(575, 'Nashira', 'Border Collie', '', 'A903', 'L', 499, 'GII'),
(576, 'Chuli', 'Border Collie', '', '', 'L', 482, 'GI'),
(577, 'Skye', 'Border Collie', '', '', 'L', 500, 'GI'),
(581, 'Lady', '', '', '', 'L', 501, 'P.A.'),
(582, 'Zoe', '', '', '', 'L', 502, 'P.A.'),
(583, 'Tabu', '', '', '', 'L', 491, 'P.A.'),
(584, 'Ursula', 'Jack Russel', '', 'A840', 'S', 478, 'GII'),
(585, 'Ari', 'Border Collie', '', 'A894', 'L', 468, 'GII'),
(586, 'Hippie', 'Ratonero Valenciano', '', '', 'M', 504, 'GI'),
(587, 'Mara', 'Schnauzer', '', '', 'S', 472, 'GI'),
(588, 'Greta', 'Cocker Spaniel', '', '', 'M', 505, 'GI'),
(589, 'Iris', 'Border Collie', '', '', 'L', 424, 'GI'),
(590, 'Bruni', 'Border Collie', '', '', 'L', 506, 'GI'),
(591, 'Dana', 'Border Collie', '', '', 'L', 507, 'GI'),
(592, 'Lua', 'Mestizo', '', '', 'L', 508, 'GI'),
(593, 'Ada', 'Mestizo', '', '', 'L', 475, 'GI'),
(594, 'Mashel', 'Jack Russel', '', 'A931', 'S', 474, 'GII'),
(595, 'Lola', 'Wippet', '', '', 'M', 509, 'GI'),
(596, 'Moly', 'Border Collie', '', '', 'L', 7, 'GI'),
(597, 'Coco', 'Labrador Retriever', '', '', 'L', 510, 'GI'),
(598, 'Nika', 'Border Collie', '', 'A821', 'L', 140, 'GII'),
(599, 'Cayenne', 'Border Collie', '', '28123', 'L', 511, 'GIII'),
(600, 'Etna', 'Border Collie', '', '34873', 'L', 512, 'GIII'),
(601, 'Lee-Ann', 'Border Colliie', '', '', 'L', 197, 'GI'),
(602, 'Sucre', 'Border Collie', '', 'A920', 'L', 5, 'GII'),
(603, 'Killa', 'Mestizo', '', 'Pendiente', 'L', 513, 'GII'),
(604, 'Mizarfrida', 'Border Collie', '', '', 'L', 514, 'GI'),
(605, 'Hera', 'Border Collie', '', '', 'L', 483, 'GI'),
(606, 'Nora', 'P.B. Malinoise', '', 'A305', 'L', 515, 'GII'),
(607, 'Hela', 'Border Collie', '', 'A836', 'L', 92, 'GII'),
(608, 'Sendy', 'Border Collie', '', 'A926', 'L', 487, 'GII'),
(609, 'Lumbre', 'Border Collie', '', 'A932', 'L', 485, 'GII'),
(610, 'Baddy', 'Border Collie', '', '', 'L', 481, 'GII'),
(612, 'Ginn', 'Pastor del Pirineo', '', '', 'M', 516, 'GI'),
(613, 'Quillo', 'Pastor del Pirineo', '', 'A-904', 'M', 516, 'GII'),
(614, 'Ben', 'Caniche Enano', '', 'A-928', 'S', 517, 'GIII'),
(615, 'Winni', 'Pastor del Pirineo', '', 'A-929', 'M', 517, 'GIII'),
(616, 'Mika', 'Mestizo', '', '', 'S', 518, 'GI'),
(617, 'Wendy', 'Mestizo', '', '', 'M', 519, 'GI'),
(618, 'Thais', 'Labrador', '', '1640', 'L', 469, 'GII'),
(620, 'Arya', '', '', '', 'L', 520, 'P.A.'),
(621, 'Iris', '', '', '', 'L', 521, 'P.A.'),
(622, 'Truco', 'Border Collie', '', '', 'L', 522, 'GI'),
(623, 'Nubia', 'Pastor Alemán', '', 'A-309', 'L', 276, 'GII'),
(624, 'Bora', '', '', '', 'L', 465, 'P.A.'),
(625, 'Knut', '', '', '', 'L', 523, 'GI'),
(626, 'Hera', '', '', '', 'L', 523, 'GII'),
(627, 'Arashi', '', '', '', 'L', 207, 'P.A.'),
(628, 'Shiva', '', '', '', 'L', 40, 'P.A.'),
(629, 'Vash', '', '', '', 'L', 220, 'P.A.'),
(630, 'Coba', 'Border Collie', '', '', 'L', 524, 'P.A.'),
(631, 'Yoda', '', '', '', 'L', 526, 'P.A.'),
(632, 'Parche', '', '', '', 'L', 525, 'P.A.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `provincias`;
CREATE TABLE IF NOT EXISTS `provincias` (
  `Provincia` varchar(32) NOT NULL DEFAULT '',
  `Comunidad` varchar(32) DEFAULT NULL,
  `Codigo` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`Provincia`, `Comunidad`, `Codigo`) VALUES
('-- Sin asignar --', 'NO BORRAR: Usado para cuando no ', 0),
('Albacete', 'Castilla - La Mancha', 2),
('Alicante/Alacant', 'Comunitat Valenciana', 3),
('Almería', 'Andalucía', 4),
('Araba/Álava', 'País Vasco', 1),
('Asturias', 'Cantabria', 33),
('Ávila', 'Castilla y León', 5),
('Badajoz', 'Extremadura', 6),
('Balears, Illes', 'Balears, Illes', 7),
('Barcelona', 'Cataluña', 8),
('Bizkaia/Vizcaya', 'País Vasco', 48),
('Burgos', 'Castilla y León', 9),
('Cáceres', 'Extremadura', 10),
('Cádiz', 'Andalucía', 11),
('Cantabria', 'Cantabria', 39),
('Castellón/Castelló', 'Comunitat Valenciana', 12),
('Ceuta', 'Ceuta', 51),
('Ciudad Real', 'Castilla - La Mancha', 13),
('Córdoba', 'Andalucía', 14),
('Coruña, A', 'Galicia', 15),
('Cuenca', 'Castilla - La Mancha', 16),
('Gipuzkoa/Guipúzcoa', 'País Vasco', 20),
('Girona/Gerona', 'Cataluña', 17),
('Granada', 'Andalucía', 18),
('Guadalajara', 'Castilla - La Mancha', 19),
('Huelva', 'Andalucía', 21),
('Huesca', 'Aragón', 22),
('Jaén', 'Andalucía', 23),
('León', 'Castilla y León', 24),
('Lleida/Lérida', 'Cataluña', 25),
('Lugo', 'Galicia', 27),
('Madrid', 'Madrid, Comunidad de', 28),
('Málaga', 'Andalucía', 29),
('Melilla', 'Melilla', 52),
('Murcia', 'Murcia, Región de', 30),
('Navarra', 'Navarra, Comunidad Foral de', 31),
('Ourense/Orense', 'Galicia', 32),
('Palencia', 'Castilla y León', 34),
('Palmas, Las', 'Canarias', 35),
('Pontevedra', 'Galicia', 36),
('Rioja, La', 'Rioja, La', 26),
('Salamanca', 'Castilla y León', 37),
('Santa Cruz de Te', 'Canarias', 38),
('Segovia', 'Castilla y León', 40),
('Sevilla', 'Andalucía', 41),
('Soria', 'Castilla y León', 42),
('Tarragona', 'Cataluña', 43),
('Teruel', 'Aragón', 44),
('Toledo', 'Castilla - La Mancha', 45),
('Valencia/Valéncia', 'Comunitat Valenciana', 46),
('Valladolid', 'Castilla y León', 47),
('Zamora', 'Castilla y León', 49),
('Zaragoza', 'Aragón', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `pruebas`;
CREATE TABLE IF NOT EXISTS `pruebas` (
`ID` int(4) NOT NULL,
  `Operador` int(4) DEFAULT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Club` int(4) NOT NULL DEFAULT '1',
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Triptico` longblob,
  `Cartel` longblob,
  `Observaciones` varchar(255) DEFAULT NULL,
  `RSCE` tinyint(1) NOT NULL DEFAULT '0',
  `Selectiva` tinyint(1) NOT NULL DEFAULT '0',
  `Cerrada` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `pruebas`:
--   `Club`
--       `clubes` -> `ID`
--

--
-- Volcado de datos para la tabla `pruebas`
--

INSERT INTO `pruebas` (`ID`, `Operador`, `Nombre`, `Club`, `Ubicacion`, `Triptico`, `Cartel`, `Observaciones`, `RSCE`, `Selectiva`, `Cerrada`) VALUES
(1, NULL, '-- Sin asignar --', 1, NULL, NULL, NULL, 'NO BORRAR: Prueba por defecto para jornadas huerfanas', 0, 0, 1),
(2, NULL, 'Prueba de prueba', 79, 'Instalaciones del club', '', '', '', 1, 0, 0),
(3, NULL, '2014 Diciembre Cinco Huesos', 16, 'Instalaciones del club', '', '', '', 0, 0, 0),
(4, NULL, 'Eslon 13-14 Diciembre', 35, 'instalaciones del club', '', '', '', 0, 0, 0),
(5, NULL, '2015 10-11 Enero Cinco Huesos', 16, '', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--
-- Creación: 08-01-2015 a las 18:38:46
--

DROP TABLE IF EXISTS `resultados`;
CREATE TABLE IF NOT EXISTS `resultados` (
  `Prueba` int(4) NOT NULL,
  `Jornada` int(4) NOT NULL,
  `Manga` int(4) NOT NULL,
  `Dorsal` int(4) NOT NULL,
  `Perro` int(4) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Licencia` varchar(255) NOT NULL DEFAULT '--------',
  `Categoria` varchar(1) NOT NULL DEFAULT '-',
  `Grado` varchar(16) NOT NULL DEFAULT '-',
  `NombreGuia` varchar(255) NOT NULL DEFAULT '-- Sin asignar --',
  `NombreClub` varchar(255) NOT NULL DEFAULT '-- Sin asignar --',
  `Entrada` timestamp NOT NULL DEFAULT '2014-01-01 00:00:00',
  `Comienzo` timestamp NOT NULL DEFAULT '2014-01-01 00:00:00',
  `Faltas` int(4) NOT NULL DEFAULT '0',
  `Rehuses` int(4) NOT NULL DEFAULT '0',
  `Tocados` int(4) NOT NULL DEFAULT '0',
  `Eliminado` tinyint(1) NOT NULL DEFAULT '0',
  `NoPresentado` tinyint(1) NOT NULL DEFAULT '0',
  `Tiempo` double NOT NULL DEFAULT '0',
  `Observaciones` varchar(255) NOT NULL DEFAULT '',
  `Pendiente` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `resultados`:
--   `Perro`
--       `perros` -> `ID`
--   `Manga`
--       `mangas` -> `ID`
--   `Prueba`
--       `pruebas` -> `ID`
--   `Jornada`
--       `jornadas` -> `ID`
--

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`Prueba`, `Jornada`, `Manga`, `Dorsal`, `Perro`, `Nombre`, `Licencia`, `Categoria`, `Grado`, `NombreGuia`, `NombreClub`, `Entrada`, `Comienzo`, `Faltas`, `Rehuses`, `Tocados`, `Eliminado`, `NoPresentado`, `Tiempo`, `Observaciones`, `Pendiente`) VALUES
(3, 9, 1, 19, 562, 'Arya', '', 'L', 'P.A.', 'Ramón García Maroto', 'Cinco Huesos', '2014-12-06 13:01:05', '2014-12-06 13:01:05', 3, 0, 0, 0, 0, 27.15, '', 0),
(3, 9, 1, 20, 563, 'Sasha', '', 'L', 'P.A.', 'Beatriz Sánchez Casares', 'Cinco Huesos', '2014-12-06 12:58:20', '2014-12-06 12:58:20', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 1, 21, 564, 'Zar', '', 'L', 'P.A.', 'Isabel Fernández', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 1, 26, 565, 'Lillo', '', 'S', 'P.A.', 'Mari Carmen Martí Sanz', 'Cinco Huesos', '2014-12-06 12:58:43', '2014-12-06 12:58:43', 0, 1, 0, 0, 0, 29.35, '', 0),
(3, 9, 1, 30, 566, 'Amy', '', 'L', 'P.A.', 'Irene Escribano', 'Correcan', '2014-12-06 13:00:44', '2014-12-06 13:00:44', 0, 0, 0, 0, 1, 0, '', 0),
(3, 9, 1, 31, 567, 'Dana', '', 'L', 'P.A.', 'Irene Escribano', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 1, 32, 568, 'Golfo', '', 'L', 'P.A.', 'Cynthia Sánchez', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 1, 33, 569, 'Ron', '', 'L', 'P.A.', 'Cynthia Sánchez', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 1, 34, 570, 'Putt', '', 'L', 'P.A.', 'Olga Palomares', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 1, 37, 571, 'Onza', '', 'M', 'P.A.', 'Irene Blanco', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 1, 38, 572, 'Sancho', '', 'M', 'P.A.', ' Oscar López', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 1, 55, 581, 'Lady', '', 'L', 'P.A.', 'Jose Luis de la Vara', 'Cinco Huesos', '2014-12-06 13:00:04', '2014-12-06 13:00:04', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 1, 57, 582, 'Zoe', '', 'L', 'P.A.', 'Yaiza', 'Cinco Huesos', '2014-12-06 12:59:44', '2014-12-06 12:59:44', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 1, 56, 583, 'Tabu', '', 'S', 'P.A.', 'Isabel Fernández', 'Cinco Huesos', '2014-12-06 12:57:27', '2014-12-06 12:57:27', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 2, 9, 356, 'Toska', '', 'L', 'GI', 'Jesús Gómez', 'Agilcan', '2014-12-06 11:52:55', '2014-12-06 11:52:55', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 2, 7, 371, 'Mitzy', '', 'L', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 2, 8, 372, 'Sura', '', 'L', 'GI', 'Marta Jiménez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 2, 35, 382, 'Swing', '', 'M', 'GI', 'Olga Palomares', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 2, 36, 383, 'Trufa', '', 'M', 'GI', 'Rosa Rubio', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 2, 49, 398, 'Yashi', '', 'M', 'GI', 'Verónica Rodríguez', 'La Princesa', '2014-12-06 11:58:05', '2014-12-06 11:58:05', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 2, 23, 411, 'Noah', '', 'S', 'GI', 'Iván San Antonio', 'Cinco Huesos', '2014-12-06 12:02:42', '2014-12-06 12:02:42', 0, 2, 0, 0, 0, 60.33, '', 0),
(3, 9, 2, 12, 510, 'Quenn', '', 'M', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 2, 27, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernández Moreno', 'Correcan', '2014-12-06 11:50:33', '2014-12-06 11:50:33', 2, 0, 0, 0, 0, 35.04, '', 0),
(3, 9, 2, 2, 559, 'Perla', '', 'S', 'GI', 'Sandra Rodrigo', 'A-0', '2014-12-06 12:01:34', '2014-12-06 12:01:34', 0, 0, 0, 0, 0, 46.3, '', 0),
(3, 9, 2, 13, 561, 'Yara', '', 'L', 'GI', 'Sonia Gil', 'Cinco Huesos', '2014-12-06 11:56:26', '2014-12-06 11:56:26', 2, 2, 0, 0, 0, 46.19, '', 0),
(3, 9, 2, 39, 573, 'Manzanillo', '', 'S', 'GI', 'Virginia Pastor', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 2, 40, 574, 'Arwen', '', 'L', 'GI', 'Iván García Puebla', 'L''Almozara', '2014-12-06 11:55:05', '2014-12-06 11:55:05', 2, 2, 0, 0, 0, 45.36, '', 0),
(3, 9, 2, 53, 576, 'Chuli', '', 'L', 'GI', 'Yaiza Caballero Fernández', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 2, 54, 577, 'Skay', '', 'L', 'GI', 'Ana Belén Ondategui Casas', 'Xanastur', '2014-12-06 11:53:39', '2014-12-06 11:53:39', 2, 2, 0, 0, 0, 58, '', 0),
(3, 9, 3, 9, 356, 'Toska', '', 'L', 'GI', 'Jesús Gómez', 'Agilcan', '2014-12-06 12:25:47', '2014-12-06 12:25:47', 3, 1, 0, 0, 0, 47.9, '', 0),
(3, 9, 3, 7, 371, 'Mitzy', '', 'L', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 3, 8, 372, 'Sura', '', 'L', 'GI', 'Marta Jiménez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 3, 35, 382, 'Swing', '', 'M', 'GI', 'Olga Palomares', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 3, 36, 383, 'Trufa', '', 'M', 'GI', 'Rosa Rubio', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 3, 49, 398, 'Yashi', '', 'M', 'GI', 'Verónica Rodríguez', 'La Princesa', '2014-12-06 12:21:17', '2014-12-06 12:21:17', 1, 0, 0, 0, 0, 40.44, '', 0),
(3, 9, 3, 23, 411, 'Noah', '', 'S', 'GI', 'Iván San Antonio', 'Cinco Huesos', '2014-12-06 12:18:05', '2014-12-06 12:18:05', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 3, 12, 510, 'Quenn', '', 'M', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 3, 27, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernández Moreno', 'Correcan', '2014-12-06 12:30:31', '2014-12-06 12:30:31', 4, 0, 0, 0, 0, 34.98, '', 0),
(3, 9, 3, 2, 559, 'Perla', '', 'S', 'GI', 'Sandra Rodrigo', 'A-0', '2014-12-06 12:19:07', '2014-12-06 12:19:07', 0, 0, 0, 0, 0, 42.73, '', 0),
(3, 9, 3, 13, 561, 'Yara', '', 'L', 'GI', 'Sonia Gil', 'Cinco Huesos', '2014-12-06 12:28:00', '2014-12-06 12:28:00', 3, 1, 0, 0, 0, 49.25, '', 0),
(3, 9, 3, 39, 573, 'Manzanillo', '', 'S', 'GI', 'Virginia Pastor', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 3, 40, 574, 'Arwen', '', 'L', 'GI', 'Iván García Puebla', 'L''Almozara', '2014-12-06 12:28:55', '2014-12-06 12:28:55', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 3, 53, 576, 'Chuli', '', 'L', 'GI', 'Yaiza Caballero Fernández', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 3, 54, 577, 'Skay', '', 'L', 'GI', 'Ana Belén Ondategui Casas', 'Xanastur', '2014-12-06 12:26:12', '2014-12-06 12:26:12', 0, 3, 0, 1, 0, 0, '', 0),
(3, 9, 4, 28, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 4, 46, 61, 'Viconte', '813', 'L', 'GII', 'Luis Miguel Rodriguez', 'La Princesa', '2014-12-06 11:15:38', '2014-12-06 11:15:38', 0, 3, 0, 1, 0, 0, '', 0),
(3, 9, 4, 44, 94, 'Panda', 'A474', 'L', 'GII', 'Lorena Díez', 'La Princesa', '2014-12-06 11:17:39', '2014-12-06 11:17:39', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 4, 47, 113, 'Yun', 'A484', 'L', 'GII', 'Concepción Fernández', 'La Princesa', '2014-12-06 11:25:47', '2014-12-06 11:25:47', 0, 0, 0, 0, 0, 44.4, '', 0),
(3, 9, 4, 58, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 4, 24, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2014-12-06 11:05:42', '2014-12-06 11:05:42', 2, 1, 0, 0, 0, 45.41, '', 0),
(3, 9, 4, 6, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 4, 51, 351, 'Flai', 'A815', 'M', 'GII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-12-06 11:25:49', '2014-12-06 11:25:49', 2, 1, 0, 0, 0, 63.74, '', 0),
(3, 9, 4, 50, 352, 'Donna', '', 'L', 'GII', 'Ricardo Benito', 'W.E.L.P.E.', '2014-12-06 11:23:07', '2014-12-06 11:23:07', 1, 1, 0, 0, 0, 45.89, '', 0),
(3, 9, 4, 11, 357, 'Sira', 'A584', 'L', 'GII', 'Joaquín Andrés', 'Agilcan', '2014-12-06 11:24:22', '2014-12-06 11:24:22', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 4, 10, 358, 'Duna', 'A586', 'L', 'GII', 'Vicente Martín', 'Agilcan', '2014-12-06 11:21:01', '2014-12-06 11:21:01', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 4, 25, 359, 'Olivia', '', 'S', 'GII', 'Judith Franco', 'Cinco Huesos', '2014-12-06 11:05:16', '2014-12-06 11:05:16', 0, 2, 0, 0, 0, 62.03, '', 0),
(3, 9, 4, 22, 360, 'Kyle', 'A-539', 'M', 'GII', 'Iván San Antonio', 'Cinco Huesos', '2014-12-06 11:09:26', '2014-12-06 11:09:26', 1, 0, 0, 0, 0, 47.5, '', 0),
(3, 9, 4, 15, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2014-12-06 11:23:28', '2014-12-06 11:23:28', 1, 1, 0, 0, 0, 40.68, '', 0),
(3, 9, 4, 16, 378, 'Momo', 'A391', 'L', 'GII', 'Roberto Iñigo', 'Cinco Huesos', '2014-12-06 11:19:19', '2014-12-06 11:19:19', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 4, 17, 379, 'Skay', '', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2014-12-06 11:17:50', '2014-12-06 11:17:50', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 4, 45, 401, 'Ron', 'A617', 'L', 'GII', 'Oscar Sacristan', 'La Princesa', '2015-01-01 19:54:58', '2015-01-01 19:54:58', 0, 0, 0, 0, 1, 0, '', 0),
(3, 9, 4, 14, 412, 'Brea', '', 'L', 'GII', 'Almudena Novo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 4, 5, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 4, 43, 423, 'Noa', 'A143', 'L', 'GII', 'Jenifer Tolín', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 4, 4, 440, 'Horatio', 'A647', 'S', 'GII', 'Beatriz Juan', 'A-0', '2014-12-06 11:01:50', '2014-12-06 11:01:50', 0, 1, 0, 0, 0, 60.08, '', 0),
(3, 9, 4, 29, 513, 'Vali', 'A811', 'L', 'GII', 'Africa Cabañas', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 4, 41, 521, 'Buck', 'A877', 'L', 'GII', 'Carlos Pérez', 'La Princesa', '2015-01-05 15:31:30', '2015-01-05 15:31:30', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 4, 3, 560, 'Arturo', '', 'S', 'GII', 'Dolores Rosas', 'A-0', '2014-12-06 11:09:31', '2014-12-06 11:09:31', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 4, 42, 575, 'Nashira', 'A903', 'L', 'GII', 'Ruben López', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 5, 28, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2014-12-06 10:02:35', '2014-12-06 10:02:35', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 5, 46, 61, 'Viconte', '813', 'L', 'GII', 'Luis Miguel Rodriguez', 'La Princesa', '2014-12-06 10:02:51', '2014-12-06 10:02:51', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 5, 44, 94, 'Panda', 'A474', 'L', 'GII', 'Lorena Díez', 'La Princesa', '2014-12-06 10:06:57', '2014-12-06 10:06:57', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 5, 47, 113, 'Yun', 'A484', 'L', 'GII', 'Concepción Fernández', 'La Princesa', '2014-12-06 10:01:13', '2014-12-06 10:01:13', 0, 0, 0, 0, 0, 30.15, '', 0),
(3, 9, 5, 58, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 5, 24, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2014-12-06 10:22:20', '2014-12-06 10:22:20', 0, 0, 0, 0, 0, 34.55, '', 0),
(3, 9, 5, 6, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 5, 51, 351, 'Flai', 'A815', 'M', 'GII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-12-06 10:13:43', '2014-12-06 10:13:43', 1, 0, 0, 0, 0, 45.99, '', 0),
(3, 9, 5, 50, 352, 'Donna', '', 'L', 'GII', 'Ricardo Benito', 'W.E.L.P.E.', '2014-12-06 10:02:22', '2014-12-06 10:02:22', 0, 0, 1, 0, 0, 34.49, '', 0),
(3, 9, 5, 11, 357, 'Sira', 'A584', 'L', 'GII', 'Joaquín Andrés', 'Agilcan', '2014-12-06 10:05:39', '2014-12-06 10:05:39', 1, 0, 0, 0, 0, 29.09, '', 0),
(3, 9, 5, 10, 358, 'Duna', 'A586', 'L', 'GII', 'Vicente Martín', 'Agilcan', '2014-12-06 09:59:14', '2014-12-06 09:59:14', 1, 0, 0, 0, 0, 39.41, '', 0),
(3, 9, 5, 25, 359, 'Olivia', '', 'S', 'GII', 'Judith Franco', 'Cinco Huesos', '2014-12-06 10:18:49', '2014-12-06 10:18:49', 0, 0, 0, 0, 0, 40.48, '', 0),
(3, 9, 5, 22, 360, 'Kyle', 'A-539', 'M', 'GII', 'Iván San Antonio', 'Cinco Huesos', '2014-12-06 10:15:16', '2014-12-06 10:15:16', 0, 0, 0, 0, 0, 38.39, '', 0),
(3, 9, 5, 15, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2014-12-06 10:06:31', '2014-12-06 10:06:31', 1, 0, 0, 0, 0, 30.35, '', 0),
(3, 9, 5, 16, 378, 'Momo', 'A391', 'L', 'GII', 'Roberto Iñigo', 'Cinco Huesos', '2014-12-06 10:00:08', '2014-12-06 10:00:08', 3, 0, 0, 0, 0, 33.02, '', 0),
(3, 9, 5, 17, 379, 'Skay', '', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2014-12-06 10:08:32', '2014-12-06 10:08:32', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 5, 45, 401, 'Ron', 'A617', 'L', 'GII', 'Oscar Sacristan', 'La Princesa', '2015-01-01 19:56:28', '2015-01-01 19:56:28', 0, 0, 0, 0, 1, 0, '', 0),
(3, 9, 5, 14, 412, 'Brea', '', 'L', 'GII', 'Almudena Novo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 5, 5, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 5, 43, 423, 'Noa', 'A143', 'L', 'GII', 'Jenifer Tolín', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 5, 4, 440, 'Horatio', 'A647', 'S', 'GII', 'Beatriz Juan', 'A-0', '2014-12-06 10:22:19', '2014-12-06 10:22:19', 0, 0, 0, 0, 0, 43.48, '', 0),
(3, 9, 5, 29, 513, 'Vali', 'A811', 'L', 'GII', 'Africa Cabañas', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 5, 41, 521, 'Buck', 'A877', 'L', 'GII', 'Carlos Pérez', 'La Princesa', '2014-12-06 10:04:12', '2014-12-06 10:04:12', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 5, 3, 560, 'Arturo', '', 'S', 'GII', 'Dolores Rosas', 'A-0', '2014-12-06 10:19:58', '2014-12-06 10:19:58', 0, 0, 1, 0, 0, 41.5, '', 0),
(3, 9, 5, 42, 575, 'Nashira', 'A903', 'L', 'GII', 'Ruben López', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 6, 18, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2014-12-06 11:27:58', '2014-12-06 11:27:58', 1, 0, 0, 0, 0, 36.66, '', 0),
(3, 9, 6, 48, 57, 'Aby', 'A204', 'L', 'GIII', 'Roberto Reina Vega', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 6, 1, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2014-12-06 11:26:44', '2014-12-06 11:26:44', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 6, 52, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-12-06 11:28:00', '2014-12-06 11:28:00', 2, 0, 1, 0, 0, 52.26, '', 0),
(3, 9, 7, 18, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2014-12-06 10:10:43', '2014-12-06 10:10:43', 1, 0, 0, 0, 0, 28.5, '', 0),
(3, 9, 7, 48, 57, 'Aby', 'A204', 'L', 'GIII', 'Roberto Reina Vega', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 9, 7, 1, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2014-12-06 10:10:14', '2014-12-06 10:10:14', 0, 0, 0, 1, 0, 0, '', 0),
(3, 9, 7, 52, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-12-06 10:17:16', '2014-12-06 10:17:16', 0, 0, 0, 0, 0, 34.1, '', 0),
(3, 10, 8, 19, 562, 'Arya', '', 'L', 'P.A.', 'Ramón García Maroto', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 20, 563, 'Sasha', '', 'L', 'P.A.', 'Beatriz Sánchez Casares', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 21, 564, 'Zar', '', 'L', 'P.A.', 'Isabel Fernández', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 26, 565, 'Lillo', '', 'S', 'P.A.', 'Mari Carmen Martí Sanz', 'Cinco Huesos', '2014-12-06 20:03:18', '2014-12-06 20:03:18', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 30, 566, 'Amy', '', 'L', 'P.A.', 'Irene Escribano', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 31, 567, 'Dana', '', 'L', 'P.A.', 'Irene Escribano', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 32, 568, 'Golfo', '', 'L', 'P.A.', 'Cynthia Sánchez', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 33, 569, 'Ron', '', 'L', 'P.A.', 'Cynthia Sánchez', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 34, 570, 'Putt', '', 'L', 'P.A.', 'Olga Palomares', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 37, 571, 'Onza', '', 'M', 'P.A.', 'Irene Blanco', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 38, 572, 'Sancho', '', 'M', 'P.A.', ' Oscar López', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 55, 581, 'Lady', '', 'L', 'P.A.', 'Jose Luis de la Vara', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 57, 582, 'Zoe', '', 'L', 'P.A.', 'Yaiza', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 8, 56, 583, 'Tabu', '', 'S', 'P.A.', 'Isabel Fernández', 'Cinco Huesos', '2014-12-06 20:03:21', '2014-12-06 20:03:21', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 9, 356, 'Toska', '', 'L', 'GI', 'Jesús Gómez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 7, 371, 'Mitzy', '', 'L', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 8, 372, 'Sura', '', 'L', 'GI', 'Marta Jiménez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 35, 382, 'Swing', '', 'M', 'GI', 'Olga Palomares', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 36, 383, 'Trufa', '', 'M', 'GI', 'Rosa Rubio', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 49, 398, 'Yashi', '', 'M', 'GI', 'Verónica Rodríguez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 23, 411, 'Noah', '', 'S', 'GI', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 12, 510, 'Quenn', '', 'M', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 27, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernández Moreno', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 2, 559, 'Perla', '', 'S', 'GI', 'Sandra Rodrigo', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 13, 561, 'Yara', '', 'L', 'GI', 'Sonia Gil', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 39, 573, 'Manzanillo', '', 'S', 'GI', 'Virginia Pastor', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 40, 574, 'Arwen', '', 'L', 'GI', 'Iván García Puebla', 'L''Almozara', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 53, 576, 'Chuli', '', 'L', 'GI', 'Yaiza Caballero Fernández', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 9, 54, 577, 'Skay', '', 'L', 'GI', 'Ana Belén Ondategui Casas', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 9, 356, 'Toska', '', 'L', 'GI', 'Jesús Gómez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 7, 371, 'Mitzy', '', 'L', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 8, 372, 'Sura', '', 'L', 'GI', 'Marta Jiménez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 35, 382, 'Swing', '', 'M', 'GI', 'Olga Palomares', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 36, 383, 'Trufa', '', 'M', 'GI', 'Rosa Rubio', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 49, 398, 'Yashi', '', 'M', 'GI', 'Verónica Rodríguez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 23, 411, 'Noah', '', 'S', 'GI', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 12, 510, 'Quenn', '', 'M', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 27, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernández Moreno', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 2, 559, 'Perla', '', 'S', 'GI', 'Sandra Rodrigo', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 13, 561, 'Yara', '', 'L', 'GI', 'Sonia Gil', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 39, 573, 'Manzanillo', '', 'S', 'GI', 'Virginia Pastor', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 40, 574, 'Arwen', '', 'L', 'GI', 'Iván García Puebla', 'L''Almozara', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 53, 576, 'Chuli', '', 'L', 'GI', 'Yaiza Caballero Fernández', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 10, 54, 577, 'Skay', '', 'L', 'GI', 'Ana Belén Ondategui Casas', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 28, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 46, 61, 'Viconte', '813', 'L', 'GII', 'Luis Miguel Rodriguez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 44, 94, 'Panda', 'A474', 'L', 'GII', 'Lorena Díez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 47, 113, 'Yun', 'A484', 'L', 'GII', 'Concepción Fernández', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 58, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 24, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 6, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 51, 351, 'Flai', 'A815', 'M', 'GII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 50, 352, 'Donna', '', 'L', 'GII', 'Ricardo Benito', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 11, 357, 'Sira', 'A584', 'L', 'GII', 'Joaquín Andrés', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 10, 358, 'Duna', 'A586', 'L', 'GII', 'Vicente Martín', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 25, 359, 'Olivia', '', 'S', 'GII', 'Judith Franco', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 22, 360, 'Kyle', 'A-539', 'M', 'GII', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 15, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 16, 378, 'Momo', 'A391', 'L', 'GII', 'Roberto Iñigo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 17, 379, 'Skay', '', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 45, 401, 'Ron', 'A617', 'L', 'GII', 'Oscar Sacristan', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 14, 412, 'Brea', '', 'L', 'GII', 'Almudena Novo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 5, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 43, 423, 'Noa', 'A143', 'L', 'GII', 'Jenifer Tolín', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 4, 440, 'Horatio', 'A647', 'S', 'GII', 'Beatriz Juan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 29, 513, 'Vali', 'A811', 'L', 'GII', 'Africa Cabañas', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 41, 521, 'Buck', 'A877', 'L', 'GII', 'Carlos Pérez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 3, 560, 'Arturo', '', 'S', 'GII', 'Dolores Rosas', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 11, 42, 575, 'Nashira', 'A903', 'L', 'GII', 'Ruben López', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 28, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 46, 61, 'Viconte', '813', 'L', 'GII', 'Luis Miguel Rodriguez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 44, 94, 'Panda', 'A474', 'L', 'GII', 'Lorena Díez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 47, 113, 'Yun', 'A484', 'L', 'GII', 'Concepción Fernández', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 58, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 24, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 6, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 51, 351, 'Flai', 'A815', 'M', 'GII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 50, 352, 'Donna', '', 'L', 'GII', 'Ricardo Benito', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 11, 357, 'Sira', 'A584', 'L', 'GII', 'Joaquín Andrés', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 10, 358, 'Duna', 'A586', 'L', 'GII', 'Vicente Martín', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 25, 359, 'Olivia', '', 'S', 'GII', 'Judith Franco', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 22, 360, 'Kyle', 'A-539', 'M', 'GII', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 15, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 16, 378, 'Momo', 'A391', 'L', 'GII', 'Roberto Iñigo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 17, 379, 'Skay', '', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 45, 401, 'Ron', 'A617', 'L', 'GII', 'Oscar Sacristan', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 14, 412, 'Brea', '', 'L', 'GII', 'Almudena Novo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 5, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 43, 423, 'Noa', 'A143', 'L', 'GII', 'Jenifer Tolín', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 4, 440, 'Horatio', 'A647', 'S', 'GII', 'Beatriz Juan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 29, 513, 'Vali', 'A811', 'L', 'GII', 'Africa Cabañas', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 41, 521, 'Buck', 'A877', 'L', 'GII', 'Carlos Pérez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 3, 560, 'Arturo', '', 'S', 'GII', 'Dolores Rosas', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 12, 42, 575, 'Nashira', 'A903', 'L', 'GII', 'Ruben López', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 13, 18, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 13, 48, 57, 'Aby', 'A204', 'L', 'GIII', 'Roberto Reina Vega', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 13, 1, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 13, 52, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 14, 18, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 14, 48, 57, 'Aby', 'A204', 'L', 'GIII', 'Roberto Reina Vega', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 14, 1, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(3, 10, 14, 52, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 56, 79, 'Jade', '', 'L', 'GI', 'Rosa Maria Cañadillas', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 24, 356, 'Toska', '', 'L', 'GI', 'Jesús Gómez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 22, 371, 'Mitzy', '', 'L', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 23, 372, 'Sura', '', 'L', 'GI', 'Marta Jiménez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 50, 383, 'Trufa', '', 'M', 'GI', 'Rosa Rubio', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 32, 411, 'Noah', '', 'S', 'GI', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 26, 510, 'Quenn', '', 'M', 'GI', 'Angel González', 'Agilcan', '2014-12-27 15:33:49', '2014-12-27 15:33:49', 0, 0, 0, 1, 0, 0, '', 0),
(4, 17, 15, 35, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernandez Ortiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 31, 565, 'Lillo', '', 'S', 'GI', 'Mari Carmen Martí Sanz', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 108, 576, 'Chuli', '', 'L', 'GI', 'Yaiza Caballero Fernández', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 110, 577, 'Skye', '', 'L', 'GI', 'Ana Belén Ondategui Casas', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 21, 586, 'Hippie', '', 'M', 'GI', 'Luis Miguel Jiménez', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 45, 587, 'Mara', '', 'S', 'GI', 'Oscar Uceda', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 49, 588, 'Greta', '', 'M', 'GI', 'Susana Martín', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 47, 589, 'Iris', '', 'L', 'GI', 'Sara Montila', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 46, 590, 'Bruni', '', 'L', 'GI', 'Javier Perez', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 52, 591, 'Dana', '', 'L', 'GI', 'Beatriz Gómez', 'Educan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 76, 592, 'Lua', '', 'L', 'GI', 'Rodrigo García-Vidal', 'Hoop Agility', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 77, 593, 'Ada', '', 'L', 'GI', 'Sonia García', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 92, 596, 'Moly', '', 'L', 'GI', 'Adrian Martínez', 'Pataplán', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 91, 597, 'Coco', '', 'L', 'GI', 'Daniel Zamora', 'Pataplán', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 100, 601, 'Lee-Ann', '', 'L', 'GI', 'Iván Pardo García', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 109, 603, 'killa', '', 'L', 'GI', 'Alberto Pérez', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 57, 604, 'Mizarfrida', '', 'L', 'GI', 'Rómulo Parrilla', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 15, 55, 605, 'Hera', '', 'L', 'GI', 'Carlos Escribano', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 56, 79, 'Jade', '', 'L', 'GI', 'Rosa Maria Cañadillas', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 24, 356, 'Toska', '', 'L', 'GI', 'Jesús Gómez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 22, 371, 'Mitzy', '', 'L', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 23, 372, 'Sura', '', 'L', 'GI', 'Marta Jiménez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 50, 383, 'Trufa', '', 'M', 'GI', 'Rosa Rubio', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 32, 411, 'Noah', '', 'S', 'GI', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 26, 510, 'Quenn', '', 'M', 'GI', 'Angel González', 'Agilcan', '2015-01-03 16:14:07', '2015-01-03 16:14:07', 0, 0, 0, 1, 0, 0, '', 0),
(4, 17, 16, 35, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernandez Ortiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 31, 565, 'Lillo', '', 'S', 'GI', 'Mari Carmen Martí Sanz', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 108, 576, 'Chuli', '', 'L', 'GI', 'Yaiza Caballero Fernández', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 110, 577, 'Skye', '', 'L', 'GI', 'Ana Belén Ondategui Casas', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 21, 586, 'Hippie', '', 'M', 'GI', 'Luis Miguel Jiménez', 'AA Y CIA', '2015-01-03 16:28:01', '2015-01-03 16:28:01', 0, 0, 0, 0, 0, 23.45, '', 0),
(4, 17, 16, 45, 587, 'Mara', '', 'S', 'GI', 'Oscar Uceda', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 49, 588, 'Greta', '', 'M', 'GI', 'Susana Martín', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 47, 589, 'Iris', '', 'L', 'GI', 'Sara Montila', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 46, 590, 'Bruni', '', 'L', 'GI', 'Javier Perez', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 52, 591, 'Dana', '', 'L', 'GI', 'Beatriz Gómez', 'Educan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 76, 592, 'Lua', '', 'L', 'GI', 'Rodrigo García-Vidal', 'Hoop Agility', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 77, 593, 'Ada', '', 'L', 'GI', 'Sonia García', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 92, 596, 'Moly', '', 'L', 'GI', 'Adrian Martínez', 'Pataplán', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 91, 597, 'Coco', '', 'L', 'GI', 'Daniel Zamora', 'Pataplán', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 100, 601, 'Lee-Ann', '', 'L', 'GI', 'Iván Pardo García', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 109, 603, 'killa', '', 'L', 'GI', 'Alberto Pérez', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 57, 604, 'Mizarfrida', '', 'L', 'GI', 'Rómulo Parrilla', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 16, 55, 605, 'Hera', '', 'L', 'GI', 'Carlos Escribano', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 14, 8, 'Thelma', '824', 'L', 'GII', 'Fabian Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 36, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 64, 52, 'Mister', 'A250', 'L', 'GII', 'Rubén García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 19, 75, 'Nut', 'A430', 'L', 'GII', 'Mónica Rodríguez', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 63, 84, 'Maty', 'A333', 'L', 'GII', 'Cristina Cortijo', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 61, 156, 'Lennon', 'A336', 'L', 'GII', 'Miguel Angel García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 79, 159, 'Clara', 'A462', 'L', 'GII', 'Ruben Montero', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 104, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 42, 272, 'Luna', 'A240', 'M', 'GII', 'Paula Rello', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 95, 294, 'Tuco', 'A419', 'M', 'GII', 'Inmaculada Rubio', 'Pataplán', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 33, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 18, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 106, 351, 'Flai', 'A815', 'M', 'GII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 34, 359, 'Olivia', 'A742', 'S', 'GII', 'Judith Franco', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 30, 360, 'Kyle', 'A-539', 'M', 'GII', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 27, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 37, 363, 'Beltxa', 'A622', 'S', 'GII', 'Sergio Ruiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 39, 365, 'Danah', 'A889', 'L', 'GII', 'Juan Martín de las Blancas', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 25, 377, 'Geha', 'A162', 'L', 'GII', 'Luis Carlos Sanchez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 28, 379, 'Skay', 'A605', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 48, 384, 'Soma', 'A696', 'L', 'GII', 'Menchu Melcom', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 4, 387, 'Kyra', '1607', 'L', 'GII', 'Andres Morillas Sanjuan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 2, 389, 'Dolce', 'A681', 'L', 'GII', 'Andres Morillas Sanjuan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 3, 391, 'Gilda', 'A723', 'L', 'GII', 'Natividad Ruiz García', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 68, 393, 'Thor', 'A835', 'L', 'GII', 'Juan Carlos Ruiz', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 13, 397, 'Milady', 'A791', 'L', 'GII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 93, 404, 'Bimba', 'A288', 'L', 'GII', 'Luisa Fernanda Millan', 'Pataplán', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 94, 405, 'Dudy', 'A753', 'L', 'GII', 'Juan José González', 'Pataplán', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 20, 410, 'Sombra', 'A679', 'L', 'GII', 'Jose Luis J. Mori', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 17, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 69, 424, 'Vlad', 'A752', 'L', 'GII', 'Angel Corroto', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 75, 427, 'Kala', '1574', 'S', 'GII', 'Cristina Cortijo', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 58, 428, 'Andy', 'A671', 'L', 'GII', 'Maite Guerrero', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 10, 440, 'Horatio', 'A847', 'S', 'GII', 'Beatriz Juan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 41, 516, 'Bruce', 'A813', 'M', 'GII', 'Jorge Muñoz Leal', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 78, 520, 'Aska', 'A899', 'L', 'GII', 'Luciano Fernández', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 11, 559, 'Perla', '', 'S', 'GII', 'Sandra Rodrigo', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 9, 560, 'Arturo', '', 'S', 'GII', 'Dolores Rosas', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 82, 575, 'Nashira', 'A903', 'L', 'GII', 'Ruben López', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 12, 584, 'Ursula', 'A840', 'S', 'GII', 'Pablo Martínez', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 1, 585, 'Ari', 'A894', 'L', 'GII', 'Veronica Roda', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 96, 598, 'Nika', 'A821', 'L', 'GII', 'Enrique Alonso Queija', 'Pura Vida', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 102, 602, 'Sucre', 'A920', 'L', 'GII', 'Adrian Bajo', 'Vila-Real', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 60, 607, 'Hela', 'A836', 'L', 'GII', 'Cesar Losada Mera', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 67, 608, 'Sendy', 'A926', 'L', 'GII', 'Carlos Martínez S.', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 62, 609, 'Lumbre', 'A932', 'L', 'GII', 'Arancha Ruipérez Moslares', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 17, 59, 610, 'Baddy', '', 'L', 'GII', 'David Calviño', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 14, 8, 'Thelma', '824', 'L', 'GII', 'Fabian Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 36, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 64, 52, 'Mister', 'A250', 'L', 'GII', 'Rubén García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 19, 75, 'Nut', 'A430', 'L', 'GII', 'Mónica Rodríguez', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 63, 84, 'Maty', 'A333', 'L', 'GII', 'Cristina Cortijo', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 61, 156, 'Lennon', 'A336', 'L', 'GII', 'Miguel Angel García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 79, 159, 'Clara', 'A462', 'L', 'GII', 'Ruben Montero', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 104, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 42, 272, 'Luna', 'A240', 'M', 'GII', 'Paula Rello', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 95, 294, 'Tuco', 'A419', 'M', 'GII', 'Inmaculada Rubio', 'Pataplán', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 33, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 18, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 106, 351, 'Flai', 'A815', 'M', 'GII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 34, 359, 'Olivia', 'A742', 'S', 'GII', 'Judith Franco', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 30, 360, 'Kyle', 'A-539', 'M', 'GII', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 27, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 37, 363, 'Beltxa', 'A622', 'S', 'GII', 'Sergio Ruiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 39, 365, 'Danah', 'A889', 'L', 'GII', 'Juan Martín de las Blancas', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 25, 377, 'Geha', 'A162', 'L', 'GII', 'Luis Carlos Sanchez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 28, 379, 'Skay', 'A605', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 48, 384, 'Soma', 'A696', 'L', 'GII', 'Menchu Melcom', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 4, 387, 'Kyra', '1607', 'L', 'GII', 'Andres Morillas Sanjuan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 2, 389, 'Dolce', 'A681', 'L', 'GII', 'Andres Morillas Sanjuan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 3, 391, 'Gilda', 'A723', 'L', 'GII', 'Natividad Ruiz García', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 68, 393, 'Thor', 'A835', 'L', 'GII', 'Juan Carlos Ruiz', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 13, 397, 'Milady', 'A791', 'L', 'GII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 93, 404, 'Bimba', 'A288', 'L', 'GII', 'Luisa Fernanda Millan', 'Pataplán', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 94, 405, 'Dudy', 'A753', 'L', 'GII', 'Juan José González', 'Pataplán', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1);
INSERT INTO `resultados` (`Prueba`, `Jornada`, `Manga`, `Dorsal`, `Perro`, `Nombre`, `Licencia`, `Categoria`, `Grado`, `NombreGuia`, `NombreClub`, `Entrada`, `Comienzo`, `Faltas`, `Rehuses`, `Tocados`, `Eliminado`, `NoPresentado`, `Tiempo`, `Observaciones`, `Pendiente`) VALUES
(4, 17, 18, 20, 410, 'Sombra', 'A679', 'L', 'GII', 'Jose Luis J. Mori', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 17, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 69, 424, 'Vlad', 'A752', 'L', 'GII', 'Angel Corroto', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 75, 427, 'Kala', '1574', 'S', 'GII', 'Cristina Cortijo', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 58, 428, 'Andy', 'A671', 'L', 'GII', 'Maite Guerrero', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 10, 440, 'Horatio', 'A847', 'S', 'GII', 'Beatriz Juan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 41, 516, 'Bruce', 'A813', 'M', 'GII', 'Jorge Muñoz Leal', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 78, 520, 'Aska', 'A899', 'L', 'GII', 'Luciano Fernández', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 11, 559, 'Perla', '', 'S', 'GII', 'Sandra Rodrigo', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 9, 560, 'Arturo', '', 'S', 'GII', 'Dolores Rosas', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 82, 575, 'Nashira', 'A903', 'L', 'GII', 'Ruben López', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 12, 584, 'Ursula', 'A840', 'S', 'GII', 'Pablo Martínez', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 1, 585, 'Ari', 'A894', 'L', 'GII', 'Veronica Roda', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 96, 598, 'Nika', 'A821', 'L', 'GII', 'Enrique Alonso Queija', 'Pura Vida', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 102, 602, 'Sucre', 'A920', 'L', 'GII', 'Adrian Bajo', 'Vila-Real', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 60, 607, 'Hela', 'A836', 'L', 'GII', 'Cesar Losada Mera', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 67, 608, 'Sendy', 'A926', 'L', 'GII', 'Carlos Martínez S.', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 62, 609, 'Lumbre', 'A932', 'L', 'GII', 'Arancha Ruipérez Moslares', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 18, 59, 610, 'Baddy', '', 'L', 'GII', 'David Calviño', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 15, 3, 'Hannibal Lecter XIII', 'A090', 'L', 'GIII', 'Tomás Pérez Ayuso', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 105, 10, 'Lee', 'A084', 'L', 'GIII', 'Antonio Molina', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 8, 18, 'Woman', 'A206', 'L', 'GIII', 'Javier Mora Canales', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 29, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 71, 27, 'Deby', 'A147', 'L', 'GIII', 'Cesar Losada Mera', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 73, 31, 'Mc Coy', 'A322', 'L', 'GIII', 'Carmen Sotomayor', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 40, 34, 'Zoe', 'A289', 'L', 'GIII', 'Marta Sánchez', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 74, 46, 'Xodro', 'A371', 'L', 'GIII', 'Carlos Martínez R.', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 70, 51, 'Akane', 'A249', 'L', 'GIII', 'Gerardo González', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 5, 68, 'Fito', 'A529', 'L', 'GIII', 'Luis Miguel Rodrigo', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 6, 71, 'Mecha', 'A558', 'L', 'GIII', 'José Antonio Encinas', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 16, 78, 'Winner', 'A497', 'L', 'GIII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 72, 85, 'Dylan', 'A461', 'L', 'GIII', 'Iván Sánchez García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 97, 148, 'Kira', 'A116', 'L', 'GIII', 'Enrique Alonso Queija', 'Pura Vida', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 7, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 43, 241, 'Danko', 'A325', 'M', 'GIII', 'Jorge Muñoz Leal', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 44, 253, 'Lass', 'A580', 'M', 'GIII', 'Eugenio Villares', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 38, 309, 'Xira', 'A424', 'S', 'GIII', 'Sergio Ruiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 51, 314, 'Nana', 'A277', 'S', 'GIII', 'Sara Montila', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 19, 107, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 15, 3, 'Hannibal Lecter XIII', 'A090', 'L', 'GIII', 'Tomás Pérez Ayuso', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 105, 10, 'Lee', 'A084', 'L', 'GIII', 'Antonio Molina', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 8, 18, 'Woman', 'A206', 'L', 'GIII', 'Javier Mora Canales', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 29, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 71, 27, 'Deby', 'A147', 'L', 'GIII', 'Cesar Losada Mera', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 73, 31, 'Mc Coy', 'A322', 'L', 'GIII', 'Carmen Sotomayor', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 40, 34, 'Zoe', 'A289', 'L', 'GIII', 'Marta Sánchez', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 74, 46, 'Xodro', 'A371', 'L', 'GIII', 'Carlos Martínez R.', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 70, 51, 'Akane', 'A249', 'L', 'GIII', 'Gerardo González', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 5, 68, 'Fito', 'A529', 'L', 'GIII', 'Luis Miguel Rodrigo', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 6, 71, 'Mecha', 'A558', 'L', 'GIII', 'José Antonio Encinas', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 16, 78, 'Winner', 'A497', 'L', 'GIII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 72, 85, 'Dylan', 'A461', 'L', 'GIII', 'Iván Sánchez García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 97, 148, 'Kira', 'A116', 'L', 'GIII', 'Enrique Alonso Queija', 'Pura Vida', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 7, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 43, 241, 'Danko', 'A325', 'M', 'GIII', 'Jorge Muñoz Leal', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 44, 253, 'Lass', 'A580', 'M', 'GIII', 'Eugenio Villares', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 38, 309, 'Xira', 'A424', 'S', 'GIII', 'Sergio Ruiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 51, 314, 'Nana', 'A277', 'S', 'GIII', 'Sara Montila', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 17, 20, 107, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 56, 79, 'Jade', '', 'L', 'GI', 'Rosa Maria Cañadillas', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 24, 356, 'Toska', '', 'L', 'GI', 'Jesús Gómez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 22, 371, 'Mitzy', '', 'L', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 23, 372, 'Sura', '', 'L', 'GI', 'Marta Jiménez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 50, 383, 'Trufa', '', 'M', 'GI', 'Rosa Rubio', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 89, 398, 'Yashi', '', 'M', 'GI', 'Verónica Rodríguez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 32, 411, 'Noah', '', 'S', 'GI', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 26, 510, 'Quenn', '', 'M', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 35, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernandez Ortiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 31, 565, 'Lillo', '', 'S', 'GI', 'Mari Carmen Martí Sanz', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 45, 587, 'Mara', '', 'S', 'GI', 'Oscar Uceda', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 49, 588, 'Greta', '', 'M', 'GI', 'Susana Martín', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 47, 589, 'Iris', '', 'L', 'GI', 'Sara Montila', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 46, 590, 'Bruni', '', 'L', 'GI', 'Javier Perez', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 76, 592, 'Lua', '', 'L', 'GI', 'Rodrigo García-Vidal', 'Hoop Agility', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 90, 595, 'Lola', '', 'M', 'GI', 'Pablo Parra', 'Mi Perro 10', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 109, 603, 'killa', '', 'L', 'GI', 'Alberto Pérez', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 21, 57, 604, 'Mizarfrida', '', 'L', 'GI', 'Rómulo Parrilla', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 56, 79, 'Jade', '', 'L', 'GI', 'Rosa Maria Cañadillas', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 24, 356, 'Toska', '', 'L', 'GI', 'Jesús Gómez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 22, 371, 'Mitzy', '', 'L', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 23, 372, 'Sura', '', 'L', 'GI', 'Marta Jiménez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 50, 383, 'Trufa', '', 'M', 'GI', 'Rosa Rubio', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 89, 398, 'Yashi', '', 'M', 'GI', 'Verónica Rodríguez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 32, 411, 'Noah', '', 'S', 'GI', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 26, 510, 'Quenn', '', 'M', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 35, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernandez Ortiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 31, 565, 'Lillo', '', 'S', 'GI', 'Mari Carmen Martí Sanz', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 45, 587, 'Mara', '', 'S', 'GI', 'Oscar Uceda', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 49, 588, 'Greta', '', 'M', 'GI', 'Susana Martín', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 47, 589, 'Iris', '', 'L', 'GI', 'Sara Montila', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 46, 590, 'Bruni', '', 'L', 'GI', 'Javier Perez', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 76, 592, 'Lua', '', 'L', 'GI', 'Rodrigo García-Vidal', 'Hoop Agility', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 90, 595, 'Lola', '', 'M', 'GI', 'Pablo Parra', 'Mi Perro 10', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 109, 603, 'killa', '', 'L', 'GI', 'Alberto Pérez', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 22, 57, 604, 'Mizarfrida', '', 'L', 'GI', 'Rómulo Parrilla', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 14, 8, 'Thelma', '824', 'L', 'GII', 'Fabian Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 36, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 64, 52, 'Mister', 'A250', 'L', 'GII', 'Rubén García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 86, 61, 'Viconte', '813', 'L', 'GII', 'Luis Miguel Rodriguez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 63, 84, 'Maty', 'A333', 'L', 'GII', 'Cristina Cortijo', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 84, 94, 'Panda', 'A474', 'L', 'GII', 'Lorena Díez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 101, 95, 'Raissa', 'A563', 'L', 'GII', 'Javier Iniesta', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 66, 103, 'Red Magic', 'A124', 'L', 'GII', 'Elena Miguel', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 87, 113, 'Yun', 'A484', 'L', 'GII', 'Concepción Fernández', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 61, 156, 'Lennon', 'A336', 'L', 'GII', 'Miguel Angel García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 104, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 42, 272, 'Luna', 'A240', 'M', 'GII', 'Paula Rello', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 33, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 18, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 106, 351, 'Flai', 'A815', 'M', 'GII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 103, 352, 'Donna', 'A795', 'L', 'GII', 'Ricardo Benito', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 34, 359, 'Olivia', 'A742', 'S', 'GII', 'Judith Franco', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 30, 360, 'Kyle', 'A-539', 'M', 'GII', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 27, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 37, 363, 'Beltxa', 'A622', 'S', 'GII', 'Sergio Ruiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 39, 365, 'Danah', 'A889', 'L', 'GII', 'Juan Martín de las Blancas', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 25, 377, 'Geha', 'A162', 'L', 'GII', 'Luis Carlos Sanchez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 28, 379, 'Skay', 'A605', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 48, 384, 'Soma', 'A696', 'L', 'GII', 'Menchu Melcom', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 4, 387, 'Kyra', '1607', 'L', 'GII', 'Andres Morillas Sanjuan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 2, 389, 'Dolce', 'A681', 'L', 'GII', 'Andres Morillas Sanjuan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 3, 391, 'Gilda', 'A723', 'L', 'GII', 'Natividad Ruiz García', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 68, 393, 'Thor', 'A835', 'L', 'GII', 'Juan Carlos Ruiz', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 13, 397, 'Milady', 'A791', 'L', 'GII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 80, 400, 'Héctor', '1597', 'L', 'GII', 'David Gómez-Calcerrada', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 85, 401, 'Ron', 'A617', 'L', 'GII', 'Oscar Sacristan', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 20, 410, 'Sombra', 'A679', 'L', 'GII', 'Jose Luis J. Mori', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 17, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 54, 418, 'Nitra', 'A743', 'S', 'GII', 'Yulia Morugova', 'El Nogueral', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 83, 423, 'Noa', 'A143', 'L', 'GII', 'Jenifer Tolín', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 69, 424, 'Vlad', 'A752', 'L', 'GII', 'Angel Corroto', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 75, 427, 'Kala', '1574', 'S', 'GII', 'Cristina Cortijo', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 58, 428, 'Andy', 'A671', 'L', 'GII', 'Maite Guerrero', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 10, 440, 'Horatio', 'A847', 'S', 'GII', 'Beatriz Juan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 41, 516, 'Bruce', 'A813', 'M', 'GII', 'Jorge Muñoz Leal', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 81, 522, 'Merche', 'A989', 'L', 'GII', 'Lourdes Rivera', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 11, 559, 'Perla', '', 'S', 'GII', 'Sandra Rodrigo', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 9, 560, 'Arturo', '', 'S', 'GII', 'Dolores Rosas', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 12, 584, 'Ursula', 'A840', 'S', 'GII', 'Pablo Martínez', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 1, 585, 'Ari', 'A894', 'L', 'GII', 'Veronica Roda', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 96, 598, 'Nika', 'A821', 'L', 'GII', 'Enrique Alonso Queija', 'Pura Vida', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 102, 602, 'Sucre', 'A920', 'L', 'GII', 'Adrian Bajo', 'Vila-Real', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 65, 606, 'Nora', 'A305', 'L', 'GII', 'Javier González', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 60, 607, 'Hela', 'A836', 'L', 'GII', 'Cesar Losada Mera', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 67, 608, 'Sendy', 'A926', 'L', 'GII', 'Carlos Martínez S.', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 62, 609, 'Lumbre', 'A932', 'L', 'GII', 'Arancha Ruipérez Moslares', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 23, 59, 610, 'Baddy', '', 'L', 'GII', 'David Calviño', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 14, 8, 'Thelma', '824', 'L', 'GII', 'Fabian Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 36, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 64, 52, 'Mister', 'A250', 'L', 'GII', 'Rubén García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 86, 61, 'Viconte', '813', 'L', 'GII', 'Luis Miguel Rodriguez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 63, 84, 'Maty', 'A333', 'L', 'GII', 'Cristina Cortijo', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 84, 94, 'Panda', 'A474', 'L', 'GII', 'Lorena Díez', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 101, 95, 'Raissa', 'A563', 'L', 'GII', 'Javier Iniesta', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 66, 103, 'Red Magic', 'A124', 'L', 'GII', 'Elena Miguel', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 87, 113, 'Yun', 'A484', 'L', 'GII', 'Concepción Fernández', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 61, 156, 'Lennon', 'A336', 'L', 'GII', 'Miguel Angel García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 104, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 42, 272, 'Luna', 'A240', 'M', 'GII', 'Paula Rello', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 33, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 18, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 106, 351, 'Flai', 'A815', 'M', 'GII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 103, 352, 'Donna', 'A795', 'L', 'GII', 'Ricardo Benito', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 34, 359, 'Olivia', 'A742', 'S', 'GII', 'Judith Franco', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 30, 360, 'Kyle', 'A-539', 'M', 'GII', 'Iván San Antonio', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 27, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 37, 363, 'Beltxa', 'A622', 'S', 'GII', 'Sergio Ruiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 39, 365, 'Danah', 'A889', 'L', 'GII', 'Juan Martín de las Blancas', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 25, 377, 'Geha', 'A162', 'L', 'GII', 'Luis Carlos Sanchez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 28, 379, 'Skay', 'A605', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 48, 384, 'Soma', 'A696', 'L', 'GII', 'Menchu Melcom', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 4, 387, 'Kyra', '1607', 'L', 'GII', 'Andres Morillas Sanjuan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 2, 389, 'Dolce', 'A681', 'L', 'GII', 'Andres Morillas Sanjuan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 3, 391, 'Gilda', 'A723', 'L', 'GII', 'Natividad Ruiz García', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 68, 393, 'Thor', 'A835', 'L', 'GII', 'Juan Carlos Ruiz', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 13, 397, 'Milady', 'A791', 'L', 'GII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 80, 400, 'Héctor', '1597', 'L', 'GII', 'David Gómez-Calcerrada', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 85, 401, 'Ron', 'A617', 'L', 'GII', 'Oscar Sacristan', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 20, 410, 'Sombra', 'A679', 'L', 'GII', 'Jose Luis J. Mori', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 17, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 54, 418, 'Nitra', 'A743', 'S', 'GII', 'Yulia Morugova', 'El Nogueral', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 83, 423, 'Noa', 'A143', 'L', 'GII', 'Jenifer Tolín', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 69, 424, 'Vlad', 'A752', 'L', 'GII', 'Angel Corroto', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 75, 427, 'Kala', '1574', 'S', 'GII', 'Cristina Cortijo', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 58, 428, 'Andy', 'A671', 'L', 'GII', 'Maite Guerrero', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 10, 440, 'Horatio', 'A847', 'S', 'GII', 'Beatriz Juan', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 41, 516, 'Bruce', 'A813', 'M', 'GII', 'Jorge Muñoz Leal', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 81, 522, 'Merche', 'A989', 'L', 'GII', 'Lourdes Rivera', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 11, 559, 'Perla', '', 'S', 'GII', 'Sandra Rodrigo', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 9, 560, 'Arturo', '', 'S', 'GII', 'Dolores Rosas', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 12, 584, 'Ursula', 'A840', 'S', 'GII', 'Pablo Martínez', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 1, 585, 'Ari', 'A894', 'L', 'GII', 'Veronica Roda', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 96, 598, 'Nika', 'A821', 'L', 'GII', 'Enrique Alonso Queija', 'Pura Vida', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 102, 602, 'Sucre', 'A920', 'L', 'GII', 'Adrian Bajo', 'Vila-Real', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 65, 606, 'Nora', 'A305', 'L', 'GII', 'Javier González', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 60, 607, 'Hela', 'A836', 'L', 'GII', 'Cesar Losada Mera', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 67, 608, 'Sendy', 'A926', 'L', 'GII', 'Carlos Martínez S.', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 62, 609, 'Lumbre', 'A932', 'L', 'GII', 'Arancha Ruipérez Moslares', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 24, 59, 610, 'Baddy', '', 'L', 'GII', 'David Calviño', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 15, 3, 'Hannibal Lecter XIII', 'A090', 'L', 'GIII', 'Tomás Pérez Ayuso', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 105, 10, 'Lee', 'A084', 'L', 'GIII', 'Antonio Molina', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 8, 18, 'Woman', 'A206', 'L', 'GIII', 'Javier Mora Canales', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 29, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 71, 27, 'Deby', 'A147', 'L', 'GIII', 'Cesar Losada Mera', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 73, 31, 'Mc Coy', 'A322', 'L', 'GIII', 'Carmen Sotomayor', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 40, 34, 'Zoe', 'A289', 'L', 'GIII', 'Marta Sánchez', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 74, 46, 'Xodro', 'A371', 'L', 'GIII', 'Carlos Martínez R.', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 70, 51, 'Akane', 'A249', 'L', 'GIII', 'Gerardo González', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 88, 57, 'Aby', 'A204', 'L', 'GIII', 'Roberto Reina Vega', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 53, 65, 'Brujostel', 'A231', 'L', 'GIII', 'Yulia Morugova', 'El Nogueral', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 5, 68, 'Fito', 'A529', 'L', 'GIII', 'Luis Miguel Rodrigo', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 6, 71, 'Mecha', 'A558', 'L', 'GIII', 'José Antonio Encinas', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 16, 78, 'Winner', 'A497', 'L', 'GIII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 72, 85, 'Dylan', 'A461', 'L', 'GIII', 'Iván Sánchez García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 97, 148, 'Kira', 'A116', 'L', 'GIII', 'Enrique Alonso Queija', 'Pura Vida', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 7, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 43, 241, 'Danko', 'A325', 'M', 'GIII', 'Jorge Muñoz Leal', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 44, 253, 'Lass', 'A580', 'M', 'GIII', 'Eugenio Villares', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 38, 309, 'Xira', 'A424', 'S', 'GIII', 'Sergio Ruiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 51, 314, 'Nana', 'A277', 'S', 'GIII', 'Sara Montila', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 107, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 98, 599, 'Cayenne', '28123', 'L', 'GIII', 'Gregory Bielle-Bidalot', 'Tolouse Veto Agility', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 25, 99, 600, 'Etna', '34873', 'L', 'GIII', 'Ludiwine Dabezies', 'Tolouse Veto Agility', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 15, 3, 'Hannibal Lecter XIII', 'A090', 'L', 'GIII', 'Tomás Pérez Ayuso', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 105, 10, 'Lee', 'A084', 'L', 'GIII', 'Antonio Molina', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 8, 18, 'Woman', 'A206', 'L', 'GIII', 'Javier Mora Canales', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 29, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 71, 27, 'Deby', 'A147', 'L', 'GIII', 'Cesar Losada Mera', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 73, 31, 'Mc Coy', 'A322', 'L', 'GIII', 'Carmen Sotomayor', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 40, 34, 'Zoe', 'A289', 'L', 'GIII', 'Marta Sánchez', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 74, 46, 'Xodro', 'A371', 'L', 'GIII', 'Carlos Martínez R.', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 70, 51, 'Akane', 'A249', 'L', 'GIII', 'Gerardo González', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 88, 57, 'Aby', 'A204', 'L', 'GIII', 'Roberto Reina Vega', 'La Princesa', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 53, 65, 'Brujostel', 'A231', 'L', 'GIII', 'Yulia Morugova', 'El Nogueral', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 5, 68, 'Fito', 'A529', 'L', 'GIII', 'Luis Miguel Rodrigo', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 6, 71, 'Mecha', 'A558', 'L', 'GIII', 'José Antonio Encinas', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 16, 78, 'Winner', 'A497', 'L', 'GIII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 72, 85, 'Dylan', 'A461', 'L', 'GIII', 'Iván Sánchez García', 'Eslón', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 97, 148, 'Kira', 'A116', 'L', 'GIII', 'Enrique Alonso Queija', 'Pura Vida', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 7, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 43, 241, 'Danko', 'A325', 'M', 'GIII', 'Jorge Muñoz Leal', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 44, 253, 'Lass', 'A580', 'M', 'GIII', 'Eugenio Villares', 'Cubas', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 38, 309, 'Xira', 'A424', 'S', 'GIII', 'Sergio Ruiz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 51, 314, 'Nana', 'A277', 'S', 'GIII', 'Sara Montila', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 107, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 98, 599, 'Cayenne', '28123', 'L', 'GIII', 'Gregory Bielle-Bidalot', 'Tolouse Veto Agility', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(4, 18, 26, 99, 600, 'Etna', '34873', 'L', 'GIII', 'Ludiwine Dabezies', 'Tolouse Veto Agility', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 29, 11, 510, 'Quenn', '', 'M', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 29, 7, 556, 'botinera', '', 'L', 'GI', 'Maria Jorge', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 29, 8, 558, 'Rumba', '', 'L', 'GI', 'Carmen Gutiérrez', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 29, 9, 586, 'Hippie', '', 'M', 'GI', 'Luis Miguel Jiménez', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 30, 11, 510, 'Quenn', '', 'M', 'GI', 'Angel González', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 30, 7, 556, 'botinera', '', 'L', 'GI', 'Maria Jorge', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 30, 8, 558, 'Rumba', '', 'L', 'GI', 'Carmen Gutiérrez', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 30, 9, 586, 'Hippie', '', 'M', 'GI', 'Luis Miguel Jiménez', 'AA Y CIA', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 31, 13, 91, 'Nana', 'A225', 'L', 'GII', 'Enrique Herbera', 'Badalona', '2015-01-05 20:36:26', '2015-01-05 20:36:26', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 31, 12, 119, 'Abby', 'A533', 'L', 'GII', 'Jenny Funcke', 'Badalona', '2015-01-03 22:49:10', '2015-01-03 22:49:10', 0, 0, 0, 0, 1, 0, '', 0),
(2, 1, 31, 14, 293, 'Striptease', 'A577', 'M', 'GII', 'Carmen Alos', 'Canic', '2015-01-05 20:36:55', '2015-01-05 20:36:55', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 31, 15, 351, 'Flai', 'A815', 'M', 'GII', 'Juan Antonio Martinez', 'Eslón', '2015-01-05 20:36:53', '2015-01-05 20:36:53', 0, 0, 0, 0, 0, 0, '', 1),
(2, 1, 31, 10, 353, 'fito', '', 'T', 'GII', 'pepe', 'ACADE', '2015-01-04 21:54:54', '2015-01-04 21:54:54', 1, 0, 0, 0, 0, 23.45, '', 0),
(2, 1, 31, 1, 354, 'paco', '', 'T', 'GII', '-- Sin asignar --', '-- Sin asignar --', '2015-01-04 21:55:03', '2015-01-04 21:55:03', 0, 0, 0, 1, 0, 0, '', 0),
(2, 1, 31, 3, 389, 'Dolce', 'A681', 'L', 'GII', 'Andres Morillas Sanjuan', 'A-0', '2015-01-03 22:49:06', '2015-01-03 22:49:06', 10, 0, 0, 0, 0, 45, '', 0),
(2, 1, 31, 5, 559, 'Perla', '', 'S', 'GII', 'Sandra Rodrigo', 'A-0', '2015-01-04 21:54:39', '2015-01-04 21:54:39', 0, 0, 0, 0, 0, 33.5, '', 0),
(2, 1, 31, 4, 560, 'Arturo', '', 'S', 'GII', 'Dolores Rosas', 'A-0', '2015-01-04 21:54:51', '2015-01-04 21:54:51', 0, 2, 0, 0, 0, 54, '', 0),
(2, 1, 31, 6, 584, 'Ursula', 'A840', 'S', 'GII', 'Pablo Martínez', 'A-0', '2015-01-04 20:43:12', '2015-01-04 20:43:12', 0, 0, 0, 0, 0, 35.7, '', 0),
(2, 1, 31, 2, 585, 'Ari', 'A894', 'L', 'GII', 'Veronica Roda', 'A-0', '2015-01-03 22:48:54', '2015-01-03 22:48:54', 0, 1, 0, 0, 0, 34.45, '', 0),
(2, 1, 32, 13, 91, 'Nana', 'A225', 'L', 'GII', 'Enrique Herbera', 'Badalona', '2015-01-04 20:43:55', '2015-01-04 20:43:55', 0, 0, 0, 1, 0, 0, '', 0),
(2, 1, 32, 12, 119, 'Abby', 'A533', 'L', 'GII', 'Jenny Funcke', 'Badalona', '2015-01-04 20:43:51', '2015-01-04 20:43:51', 0, 0, 1, 0, 0, 33.7, '', 0),
(2, 1, 32, 14, 293, 'Striptease', 'A577', 'M', 'GII', 'Carmen Alos', 'Canic', '2015-01-04 21:55:31', '2015-01-04 21:55:31', 0, 0, 0, 0, 0, 43.8, '', 0),
(2, 1, 32, 15, 351, 'Flai', 'A815', 'M', 'GII', 'Juan Antonio Martinez', 'Eslón', '2015-01-04 20:43:56', '2015-01-04 20:43:56', 0, 0, 0, 0, 1, 0, '', 0),
(2, 1, 32, 10, 353, 'fito', '', 'T', 'GII', 'pepe', 'ACADE', '2015-01-04 21:55:50', '2015-01-04 21:55:50', 0, 0, 0, 1, 0, 0, '', 0),
(2, 1, 32, 1, 354, 'paco', '', 'T', 'GII', '-- Sin asignar --', '-- Sin asignar --', '2015-01-04 21:56:02', '2015-01-04 21:56:02', 0, 0, 0, 0, 0, 39.2, '', 0),
(2, 1, 32, 3, 389, 'Dolce', 'A681', 'L', 'GII', 'Andres Morillas Sanjuan', 'A-0', '2015-01-04 20:43:44', '2015-01-04 20:43:44', 1, 0, 0, 0, 0, 40.54, '', 0),
(2, 1, 32, 5, 559, 'Perla', '', 'S', 'GII', 'Sandra Rodrigo', 'A-0', '2015-01-04 21:55:37', '2015-01-04 21:55:37', 3, 0, 0, 0, 0, 90.2, '', 0),
(2, 1, 32, 4, 560, 'Arturo', '', 'S', 'GII', 'Dolores Rosas', 'A-0', '2015-01-04 21:55:46', '2015-01-04 21:55:46', 0, 0, 0, 0, 1, 0, '', 0),
(2, 1, 32, 6, 584, 'Ursula', 'A840', 'S', 'GII', 'Pablo Martínez', 'A-0', '2015-01-04 21:55:38', '2015-01-04 21:55:38', 0, 0, 0, 0, 0, 54, '', 0),
(2, 1, 32, 2, 585, 'Ari', 'A894', 'L', 'GII', 'Veronica Roda', 'A-0', '2015-01-04 20:43:38', '2015-01-04 20:43:38', 0, 0, 0, 0, 0, 56.3, '', 0),
(5, 25, 45, 35, 562, 'Arya', '', 'L', 'P.A.', 'Ramón García Maroto', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 45, 37, 563, 'Sasha', '', 'L', 'P.A.', 'Beatriz Sánchez Casares', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 45, 45, 568, 'Golfo', '', 'L', 'P.A.', 'Cynthia Sánchez', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 45, 36, 581, 'Lady', '', 'L', 'P.A.', 'Jose Luis de la Vara', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 45, 38, 582, 'Zoe', '', 'L', 'P.A.', 'Yaiza', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 45, 41, 583, 'Tabu', '', 'L', 'P.A.', 'Isabel Fernández', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 45, 62, 624, 'Bora', '', 'L', 'P.A.', 'Yulia Morugova', 'El Nogueral', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 45, 102, 627, 'Arashi', '', 'L', 'P.A.', 'Javier Martín', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 45, 103, 628, 'Shiva', '', 'L', 'P.A.', 'Ana Valencia', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 45, 104, 629, 'Vash', '', 'L', 'P.A.', 'Jesús Gómez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 45, 105, 630, 'Coba', '', 'L', 'P.A.', 'Susana Calvelo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 46, 20, 356, 'Toska', '', 'L', 'GI', 'Jesús Gómez', 'Agilcan', '2015-01-10 10:11:48', '2015-01-10 10:11:48', 8, 0, 0, 0, 0, 46.92, '', 0),
(5, 25, 46, 19, 370, 'Milka', '', 'L', 'GI', 'Javier Martín', 'Agilcan', '2015-01-10 10:12:48', '2015-01-10 10:12:48', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 46, 83, 380, 'Keko', '', 'L', 'GI', 'Alberto González', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 46, 18, 511, 'Gala', '', 'L', 'GI', 'Ana Valencia', 'Agilcan', '2015-01-10 10:11:10', '2015-01-10 10:11:10', 2, 1, 0, 0, 0, 71.55, '', 0),
(5, 25, 46, 42, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernandez Ortiz', 'Correcan', '2015-01-10 10:09:30', '2015-01-10 10:09:30', 4, 0, 0, 0, 0, 39.81, '', 0),
(5, 25, 46, 85, 517, 'Nut', '', 'L', 'GI', 'Francisco Javier Jaen', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 46, 29, 561, 'Yara', '', 'L', 'GI', 'Sonia Gil', 'Cinco Huesos', '2015-01-10 10:14:30', '2015-01-10 10:14:30', 3, 1, 0, 0, 0, 44.66, '', 0),
(5, 25, 46, 39, 565, 'Lillo', '', 'S', 'GI', 'Mari Carmen Martí Sanz', 'Cinco Huesos', '2015-01-10 10:21:01', '2015-01-10 10:21:01', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 46, 96, 577, 'Skye', '', 'L', 'GI', 'Ana Belén Ondategui Casas', 'Xanastur', '2015-01-10 10:09:34', '2015-01-10 10:09:34', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 46, 50, 589, 'Iris', '', 'L', 'GI', 'Sara Montila', 'Deporcan', '2015-01-10 10:14:58', '2015-01-10 10:14:58', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 46, 84, 601, 'Lee-Ann', '', 'L', 'GI', 'Iván Pardo García', 'Vallgorguina', '2015-01-10 10:09:32', '2015-01-10 10:09:32', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 46, 97, 603, 'killa', '', 'L', 'GI', 'Alberto Pérez', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 46, 25, 612, 'Ginn', '', 'M', 'GI', 'Rafael Arjona', 'Campo de Gibraltar', '2015-01-10 10:21:33', '2015-01-10 10:21:33', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 46, 86, 622, 'Truco', '', 'L', 'GI', 'Marta Acero', 'Vallgorguina', '2015-01-10 10:01:50', '2015-01-10 10:01:50', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 46, 100, 625, 'Knut', '', 'L', 'GI', 'Jesús Fernández Crespo', 'Mi Perro 10', '2015-01-10 10:14:31', '2015-01-10 10:14:31', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 47, 20, 356, 'Toska', '', 'L', 'GI', 'Jesús Gómez', 'Agilcan', '2015-01-10 10:54:16', '2015-01-10 10:54:16', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 47, 19, 370, 'Milka', '', 'L', 'GI', 'Javier Martín', 'Agilcan', '2015-01-10 10:51:24', '2015-01-10 10:51:24', 6, 0, 0, 0, 0, 44.56, '', 0),
(5, 25, 47, 83, 380, 'Keko', '', 'L', 'GI', 'Alberto González', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 47, 18, 511, 'Gala', '', 'L', 'GI', 'Ana Valencia', 'Agilcan', '2015-01-10 10:58:54', '2015-01-10 10:58:54', 0, 2, 0, 0, 0, 61.24, '', 0),
(5, 25, 47, 42, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernandez Ortiz', 'Correcan', '2015-01-10 10:58:34', '2015-01-10 10:58:34', 0, 0, 0, 0, 0, 31.77, '', 0),
(5, 25, 47, 85, 517, 'Nut', '', 'L', 'GI', 'Francisco Javier Jaen', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 47, 29, 561, 'Yara', '', 'L', 'GI', 'Sonia Gil', 'Cinco Huesos', '2015-01-10 10:54:19', '2015-01-10 10:54:19', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 47, 39, 565, 'Lillo', '', 'S', 'GI', 'Mari Carmen Martí Sanz', 'Cinco Huesos', '2015-01-10 10:59:21', '2015-01-10 10:59:21', 0, 2, 0, 0, 0, 89.01, '', 0),
(5, 25, 47, 96, 577, 'Skye', '', 'L', 'GI', 'Ana Belén Ondategui Casas', 'Xanastur', '2015-01-10 11:00:47', '2015-01-10 11:00:47', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 47, 50, 589, 'Iris', '', 'L', 'GI', 'Sara Montila', 'Deporcan', '2015-01-10 11:00:23', '2015-01-10 11:00:23', 2, 0, 0, 0, 0, 35.76, '', 0),
(5, 25, 47, 84, 601, 'Lee-Ann', '', 'L', 'GI', 'Iván Pardo García', 'Vallgorguina', '2015-01-10 11:00:13', '2015-01-10 11:00:13', 3, 0, 0, 0, 0, 41.3, '', 0),
(5, 25, 47, 97, 603, 'killa', '', 'L', 'GI', 'Alberto Pérez', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 25, 47, 25, 612, 'Ginn', '', 'M', 'GI', 'Rafael Arjona', 'Campo de Gibraltar', '2015-01-10 10:58:58', '2015-01-10 10:58:58', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 47, 86, 622, 'Truco', '', 'L', 'GI', 'Marta Acero', 'Vallgorguina', '2015-01-10 10:51:08', '2015-01-10 10:51:08', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 47, 100, 625, 'Knut', '', 'L', 'GI', 'Jesús Fernández Crespo', 'Mi Perro 10', '2015-01-10 10:54:16', '2015-01-10 10:54:16', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 12, 8, 'Thelma', '824', 'L', 'GII', 'Fabian Santolaya', 'A. D. C. Pozuelo', '2015-01-10 12:13:41', '2015-01-10 12:13:41', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 43, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2015-01-10 12:12:45', '2015-01-10 12:12:45', 0, 0, 0, 0, 0, 46.22, '', 0),
(5, 25, 48, 88, 95, 'Raissa', 'A563', 'L', 'GII', 'Javier Iniesta', 'Vallgorguina', '2015-01-10 12:10:38', '2015-01-10 12:10:38', 0, 0, 0, 0, 0, 56.71, '', 0),
(5, 25, 48, 65, 156, 'Lennon', 'A336', 'L', 'GII', 'Miguel Angel García', 'Eslón', '2015-01-10 12:11:09', '2015-01-10 12:11:09', 2, 0, 0, 0, 0, 48.23, '', 0),
(5, 25, 48, 22, 167, 'Onis', 'A498', 'L', 'GII', 'José Antonio Vega', 'Agilcan', '2015-01-10 12:11:49', '2015-01-10 12:11:49', 4, 0, 0, 0, 0, 48.96, '', 0),
(5, 25, 48, 94, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2015-01-10 11:39:30', '2015-01-10 11:39:30', 0, 0, 0, 0, 0, 41.27, '', 0),
(5, 25, 48, 40, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2015-01-10 12:26:41', '2015-01-10 12:26:41', 0, 0, 0, 0, 0, 44.57, '', 0),
(5, 25, 48, 16, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2015-01-10 12:29:58', '2015-01-10 12:29:58', 2, 0, 0, 0, 0, 44.06, '', 0),
(5, 25, 48, 91, 342, 'Quillo', 'A604', 'S', 'GII', 'Cristina González', 'Vallgorguina', '2015-01-10 12:28:14', '2015-01-10 12:28:14', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 87, 348, 'Aker', 'A397', 'L', 'GII', 'Francisco Javier Jaen', 'Vallgorguina', '2015-01-10 12:10:28', '2015-01-10 12:10:28', 0, 0, 0, 1, 0, 0, '', 0);
INSERT INTO `resultados` (`Prueba`, `Jornada`, `Manga`, `Dorsal`, `Perro`, `Nombre`, `Licencia`, `Categoria`, `Grado`, `NombreGuia`, `NombreClub`, `Entrada`, `Comienzo`, `Faltas`, `Rehuses`, `Tocados`, `Eliminado`, `NoPresentado`, `Tiempo`, `Observaciones`, `Pendiente`) VALUES
(5, 25, 48, 23, 357, 'Sira', 'A584', 'L', 'GII', 'Joaquín Andrés', 'Agilcan', '2015-01-10 12:12:01', '2015-01-10 12:12:01', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 21, 358, 'Duna', 'A586', 'L', 'GII', 'Vicente Martín', 'Agilcan', '2015-01-10 12:10:21', '2015-01-10 12:10:21', 1, 0, 0, 0, 0, 53.36, '', 0),
(5, 25, 48, 31, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2015-01-10 12:10:52', '2015-01-10 12:10:52', 4, 1, 0, 0, 0, 48.16, '', 0),
(5, 25, 48, 32, 378, 'Momo', 'A391', 'L', 'GII', 'Roberto Iñigo', 'Cinco Huesos', '2015-01-10 12:13:27', '2015-01-10 12:13:27', 2, 1, 0, 0, 0, 43.39, '', 0),
(5, 25, 48, 33, 379, 'Skay', 'A605', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2015-01-10 12:10:41', '2015-01-10 12:10:41', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 83, 380, 'Keko', '', 'L', 'GII', 'Alberto González', 'Vallgorguina', '2015-01-10 12:14:01', '2015-01-10 12:14:01', 2, 1, 0, 0, 0, 48.24, '', 0),
(5, 25, 48, 51, 384, 'Soma', 'A696', 'L', 'GII', 'Menchu Melcom', 'Deporcan', '2015-01-10 12:13:14', '2015-01-10 12:13:14', 1, 0, 0, 0, 0, 54.72, '', 0),
(5, 25, 48, 2, 392, 'Noa', 'A540', 'L', 'GII', 'Pedro Delgado Fernandez', 'A-0', '2015-01-10 12:12:49', '2015-01-10 12:12:49', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 67, 393, 'Thor', 'A835', 'L', 'GII', 'Juan Carlos Ruiz', 'Eslón', '2015-01-10 11:39:45', '2015-01-10 11:39:45', 2, 0, 0, 0, 0, 42.38, '', 0),
(5, 25, 48, 47, 396, 'Peka', 'A615', 'L', 'GII', 'José Santos Luna', 'Cubas', '2015-01-10 11:34:07', '2015-01-10 11:34:07', 0, 0, 0, 0, 0, 43.65, '', 0),
(5, 25, 48, 11, 397, 'Milady', 'A791', 'L', 'GII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2015-01-10 11:30:32', '2015-01-10 11:30:32', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 74, 399, 'Dollar', '911', 'L', 'GII', 'Luis de Frías', 'La Princesa', '2015-01-10 12:13:35', '2015-01-10 12:13:35', 1, 0, 0, 0, 0, 43.93, '', 0),
(5, 25, 48, 76, 401, 'Ron', 'A617', 'L', 'GII', 'Oscar Sacristan', 'La Princesa', '2015-01-10 12:12:35', '2015-01-10 12:12:35', 1, 0, 0, 0, 0, 41.29, '', 0),
(5, 25, 48, 89, 407, 'Luca', 'A749', 'M', 'GII', 'Cristina González', 'Vallgorguina', '2015-01-10 12:14:21', '2015-01-10 12:14:21', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 90, 408, 'Kika', 'A722', 'S', 'GII', 'Noelia Mouchet', 'Vallgorguina', '2015-01-10 12:26:38', '2015-01-10 12:26:38', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 17, 410, 'Sombra', 'A679', 'L', 'GII', 'Jose Luis J. Mori', 'AA Y CIA', '2015-01-10 12:14:18', '2015-01-10 12:14:18', 1, 0, 0, 0, 0, 40.77, '', 0),
(5, 25, 48, 15, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2015-01-10 12:17:30', '2015-01-10 12:17:30', 2, 0, 0, 0, 0, 49.1, '', 0),
(5, 25, 48, 63, 418, 'Nitra', 'A743', 'S', 'GII', 'Yulia Morugova', 'El Nogueral', '2015-01-10 12:27:00', '2015-01-10 12:27:00', 1, 2, 0, 0, 0, 53.3, '', 0),
(5, 25, 48, 75, 423, 'Noa', 'A143', 'L', 'GII', 'Jenifer Tolín', 'La Princesa', '2015-01-10 12:12:25', '2015-01-10 12:12:25', 1, 0, 0, 0, 0, 43.7, '', 0),
(5, 25, 48, 68, 424, 'Vlad', 'A752', 'L', 'GII', 'Angel Corroto', 'Eslón', '2015-01-10 11:34:10', '2015-01-10 11:34:10', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 8, 440, 'Horatio', 'A847', 'S', 'GII', 'Beatriz Juan', 'A-0', '2015-01-10 12:18:33', '2015-01-10 12:18:33', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 44, 513, 'Vali', 'A811', 'L', 'GII', 'Africa Cabañas', 'Correcan', '2015-01-10 12:12:10', '2015-01-10 12:12:10', 0, 1, 0, 0, 0, 43.01, '', 0),
(5, 25, 48, 85, 517, 'Nut', 'A-886', 'L', 'GII', 'Francisco Javier Jaen', 'Vallgorguina', '2015-01-10 12:13:40', '2015-01-10 12:13:40', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 73, 520, 'Aska', 'A899', 'L', 'GII', 'Luciano Fernández', 'La Princesa', '2015-01-10 12:12:15', '2015-01-10 12:12:15', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 9, 559, 'Perla', '', 'S', 'GII', 'Sandra Rodrigo', 'A-0', '2015-01-10 12:26:36', '2015-01-10 12:26:36', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 10, 584, 'Ursula', 'A840', 'S', 'GII', 'Pablo Martínez', 'A-0', '2015-01-10 12:20:06', '2015-01-10 12:20:06', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 1, 585, 'Ari', 'A894', 'L', 'GII', 'Veronica Roda', 'A-0', '2015-01-10 12:14:09', '2015-01-10 12:14:09', 1, 0, 0, 0, 0, 38.36, '', 0),
(5, 25, 48, 79, 594, 'Mashel', 'A931', 'S', 'GII', 'Ainhoa de Frias', 'La Princesa', '2015-01-10 12:27:42', '2015-01-10 12:27:42', 1, 0, 0, 0, 0, 65.14, '', 0),
(5, 25, 48, 93, 602, 'Sucre', 'A920', 'L', 'GII', 'Adrian Bajo', 'Vila-Real', '2015-01-10 12:10:58', '2015-01-10 12:10:58', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 97, 603, 'Killa', 'Pendiente', 'L', 'GII', 'Alberto Pérez', 'Xanastur', '2015-01-10 12:11:38', '2015-01-10 12:11:38', 0, 0, 1, 0, 0, 54.55, '', 0),
(5, 25, 48, 64, 607, 'Hela', 'A836', 'L', 'GII', 'Cesar Losada Mera', 'Eslón', '2015-01-10 12:13:20', '2015-01-10 12:13:20', 1, 0, 0, 0, 0, 36.47, '', 0),
(5, 25, 48, 66, 609, 'Lumbre', 'A932', 'L', 'GII', 'Arancha Ruipérez Moslares', 'Eslón', '2015-01-10 12:10:57', '2015-01-10 12:10:57', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 48, 26, 613, 'Quillo', 'A-904', 'M', 'GII', 'Rafael Arjona', 'Campo de Gibraltar', '2015-01-10 12:14:59', '2015-01-10 12:14:59', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 48, 24, 618, 'Thais', '1640', 'L', 'GII', 'Elena Cardenal', 'Agilcan', '2015-01-10 12:14:10', '2015-01-10 12:14:10', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 48, 101, 626, 'Hera', '', 'L', 'GII', 'Jesús Fernández Crespo', 'Mi Perro 10', '2015-01-10 12:13:07', '2015-01-10 12:13:07', 0, 1, 0, 0, 0, 46.54, '', 0),
(5, 25, 49, 12, 8, 'Thelma', '824', 'L', 'GII', 'Fabian Santolaya', 'A. D. C. Pozuelo', '2015-01-10 13:37:21', '2015-01-10 13:37:21', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 43, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2015-01-10 13:41:25', '2015-01-10 13:41:25', 0, 0, 0, 0, 0, 34.74, '', 0),
(5, 25, 49, 88, 95, 'Raissa', 'A563', 'L', 'GII', 'Javier Iniesta', 'Vallgorguina', '2015-01-10 13:36:25', '2015-01-10 13:36:25', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 65, 156, 'Lennon', 'A336', 'L', 'GII', 'Miguel Angel García', 'Eslón', '2015-01-10 13:35:32', '2015-01-10 13:35:32', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 22, 167, 'Onis', 'A498', 'L', 'GII', 'José Antonio Vega', 'Agilcan', '2015-01-10 13:35:11', '2015-01-10 13:35:11', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 94, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2015-01-10 13:41:47', '2015-01-10 13:41:47', 1, 1, 0, 0, 0, 36.51, '', 0),
(5, 25, 49, 40, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2015-01-10 13:09:35', '2015-01-10 13:09:35', 0, 0, 0, 0, 0, 37.65, '', 0),
(5, 25, 49, 16, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2015-01-10 13:09:38', '2015-01-10 13:09:38', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 91, 342, 'Quillo', 'A604', 'S', 'GII', 'Cristina González', 'Vallgorguina', '2015-01-10 13:08:47', '2015-01-10 13:08:47', 0, 0, 0, 0, 0, 41.3, '', 0),
(5, 25, 49, 87, 348, 'Aker', 'A397', 'L', 'GII', 'Francisco Javier Jaen', 'Vallgorguina', '2015-01-10 13:33:55', '2015-01-10 13:33:55', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 23, 357, 'Sira', 'A584', 'L', 'GII', 'Joaquín Andrés', 'Agilcan', '2015-01-10 13:34:29', '2015-01-10 13:34:29', 0, 0, 0, 0, 0, 32.7, '', 0),
(5, 25, 49, 21, 358, 'Duna', 'A586', 'L', 'GII', 'Vicente Martín', 'Agilcan', '2015-01-10 13:38:27', '2015-01-10 13:38:27', 0, 0, 0, 0, 0, 48.82, '', 0),
(5, 25, 49, 31, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2015-01-10 13:34:53', '2015-01-10 13:34:53', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 32, 378, 'Momo', 'A391', 'L', 'GII', 'Roberto Iñigo', 'Cinco Huesos', '2015-01-10 13:35:25', '2015-01-10 13:35:25', 3, 0, 0, 0, 0, 31.99, '', 0),
(5, 25, 49, 33, 379, 'Skay', 'A605', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2015-01-10 13:34:45', '2015-01-10 13:34:45', 0, 0, 0, 0, 0, 32.06, '', 0),
(5, 25, 49, 83, 380, 'Keko', '', 'L', 'GII', 'Alberto González', 'Vallgorguina', '2015-01-10 13:35:19', '2015-01-10 13:35:19', 1, 0, 0, 0, 0, 36.32, '', 0),
(5, 25, 49, 51, 384, 'Soma', 'A696', 'L', 'GII', 'Menchu Melcom', 'Deporcan', '2015-01-10 13:37:26', '2015-01-10 13:37:26', 0, 1, 0, 0, 0, 48.4, '', 0),
(5, 25, 49, 2, 392, 'Noa', 'A540', 'L', 'GII', 'Pedro Delgado Fernandez', 'A-0', '2015-01-10 13:34:51', '2015-01-10 13:34:51', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 67, 393, 'Thor', 'A835', 'L', 'GII', 'Juan Carlos Ruiz', 'Eslón', '2015-01-10 13:37:06', '2015-01-10 13:37:06', 1, 0, 0, 0, 0, 33.56, '', 0),
(5, 25, 49, 47, 396, 'Peka', 'A615', 'L', 'GII', 'José Santos Luna', 'Cubas', '2015-01-10 13:41:29', '2015-01-10 13:41:29', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 11, 397, 'Milady', 'A791', 'L', 'GII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2015-01-10 13:33:56', '2015-01-10 13:33:56', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 74, 399, 'Dollar', '911', 'L', 'GII', 'Luis de Frías', 'La Princesa', '2015-01-10 13:36:27', '2015-01-10 13:36:27', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 76, 401, 'Ron', 'A617', 'L', 'GII', 'Oscar Sacristan', 'La Princesa', '2015-01-10 13:40:50', '2015-01-10 13:40:50', 0, 1, 0, 0, 0, 40.83, '', 0),
(5, 25, 49, 89, 407, 'Luca', 'A749', 'M', 'GII', 'Cristina González', 'Vallgorguina', '2015-01-10 13:08:37', '2015-01-10 13:08:37', 0, 0, 0, 0, 0, 41.15, '', 0),
(5, 25, 49, 90, 408, 'Kika', 'A722', 'S', 'GII', 'Noelia Mouchet', 'Vallgorguina', '2015-01-10 13:09:15', '2015-01-10 13:09:15', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 17, 410, 'Sombra', 'A679', 'L', 'GII', 'Jose Luis J. Mori', 'AA Y CIA', '2015-01-10 13:43:10', '2015-01-10 13:43:10', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 15, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2015-01-10 13:08:41', '2015-01-10 13:08:41', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 63, 418, 'Nitra', 'A743', 'S', 'GII', 'Yulia Morugova', 'El Nogueral', '2015-01-10 13:09:26', '2015-01-10 13:09:26', 0, 2, 0, 0, 0, 39.12, '', 0),
(5, 25, 49, 75, 423, 'Noa', 'A143', 'L', 'GII', 'Jenifer Tolín', 'La Princesa', '2015-01-10 13:40:31', '2015-01-10 13:40:31', 2, 0, 0, 0, 0, 36.5, '', 0),
(5, 25, 49, 68, 424, 'Vlad', 'A752', 'L', 'GII', 'Angel Corroto', 'Eslón', '2015-01-10 13:34:37', '2015-01-10 13:34:37', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 8, 440, 'Horatio', 'A847', 'S', 'GII', 'Beatriz Juan', 'A-0', '2015-01-10 13:09:09', '2015-01-10 13:09:09', 1, 0, 0, 0, 0, 53.84, '', 0),
(5, 25, 49, 44, 513, 'Vali', 'A811', 'L', 'GII', 'Africa Cabañas', 'Correcan', '2015-01-10 13:40:32', '2015-01-10 13:40:32', 2, 1, 0, 0, 0, 34.09, '', 0),
(5, 25, 49, 85, 517, 'Nut', 'A-886', 'L', 'GII', 'Francisco Javier Jaen', 'Vallgorguina', '2015-01-10 13:34:10', '2015-01-10 13:34:10', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 73, 520, 'Aska', 'A899', 'L', 'GII', 'Luciano Fernández', 'La Princesa', '2015-01-10 13:34:08', '2015-01-10 13:34:08', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 9, 559, 'Perla', '', 'S', 'GII', 'Sandra Rodrigo', 'A-0', '2015-01-10 13:08:52', '2015-01-10 13:08:52', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 10, 584, 'Ursula', 'A840', 'S', 'GII', 'Pablo Martínez', 'A-0', '2015-01-10 13:08:50', '2015-01-10 13:08:50', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 1, 585, 'Ari', 'A894', 'L', 'GII', 'Veronica Roda', 'A-0', '2015-01-10 13:41:03', '2015-01-10 13:41:03', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 79, 594, 'Mashel', 'A931', 'S', 'GII', 'Ainhoa de Frias', 'La Princesa', '2015-01-10 13:09:17', '2015-01-10 13:09:17', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 49, 93, 602, 'Sucre', 'A920', 'L', 'GII', 'Adrian Bajo', 'Vila-Real', '2015-01-10 13:34:22', '2015-01-10 13:34:22', 0, 1, 0, 0, 0, 34.05, '', 0),
(5, 25, 49, 97, 603, 'Killa', 'Pendiente', 'L', 'GII', 'Alberto Pérez', 'Xanastur', '2015-01-10 13:38:11', '2015-01-10 13:38:11', 0, 0, 0, 0, 0, 43.52, '', 0),
(5, 25, 49, 64, 607, 'Hela', 'A836', 'L', 'GII', 'Cesar Losada Mera', 'Eslón', '2015-01-10 13:41:15', '2015-01-10 13:41:15', 0, 0, 0, 0, 0, 30.05, '', 0),
(5, 25, 49, 66, 609, 'Lumbre', 'A932', 'L', 'GII', 'Arancha Ruipérez Moslares', 'Eslón', '2015-01-10 13:34:05', '2015-01-10 13:34:05', 0, 0, 0, 0, 0, 30.97, '', 0),
(5, 25, 49, 26, 613, 'Quillo', 'A-904', 'M', 'GII', 'Rafael Arjona', 'Campo de Gibraltar', '2015-01-10 13:08:08', '2015-01-10 13:08:08', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 49, 24, 618, 'Thais', '1640', 'L', 'GII', 'Elena Cardenal', 'Agilcan', '2015-01-10 13:43:11', '2015-01-10 13:43:11', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 49, 101, 626, 'Hera', '', 'L', 'GII', 'Jesús Fernández Crespo', 'Mi Perro 10', '2015-01-10 13:36:26', '2015-01-10 13:36:26', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 50, 13, 3, 'Hannibal Lecter XIII', 'A090', 'L', 'GIII', 'Tomás Pérez Ayuso', 'A. D. C. Pozuelo', '2015-01-10 09:21:57', '2015-01-10 09:21:57', 1, 0, 0, 0, 0, 46.53, '', 0),
(5, 25, 50, 95, 10, 'Lee', 'A084', 'L', 'GIII', 'Antonio Molina', 'W.E.L.P.E.', '2015-01-10 09:24:42', '2015-01-10 09:24:42', 0, 0, 0, 0, 0, 44.56, '', 0),
(5, 25, 50, 34, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2015-01-10 09:24:46', '2015-01-10 09:24:46', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 50, 69, 27, 'Deby', 'A147', 'L', 'GIII', 'Cesar Losada Mera', 'Eslón', '2015-01-10 09:11:43', '2015-01-10 09:11:43', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 50, 71, 31, 'Mc Coy', 'A322', 'L', 'GIII', 'Carmen Sotomayor', 'Eslón', '2015-01-10 09:18:21', '2015-01-10 09:18:21', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 50, 7, 34, 'Zoe', 'A289', 'L', 'GIII', 'Marta Sánchez', 'A-0', '2015-01-10 09:10:06', '2015-01-10 09:10:06', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 50, 78, 57, 'Aby', 'A204', 'L', 'GIII', 'Roberto Reina Vega', 'La Princesa', '2015-01-10 09:12:52', '2015-01-10 09:12:52', 1, 0, 0, 0, 0, 46.41, '', 0),
(5, 25, 50, 61, 65, 'Brujostel', 'A231', 'L', 'GIII', 'Yulia Morugova', 'El Nogueral', '2015-01-10 09:19:46', '2015-01-10 09:19:46', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 50, 5, 71, 'Mecha', 'A558', 'L', 'GIII', 'José Antonio Encinas', 'A-0', '2015-01-10 09:17:44', '2015-01-10 09:17:44', 0, 0, 0, 0, 0, 44.75, '', 0),
(5, 25, 50, 14, 78, 'Winner', 'A497', 'L', 'GIII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2015-01-10 09:13:37', '2015-01-10 09:13:37', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 50, 70, 85, 'Dylan', 'A461', 'L', 'GIII', 'Iván Sánchez García', 'Eslón', '2015-01-10 09:16:15', '2015-01-10 09:16:15', 0, 0, 1, 0, 0, 53.31, '', 0),
(5, 25, 50, 6, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2015-01-10 09:15:00', '2015-01-10 09:15:00', 2, 0, 0, 0, 0, 46.85, '', 0),
(5, 25, 50, 48, 253, 'Lass', 'A580', 'M', 'GIII', 'Eugenio Villares', 'Cubas', '2015-01-10 09:06:14', '2015-01-10 09:06:14', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 50, 92, 312, 'Nuca', 'A181', 'S', 'GIII', 'Iván Pardo García', 'Vallgorguina', '2015-01-10 09:08:06', '2015-01-10 09:08:06', 1, 0, 0, 0, 0, 45.24, '', 0),
(5, 25, 50, 60, 314, 'Nana', 'A277', 'S', 'GIII', 'Sara Montila', 'Deporcan', '2015-01-10 09:05:59', '2015-01-10 09:05:59', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 50, 72, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'Eslón', '2015-01-10 09:08:03', '2015-01-10 09:08:03', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 50, 28, 614, 'Ben', 'A-928', 'S', 'GIII', 'Nina Causevic', 'Campo de Gibraltar', '2015-01-10 09:08:03', '2015-01-10 09:08:03', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 50, 27, 615, 'Winni', 'A-929', 'M', 'GIII', 'Nina Causevic', 'Campo de Gibraltar', '2015-01-10 09:06:13', '2015-01-10 09:06:13', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 51, 13, 3, 'Hannibal Lecter XIII', 'A090', 'L', 'GIII', 'Tomás Pérez Ayuso', 'A. D. C. Pozuelo', '2015-01-10 08:22:33', '2015-01-10 08:22:33', 0, 0, 0, 0, 0, 37.56, '', 0),
(5, 25, 51, 95, 10, 'Lee', 'A084', 'L', 'GIII', 'Antonio Molina', 'W.E.L.P.E.', '2015-01-10 08:15:15', '2015-01-10 08:15:15', 0, 0, 0, 0, 0, 35.78, '', 0),
(5, 25, 51, 34, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2015-01-10 08:16:42', '2015-01-10 08:16:42', 0, 0, 0, 0, 0, 36.31, '', 0),
(5, 25, 51, 69, 27, 'Deby', 'A147', 'L', 'GIII', 'Cesar Losada Mera', 'Eslón', '2015-01-10 08:19:28', '2015-01-10 08:19:28', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 51, 71, 31, 'Mc Coy', 'A322', 'L', 'GIII', 'Carmen Sotomayor', 'Eslón', '2015-01-10 08:17:49', '2015-01-10 08:17:49', 1, 0, 0, 0, 0, 37.39, '', 0),
(5, 25, 51, 7, 34, 'Zoe', 'A289', 'L', 'GIII', 'Marta Sánchez', 'A-0', '2015-01-10 08:23:22', '2015-01-10 08:23:22', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 51, 78, 57, 'Aby', 'A204', 'L', 'GIII', 'Roberto Reina Vega', 'La Princesa', '2015-01-10 08:15:24', '2015-01-10 08:15:24', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 51, 61, 65, 'Brujostel', 'A231', 'L', 'GIII', 'Yulia Morugova', 'El Nogueral', '2015-01-10 08:18:56', '2015-01-10 08:18:56', 0, 0, 0, 0, 0, 37.83, '', 0),
(5, 25, 51, 5, 71, 'Mecha', 'A558', 'L', 'GIII', 'José Antonio Encinas', 'A-0', '2015-01-10 08:24:22', '2015-01-10 08:24:22', 1, 0, 0, 0, 0, 37.44, '', 0),
(5, 25, 51, 14, 78, 'Winner', 'A497', 'L', 'GIII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2015-01-10 08:15:16', '2015-01-10 08:15:16', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 51, 70, 85, 'Dylan', 'A461', 'L', 'GIII', 'Iván Sánchez García', 'Eslón', '2015-01-10 08:13:07', '2015-01-10 08:13:07', 1, 0, 0, 0, 0, 38.14, '', 0),
(5, 25, 51, 6, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2015-01-10 08:21:02', '2015-01-10 08:21:02', 5, 0, 0, 0, 0, 38.58, '', 0),
(5, 25, 51, 48, 253, 'Lass', 'A580', 'M', 'GIII', 'Eugenio Villares', 'Cubas', '2015-01-10 08:25:36', '2015-01-10 08:25:36', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 51, 92, 312, 'Nuca', 'A181', 'S', 'GIII', 'Iván Pardo García', 'Vallgorguina', '2015-01-10 08:29:05', '2015-01-10 08:29:05', 0, 0, 0, 1, 0, 0, '', 0),
(5, 25, 51, 60, 314, 'Nana', 'A277', 'S', 'GIII', 'Sara Montila', 'Deporcan', '2015-01-10 08:30:23', '2015-01-10 08:30:23', 0, 0, 0, 0, 0, 41.04, '', 0),
(5, 25, 51, 72, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'Eslón', '2015-01-10 08:27:29', '2015-01-10 08:27:29', 0, 0, 0, 0, 0, 47.42, '', 0),
(5, 25, 51, 28, 614, 'Ben', 'A-928', 'S', 'GIII', 'Nina Causevic', 'Campo de Gibraltar', '2015-01-10 08:29:20', '2015-01-10 08:29:20', 0, 0, 0, 0, 1, 0, '', 0),
(5, 25, 51, 27, 615, 'Winni', 'A-929', 'M', 'GIII', 'Nina Causevic', 'Campo de Gibraltar', '2015-01-10 08:25:33', '2015-01-10 08:25:33', 0, 0, 0, 0, 1, 0, '', 0),
(5, 26, 52, 35, 562, 'Arya', '', 'L', 'P.A.', 'Ramón García Maroto', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 37, 563, 'Sasha', '', 'L', 'P.A.', 'Beatriz Sánchez Casares', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 45, 568, 'Golfo', '', 'L', 'P.A.', 'Cynthia Sánchez', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 52, 570, 'Putt', '', 'L', 'P.A.', 'Olga Palomares', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 53, 571, 'Onza', '', 'M', 'P.A.', 'Irene Blanco', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 57, 572, 'Sancho', '', 'L', 'P.A.', 'Oscar López', 'Deporcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 36, 581, 'Lady', '', 'L', 'P.A.', 'Jose Luis de la Vara', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 38, 582, 'Zoe', '', 'L', 'P.A.', 'Yaiza', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 41, 583, 'Tabu', '', 'L', 'P.A.', 'Isabel Fernández', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 98, 620, 'Arya', '', 'L', 'P.A.', 'Patricia Sevillano García', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 99, 621, 'Iris', '', 'L', 'P.A.', 'Daniel Colás Avilés', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 102, 627, 'Arashi', '', 'L', 'P.A.', 'Javier Martín', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 103, 628, 'Shiva', '', 'L', 'P.A.', 'Ana Valencia', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 104, 629, 'Vash', '', 'L', 'P.A.', 'Jesús Gómez', 'Agilcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 105, 630, 'Coba', '', 'L', 'P.A.', 'Susana Calvelo', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 108, 631, 'Yoda', '', 'L', 'P.A.', 'Beatriz', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 52, 107, 632, 'Parche', '', 'L', 'P.A.', 'Laura', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 53, 83, 380, 'Keko', '', 'L', 'GI', 'Alberto González', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 53, 54, 382, 'Swing', '', 'M', 'GI', 'Olga Palomares', 'Deporcan', '2015-01-11 10:30:56', '2015-01-11 10:30:56', 0, 2, 0, 0, 0, 53.35, '', 0),
(5, 26, 53, 55, 383, 'Trufa', '', 'M', 'GI', 'Rosa Rubio', 'Deporcan', '2015-01-11 10:26:30', '2015-01-11 10:26:30', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 53, 46, 512, 'Moli', '', 'S', 'GI', 'Israel Díaz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 53, 42, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernandez Ortiz', 'Correcan', '2015-01-11 10:25:20', '2015-01-11 10:25:20', 5, 0, 0, 0, 0, 37.09, '', 0),
(5, 26, 53, 85, 517, 'Nut', '', 'L', 'GI', 'Francisco Javier Jaen', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 53, 29, 561, 'Yara', '', 'L', 'GI', 'Sonia Gil', 'Cinco Huesos', '2015-01-11 10:16:11', '2015-01-11 10:16:11', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 53, 39, 565, 'Lillo', '', 'S', 'GI', 'Mari Carmen Martí Sanz', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 53, 53, 571, 'Onza', '', 'M', 'GI', 'Irene Blanco', 'Deporcan', '2015-01-11 10:32:01', '2015-01-11 10:32:01', 2, 1, 0, 0, 0, 81.79, '', 0),
(5, 26, 53, 58, 573, 'Manzanillo', '', 'S', 'GI', 'Virginia Pastor', 'Deporcan', '2015-01-11 10:35:36', '2015-01-11 10:35:36', 0, 0, 0, 0, 0, 61.44, '', 0),
(5, 26, 53, 96, 577, 'Skye', '', 'L', 'GI', 'Ana Belén Ondategui Casas', 'Xanastur', '2015-01-11 10:17:51', '2015-01-11 10:17:51', 0, 0, 0, 0, 0, 49.01, '', 0),
(5, 26, 53, 50, 589, 'Iris', '', 'L', 'GI', 'Sara Montila', 'Deporcan', '2015-01-11 10:25:24', '2015-01-11 10:25:24', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 53, 49, 590, 'Bruni', '', 'L', 'GI', 'Javier Perez', 'Deporcan', '2015-01-11 10:14:19', '2015-01-11 10:14:19', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 53, 84, 601, 'Lee-Ann', '', 'L', 'GI', 'Iván Pardo García', 'Vallgorguina', '2015-01-11 10:25:08', '2015-01-11 10:25:08', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 53, 97, 603, 'killa', '', 'L', 'GI', 'Alberto Pérez', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 53, 25, 612, 'Ginn', '', 'M', 'GI', 'Rafael Arjona', 'Campo de Gibraltar', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 53, 59, 616, 'Mika', '', 'S', 'GI', 'Eli Brandsaeter', 'Deporcan', '2015-01-11 10:36:26', '2015-01-11 10:36:26', 1, 0, 0, 0, 0, 95.29, '', 0),
(5, 26, 53, 56, 617, 'Wendy', '', 'M', 'GI', 'Nicolas Alcaide', 'Deporcan', '2015-01-11 10:30:58', '2015-01-11 10:30:58', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 53, 86, 622, 'Truco', '', 'L', 'GI', 'Marta Acero', 'Vallgorguina', '2015-01-11 10:25:11', '2015-01-11 10:25:11', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 53, 100, 625, 'Knut', '', 'L', 'GI', 'Jesús Fernández Crespo', 'Mi Perro 10', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 54, 83, 380, 'Keko', '', 'L', 'GI', 'Alberto González', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 54, 54, 382, 'Swing', '', 'M', 'GI', 'Olga Palomares', 'Deporcan', '2015-01-11 11:08:07', '2015-01-11 11:08:07', 0, 0, 0, 0, 0, 49.86, '', 0),
(5, 26, 54, 55, 383, 'Trufa', '', 'M', 'GI', 'Rosa Rubio', 'Deporcan', '2015-01-11 11:02:46', '2015-01-11 11:02:46', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 54, 46, 512, 'Moli', '', 'S', 'GI', 'Israel Díaz', 'Correcan', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 54, 42, 514, 'Isis', '', 'L', 'GI', 'Antonio Fernandez Ortiz', 'Correcan', '2015-01-11 11:15:56', '2015-01-11 11:15:56', 3, 0, 0, 0, 0, 44.55, '', 0),
(5, 26, 54, 85, 517, 'Nut', '', 'L', 'GI', 'Francisco Javier Jaen', 'Vallgorguina', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 54, 29, 561, 'Yara', '', 'L', 'GI', 'Sonia Gil', 'Cinco Huesos', '2015-01-11 11:12:43', '2015-01-11 11:12:43', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 54, 39, 565, 'Lillo', '', 'S', 'GI', 'Mari Carmen Martí Sanz', 'Cinco Huesos', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 54, 53, 571, 'Onza', '', 'M', 'GI', 'Irene Blanco', 'Deporcan', '2015-01-11 11:06:35', '2015-01-11 11:06:35', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 54, 58, 573, 'Manzanillo', '', 'S', 'GI', 'Virginia Pastor', 'Deporcan', '2015-01-11 11:00:45', '2015-01-11 11:00:45', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 54, 96, 577, 'Skye', '', 'L', 'GI', 'Ana Belén Ondategui Casas', 'Xanastur', '2015-01-11 11:17:25', '2015-01-11 11:17:25', 1, 2, 0, 0, 0, 62.67, '', 0),
(5, 26, 54, 50, 589, 'Iris', '', 'L', 'GI', 'Sara Montila', 'Deporcan', '2015-01-11 11:18:25', '2015-01-11 11:18:25', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 54, 49, 590, 'Bruni', '', 'L', 'GI', 'Javier Perez', 'Deporcan', '2015-01-11 11:12:42', '2015-01-11 11:12:42', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 54, 84, 601, 'Lee-Ann', '', 'L', 'GI', 'Iván Pardo García', 'Vallgorguina', '2015-01-11 11:14:40', '2015-01-11 11:14:40', 1, 0, 0, 1, 0, 0, '', 0),
(5, 26, 54, 97, 603, 'killa', '', 'L', 'GI', 'Alberto Pérez', 'Xanastur', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 54, 25, 612, 'Ginn', '', 'M', 'GI', 'Rafael Arjona', 'Campo de Gibraltar', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 54, 59, 616, 'Mika', '', 'S', 'GI', 'Eli Brandsaeter', 'Deporcan', '2015-01-11 10:59:28', '2015-01-11 10:59:28', 2, 0, 0, 0, 0, 74.16, '', 0),
(5, 26, 54, 56, 617, 'Wendy', '', 'M', 'GI', 'Nicolas Alcaide', 'Deporcan', '2015-01-11 11:05:08', '2015-01-11 11:05:08', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 54, 86, 622, 'Truco', '', 'L', 'GI', 'Marta Acero', 'Vallgorguina', '2015-01-11 11:14:04', '2015-01-11 11:14:04', 1, 2, 0, 0, 0, 78.56, '', 0),
(5, 26, 54, 100, 625, 'Knut', '', 'L', 'GI', 'Jesús Fernández Crespo', 'Mi Perro 10', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 55, 12, 8, 'Thelma', '824', 'L', 'GII', 'Fabian Santolaya', 'A. D. C. Pozuelo', '2015-01-11 12:11:23', '2015-01-11 12:11:23', 0, 0, 0, 0, 0, 45.21, '', 0),
(5, 26, 55, 43, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2015-01-11 12:21:22', '2015-01-11 12:21:22', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 3, 94, 'Panda', 'A474', 'L', 'GII', 'Lorena Díez', 'A-0', '2015-01-11 12:12:29', '2015-01-11 12:12:29', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 88, 95, 'Raissa', 'A563', 'L', 'GII', 'Javier Iniesta', 'Vallgorguina', '2015-01-11 12:09:35', '2015-01-11 12:09:35', 0, 0, 0, 0, 0, 52.91, '', 0),
(5, 26, 55, 77, 113, 'Yun', 'A484', 'L', 'GII', 'Concepción Fernández', 'La Princesa', '2015-01-11 12:13:31', '2015-01-11 12:13:31', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 94, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2015-01-11 12:09:28', '2015-01-11 12:09:28', 0, 0, 0, 0, 0, 42.28, '', 0),
(5, 26, 55, 40, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2015-01-11 12:35:50', '2015-01-11 12:35:50', 1, 1, 0, 0, 0, 48.54, '', 0),
(5, 26, 55, 16, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2015-01-11 12:36:48', '2015-01-11 12:36:48', 0, 0, 0, 0, 0, 42.42, '', 0),
(5, 26, 55, 91, 342, 'Quillo', 'A604', 'S', 'GII', 'Cristina González', 'Vallgorguina', '2015-01-11 12:36:21', '2015-01-11 12:36:21', 0, 1, 0, 0, 0, 54.58, '', 0),
(5, 26, 55, 87, 348, 'Aker', 'A397', 'L', 'GII', 'Francisco Javier Jaen', 'Vallgorguina', '2015-01-11 12:21:20', '2015-01-11 12:21:20', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 31, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2015-01-11 12:10:56', '2015-01-11 12:10:56', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 32, 378, 'Momo', 'A391', 'L', 'GII', 'Roberto Iñigo', 'Cinco Huesos', '2015-01-11 12:12:48', '2015-01-11 12:12:48', 3, 0, 0, 0, 0, 41.97, '', 0),
(5, 26, 55, 33, 379, 'Skay', 'A605', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2015-01-11 12:21:21', '2015-01-11 12:21:21', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 83, 380, 'Keko', '', 'L', 'GII', 'Alberto González', 'Vallgorguina', '2015-01-11 12:08:59', '2015-01-11 12:08:59', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 2, 392, 'Noa', 'A540', 'L', 'GII', 'Pedro Delgado Fernandez', 'A-0', '2015-01-11 12:10:14', '2015-01-11 12:10:14', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 47, 396, 'Peka', 'A615', 'L', 'GII', 'José Santos Luna', 'Cubas', '2015-01-11 12:09:17', '2015-01-11 12:09:17', 1, 0, 0, 0, 0, 43.48, '', 0),
(5, 26, 55, 11, 397, 'Milady', 'A791', 'L', 'GII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2015-01-11 12:21:21', '2015-01-11 12:21:21', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 80, 404, 'Bimba', 'A288', 'L', 'GII', 'Luisa Fernanda Millan', 'Pataplán', '2015-01-11 12:10:13', '2015-01-11 12:10:13', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 81, 405, 'Dudy', 'A753', 'L', 'GII', 'Juan José González', 'Pataplán', '2015-01-11 12:12:28', '2015-01-11 12:12:28', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 89, 407, 'Luca', 'A749', 'M', 'GII', 'Cristina González', 'Vallgorguina', '2015-01-11 12:23:47', '2015-01-11 12:23:47', 1, 1, 0, 0, 0, 63.96, '', 0),
(5, 26, 55, 90, 408, 'Kika', 'A722', 'S', 'GII', 'Noelia Mouchet', 'Vallgorguina', '2015-01-11 12:34:44', '2015-01-11 12:34:44', 0, 1, 0, 0, 0, 57.35, '', 0),
(5, 26, 55, 17, 410, 'Sombra', 'A679', 'L', 'GII', 'Jose Luis J. Mori', 'AA Y CIA', '2015-01-11 12:21:24', '2015-01-11 12:21:24', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 30, 412, 'Brea', '', 'L', 'GII', 'Almudena Novo', 'Cinco Huesos', '2015-01-11 12:09:10', '2015-01-11 12:09:10', 2, 2, 0, 0, 0, 72.42, '', 0),
(5, 26, 55, 15, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2015-01-11 12:34:14', '2015-01-11 12:34:14', 1, 0, 0, 0, 0, 49.88, '', 0),
(5, 26, 55, 75, 423, 'Noa', 'A143', 'L', 'GII', 'Jenifer Tolín', 'La Princesa', '2015-01-11 12:09:41', '2015-01-11 12:09:41', 2, 0, 0, 0, 0, 47.08, '', 0),
(5, 26, 55, 8, 440, 'Horatio', 'A847', 'S', 'GII', 'Beatriz Juan', 'A-0', '2015-01-11 12:35:46', '2015-01-11 12:35:46', 0, 1, 0, 0, 0, 67.63, '', 0),
(5, 26, 55, 46, 512, 'Moly', '1633', 'S', 'GII', 'Israel Díaz', 'Correcan', '2015-01-11 12:34:47', '2015-01-11 12:34:47', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 44, 513, 'Vali', 'A811', 'L', 'GII', 'Africa Cabañas', 'Correcan', '2015-01-11 12:10:55', '2015-01-11 12:10:55', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 85, 517, 'Nut', 'A-886', 'L', 'GII', 'Francisco Javier Jaen', 'Vallgorguina', '2015-01-11 11:46:50', '2015-01-11 11:46:50', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 10, 584, 'Ursula', 'A840', 'S', 'GII', 'Pablo Martínez', 'A-0', '2015-01-11 12:36:06', '2015-01-11 12:36:06', 4, 0, 0, 0, 0, 47.53, '', 0),
(5, 26, 55, 1, 585, 'Ari', 'A894', 'L', 'GII', 'Veronica Roda', 'A-0', '2015-01-11 12:13:48', '2015-01-11 12:13:48', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 55, 93, 602, 'Sucre', 'A920', 'L', 'GII', 'Adrian Bajo', 'Vila-Real', '2015-01-11 12:10:50', '2015-01-11 12:10:50', 1, 0, 0, 0, 0, 37.65, '', 0),
(5, 26, 55, 97, 603, 'Killa', 'Pendiente', 'L', 'GII', 'Alberto Pérez', 'Xanastur', '2015-01-11 12:21:49', '2015-01-11 12:21:49', 0, 1, 0, 0, 0, 57.65, '', 0),
(5, 26, 55, 64, 607, 'Hela', 'A836', 'L', 'GII', 'Cesar Losada Mera', 'Eslón', '2015-01-11 12:10:31', '2015-01-11 12:10:31', 0, 0, 0, 0, 0, 39.17, '', 0),
(5, 26, 55, 66, 609, 'Lumbre', 'A932', 'L', 'GII', 'Arancha Ruipérez Moslares', 'Eslón', '2015-01-11 12:12:48', '2015-01-11 12:12:48', 0, 0, 0, 0, 0, 40.83, '', 0),
(5, 26, 55, 26, 613, 'Quillo', 'A-904', 'M', 'GII', 'Rafael Arjona', 'Campo de Gibraltar', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 55, 82, 623, 'Nubia', 'A-309', 'L', 'GII', 'Juan José González', 'Pataplán', '2015-01-11 12:10:13', '2015-01-11 12:10:13', 2, 1, 0, 0, 0, 76.83, '', 0),
(5, 26, 55, 101, 626, 'Hera', '', 'L', 'GII', 'Jesús Fernández Crespo', 'Mi Perro 10', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 56, 12, 8, 'Thelma', '824', 'L', 'GII', 'Fabian Santolaya', 'A. D. C. Pozuelo', '2015-01-11 13:39:10', '2015-01-11 13:39:10', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 43, 24, 'Chiruca', '986', 'L', 'GII', 'Antonio Fernández Moreno', 'Correcan', '2015-01-11 13:35:56', '2015-01-11 13:35:56', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 3, 94, 'Panda', 'A474', 'L', 'GII', 'Lorena Díez', 'A-0', '2015-01-11 13:27:40', '2015-01-11 13:27:40', 0, 2, 0, 0, 0, 42.97, '', 0),
(5, 26, 56, 88, 95, 'Raissa', 'A563', 'L', 'GII', 'Javier Iniesta', 'Vallgorguina', '2015-01-11 13:39:04', '2015-01-11 13:39:04', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 77, 113, 'Yun', 'A484', 'L', 'GII', 'Concepción Fernández', 'La Princesa', '2015-01-11 13:27:33', '2015-01-11 13:27:33', 0, 0, 0, 0, 0, 35.55, '', 0),
(5, 26, 56, 94, 229, 'Shasta', 'A272', 'L', 'GII', 'Mario Rodríguez', 'W.E.L.P.E.', '2015-01-11 13:41:02', '2015-01-11 13:41:02', 0, 0, 0, 0, 0, 36.37, '', 0),
(5, 26, 56, 40, 323, 'Lia', 'A588', 'S', 'GII', 'Irene Artacho', 'Cinco Huesos', '2015-01-11 13:13:08', '2015-01-11 13:13:08', 0, 0, 0, 0, 0, 41.23, '', 0),
(5, 26, 56, 16, 330, 'Pepa', 'A393', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2015-01-11 13:13:17', '2015-01-11 13:13:17', 3, 0, 0, 0, 0, 37.4, '', 0),
(5, 26, 56, 91, 342, 'Quillo', 'A604', 'S', 'GII', 'Cristina González', 'Vallgorguina', '2015-01-11 13:12:47', '2015-01-11 13:12:47', 0, 0, 0, 0, 0, 47.16, '', 0),
(5, 26, 56, 87, 348, 'Aker', 'A397', 'L', 'GII', 'Francisco Javier Jaen', 'Vallgorguina', '2015-01-11 13:35:38', '2015-01-11 13:35:38', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 31, 361, 'Kara', 'A-541', 'L', 'GII', 'Ramón García Maroto', 'Cinco Huesos', '2015-01-11 13:35:34', '2015-01-11 13:35:34', 1, 0, 0, 0, 0, 36.11, '', 0),
(5, 26, 56, 32, 378, 'Momo', 'A391', 'L', 'GII', 'Roberto Iñigo', 'Cinco Huesos', '2015-01-11 13:37:48', '2015-01-11 13:37:48', 1, 0, 0, 0, 0, 35.08, '', 0),
(5, 26, 56, 33, 379, 'Skay', 'A605', 'L', 'GII', 'Javier Santisteban', 'Cinco Huesos', '2015-01-11 13:36:16', '2015-01-11 13:36:16', 1, 0, 0, 0, 0, 35.11, '', 0),
(5, 26, 56, 83, 380, 'Keko', '', 'L', 'GII', 'Alberto González', 'Vallgorguina', '2015-01-11 13:36:35', '2015-01-11 13:36:35', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 2, 392, 'Noa', 'A540', 'L', 'GII', 'Pedro Delgado Fernandez', 'A-0', '2015-01-11 13:37:02', '2015-01-11 13:37:02', 1, 0, 0, 0, 0, 33.39, '', 0),
(5, 26, 56, 47, 396, 'Peka', 'A615', 'L', 'GII', 'José Santos Luna', 'Cubas', '2015-01-11 13:38:46', '2015-01-11 13:38:46', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 11, 397, 'Milady', 'A791', 'L', 'GII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2015-01-11 13:36:31', '2015-01-11 13:36:31', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 80, 404, 'Bimba', 'A288', 'L', 'GII', 'Luisa Fernanda Millan', 'Pataplán', '2015-01-11 13:36:07', '2015-01-11 13:36:07', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 81, 405, 'Dudy', 'A753', 'L', 'GII', 'Juan José González', 'Pataplán', '2015-01-11 13:36:28', '2015-01-11 13:36:28', 0, 0, 0, 0, 0, 37.51, '', 0),
(5, 26, 56, 89, 407, 'Luca', 'A749', 'M', 'GII', 'Cristina González', 'Vallgorguina', '2015-01-11 13:12:29', '2015-01-11 13:12:29', 0, 0, 0, 0, 0, 42.87, '', 0),
(5, 26, 56, 90, 408, 'Kika', 'A722', 'S', 'GII', 'Noelia Mouchet', 'Vallgorguina', '2015-01-11 13:13:11', '2015-01-11 13:13:11', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 17, 410, 'Sombra', 'A679', 'L', 'GII', 'Jose Luis J. Mori', 'AA Y CIA', '2015-01-11 13:36:20', '2015-01-11 13:36:20', 0, 0, 0, 0, 1, 0, '', 0),
(5, 26, 56, 30, 412, 'Brea', '', 'L', 'GII', 'Almudena Novo', 'Cinco Huesos', '2015-01-11 13:35:27', '2015-01-11 13:35:27', 1, 1, 0, 0, 0, 49.05, '', 0),
(5, 26, 56, 15, 413, 'Lola', 'A633', 'S', 'GII', 'Francisco de la Cruz', 'A. D. C. Pozuelo', '2015-01-11 13:12:40', '2015-01-11 13:12:40', 1, 0, 0, 0, 0, 45.1, '', 0),
(5, 26, 56, 75, 423, 'Noa', 'A143', 'L', 'GII', 'Jenifer Tolín', 'La Princesa', '2015-01-11 13:38:04', '2015-01-11 13:38:04', 1, 1, 0, 0, 0, 40.97, '', 0),
(5, 26, 56, 8, 440, 'Horatio', 'A847', 'S', 'GII', 'Beatriz Juan', 'A-0', '2015-01-11 13:13:02', '2015-01-11 13:13:02', 0, 0, 0, 0, 0, 56.21, '', 0),
(5, 26, 56, 46, 512, 'Moly', '1633', 'S', 'GII', 'Israel Díaz', 'Correcan', '2015-01-11 13:12:50', '2015-01-11 13:12:50', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 44, 513, 'Vali', 'A811', 'L', 'GII', 'Africa Cabañas', 'Correcan', '2015-01-11 13:35:52', '2015-01-11 13:35:52', 3, 2, 0, 0, 0, 48.93, '', 0),
(5, 26, 56, 85, 517, 'Nut', 'A-886', 'L', 'GII', 'Francisco Javier Jaen', 'Vallgorguina', '2015-01-11 13:36:04', '2015-01-11 13:36:04', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 10, 584, 'Ursula', 'A840', 'S', 'GII', 'Pablo Martínez', 'A-0', '2015-01-11 13:12:56', '2015-01-11 13:12:56', 0, 1, 0, 0, 0, 40.4, '', 0),
(5, 26, 56, 1, 585, 'Ari', 'A894', 'L', 'GII', 'Veronica Roda', 'A-0', '2015-01-11 13:35:43', '2015-01-11 13:35:43', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 93, 602, 'Sucre', 'A920', 'L', 'GII', 'Adrian Bajo', 'Vila-Real', '2015-01-11 13:39:01', '2015-01-11 13:39:01', 2, 0, 0, 0, 0, 33.11, '', 0),
(5, 26, 56, 97, 603, 'Killa', 'Pendiente', 'L', 'GII', 'Alberto Pérez', 'Xanastur', '2015-01-11 13:38:44', '2015-01-11 13:38:44', 0, 0, 0, 0, 0, 46.93, '', 0),
(5, 26, 56, 64, 607, 'Hela', 'A836', 'L', 'GII', 'Cesar Losada Mera', 'Eslón', '2015-01-11 13:37:16', '2015-01-11 13:37:16', 1, 0, 0, 0, 0, 31.83, '', 0),
(5, 26, 56, 66, 609, 'Lumbre', 'A932', 'L', 'GII', 'Arancha Ruipérez Moslares', 'Eslón', '2015-01-11 13:42:14', '2015-01-11 13:42:14', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 56, 26, 613, 'Quillo', 'A-904', 'M', 'GII', 'Rafael Arjona', 'Campo de Gibraltar', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 56, 82, 623, 'Nubia', 'A-309', 'L', 'GII', 'Juan José González', 'Pataplán', '2015-01-11 13:37:32', '2015-01-11 13:37:32', 2, 2, 0, 0, 0, 73.82, '', 0),
(5, 26, 56, 101, 626, 'Hera', '', 'L', 'GII', 'Jesús Fernández Crespo', 'Mi Perro 10', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 57, 13, 3, 'Hannibal Lecter XIII', 'A090', 'L', 'GIII', 'Tomás Pérez Ayuso', 'A. D. C. Pozuelo', '2015-01-11 09:22:04', '2015-01-11 09:22:04', 0, 0, 0, 0, 0, 43.55, '', 0),
(5, 26, 57, 95, 10, 'Lee', 'A084', 'L', 'GIII', 'Antonio Molina', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 57, 34, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2015-01-11 09:20:56', '2015-01-11 09:20:56', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 57, 69, 27, 'Deby', 'A147', 'L', 'GIII', 'Cesar Losada Mera', 'Eslón', '2015-01-11 09:16:44', '2015-01-11 09:16:44', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 57, 71, 31, 'Mc Coy', 'A322', 'L', 'GIII', 'Carmen Sotomayor', 'Eslón', '2015-01-11 09:19:18', '2015-01-11 09:19:18', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 57, 7, 34, 'Zoe', 'A289', 'L', 'GIII', 'Marta Sánchez', 'A-0', '2015-01-11 09:12:10', '2015-01-11 09:12:10', 2, 0, 0, 0, 0, 46.48, '', 0),
(5, 26, 57, 78, 57, 'Aby', 'A204', 'L', 'GIII', 'Roberto Reina Vega', 'La Princesa', '2015-01-11 09:16:45', '2015-01-11 09:16:45', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 57, 4, 68, 'Fito', 'A529', 'L', 'GIII', 'Luis Miguel Rodrigo', 'A-0', '2015-01-11 09:16:42', '2015-01-11 09:16:42', 1, 0, 0, 0, 0, 48.72, '', 0),
(5, 26, 57, 14, 78, 'Winner', 'A497', 'L', 'GIII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2015-01-11 09:22:56', '2015-01-11 09:22:56', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 57, 70, 85, 'Dylan', 'A461', 'L', 'GIII', 'Iván Sánchez García', 'Eslón', '2015-01-11 09:17:36', '2015-01-11 09:17:36', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 57, 6, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2015-01-11 09:16:44', '2015-01-11 09:16:44', 0, 0, 0, 0, 0, 48.62, '', 0),
(5, 26, 57, 92, 312, 'Nuca', 'A181', 'S', 'GIII', 'Iván Pardo García', 'Vallgorguina', '2015-01-11 09:05:08', '2015-01-11 09:05:08', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 57, 60, 314, 'Nana', 'A277', 'S', 'GIII', 'Sara Montila', 'Deporcan', '2015-01-11 09:06:58', '2015-01-11 09:06:58', 0, 1, 0, 0, 0, 56.33, '', 0),
(5, 26, 57, 72, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'Eslón', '2015-01-11 09:15:48', '2015-01-11 09:15:48', 2, 0, 0, 0, 0, 59.55, '', 0),
(5, 26, 57, 28, 614, 'Ben', 'A-928', 'S', 'GIII', 'Nina Causevic', 'Campo de Gibraltar', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 57, 27, 615, 'Winni', 'A-929', 'M', 'GIII', 'Nina Causevic', 'Campo de Gibraltar', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 58, 13, 3, 'Hannibal Lecter XIII', 'A090', 'L', 'GIII', 'Tomás Pérez Ayuso', 'A. D. C. Pozuelo', '2015-01-11 08:28:41', '2015-01-11 08:28:41', 0, 0, 0, 0, 0, 36.42, '', 0),
(5, 26, 58, 95, 10, 'Lee', 'A084', 'L', 'GIII', 'Antonio Molina', 'W.E.L.P.E.', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 58, 34, 25, 'Moss', 'A391', 'L', 'GIII', 'Roberto Iñigo', 'Cinco Huesos', '2015-01-11 08:29:52', '2015-01-11 08:29:52', 0, 0, 0, 0, 0, 36.88, '', 0),
(5, 26, 58, 69, 27, 'Deby', 'A147', 'L', 'GIII', 'Cesar Losada Mera', 'Eslón', '2015-01-11 08:29:33', '2015-01-11 08:29:33', 2, 1, 0, 0, 0, 43.77, '', 0),
(5, 26, 58, 71, 31, 'Mc Coy', 'A322', 'L', 'GIII', 'Carmen Sotomayor', 'Eslón', '2015-01-11 08:29:42', '2015-01-11 08:29:42', 1, 0, 0, 0, 0, 37.88, '', 0),
(5, 26, 58, 7, 34, 'Zoe', 'A289', 'L', 'GIII', 'Marta Sánchez', 'A-0', '2015-01-11 08:27:02', '2015-01-11 08:27:02', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 58, 78, 57, 'Aby', 'A204', 'L', 'GIII', 'Roberto Reina Vega', 'La Princesa', '2015-01-11 08:21:50', '2015-01-11 08:21:50', 1, 0, 0, 0, 0, 43.08, '', 0),
(5, 26, 58, 4, 68, 'Fito', 'A529', 'L', 'GIII', 'Luis Miguel Rodrigo', 'A-0', '2015-01-11 08:26:56', '2015-01-11 08:26:56', 0, 0, 0, 1, 0, 0, '', 0),
(5, 26, 58, 14, 78, 'Winner', 'A497', 'L', 'GIII', 'Ricardo Santolaya', 'A. D. C. Pozuelo', '2015-01-11 08:21:32', '2015-01-11 08:21:32', 0, 0, 0, 0, 0, 35.51, '', 0),
(5, 26, 58, 70, 85, 'Dylan', 'A461', 'L', 'GIII', 'Iván Sánchez García', 'Eslón', '2015-01-11 08:21:31', '2015-01-11 08:21:31', 0, 1, 0, 0, 0, 39.66, '', 0),
(5, 26, 58, 6, 220, 'Neo', 'A077', 'L', 'GIII', 'Antonio López', 'A-0', '2015-01-11 08:29:50', '2015-01-11 08:29:50', 2, 0, 0, 0, 0, 36.21, '', 0),
(5, 26, 58, 92, 312, 'Nuca', 'A181', 'S', 'GIII', 'Iván Pardo García', 'Vallgorguina', '2015-01-11 08:34:21', '2015-01-11 08:34:21', 1, 0, 0, 0, 0, 40.38, '', 0),
(5, 26, 58, 60, 314, 'Nana', 'A277', 'S', 'GIII', 'Sara Montila', 'Deporcan', '2015-01-11 08:33:32', '2015-01-11 08:33:32', 0, 0, 0, 0, 0, 39.95, '', 0),
(5, 26, 58, 72, 350, 'Dama', 'A641', 'M', 'GIII', 'Juan Antonio Martinez', 'Eslón', '2015-01-11 08:32:00', '2015-01-11 08:32:00', 0, 0, 0, 0, 0, 44.29, '', 0),
(5, 26, 58, 28, 614, 'Ben', 'A-928', 'S', 'GIII', 'Nina Causevic', 'Campo de Gibraltar', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1),
(5, 26, 58, 27, 615, 'Winni', 'A-929', 'M', 'GIII', 'Nina Causevic', 'Campo de Gibraltar', '2014-01-01 00:00:00', '2014-01-01 00:00:00', 0, 0, 0, 0, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `sesiones`;
CREATE TABLE IF NOT EXISTS `sesiones` (
`ID` int(4) NOT NULL,
  `Nombre` varchar(255) NOT NULL DEFAULT '-- Sin asignar --',
  `Comentario` varchar(255) DEFAULT NULL,
  `Operador` int(4) NOT NULL DEFAULT '1',
  `SessionKey` varchar(255) DEFAULT NULL,
  `Prueba` int(4) NOT NULL DEFAULT '0',
  `Jornada` int(4) NOT NULL DEFAULT '0',
  `Manga` int(4) NOT NULL DEFAULT '0',
  `Tanda` int(4) NOT NULL DEFAULT '0',
  `LiveStream` varchar(255) DEFAULT NULL,
  `LiveStream2` varchar(255) DEFAULT NULL,
  `LiveStream3` varchar(255) DEFAULT NULL,
  `LastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `sesiones`:
--   `Operador`
--       `usuarios` -> `ID`
--

--
-- Volcado de datos para la tabla `sesiones`
--

INSERT INTO `sesiones` (`ID`, `Nombre`, `Comentario`, `Operador`, `SessionKey`, `Prueba`, `Jornada`, `Manga`, `Tanda`, `LiveStream`, `LiveStream2`, `LiveStream3`, `LastModified`) VALUES
(1, '-- Sin asignar --', '', 4, 'HF4KDqPoSsWbAVIw', 2, 1, 31, 9, '/agility/videos/sample_video.mp4', NULL, NULL, '2015-01-05 20:35:47'),
(2, 'Ring 1', 'Mangas a realizar en el Ring de honor', 1, NULL, 0, 0, 0, 0, NULL, NULL, NULL, '2014-12-05 19:14:34'),
(3, 'Ring 2', 'Mangas a realizar en el segundo ring', 1, NULL, 0, 0, 0, 0, NULL, NULL, NULL, '2014-12-05 19:14:34'),
(4, 'Ring 3', 'Mangas a realizar en el tercer ring', 1, NULL, 0, 0, 0, 0, NULL, NULL, NULL, '2014-12-05 19:14:34'),
(5, 'Ring 4', 'Mangas a realizar en el cuarto ring', 1, NULL, 0, 0, 0, 0, NULL, NULL, NULL, '2014-12-05 19:14:34'),
(49, 'Console', 'operator - Operador de consola', 4, 'ZxQIACJijoT4s2Nf', 0, 0, 0, 0, NULL, NULL, NULL, '2015-01-06 10:51:47'),
(50, 'Console', 'admin - Administrador de la aplicacion', 1, 'RjvKoqO4pIGEl6aM', 0, 0, 0, 0, NULL, NULL, NULL, '2015-01-06 21:59:28'),
(60, 'Console', 'admin - Administrador de la aplicacion', 3, 'ZJgHvzqRpy2XfN0s', 0, 0, 0, 0, NULL, NULL, NULL, '2015-01-11 07:26:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tandas`
--
-- Creación: 08-01-2015 a las 18:38:46
--

DROP TABLE IF EXISTS `tandas`;
CREATE TABLE IF NOT EXISTS `tandas` (
`ID` int(4) NOT NULL,
  `Tipo` int(4) NOT NULL,
  `Prueba` int(4) NOT NULL DEFAULT '1',
  `Jornada` int(4) NOT NULL,
  `Sesion` int(4) NOT NULL DEFAULT '1',
  `Orden` int(4) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Horario` varchar(64) DEFAULT NULL,
  `Comentario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `tandas`:
--   `Prueba`
--       `pruebas` -> `ID`
--   `Jornada`
--       `jornadas` -> `ID`
--   `Sesion`
--       `sesiones` -> `ID`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_manga`
--
-- Creación: 08-01-2015 a las 18:38:46
--

DROP TABLE IF EXISTS `tipo_manga`;
CREATE TABLE IF NOT EXISTS `tipo_manga` (
`ID` int(4) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Grado` varchar(16) NOT NULL DEFAULT '-'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `tipo_manga`:
--   `Grado`
--       `grados_perro` -> `Grado`
--

--
-- Volcado de datos para la tabla `tipo_manga`
--

INSERT INTO `tipo_manga` (`ID`, `Descripcion`, `Grado`) VALUES
(1, 'Pre-Agility Manga 1', 'P.A.'),
(2, 'Pre-Agility Manga 2', 'P.A.'),
(3, 'Agility Grado I Manga 1', 'GI'),
(4, 'Agility Grado I Manga 2', 'GI'),
(5, 'Agility Grado II', 'GII'),
(6, 'Agility Grado III', 'GIII'),
(7, 'Agility Abierta (Open)', '-'),
(8, 'Agility Equipos (3 mejores)', '-'),
(9, 'Agility Equipos (Conjunta)', '-'),
(10, 'Jumping Grado II', 'GII'),
(11, 'Jumping Grado III', 'GIII'),
(12, 'Jumping Abierta (Open)', '-'),
(13, 'Jumping por Equipos (3 mejores)', '-'),
(14, 'Jumping por Equipos (Conjunta)', '-'),
(15, 'Ronda K.O.', '-'),
(16, 'Manga Especial', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Creación: 08-01-2015 a las 18:38:47
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
`ID` int(4) NOT NULL,
  `Login` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Gecos` varchar(255) NOT NULL DEFAULT '',
  `Phone` varchar(255) NOT NULL DEFAULT '',
  `Email` varchar(255) NOT NULL DEFAULT '',
  `Perms` int(4) NOT NULL DEFAULT '5'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Login`, `Password`, `Gecos`, `Phone`, `Email`, `Perms`) VALUES
(1, '-- Sin asignar --', '--LOCKED--', 'NO BORRAR: Usuario por defecto para sesiones anonimas', '', '', 5),
(2, 'root', 'JDJ5JDEwJHc2Lm50WFhsQUYuWDl2Zm9JbnNVb09TVEVwcllGaHBCQjFQYk12Yk81VzlJWDd0cTNPRnd5', 'Usuario Root', '', '', 0),
(3, 'admin', 'JDJ5JDEwJFcwa3B4YUxDVkJ0OVd0NFZVNUhzcXVBTE1yN0x2WWhBTFo4RHQ5TWZZQzgzZGRnMDA1VlVD', 'Administrador de la aplicacion', '', '', 1),
(4, 'operator', 'JDJ5JDEwJHMyclNoQUtsMlJ0UU5pRG9yUXF3QXUwbEVRdWpUT0daSXJGZmJLR3B4MEVHRzRiOFNYSjdt', 'Operador de consola', '', '', 2),
(5, 'assistant', 'JDJ5JDEwJHRLL09tT2xJZ1lRRlovNVhsLksxRC52aXo4L1UxNTMub1EwRDRoZ3pCZDcxRHRnSmo0LmE2', 'Asistente del juez (tablet)', '', '', 3),
(6, 'guest', '--NULL--', 'Usuario invitado (anonimo)', '', '', 4);

-- --------------------------------------------------------

--
-- Estructura para la vista `perroguiaclub`
--
DROP TABLE IF EXISTS `perroguiaclub`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `perroguiaclub` AS select `perros`.`ID` AS `ID`,`perros`.`Nombre` AS `Nombre`,`perros`.`Raza` AS `Raza`,`perros`.`Licencia` AS `Licencia`,`perros`.`LOE_RRC` AS `LOE_RRC`,`perros`.`Categoria` AS `Categoria`,`categorias_perro`.`Observaciones` AS `NombreCategoria`,`perros`.`Grado` AS `Grado`,`grados_perro`.`Comentarios` AS `NombreGrado`,`perros`.`Guia` AS `Guia`,`guias`.`Nombre` AS `NombreGuia`,`guias`.`Club` AS `Club`,`clubes`.`Nombre` AS `NombreClub`,`clubes`.`Logo` AS `LogoClub` from ((((`perros` join `guias`) join `clubes`) join `grados_perro`) join `categorias_perro`) where ((`perros`.`Guia` = `guias`.`ID`) and (`guias`.`Club` = `clubes`.`ID`) and (`perros`.`Categoria` = `categorias_perro`.`Categoria`) and (`perros`.`Grado` = `grados_perro`.`Grado`)) order by `clubes`.`Nombre`,`perros`.`Categoria`,`perros`.`Nombre`;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias_perro`
--
ALTER TABLE `categorias_perro`
 ADD PRIMARY KEY (`Categoria`);

--
-- Indices de la tabla `clubes`
--
ALTER TABLE `clubes`
 ADD PRIMARY KEY (`ID`), ADD KEY `Clubes_Nombre` (`Nombre`), ADD KEY `Clubes_Provincia` (`Provincia`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Equipos_PruebaNombre` (`Prueba`,`Nombre`), ADD KEY `Equipos_Prueba` (`Prueba`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
 ADD PRIMARY KEY (`ID`), ADD KEY `Eventos_Session` (`Session`);

--
-- Indices de la tabla `grados_perro`
--
ALTER TABLE `grados_perro`
 ADD PRIMARY KEY (`Grado`);

--
-- Indices de la tabla `guias`
--
ALTER TABLE `guias`
 ADD PRIMARY KEY (`ID`), ADD KEY `Guias_Nombre` (`Nombre`), ADD KEY `Guias_Club` (`Club`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Inscripciones_PruebaPerro` (`Prueba`,`Perro`), ADD KEY `Inscripciones_Perro` (`Perro`), ADD KEY `Inscripciones_Prueba` (`Prueba`), ADD KEY `Inscripciones_Equipo` (`Equipo`), ADD KEY `Inscripciones_Dorsal` (`Dorsal`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
 ADD PRIMARY KEY (`ID`), ADD KEY `Jornadas_Prueba` (`Prueba`);

--
-- Indices de la tabla `jueces`
--
ALTER TABLE `jueces`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Jueces_Nombre` (`Nombre`);

--
-- Indices de la tabla `mangas`
--
ALTER TABLE `mangas`
 ADD PRIMARY KEY (`ID`), ADD KEY `Mangas_Tipo` (`Tipo`), ADD KEY `Mangas_Grado` (`Grado`), ADD KEY `Mangas_Juez1` (`Juez1`), ADD KEY `Mangas_Juez2` (`Juez2`), ADD KEY `Mangas_Jornada` (`Jornada`);

--
-- Indices de la tabla `perros`
--
ALTER TABLE `perros`
 ADD PRIMARY KEY (`ID`), ADD KEY `Perros_GuiaNombre` (`Guia`), ADD KEY `Perros_Categoria` (`Categoria`), ADD KEY `Perros_Grado` (`Grado`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
 ADD PRIMARY KEY (`Provincia`), ADD UNIQUE KEY `Provincias_Codigo` (`Codigo`);

--
-- Indices de la tabla `pruebas`
--
ALTER TABLE `pruebas`
 ADD PRIMARY KEY (`ID`), ADD KEY `Pruebas_Club` (`Club`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
 ADD PRIMARY KEY (`Manga`,`Perro`), ADD KEY `Resultados_Perro` (`Perro`), ADD KEY `Resultados_Manga` (`Manga`), ADD KEY `Resultados_Dorsal` (`Dorsal`), ADD KEY `Resultados_Jornada` (`Jornada`), ADD KEY `Resultados_Prueba` (`Prueba`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
 ADD PRIMARY KEY (`ID`), ADD KEY `Sesiones_Operador` (`Operador`);

--
-- Indices de la tabla `tandas`
--
ALTER TABLE `tandas`
 ADD PRIMARY KEY (`ID`), ADD KEY `Tandas_Prueba` (`Prueba`), ADD KEY `Tandas_Jornada` (`Jornada`), ADD KEY `Tandas_Sesion` (`Sesion`);

--
-- Indices de la tabla `tipo_manga`
--
ALTER TABLE `tipo_manga`
 ADD PRIMARY KEY (`ID`), ADD KEY `Descripcion` (`Descripcion`), ADD KEY `Grado` (`Grado`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Login` (`Login`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clubes`
--
ALTER TABLE `clubes`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT de la tabla `guias`
--
ALTER TABLE `guias`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=527;
--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT de la tabla `jornadas`
--
ALTER TABLE `jornadas`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `jueces`
--
ALTER TABLE `jueces`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `mangas`
--
ALTER TABLE `mangas`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT de la tabla `perros`
--
ALTER TABLE `perros`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=633;
--
-- AUTO_INCREMENT de la tabla `pruebas`
--
ALTER TABLE `pruebas`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `tandas`
--
ALTER TABLE `tandas`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_manga`
--
ALTER TABLE `tipo_manga`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clubes`
--
ALTER TABLE `clubes`
ADD CONSTRAINT `Clubes_ibfk_1` FOREIGN KEY (`Provincia`) REFERENCES `provincias` (`Provincia`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
ADD CONSTRAINT `Equipos_ibfk_1` FOREIGN KEY (`Prueba`) REFERENCES `pruebas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
ADD CONSTRAINT `Eventos_ibfk_1` FOREIGN KEY (`Session`) REFERENCES `sesiones` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `guias`
--
ALTER TABLE `guias`
ADD CONSTRAINT `Guias_ibfk_1` FOREIGN KEY (`Club`) REFERENCES `clubes` (`ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
ADD CONSTRAINT `Inscripciones_ibfk_1` FOREIGN KEY (`Perro`) REFERENCES `perros` (`ID`),
ADD CONSTRAINT `Inscripciones_ibfk_2` FOREIGN KEY (`Prueba`) REFERENCES `pruebas` (`ID`) ON UPDATE CASCADE,
ADD CONSTRAINT `Inscripciones_ibfk_3` FOREIGN KEY (`Equipo`) REFERENCES `equipos` (`ID`);

--
-- Filtros para la tabla `jornadas`
--
ALTER TABLE `jornadas`
ADD CONSTRAINT `Jornadas_ibfk_1` FOREIGN KEY (`Prueba`) REFERENCES `pruebas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mangas`
--
ALTER TABLE `mangas`
ADD CONSTRAINT `Mangas_ibfk_1` FOREIGN KEY (`Tipo`) REFERENCES `tipo_manga` (`ID`) ON UPDATE CASCADE,
ADD CONSTRAINT `Mangas_ibfk_2` FOREIGN KEY (`Grado`) REFERENCES `grados_perro` (`Grado`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Mangas_ibfk_3` FOREIGN KEY (`Juez1`) REFERENCES `jueces` (`ID`) ON UPDATE CASCADE,
ADD CONSTRAINT `Mangas_ibfk_4` FOREIGN KEY (`Juez2`) REFERENCES `jueces` (`ID`) ON UPDATE CASCADE,
ADD CONSTRAINT `Mangas_ibfk_5` FOREIGN KEY (`Jornada`) REFERENCES `jornadas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perros`
--
ALTER TABLE `perros`
ADD CONSTRAINT `Perros_ibfk_1` FOREIGN KEY (`Categoria`) REFERENCES `categorias_perro` (`Categoria`) ON UPDATE CASCADE,
ADD CONSTRAINT `Perros_ibfk_2` FOREIGN KEY (`Grado`) REFERENCES `grados_perro` (`Grado`) ON UPDATE CASCADE,
ADD CONSTRAINT `Perros_ibfk_3` FOREIGN KEY (`Guia`) REFERENCES `guias` (`ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pruebas`
--
ALTER TABLE `pruebas`
ADD CONSTRAINT `Pruebas_ibfk_1` FOREIGN KEY (`Club`) REFERENCES `clubes` (`ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
ADD CONSTRAINT `Resultados_ibfk_1` FOREIGN KEY (`Perro`) REFERENCES `perros` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Resultados_ibfk_2` FOREIGN KEY (`Manga`) REFERENCES `mangas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Resultados_ibfk_3` FOREIGN KEY (`Prueba`) REFERENCES `pruebas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Resultados_ibfk_4` FOREIGN KEY (`Jornada`) REFERENCES `jornadas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sesiones`
--
ALTER TABLE `sesiones`
ADD CONSTRAINT `Sesiones_ibfk_1` FOREIGN KEY (`Operador`) REFERENCES `usuarios` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tandas`
--
ALTER TABLE `tandas`
ADD CONSTRAINT `Tandas_ibfk_1` FOREIGN KEY (`Prueba`) REFERENCES `pruebas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Tandas_ibfk_2` FOREIGN KEY (`Jornada`) REFERENCES `jornadas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Tandas_ibfk_3` FOREIGN KEY (`Sesion`) REFERENCES `sesiones` (`ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipo_manga`
--
ALTER TABLE `tipo_manga`
ADD CONSTRAINT `Tipo_Manga_ibfk_1` FOREIGN KEY (`Grado`) REFERENCES `grados_perro` (`Grado`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
