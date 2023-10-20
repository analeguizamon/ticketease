-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2023 a las 07:01:11
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id21426390_ticketease`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `articulo` varchar(255) NOT NULL,
  `precio` int(10) UNSIGNED NOT NULL,
  `categoria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `articulo`, `precio`, `categoria`) VALUES
(1, 'hamburguesa simple', 1000, 1),
(2, 'hamburguesa completa', 1500, 1),
(3, 'pancho', 300, 1),
(4, 'empanada', 250, 1),
(5, 'coca-cola 2l', 1200, 2),
(6, 'manaos 2l', 600, 2),
(7, 'pepsi 2l', 800, 2),
(8, 'coca-cola vaso', 250, 2),
(9, 'manaos vaso', 150, 2),
(10, 'pepsi vaso', 200, 2),
(11, 'agua grande', 450, 2),
(12, 'agua chica', 250, 2),
(13, 'minecraft', 400, 3),
(14, 'dragon ball bt3', 400, 3),
(15, 'counter-strike 1.6', 400, 3),
(16, 'mortal kombat', 400, 3),
(17, 'pes 2009', 400, 3),
(18, 'ping-pong', 300, 4),
(19, 'truco', 300, 4),
(20, 'uno', 300, 4),
(21, 'ajedrez', 300, 4),
(22, 'minecraft', 1200, 6),
(23, 'dragon ball bt3', 1200, 6),
(24, 'counter-strike 1.6', 1200, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'comidas'),
(2, 'bebidas'),
(3, 'juegos'),
(4, 'juegos de mesa'),
(6, 'torneos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(10) UNSIGNED NOT NULL,
  `tarjeta` int(4) UNSIGNED ZEROFILL NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros-articulos`
--

CREATE TABLE `registros-articulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idRegistro` int(10) UNSIGNED NOT NULL,
  `idArticulo` int(10) UNSIGNED NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

CREATE TABLE `tarjetas` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `pin` int(3) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarjetas`
--

INSERT INTO `tarjetas` (`id`, `pin`) VALUES
(0001, 446),
(0002, 968),
(0003, 537),
(0004, 918),
(0005, 901),
(0006, 938),
(0007, 023),
(0008, 812),
(0009, 247),
(0010, 158),
(0011, 576),
(0012, 173),
(0013, 400),
(0014, 113),
(0015, 795),
(0016, 856),
(0017, 785),
(0018, 493),
(0019, 910),
(0020, 661),
(0021, 288),
(0022, 358),
(0023, 100),
(0024, 852),
(0025, 637),
(0026, 954),
(0027, 106),
(0028, 010),
(0029, 240),
(0030, 001),
(0031, 477),
(0032, 578),
(0033, 460),
(0034, 118),
(0035, 339),
(0036, 483),
(0037, 388),
(0038, 254),
(0039, 090),
(0040, 455),
(0041, 974),
(0042, 873),
(0043, 985),
(0044, 079),
(0045, 157),
(0046, 607),
(0047, 852),
(0048, 834),
(0049, 669),
(0050, 913),
(0051, 031),
(0052, 151),
(0053, 843),
(0054, 215),
(0055, 141),
(0056, 222),
(0057, 667),
(0058, 706),
(0059, 297),
(0060, 355),
(0061, 683),
(0062, 463),
(0063, 275),
(0064, 336),
(0065, 281),
(0066, 407),
(0067, 460),
(0068, 447),
(0069, 765),
(0070, 326),
(0071, 364),
(0072, 508),
(0073, 348),
(0074, 683),
(0075, 128),
(0076, 266),
(0077, 327),
(0078, 631),
(0079, 698),
(0080, 675),
(0081, 541),
(0082, 986),
(0083, 501),
(0084, 970),
(0085, 350),
(0086, 803),
(0087, 376),
(0088, 203),
(0089, 985),
(0090, 248),
(0091, 484),
(0092, 415),
(0093, 513),
(0094, 633),
(0095, 577),
(0096, 553),
(0097, 360),
(0098, 130),
(0099, 545),
(0100, 661),
(0101, 714),
(0102, 489),
(0103, 486),
(0104, 428),
(0105, 436),
(0106, 089),
(0107, 345),
(0108, 745),
(0109, 383),
(0110, 922),
(0111, 182),
(0112, 979),
(0113, 777),
(0114, 795),
(0115, 723),
(0116, 838),
(0117, 702),
(0118, 145),
(0119, 839),
(0120, 780),
(0121, 461),
(0122, 187),
(0123, 053),
(0124, 097),
(0125, 959),
(0126, 985),
(0127, 002),
(0128, 314),
(0129, 417),
(0130, 103),
(0131, 336),
(0132, 328),
(0133, 211),
(0134, 583),
(0135, 562),
(0136, 360),
(0137, 778),
(0138, 478),
(0139, 567),
(0140, 961),
(0141, 451),
(0142, 689),
(0143, 681),
(0144, 755),
(0145, 824),
(0146, 884),
(0147, 152),
(0148, 490),
(0149, 321),
(0150, 340),
(0151, 967),
(0152, 614),
(0153, 498),
(0154, 391),
(0155, 795),
(0156, 466),
(0157, 271),
(0158, 617),
(0159, 298),
(0160, 539),
(0161, 655),
(0162, 061),
(0163, 631),
(0164, 906),
(0165, 321),
(0166, 241),
(0167, 234),
(0168, 794),
(0169, 370),
(0170, 044),
(0171, 148),
(0172, 335),
(0173, 464),
(0174, 981),
(0175, 939),
(0176, 716),
(0177, 724),
(0178, 751),
(0179, 424),
(0180, 984),
(0181, 690),
(0182, 890),
(0183, 400),
(0184, 757),
(0185, 358),
(0186, 944),
(0187, 058),
(0188, 404),
(0189, 600),
(0190, 163),
(0191, 979),
(0192, 359),
(0193, 781),
(0194, 104),
(0195, 506),
(0196, 007),
(0197, 346),
(0198, 424),
(0199, 735),
(0200, 102),
(0201, 897),
(0202, 361),
(0203, 571),
(0204, 601),
(0205, 141),
(0206, 688),
(0207, 624),
(0208, 149),
(0209, 274),
(0210, 553),
(0211, 620),
(0212, 240),
(0213, 655),
(0214, 052),
(0215, 476),
(0216, 248),
(0217, 167),
(0218, 278),
(0219, 581),
(0220, 401),
(0221, 564),
(0222, 461),
(0223, 200),
(0224, 643),
(0225, 432),
(0226, 855),
(0227, 996),
(0228, 428),
(0229, 505),
(0230, 847),
(0231, 989),
(0232, 608),
(0233, 384),
(0234, 428),
(0235, 360),
(0236, 640),
(0237, 502),
(0238, 101),
(0239, 352),
(0240, 007),
(0241, 128),
(0242, 639),
(0243, 803),
(0244, 023),
(0245, 813),
(0246, 419),
(0247, 745),
(0248, 348),
(0249, 874),
(0250, 723),
(0251, 220),
(0252, 559),
(0253, 760),
(0254, 519),
(0255, 091),
(0256, 890),
(0257, 916),
(0258, 787),
(0259, 392),
(0260, 581),
(0261, 177),
(0262, 807),
(0263, 318),
(0264, 190),
(0265, 742),
(0266, 296),
(0267, 303),
(0268, 342),
(0269, 839),
(0270, 709),
(0271, 832),
(0272, 938),
(0273, 561),
(0274, 053),
(0275, 675),
(0276, 839),
(0277, 441),
(0278, 415),
(0279, 592),
(0280, 313),
(0281, 897),
(0282, 397),
(0283, 055),
(0284, 518),
(0285, 429),
(0286, 391),
(0287, 019),
(0288, 601),
(0289, 556),
(0290, 023),
(0291, 911),
(0292, 372),
(0293, 325),
(0294, 085),
(0295, 458),
(0296, 859),
(0297, 135),
(0298, 703),
(0299, 076),
(0300, 604),
(0301, 278),
(0302, 577),
(0303, 028),
(0304, 401),
(0305, 479),
(0306, 282),
(0307, 448),
(0308, 393),
(0309, 722),
(0310, 100),
(0311, 734),
(0312, 706),
(0313, 506),
(0314, 162),
(0315, 742),
(0316, 808),
(0317, 905),
(0318, 943),
(0319, 144),
(0320, 807),
(0321, 991),
(0322, 390),
(0323, 582),
(0324, 867),
(0325, 018),
(0326, 322),
(0327, 711),
(0328, 623),
(0329, 338),
(0330, 602),
(0331, 711),
(0332, 166),
(0333, 159),
(0334, 319),
(0335, 181),
(0336, 265),
(0337, 060),
(0338, 051),
(0339, 853),
(0340, 297),
(0341, 622),
(0342, 725),
(0343, 260),
(0344, 861),
(0345, 988),
(0346, 514),
(0347, 152),
(0348, 283),
(0349, 847),
(0350, 253),
(0351, 268),
(0352, 761),
(0353, 679),
(0354, 438),
(0355, 157),
(0356, 145),
(0357, 622),
(0358, 156),
(0359, 425),
(0360, 786),
(0361, 758),
(0362, 590),
(0363, 250),
(0364, 883),
(0365, 555),
(0366, 839),
(0367, 658),
(0368, 162),
(0369, 058),
(0370, 765),
(0371, 022),
(0372, 686),
(0373, 478),
(0374, 309),
(0375, 028),
(0376, 367),
(0377, 463),
(0378, 594),
(0379, 102),
(0380, 198),
(0381, 096),
(0382, 023),
(0383, 482),
(0384, 263),
(0385, 676),
(0386, 653),
(0387, 168),
(0388, 531),
(0389, 073),
(0390, 931),
(0391, 733),
(0392, 815),
(0393, 382),
(0394, 017),
(0395, 984),
(0396, 824),
(0397, 559),
(0398, 210),
(0399, 738),
(0400, 683),
(0401, 014),
(0402, 906),
(0403, 128),
(0404, 313),
(0405, 817),
(0406, 815),
(0407, 283),
(0408, 665),
(0409, 062),
(0410, 447),
(0411, 479),
(0412, 997),
(0413, 946),
(0414, 452),
(0415, 111),
(0416, 582),
(0417, 876),
(0418, 756),
(0419, 235),
(0420, 771),
(0421, 385),
(0422, 183),
(0423, 541),
(0424, 157),
(0425, 810),
(0426, 776),
(0427, 444),
(0428, 091),
(0429, 210),
(0430, 936),
(0431, 798),
(0432, 133),
(0433, 213),
(0434, 381),
(0435, 892),
(0436, 094),
(0437, 936),
(0438, 984),
(0439, 482),
(0440, 904),
(0441, 626),
(0442, 707),
(0443, 915),
(0444, 565),
(0445, 165),
(0446, 481),
(0447, 165),
(0448, 941),
(0449, 698),
(0450, 045),
(0451, 424),
(0452, 673),
(0453, 799),
(0454, 911),
(0455, 634),
(0456, 947),
(0457, 835),
(0458, 470),
(0459, 214),
(0460, 768),
(0461, 881),
(0462, 213),
(0463, 065),
(0464, 841),
(0465, 498),
(0466, 591),
(0467, 938),
(0468, 057),
(0469, 559),
(0470, 891),
(0471, 975),
(0472, 412),
(0473, 969),
(0474, 438),
(0475, 002),
(0476, 049),
(0477, 992),
(0478, 318),
(0479, 217),
(0480, 615),
(0481, 714),
(0482, 957),
(0483, 468),
(0484, 364),
(0485, 487),
(0486, 495),
(0487, 751),
(0488, 692),
(0489, 393),
(0490, 924),
(0491, 635),
(0492, 874),
(0493, 689),
(0494, 304),
(0495, 020),
(0496, 248),
(0497, 749),
(0498, 600),
(0499, 174),
(0500, 570);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categoria` (`categoria`) USING BTREE;

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tarjeta` (`tarjeta`);

--
-- Indices de la tabla `registros-articulos`
--
ALTER TABLE `registros-articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idRegistro` (`idRegistro`),
  ADD KEY `idArticulo` (`idArticulo`);

--
-- Indices de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros-articulos`
--
ALTER TABLE `registros-articulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  MODIFY `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_ibfk_1` FOREIGN KEY (`tarjeta`) REFERENCES `tarjetas` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `registros-articulos`
--
ALTER TABLE `registros-articulos`
  ADD CONSTRAINT `registros-articulos_ibfk_1` FOREIGN KEY (`idRegistro`) REFERENCES `registros` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registros-articulos_ibfk_2` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
