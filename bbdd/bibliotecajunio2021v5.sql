-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-06-2021 a las 11:04:47
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_genero` (IN `v_idLibro` INT, IN `v_idGenero` INT)  BEGIN
	INSERT INTO libro_generos(id_libro, id_genero) VALUES(v_idLibro, v_idGenero);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_genero_libro` ()  BEGIN
DECLARE v_idLibro int(11) DEFAULT 225;
DECLARE v_idGenero int(11) DEFAULT 13;
	
    REPEAT
    	INSERT INTO libro_generos(id_libro, id_genero) VALUES (v_idLibro, v_idGenero);
        SET v_idLibro = v_idLibro+1;
    UNTIL v_idLibro >237
    END REPEAT;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `bio` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `dibujante` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `nombre`, `apellidos`, `alias`, `bio`, `foto`, `fecha`, `dibujante`) VALUES
(21, 'Jack', 'London', 'Jack London', '<span>Jack London</span>(1876-1916), apodo de John Griffith Chaney, su nombre verdadero, fue un novelista y cuentista estadounidense de obra muy popular en la que figuran clásicos como La llamada de la selva (1903), que llevó a su culminación la aventura romántica y la narración realista de historias en las que el ser humano se enfrenta dramáticamente a su supervivencia. Algunos de sus títulos han alcanzado difusión universal.\r\n\r\nEn 1897 London se embarcó hacia Alaska en busca de oro, pero tras múltiples aventuras regresó enfermo y fracasado, de modo que durante la convalecencia decidió dedicarse a la literatura. Un voluntarioso período de formación intelectual incluyó heterodoxas lecturas (Kipling, Spencer, Darwin, Stevenson, Malthus, Marx, Poe, y, sobre todo, la filosofía de Nietzsche) que le convertirían en una mezcla de socialista y fascista ingenuo, discípulo del evolucionismo y al servicio de un espíritu esencialmente aventurero.\r\n\r\nEn el centro de su cosmovisión estaba el principio de la lucha por la vida y de la supervivencia de los más fuertes, unido a las doctrinas del superhombre. Esa confusa amalgama, en alguien como él que no era precisamente un intelectual, le llevó incluso a defender la preeminencia de la \"raza anglosajona\" sobre todas las demás.\r\n\r\nSu obra fundamental se desarrolla en la frontera de Alaska, donde aún era posible vivir heroicamente bajo las férreas leyes de la naturaleza y del propio hombre librado a sus instintos casi salvajes. En uno de sus mejores relatos, El silencio blanco, dice el narrador: \"El espantoso juego de la selección natural se desarrolló con toda la crueldad del ambiente primitivo\". Otra parte de su literatura tiene sin embargo como escenario las cálidas islas de los Mares del Sur.\r\n', 'aut-2.jpeg', '2021-04-21 13:11:53', 0),
(22, 'Don', 'Winslow', 'Don Winslow', '<span>Don Winslow</span> nació en Nueva York pero creció en Perryville, Rhode Island. Don ha hecho muchas cosas antes de ser novelista:\r\n                         actor, director de cine, guía de safari… y ha trabajado como investigador privado en Londres, Nueva York y casi todo el \r\n                         territorio estadounidense. Asimismo, ha sido consultor para bufetes de abogados y compañías de seguros durante más de quince \r\n                         años. Su primera novela, <i>A Cool Breeze On The Underground</i>, fue nominada al prestigioso Premio Edgar, y un libro posterior, \r\n                         <i>California Fire and Life</i>, recibió el Premio Shamus. <i>Muerte y vida de Bobby Z </i>fue llevada al cine en 2007, protagonizada por \r\n                         Paul Walker y Laurence Fishburne. <i>El invierno de Frankie Machine</i>, cuyos derechos cinematográficos adquirió Robert De Niro, \r\n                         <i>Salvajes</i>, que llevó a la gran pantalla el oscarizado Oliver Stone, y <i>El Club del Amanecer</i>, la primera novela en la descubrimos \r\n                         al Club del Amanecer, obtuvieron un enorme éxito de ventas y críticas. Estas tres últimas han sido publicadas por Ediciones \r\n                         Martínez Roca. Vive con su esposa Jean y su hijo Thomas en California.', 'aut-4.jpeg', '2021-04-21 13:13:48', 0),
(23, 'John Ronald', 'Reuel Tolkien', 'J.R.R.Tolkien', '<span>John Ronald Reuel Tolkien</span> nació en Bloemfontein (Sudáfrica) el 3 de enero de 1892, y murió en Bournemouth (Inglaterra) el 2 de septiembre de 1973. Fue \r\n                        un escritor,\r\n                         poeta, filólogo y profesor universitario británico, conocido principalmente por ser el autor de las novelas clásicas de la alta fantasía <i>El hobbit</i> y <i>El Señor de\r\n                          los Anillos</i>.</p>\r\n\r\n                        <p>De 1925 a 1945, <span>Tolkien</span> fue profesor de anglosajón, ocupando la cátedra Rawlinson y Bosworth en la Universidad de Oxford y, de 1945 a 1959, profesor de \r\n                            lengua y \r\n                            literatura inglesa en Merton. Era amigo cercano del también escritor C. S. Lewis y ambos eran miembros de un informal grupo de debate literario conocido como \r\n                            los Inklings. <span>Tolkien</span> fue nombrado Comendador de la Orden del Imperio Británico por la reina Isabel II el 28 de marzo de 1972.\r\n                        </p>\r\n                        <p>\r\n                            El gran éxito de <i>El hobbit</i> y <i>El Señor de los Anillos</i> cuando se publicaron en Estados Unidos condujo directamente al resurgimiento popular del género. Esto ha \r\n                            causado que <span>Tolkien</span> sea identificado popularmente como «el padre» de la literatura moderna de fantasía, o más concretamente, de la alta fantasía.', 'aut-5.jpeg', '2021-04-21 13:16:12', 0),
(24, 'Isaac', 'Asimov', 'Isaac Asimov', '<span>Isaac Asimov</span>, fue un escritor\r\n                         y bioquímico ruso, nacionalizado estadounidense, conocido por ser un exitoso y excepcionalmente prolífico autor de obras de ciencia ficción, historia y divulgación \r\n                         científica.</p>\r\n\r\n                        <p>La obra más famosa de Asimov es la <i>Saga de la Fundación</i>, también conocida como <i>Ciclo de Trántor</i>, que forma parte de la serie del Imperio Galáctico y \r\n                            que más tarde combinó con su otra gran serie sobre los robots. También escribió obras de misterio y fantasía, así como una gran cantidad de textos de no ficción.\r\n                             En total, firmó más de 500 volúmenes y unas 9000 cartas o postales. Sus trabajos han sido publicados en 9 de las 10 categorías del Sistema Dewey de clasificación.\r\n                            <span>Asimov</span>, junto con Robert A. Heinlein y Arthur C. Clarke, fue considerado en vida como uno de los «tres grandes» escritores de ciencia ficción.', 'aut-6.jpeg', '2021-04-21 13:16:42', 0),
(26, 'Dolores', 'Redondo', 'Dolores Redondo', '<span>Dolores Redondo Meira</span> (Donostia-San Sebastián, España, 1969) empezó a estudiar la carrera de Derecho en la Universidad de Deusto, aunque no lo acabó. Estudió Restauración en San Sebastián y trabajó en varios restaurantes y tuvo uno propio, antes de dedicarse profesionalmente a la literatura. Reside en la localidad de la Ribera Navarra de Cintruénigo desde el año 2006.\r\n\r\nComenzó en la literatura escribiendo relatos cortos y cuentos infantiles. En 2009 publicó su primera novela, Los privilegios del ángel y en enero de 2013 publicó El guardián invisible, primer volumen de la Trilogía del Baztán, seguido en noviembre del mismo año por la segunda parte titulada Legado en los huesos, y terminada en noviembre de 2014 con Ofrenda a la tormenta.\r\n\r\nEl productor alemán Peter Nadermann, responsable de la películas de la Saga Millennium de Stieg Larsson, adquirió los derechos para su adaptación al cine casi inmediatamente después de publicarse la primera novela, y en 2017, se estrenará la película El guardián invisible, basada en la primera de las novelas de la trilogía, dirigida por Fernando González Molina.\r\n\r\nEs ganadora del Premio Planeta 2016 por el manuscrito de Todo esto te daré, presentado a concurso bajo el seudónimo de Jim Hawkins y bajo el título falso de Sol de Tebas.', 'dolores.jpg', '2021-04-23 22:18:09', 0),
(27, 'Robert Louis', 'Stevenson', 'Robert Louis Stevenson', '<span>Robert Louis Balfour Stevenson</span> (Edimburgo, Escocia, 13 de noviembre de 1850-Vailima, cerca de Apia, Samoa, 3 de diciembre de 1894) también conocido como Robert L. Stevenson o R. L. Stevenson fue un novelista, cuentista, poeta y ensayista británico. Su legado es una vasta obra que incluye crónicas de viaje, novelas de aventuras e históricas, así como lírica y ensayos. Se lo conoce principalmente por ser el autor de algunas de las historias fantásticas y de aventuras más clásicas de la literatura como La isla del tesoro, la novela de aventuras Secuestrado, la novela histórica La flecha negra y la popular novela de horror El extraño caso del doctor Jekyll y el señor Hyde, dedicada al tema de los fenómenos de la personalidad escindida y que puede ser clasificada como novela psicológica de horror. Varias de sus novelas y cuentos continúan siendo populares y algunos de estos han sido adaptados más de una vez al cine y a la televisión, principalmente del siglo XX. Fue importante también su obra ensayística, breve pero decisiva en lo que se refiere a la estructura de la moderna novela de peripecias. Fue muy apreciado en su tiempo y siguió siéndolo después de su muerte. Tuvo influencia sobre autores como Joseph Conrad, Graham Greene, G. K. Chesterton, H. G. Wells, Adolfo Bioy Casares y Jorge Luis Borges.', 'Robert_Louis_Stevenson_by_Henry_Walter_Barnett.jpeg', '2021-04-29 09:32:21', 0),
(28, 'Daniel', 'Defoe', 'Defoe', '<span>Daniel Defoe</span>, nació alrededor de 1660, en las cercanías de Londres (en St. Giles Cripplegate o en Stoke Newington) y falleció el 24 de abril de 1731. Defoe es importante por ser uno de los primeros cultivadores de la novela, género literario que ayudó a popularizar en Inglaterra y que le valió el título de \"Padre\" de todos los novelistas ingleses. Escribió más de 500 libros, panfletos y opúsculos.</p>\r\n\r\n<p>La primera y más famosa novela de Defoe, Vida y extraordinarias y portentosas aventuras de Robinsón Crusoe de York, navegante, se publicó en 1719, cuando su autor contaba ya casi 60 años. Este relato ficticio sobre un náufrago se basaba en las aventuras de un marino, Alexander Selkirk, que había sido abandonado en una isla del archipiélago Juan Fernández, frente a las costas de Chile. Esta novela, llena de detalles sobre las ingeniosas ideas de Robinson para sobrellevar los rigores de la isla, se ha convertido en un clásico de la literatura infantil.</p>\r\n\r\n<p>Defoe siguió escribiendo novelas: Memorias de un caballero (1720), Vida, aventuras y piratería del célebre capitán Singleton (1720) y Fortunas y adversidades de la famosa Moll Flanders (1722), las aventuras de una prostituta londinense que está considerada como una de las grandes novelas inglesas. En esta última obra Defoe mostró su conocimiento de la naturaleza humana y su interés por los motivos que conducen a determinados comportamientos. También reflejó su preocupación por los pobres.', 'daniel-defoe-orig.jpeg', '2021-04-29 09:50:08', 0),
(29, 'Mark', 'Twain', 'Mark Twain', '<span>Mark Twain</span> Samuel Langhorne Clemens, conocido por el seudónimo de Mark Twain (Florida, Misuri, 30 de noviembre de 1835 – Redding, Connecticut, 21 de abril de 1910), fue un popular escritor, orador y humorista estadounidense. Escribió obras de gran éxito como El príncipe y el mendigo o Un yanqui en la corte del Rey Arturo, pero es conocido sobre todo por su novela Las aventuras de Tom Sawyer y su secuela Las aventuras de Huckleberry Finn.</p>\r\n\r\n<p>Twain creció en Hannibal (Misuri), lugar que utilizaría como escenario para las aventuras de Tom Sawyer y Huckleberry Finn. Trabajó como aprendiz de un impresor y como cajista, y participó en la redacción de artículos para el periódico de su hermano mayor Orion. Después de trabajar como impresor en varias ciudades, se hizo piloto navegante en el río Misisipi, trabajó con poco éxito en la minería del oro, y retornó al periodismo. Como reportero, escribió una historia humorística, La célebre rana saltarina del condado de Calaveras (1865), que se hizo muy popular y atrajo la atención hacia su persona a escala nacional, y sus libros de viajes también fueron bien acogidos. Twain había encontrado su vocación.', 'mark-twain.jpeg', '2021-04-29 09:52:58', 0),
(30, 'Jules', 'Verne', 'Julio Verne', '<span>Julio Verne</span>. Escritor francés, conocido en español como Julio Verne, nació en Nantes el 8 de febrero de 1828, llegando a ser uno de los grandes autores de novela del siglo XIX. Más adelante se dedicó también a escribir libretos de óperas y obras de teatro.\r\nNacido en una familia adinerada, Verne disfrutó de una buena educación y ya de joven comenzó a escribir narraciones y relatos, sobre todo de viajes y aventuras. Licenciado en Derecho y establecido en París, Verne se dedicó a la literatura pese a no contar con apoyo económico alguno, lo que minó gravemente su salud.\r\nVerne era un auténtico adicto al trabajo y pasaba días y días escribiendo y revisando textos. Esto, unido al apoyo de su editor Hetzel, hizo que el éxito y las ventas de sus novelas fueran en continuo aumento.</p>\r\n<p>Pasaba días enteros en las bibliotecas de París estudiando geología, ingeniería y astronomía, conocimientos con los que documentaba sus fantásticas aventuras y predijo con asombrosa exactitud muchos de los logros científicos del siglo XX. Habló de cohetes espaciales, submarinos, helicópteros, aire acondicionado, misiles dirigidos e imágenes en movimiento, mucho antes de que aparecieran estos inventos. Esa capacidad de anticipación tecnológica y social le ha llevado a ser considerado como uno de los padres del género de la ciencia-ficción.\r\nSus novelas han sido publicadas en todo el mundo, siendo uno de los autores más traducidos de la historia. Títulos tan famosos como De la tierra a la luna (1865), Viaje al centro de la tierra (1864), 20.000 leguas de viaje submarino (1870), Miguel Strogoff, Escuela de robinsones… hacen de Verne un clásico atemporal de la novela de aventuras, con muchas de sus obras adaptadas al cine y la televisión.</p>\r\n<p>A partir de 1850 comenzó a publicar y trabajar en el teatro gracias a la ayuda de Alejandro Dumas. Sin embargo, es con su viaje de 1859 a Escocia cuando Verne inicia un nuevo camino gracias a su serie de los Viajes extraordinarios, de los que destaca, además de los ya citados, Cinco semanas en globo (1869) o La vuelta al mundo en 80 días.', 'verne.jpeg', '2021-04-29 09:55:17', 0),
(31, 'Jonathan', 'Swift', 'Swift', '<span>Jonathan Swift</span>. Escritor político y satírico anglo-irlandés, considerado uno de los maestros de la prosa en inglés y de los más apasionados satirizadores de la locura y la arrogancia humanas. Sus numerosos escritos políticos, textos en prosa, cartas y poemas tienen como característica común el uso de un lenguaje efectivo y económico.</p>\r\n\r\n<p>Nacido en Dublín el 30 de noviembre de 1667, estudió en el Trinity College de dicha ciudad. Obtuvo un empleo en Inglaterra como secretario del diplomático y escritor William Temple, pariente lejano de su madre. Las relaciones con su patrón no fueron especialmente cordiales y, en 1694, el joven Jonathan regresó a Irlanda, donde se ordenó sacerdote. Tras la reconciliación con Temple, volvió a su servicio en 1696. Supervisó la educación de Esther Johnson, hija de la recién enviudada hermana de Temple, y permaneció con el caballero hasta su muerte, en 1699. Durante ese tiempo, Swift, aunque tuvo frecuentes discusiones con su patrón, dispuso de gran cantidad de tiempo para la lectura y la escritura.</p>\r\n<p>La obra maestra de Swift, Viajes a varios lugares remotos del planeta, titulada popularmente Los viajes de Gulliver, fue publicada como anónimo en 1726 y obtuvo un éxito inmediato. A pesar de que fue concebida originalmente como una sátira, un ataque ácido y alegórico contra la vanidad y la hipocresía de las cortes, los hombres de estado y los partidos políticos de su tiempo, el autor fue añadiendo, durante los seis años que tardó en escribirla, desgarradas reflexiones acerca de la naturaleza humana. Los viajes de Gulliver es, por tanto, una obra salvajemente amarga y, en ocasiones, indecente; una desabrida burla a la sociedad inglesa de su tiempo y por extensión al género humano. Aún así, es una narración tan imaginativa, ingeniosa y sencilla de leer, que el primer libro ha permanecido como un clásico de la literatura infantil. El cuarto libro, Gulliver en el país de los houyhnhnms, suele eliminarse de muchas ediciones juveniles por su excesiva mordacidad, ya que en el fondo lo que está planteando Swift es que la compañía de los animales —de los caballos, concretamente— es preferible y más estimulante que la de muchos humanos.\r\n', 'swift.jpeg', '2021-04-29 09:57:48', 0),
(32, 'Edgar', 'Allan Poe', 'Edgar Allan Poe', '<span>Edgar Allan Poe</span> (Boston, Estados Unidos, 19 de enero de 1809 – Baltimore, Estados Unidos, 7 de octubre de 1849) fue un escritor, poeta, crítico y periodista romántico estadounidense, generalmente reconocido como uno de los maestros universales del relato corto, del cual fue uno de los primeros practicantes en su país. Fue renovador de la novela gótica, recordado especialmente por sus cuentos de terror. Considerado el inventor del relato detectivesco, contribuyó asimismo con varias obras al género emergente de la ciencia-ficción. Por otra parte, fue el primer escritor estadounidense de renombre que intentó hacer de la escritura su modus vivendi, lo que tuvo para él lamentables consecuencias.', 'poe.jpeg', '2021-04-29 10:17:20', 0),
(33, 'Howard', 'Pyle', 'Howard Pyle', 'Ilustrador y escritor estadounidense nacido en Wilmington en 1853. Fue alumno de la Art Student League de Nueva York, dando sus primeros pasos como ilustrador en Scribner’s y en Saint-Nicholas, y también escribiendo e ilustrando él mismo novelas para jóvenes de temas en torno a la Edad Media. Introdujo una nueva era en la ilustración americana, empleando nuevos procedimientos de fotograbado y de impresión en color. Fue profesor en el Drexel Institute en 1894, antes de abrir una escuela con su nombre. Sus libros ilustrados más importantes fueron Las alegres aventuras de Robin Hood (1883), Un moderno Aladino (1892), Historia del Rey Arturo y sus caballeros (1903), Historia de Sir Lancelot y sus compañeros (1905) y Libro de Piratas (1921).\r\nFalleció en Florencia, Italia, a la edad de 58 años, un año después de haberse mudado allí con su familia.', 'pyle.jpeg', '2021-04-29 10:17:58', 0),
(34, 'Herbert George', 'Wells', 'H. G. Wells', '<span>Herbert George Wells</span>, más conocido como H.G. Wells (21 de septiembre de 1866 en Bromley, Kent — 13 de agosto de 1946 en Londres), fue un escritor, novelista, historiador y filósofo británico. Fue uno de los primeros escritores de ciencia ficción, género con el que consiguió convertirse en un clásico de la literatura de anticipación.\r\nTuvo varios trabajos y comenzó a formarse en Biología. Debido a su falta de recursos económicos, tardó varios años en licenciarse. Poco después, debido a problemas físicos, decidió dedicarse a la escritura de manera constante.Su obra es prolífica, con más de cien libros y multitud de cuentos, y en ella podemos encontrar tanto obras de ciencia ficción, como La guerra de los mundos (1898) o La máquina del tiempo (1895) —ambas llevadas al cine en más de una ocasión—, como obras de corte social, Tono Bungay (1909), o centradas en el estudio de la historia.\r\nDe fuertes convicciones políticas, H.G. Wells defendió la posibilidad de una sociedad utópica, y criticó duramente a políticos y mandatarios, sobre todo en relación a los conflictos armados y las guerras mundiales.\r\nPor sus escritos relacionados con ciencia, en 1970 se decidió en su honor llamarle H.G. Wells a un astroblema lunar ubicado en el lado oscuro de la Luna.', 'hg-wells.jpeg', '2021-04-29 10:19:04', 0),
(35, 'Joseph', 'Rudyard Kipling', 'Rudyard Kipling', '<span>Joseph Rudyard Kipling</span> (Bombay, 30 de diciembre de 1865 – Londres, 18 de enero de 1936) fue un escritor y poeta británico nacido en la India. Autor de relatos, cuentos infantiles, novelista y poeta, se le recuerda por sus relatos y poemas sobre los soldados británicos en la India y la defensa del imperialismo occidental, así como por sus cuentos infantiles.</p>\r\n\r\n<p>Algunas de sus obras más populares son la colección de relatos The Jungle Book (El libro de la selva, 1894), la novela de espionaje Kim (1901), el relato corto The Man Who Would Be King (El hombre que pudo ser rey, 1888), publicado originalmente en el volumen The Phantom Rickshaw, o los poemas Gunga Din (1892) e If— (1895). Además varias de sus obras han sido llevadas al cine. Fue iniciado en la masonería a los veinte años, en la logia «Esperanza y Perseverancia Nº 782» de Lahore, Punjab, India.\r\n', 'kipling.jpeg', '2021-04-29 10:20:20', 0),
(36, 'Alexandre', 'Dumas', 'Alexandre Dumas', '<span>Alexandre Dumas</span> (Villers-Cotterêts, 1802 - Puys, cerca de Dieppe, 1870), fue uno de los autores más famosos de la Francia del siglo XIX, y que acabó convirtiéndose en un clásico de la literatura gracias a obras como Los tres mosqueteros (1844) o El conde de Montecristo (1845).\r\nDumas nació en Villers-Cotterêts en 1802, de padre militar —que murió al poco de nacer el escritor— y madre esclava. De formación autodidacta, Dumas luchó para poder estrenar sus obras de teatro. No fue hasta que logró producir Enrique III (1830) que consiguió el suficiente éxito como para dedicarse a la escritura.\r\nFue con sus novelas y folletines, aunque siguió escribiendo y produciendo teatro, con lo que consiguió convertirse en un auténtico fenómeno literario. Autor prolífico, se le atribuyen más de 1.200 obras, aunque muchas de ellas, al parecer, fueron escritas con supuestos colaboradores.\r\nDumas amasó una gran fortuna y llegó a construirse un castillo en las afueras de París. Por desgracia, su carácter hedonistas le llevó a despilfarrar todo su dinero y hasta verse obligado a huir de París para escapar de sus acreedores.', 'dumas.jpeg', '2021-04-29 11:04:57', 0),
(37, 'Arthur Ignatius', 'Conan Doyle', 'Conan Doyle', 'Sir Arthur Ignatius Conan Doyle fue un escritor escocés, célebre por crear al detective ficticio más famoso del mundo: Sherlock Holmes.</p>\r\n\r\n<p>Nació el 22 de mayo de 1859 en Edimburgo. Su madre lo envió a la Escuela preparatoria de los Jesuitas en Hodder Place (Stonyhurst) a los nueve años. Arthur permaneció allí hasta los 16 años (1875), edad a la que empezó a estudiar medicina hasta 1881 en la Universidad de Edimburgo, donde conoció al profesor que le inspiraría la figura de su famoso personaje, Sherlock Holmes, el médico forense Joseph Bell. Destacó en los deportes, especialmente rugby, golf y boxeo. En este período también trabajó en Aston (actual distrito de Birmingham) y Sheffield.\r\nA principios de 1880 se embarcó en un ballenero llamado The Hope para ejercer de cirujano en sustitución de un amigo suyo y a los 22 años (1881) se graduó cómo médico naval, aunque recibió el doctorado cuatro años más tarde. Fue en estos años cuando hizo una gran amistad con el también escritor escocés J. M. Barrie.', 'conan-doyle.jpeg', '2021-04-29 11:06:10', 0),
(38, 'Mary', 'Shelley', 'Mary Shelley', 'Londres (Inglaterra), 1797 - Ídem, 1851. Narradora, dramaturga, ensayista, filósofa y biógrafa inglesa, hija del filósofo William Godwin y de la escritora y pensadora feminista Mary Wollstonecraft. A los pocos días de su nacimiento su madre murió de unas fiebres, dejando a su marido al cuidado de Mary y de su hermana de tres años y medio, Fanny Imlay.</p>\r\n<p>Fue autora del libro que se considera inauguró la «ciencia ficción» y que aún hoy se erige como uno de los grandes relatos de horror de todos los tiempos: Frankenstein o el moderno Prometeo (1818). Según parece, el origen de esta historia se encuentra en una apuesta. La noche del 16 de junio de 1816, Mary se reunió con Lord Byron y otros en una villa en los alrededores de Ginebra. Encerrados en la casa por una tormenta, se leyeron cuentos de terror para entretenerse. Mary creó entonces la figura de Frankestein inspirándose en una pesadilla que tuvo a los dieciocho años de edad. Más tarde escribió la novela tras una apuesta con Byron, tal y como narra ella misma en el prólogo de la edición de Frankenstein de 1831. Esta obra, un logro más que notable para una autora de sólo 20 años, se convirtió de inmediato en un éxito de crítica y público. La historia del doctor Frankenstein, estudiante de lo oculto, y de su criatura, creada a partir de cadáveres humanos, ha sido llevada al teatro y al cine en varias ocasiones.', 'mary-shelley.jpeg', '2021-04-29 11:07:45', 0),
(39, 'Herman', 'Melville', 'Herman Melville', '<span>Herman Melville</span> nació el 1 de agosto de 1819 en la ciudad de Nueva York (Estados Unidos), hijo de Allan Melville y María Melville Gansevoort, comerciantes de pieles.</p>\r\n<p>A los once años se trasladó con su familia a Albany, donde estudió hasta que, dos años después, tras la quiebra de la empresa familiar, tuvo que ponerse a trabajar. Impartió clases en una escuela de Greenbush durante un breve período. Posteriormente, comenzó a vivir una existencia aventurera que le llevó a enrolarse, en 1841, como marinero en el ballenero Acushnet. Fruto de sus experiencias en alta mar fueron Taipi: un Edén caníbal (1846) y Omu: un relato de aventuras en los mares del sur (1847), escritas a su regreso a Estados Unidos en 1844.\r\n', 'melville.jpeg', '2021-04-29 11:09:18', 0),
(40, 'Emilio', 'Salgari', 'Salgari', 'Nació en Verona, Italia, el 21 de agosto de 1862, y falleció en Turín, Italia, el 25 de abril de 1911. Hijo de una familia de comerciantes, de joven sirvió a bordo de un barco que recorrió la costa Adriática y Mediterránea, pero no hay pruebas de que hiciera más viajes por mar, aunque aseguraba que los lugares exóticos que aparecían en sus libros se basaban en sitios que había visitado personalmente. Comenzó a prepararse en el Real Instituto Técnico Naval P. Sarpi de Venecia, pero no llegó a obtener el título de capitán que ansiaba. Sus novelas, llenas de acción, fueron muchas, pero probablemente sea conocido sobre todo por crear el personaje de Sandokán. A pesar de su éxito, vivió en una relativa miseria que, junto con el desequilibrio mental de su esposa, la actriz de teatro Ida Peruzzi, con quien tuvo cuatro hijos, lo condujo a suicidarse en 1911 realizando el rito tradicional del Hara-kiri. Escribió en total ochenta y cuatro novelas e incontables relatos.', 'salgari.jpeg', '2021-04-29 22:29:18', 0),
(41, 'Sir Walter', 'Scott', 'Walter Scott', '<span>Walter Scott</span> nace en 1771 en Edimburgo, ciudad en la que, para ser fiel a la tradición familiar, estudia derecho y ocupa distintos puestos en la carrera judicial. Durante su juventud queda cautivado por el romanticismo y la literatura popular de su país. Consecuencia de esta fascinación son sus traducciones anónimas de las <i>baladas de Gottfried August Bürger</i>, y de <i>Goetz von Berlichingen</i> de Goethe, ambas publicadas en 1796, y los tres volúmenes recopilatorios titulados <i>Poemas de la frontera escocesa</i>, de 1802.</p>\r\n\r\n<p>Scott fue el responsable de dos de las principales tendencias que se han prolongado hasta hoy. Primero, básicamente él inventó la novela histórica moderna; y un enorme número de imitadores (e imitadores de imitadores) aparecieron en el siglo XIX. En segundo lugar, sus novelas escocesas continuaron la labor del ciclo de Ossian, de James Macpherson, para rehabilitar ante la opinión pública la cultura de las Tierras Altas Escocesas, después de permanecer en las sombras durante años, debido a la desconfianza sureña hacia los bandidos de las colinas y rebeliones jacobitas. Como entusiasta presidente de la Celtic Society of Edinburgh contribuyó a la reinvención de la cultura escocesa. Debe señalarse, sin embargo, que Scott era un escocés de las Tierras Bajas, y que sus recreaciones de las Tierras Altas eran un poco extravagantes. Su organización de la visita del rey Jorge IV a Escocia en 1822 fue un acontecimiento crucial, llevando a los sastres escoceses a inventar muchos tartanes de los diversos clanes.\r\n', 'scott.jpeg', '2021-04-29 22:34:00', 0),
(42, 'Charles', 'Dickens', 'Dickens', '<span>Charles John Huffan Dickens</span> (Portsmouth, Inglaterra, 7 de febrero de 1812 – Gads Hill Place, Inglaterra, 9 de junio de 1870) fue un famoso novelista inglés, uno de los más conocidos de la literatura universal, y el principal de la era victoriana. Fue maestro del género narrativo, al que imprimió ciertas dosis de humor e ironía, practicando a la vez una aguda crítica social. En su obra destacan las descripciones de gente y lugares, tanto reales como imaginarios. Utilizó en ocasiones el seudónimo Boz.</p>\r\n\r\n<p>Sus novelas y relatos cortos disfrutaron de gran popularidad en vida del escritor, y aún hoy se editan continuamente. Dickens escribió novelas por entregas, el formato usual en la ficción en su época, por la simple razón de que no todo el mundo poseía los recursos económicos necesarios para comprar un libro, y cada nueva entrega de sus historias era esperada con gran entusiasmo por sus lectores, nacionales e internacionales. Dickens fue y sigue siendo venerado como un ídolo literario por escritores de todo el mundo.', 'dickens.jpeg', '2021-04-29 22:47:57', 0),
(43, 'Henry', 'Rider Haggard', 'Haggard', '<span>Henry Rider Haggard</span> (Bradenham, 1856 - Londres, 1925). Novelista inglés. Se doctoró en Jurisprudencia en Londres, fue alto funcionario del gobierno, y vivió algunos años en Indonesia y África, tras los cuales regresó a Gran Bretaña, donde desempeñó diversos cargos gubernativos. Se le concedió el título de Sir, fue nombrado vicepresidente del Royal Colonial Institute y le fue otorgado el título de KBE (Knight Commander, Order of the British Empire).', 'haggard.jpeg', '2021-04-29 22:48:51', 0),
(44, 'Gaston', 'Leroux', 'Leroux', '<span>Gaston Louis Alfred Leroux </span>(París, 6 de mayo de 1868 – Niza, 15 de abril de 1927), escritor francés de principios del siglo XX, que ganó gran fama en su tiempo gracias a sus novelas de aventuras y policiacas, tales como El fantasma de la ópera (Le Fantôme de l\'opéra, 1910), El misterio del cuarto amarillo (Mystère de la chambre jaune, 1907) y su secuela El perfume de la dama de negro (Le parfum de la Dame en noir, 1908).</p>\r\n<p>Trabajó en los periódicos L\'Écho de Paris y Le Matin. Viajó como reportero por Suecia, Finlandia, Inglaterra, Egipto, Corea, Marruecos. En Rusia cubrió las primeras etapas de la revolución bolchevique. Aparte de su trabajo como periodista, tuvo tiempo para escribir más de cuarenta novelas que fueron publicadas como cuentos por entregas en periódicos de París.\r\n', 'leroux.jpeg', '2021-04-30 17:11:37', 0),
(45, 'Santiago', 'Posteguillo', 'Santiago Posteguillo', 'Filólogo, lingüista, doctor europeo por la Universidad de Valencia, es en la actualidad profesor titular en la Universitat Jaume I de Castellón donde ejerció como director de la sede en dicha universidad del Instituto Interuniversitario de Lenguas Modernas Aplicadas de la Comunidad Valenciana durante varios años. En la actualidad imparte clases de lengua y literatura inglesa, con atención especial a la narrativa inglesa del siglo XIX, el teatro isabelino y la relación entre la literatura inglesa y norteamericana con el cine, la música y otras artes.</p>\r\n<p><span>Santiago Posteguillo</span> ha estudiado literatura creativa en Estados Unidos y lingüística y traducción en diversas universidades del Reino Unido. Autor de más de setenta publicaciones académicas que abarcan desde artículos de investigación a monografías y diccionarios especializados, en 2006 publicó su primera novela: <i>Africanus, el hijo del cónsul</i>, y con ella comenzó la trilogía sobre Escipión el Africano, general romano que venció a Aníbal en la Batalla de Zama. La siguió en 2008 <i>Las Legiones Malditas</i> y al año siguiente apareció el último libro de la trilogía: <i>La Traición de Roma</i>.', 'posteguillo.jpeg', '2021-04-30 17:31:12', 0),
(46, 'Ken', 'Follet', 'Ken Follet', 'Escritor galés nacido en Cardiff el 5 de junio de 1949, Ken Follett es uno de los autores más vendidos y conocidos en los últimos 20 años.\r\nFue criado en Londres, sus padres, cristianos devotos, le prohibieron ir al cine y ver la televisión, debido a lo cual desarrolló un temprano interés por la lectura. En 1967 ingresó en la University College of London, donde estudió filosofía y se implicó en movimientos de izquierdas.</p>\r\n<p>Escritor galés nacido en Cardiff el 5 de junio de 1949, Ken Follett es uno de los autores más vendidos y conocidos en los últimos 20 años.\r\nFue criado en Londres, sus padres, cristianos devotos, le prohibieron ir al cine y ver la televisión, debido a lo cual desarrolló un temprano interés por la lectura. En 1967 ingresó en la University College of London, donde estudió filosofía y se implicó en movimientos de izquierdas.', 'ken-follet.jpeg', '2021-04-30 22:58:17', 0),
(47, 'Peter', 'Cozzens', 'Cozzens', '<span>Peter Cozzens</span> es autor o editor de diecisiete libros sobre la Guerra de Secesión y el Oeste americano, entre ellos Shenandoah 1862: Stonewall Jackson’s Valley Campaign, This Terrible Sound: The Battle of Chickamauga o No Better Place to Die: The Battle of Stones River. Su libro más reciente, La Tierra llora. La amarga historia de las Guerras Indias por la conquista del Oeste (Desperta Ferro Ediciones, 2017) ha sido galardonada con el Gilder Lehrman Prize for Military History como mejor obra de Historia militar publicada en el mundo anglosajón en 2016. Asimismo, fue incluido en el Smithsonian Top History Book of 2016 y se abrió paso en otras importantes listas de mejor libro del año.Peter Cozzens es autor o editor de diecisiete libros sobre la Guerra de Secesión y el Oeste americano, entre ellos Shenandoah 1862: Stonewall Jackson’s Valley Campaign, This Terrible Sound: The Battle of Chickamauga o No Better Place to Die: The Battle of Stones River. Su libro más reciente, La Tierra llora. La amarga historia de las Guerras Indias por la conquista del Oeste (Desperta Ferro Ediciones, 2017) ha sido galardonada con el Gilder Lehrman Prize for Military History como mejor obra de Historia militar publicada en el mundo anglosajón en 2016. Asimismo, fue incluido en el Smithsonian Top History Book of 2016 y se abrió paso en otras importantes listas de mejor libro del año.', 'cozzens.jpg', '2021-05-02 11:27:36', 0),
(48, 'Mark', 'Kurlansky', 'Kurlansky', 'Kurlansky es un periodista mundialmente famoso, autor de libros como El bacalao: biografía del pez que cambió el mundo y Sal: historia de la única piedra comestible.', 'Kurlansky.jpg', '2021-05-02 11:32:48', 0),
(49, 'Yuval Noah', 'Harari', 'Harari', '<span>Yuval Noah Harari</span> (1976) es profesor de historia en la Universidad Hebrea de Jerusalén. Se especializó en historia medieval e historia militar, pero tras doctorarse en Historia por la Universidad de Oxford, pasó al campo más amplio de la historia del mundo y los procesos macrohistóricos. Sus libros incluyen Special Operations in the Age of Chivalry, 1100-1550, The Ultimate Experience: Battlefield Revelations and the Making of Modern War Culture, 1450-2000, The Concept of «Decisive Battles» in World History y Armchairs, Coffee and Authority: Eye-witnesses and Flesh-witnesses, Speak about War, 1100-2000. Su libro Sapiens. De animales a dioses ha sido un éxito internacional que se ha traducido a treinta idiomas y ha vendido más de un millón de ejemplares.', 'harari.png', '2021-05-02 11:37:52', 0),
(50, 'Lester', 'Bangs', 'Bangs', 'Leslie Conway Bangs, más conocido como <span>Lester Bangs</span> (Escondido, California, 13 de diciembre de 1948 - Nueva York, 30 de abril de 1982), fue un periodista y crítico musical estadounidense, relevante en la escena del rock de los años 1960. Su trabajo fue popularizado por las revistas Creem, Musician y Rolling Stone.', 'Lester_Bangs.jpeg', '2021-05-02 11:43:25', 0),
(51, 'Joaquín Ramón', 'Martínez Sabina', 'Joaquín Sabina', 'Joaquín Ramón Martínez Sabina (Úbeda, Jaén; 12 de febrero de 1949), conocido como <span>Joaquín Sabina</span>, es un cantautor, poeta y pintor español.\r\n\r\nHa publicado diecisiete discos de estudio y siete en directo, y ha colaborado con distintos artistas cantando dúos y realizando otras colaboraciones. Los álbumes en directo son grabaciones de actuaciones en las que ha intervenido en solitario o junto con otros artistas: La mandrágora (1981), junto a Javier Krahe y Alberto Pérez; Joaquín Sabina y Viceversa en directo (1986), junto a la banda Viceversa; Nos sobran los motivos (2000); y Dos pájaros de un tiro (2007) junto a Joan Manuel Serrat. Se estima que ha vendido más de diez millones de discos y también ha compuesto para otros artistas como Ana Belén, Andrés Calamaro o Miguel Ríos, entre otros. En su faceta literaria ha publicado nueve libros con recopilaciones de letras de canciones o poemas publicados en el semanario Interviú.', 'sabina.jpeg', '2021-05-02 11:46:21', 0),
(52, 'Jared', 'Diamond', 'Jared Diamond', '<span>Jared Mason Diamond</span>, CFA (Boston, 10 de septiembre de 1937), es un geógrafo y escritor judío estadounidense de literatura científica, biólogo, fisiólogo evolucionista y biogeógrafo. Doctor por la Universidad de Cambridge, Reino Unido, es profesor de geografía en la Universidad de California en Los Ángeles.</p>\r\n<p>Ganó el premio Pulitzer por su libro Armas, gérmenes y acero (Guns, Germs and Steel. 1997). Es autor también de Colapso. ¿Por qué unas sociedades perduran y otras desaparecen? (Collapse: How Societies Choose to Fail or Succeed. 2004) y su última obra El mundo hasta ayer. ¿Qué podemos aprender de las sociedades tradicionales?) (The World Until Yesterday. 2012) con la que completa su trilogía acerca de la gobernanza de recursos naturales y sobre cómo, mirando al pasado, podemos aprender de sociedades con diferentes visiones acerca de la guerra, el lenguaje, la salud y la religión, entre otros.', 'jared-diamon.jpeg', '2021-05-02 11:51:34', 0),
(53, 'Shoshana', 'Zuboff', 'Zuboff', 'Shoshana Zuboff nació en 1951.2​ Obtuvo su BA en filosofía en la Universidad de Chicago y su doctorado (Ph.D.) en psicología social en la Universidad de Harvard. Se incorporó a la Harvard Business School en 1981 donde obtuvo la cátedra Charles Edward Wilson en administración de negocios, y fue una de las primeras mujeres profesoras titulares en esta facultad. En 2014 y 2015, fue profesora asociada en el Berkman Klein Center for Internet & Society en la Harvard Law School3​.', 'Shoshana-Zuboff.png', '2021-05-02 12:53:01', 0),
(54, 'Thomas', 'Piketty', 'Piketty', 'Piketty es un especialista en la economía de la desigualdad o desigualdad de ingreso, desde una aproximación estadística e histórica.10​11​ En sus publicaciones analiza cómo la tasa de acumulación de capital en relación con el crecimiento económico aumentó desde el siglo XIX hasta la actualidad. Los registros sobre impuestos le han permitido reunir datos sobre las élites económicas, que tradicionalmente han sido poco estudiados, y que le permiten establecer las tasas de acumulación de la riqueza y su comparación con la situación económica del resto de la sociedad.\r\n\r\nSu libro más influyente, El capital en el siglo XXI, se nutre de datos económicos que se remontan 250 años para demostrar que se produce una concentración constante del aumento de la riqueza que no se autocorrige y que aumenta la desigualdad económica, problema que requiere para su solución una redistribución de la riqueza a través de un impuesto mundial sobre la misma.12', 'piketty.jpeg', '2021-05-02 12:58:07', 0),
(55, 'John', 'M. Barry', 'M. Barry', '<span>John M. Barry</span> (born 1947)[1] is an American author and historian who has written books on the Great Mississippi Flood of 1927, the influenza pandemic of 1918, and the development of the modern form of the ideas of separation of church and state and individual liberty. He is a professor at the Tulane University School of Public Health and Tropical Medicine and Distinguished Scholar at Tulane\'s Bywater Institute.', 'mbarry.jpeg', '2021-05-02 13:04:23', 0),
(56, 'Eric', 'Hobsbawm', 'Hobsbawm', 'Eric J. Hobsbawm (1917) es, en palabras de Orlando Figes, «el historiador vivo más conocido del mundo». Es profesor emérito de historia social y económica del Birkbeck College de la Universidad de Londres. Entre sus numerosos libros debe destacarse, sobre todo, la serie formada por La era de la revolución, 1789-1848 (1997), La era del capital, 1848-1875 (1998), La era del imperio, 1875-1914 (1998) e Historia del siglo XX (1998).', 'eric-hobsbawm.jpg', '2021-05-02 13:09:04', 0),
(57, 'Luis', 'García Montero', 'Luis García Montero', 'Descendiente de una conocida familia de Granada muy vinculada con la vida local, <span>Luis García Montero</span> nació en esta ciudad en 1958. Hijo de Luis García López y Elisa Montero Peña, cursó estudios en el colegio de los Escolapios, pasando de éste, más tarde, a la Universidad en cuya facultad de Filosofía y Letras se licenciaría en 1980 y en la que se doctoró poco más tarde con una tesis sobre el recientemente desparecido Rafael Alberti, con el que sostuvo una estrecha y entrañable amistad, y del que preparó la edición de su Poesía Completa. Actualmente es profesor titular del departamento de Teoría de la Literatura de la Universidad de Granada. Luis García Montero es además de un prestigioso poeta de prestigio internacional, un consagrado ensayista y columnista de opinión. En 2018 ha sido nombrado director del prestigioso Instituto Cervantes.', 'montero.jpeg', '2021-05-03 10:41:32', 0),
(58, 'Charles', 'Bukowski', 'Bukowski', 'Adernach, (1920-1994). Charles Bukowski vivió en su infancia y adolescencia en un entorno familiar y social violento, hecho que marcaría el devenir de su posterior producción literaria. Pieza capital de la que se vino en llamar generación beat, su vida fue tan radical como las historias narradas en sus propias obras. Adicto al sexo, las drogas y el alcohol, su literatura, casi autobiográfica, es fiel reflejo de su lucha contra el aburguesamiento y la comodidad. Su realismo descarnado y lírico y su humor ácido y desencantado han influido en multitud de escritores de generaciones posteriores.', 'bukowski.jpeg', '2021-05-03 10:56:46', 0),
(59, 'Leonard', 'Cohen', 'Leonard Cohen', '(Montreal, 1934) Escritor, compositor y cantante canadiense. Considerado figura fundamental del folk estadounidense de los sesenta y setenta, sus canciones, que sobresalen particularmente por la fuerza y calidad literaria de sus letras, reforzadas por expresivas melodías, influyeron en la mayoría de cantautores contemporáneos. Premio Príncipe de Asturias de las Letras 2011', 'cohen.jpeg', '2021-05-03 11:08:49', 0),
(60, 'John', 'Keats', 'Keats', '(Londres, 1795 - Roma, 1821) es uno de los poetas más grandes del Romanticismo europeo. Huérfano de padre desde niño y de madre desde los quince años, trabajó como aprendiz de cirujano y, posteriormente, estudió Medicina en el Guy?s Hospital de Londres, graduándose en Farmacia. Sus lecturas juveniles de Virgilio le proporcionaron una formación clásica, pero quien más le influyó fue su admirado Edmund Spenser. Pese al escaso éxito que tuvo, la publicación en 1817 de su primera obra, <i>Poems</i>, lo animó a dedicarse con exclusividad a la literatura. Su siguiente libro, <i>Endymion</i> (1818), fue duramente recibido por la crítica, lo que le produjo una depresión que agravó su tuberculosis, enfermedad que lo acompañaría hasta la muerte. Mientras convalecía en casa de un amigo se enamoró de Fanny Brawne, quien le inspiró sus mejores versos, recogidos en el volumen <i>Lamia, Isabella, The Eve of St. Agnes, and Other Poems</i> (1820). Ese mismo año embarcó rumbo a Nápoles para intentar recuperarse de su mal, y unos meses más tarde murió en Roma, donde fue enterrado en el cementerio protestante bajo el siguiente epitafio: ?Aquí yace alguien cuyo nombre se escribió en el agua.? Pese a los pocos años que vivió su autor, la obra poética de <span>Keats</span> es una de las más altas y hermosas de la literatura inglesa y de las letras universales.', 'keats.jpeg', '2021-05-03 11:13:42', 0),
(61, 'Mario', 'Benedetti', 'Benedetti', '<span>Mario Benedetti</span> (Paso de los Toros, Uruguay, 1920-Montevideo, 2009). Se educó en un colegio alemán y se ganó la vida como taquígrafo, vendedor, cajero, contable, funcionario público y periodista. Autor de novelas, relatos, poesía, teatro y crítica literaria, publicó más de cincuenta libros y ha sido traducido a veintitrés idiomas. Fue galardonado con, entre otros, el Premio Reina Sofía de Poesía 1999 y el Premio Iberoamericano José Martí 2000.', 'mariobenedetti.jpeg', '2021-05-03 11:21:13', 0),
(62, 'Nicanor ', 'Parra', 'Nicanor Parra', '(San Fabián de Alico, 1914 - La Reina 23 de enero de 2018). Catedrático de de Matemáticas y Física, supo compaginar desde siempre sus quehaceres académicos con su producción literaria. Cofundador de la Revista Nueva, ocasional cultivador del cuento y del ensayo, era, sobre todo, poeta. Inicialmente evocativo y sentimental en Cancionero sin nombre (1937), más tarde adoptó en definitiva la línea que él mismo denomina \'antipoesía\', revelación irónica e iconoclasta de un mundo problemático, hecha en lenguaje antirretórico, coloquial, a menudo sorprendente. Esta renovación de proyecciones internacionales comienza en Poemas y antipoemas (1954) y se prolonga en una docena de obras más. Obtuvo el Premio Nacional de Literatura (1969), el internacional Juan Rulfo en su primera entrega (1991), el Premio Reina Sofía de Poesía Iberoamericana y, finalmente el Premio Cervantes 2011, como reconocimiento a toda su trayectoria poética. Falleció el 23 de enero de 2018 en su casa familiar de La Reina, Santiago.', 'nicanor-parra.jpeg', '2021-05-03 11:34:28', 0),
(65, 'Hugo', 'Pratt', 'Hugo Pratt', '<span>Hugo Pratt</span> es uno de los pocos autores de cómic, junto con sus adorados Milton Caniff y Will Eisner entre otros, que se ha ganado un lugar en la historia del género. Un maestro que ha creado escuela y cuenta con prolífica producción publicada en múltiples ediciones.\r\n\r\nLa vida de <span>Pratt</span> se asemeja en gran medida a la de su creación más importante, Corto Maltés. Viajero incansable, pese a ser natural de Rimini Pratt se declara veneciano, pues pasó toda su infancia en la capital del Véneto. Pronto se trasladó a Etiopía con su familia, para volver a Italia justo después de la II Guerra Mundial. En 1949 emigró a Buenos Aires para trabajar en la Editorial Abril. Allí conoció a los grandes dibujantes de la historieta argentina como José Muñoz, Francisco Solano López y H.G. Oesterheld. Fue con este último con quien creó series tan míticas como Sgt. Kirk, Ernie Pike o Ticonderoga. Después de viajar por toda Sudamérica, finalmente regresa a Italia, donde entró a trabajar en la publicación infantil Il Corriere dei Piccoli e inició las adaptaciones al cómic de la obra magna de Emilio Salgari, Sandokán, un proyecto que quedó interrumpido por el sorprendente éxito de Corto Maltés.\r\n\r\nA partir de entonces, <span>Hugo Pratt</span> saltó a lo más alto del Noveno Arte, cosa que le permitió seguir viajando y documentándose para la que ha sido su mayor obra.\r\n', 'Hugo-Pratt.png', '2021-05-04 16:58:58', 1),
(66, 'Juan', 'Díaz Canales', 'Canales', 'Juan Díaz Canales, nacido en Madrid en 1972, es un guionista de historietas y director de películas de animación español. Es conocido por ser el guionista de la serie Blacksad', 'JuanDiazCanales.jpeg', '2021-05-06 13:56:52', 0),
(68, 'Rubén', 'Pellejero', 'Pellejero', '<span>Rubén Pellejero</span> comenzó a desarrollar su carrera artística como ilustrador en los años 70, pero no debutó como dibujante de cómics hasta 1981, año en que publicó en la revista Cimoc su serie Historias de una Barcelona. Poco después inició una fértil colaboración con el guionista argentino Jorge Zentner, fruto de la cual serían las historietas Las memorias de Monsieur Griffaton (Cimoc, 1982), Historias en FM (Cimoc, 1983) y, sobre todo, la creación para la revista Cairo del personaje Dieter Lumpen (1985), protagonista de ocho historias breves y tres de larga duración, que luego serían editadas en álbumes por Norma Editorial.\r\n\r\nEn 1988 y 1989, junto con Zentner, realizó algunos trabajos para el mercado francés, como la historieta La grande invention du professeur Calan, sobre la Revolución francesa.\r\n\r\nUna de sus mejores obras con Zentner fue el álbum de 1994 El silencio de Malka, que obtuvo varios premios, como el galardón al mejor álbum extranjero publicado en Francia del Festival del Cómic de Angulema. En la segunda mitad de los años 90 realizó nuevas y exitosas colaboraciones con Jorge Zentner.\r\n\r\nEn los últimos años, Pellejero ha trabajado directamente para el mercado francés, junto con el guionista Denis Lapière, publicando dos álbumes con un gran éxito tanto de crítica como de público: Un poco de humo azul (2000) y El vals del gulag (2004). Los dos fueron con posterioridad publicados en España.', 'rubnpellejero.jpeg', '2021-05-06 14:51:52', 1);
INSERT INTO `autor` (`id`, `nombre`, `apellidos`, `alias`, `bio`, `foto`, `fecha`, `dibujante`) VALUES
(69, 'Héctor Germán', 'Oesterheld', 'Oesterheld', '<span>Héctor Germán Oesterheld</span>(Buenos Aires, 23 de julio de 1919-desaparecido por la última dictadura argentina en 19771​ y asesinado por los militares en 1978)2​ fue un guionista de historietas y escritor argentino, a menudo citado como HGO. Escribió numerosos relatos breves de ciencia ficción y novelas, y publicó en revistas como \"Misterix\", \"Hora Cero\" y \"Frontera\", siendo sus series más conocidas Sargento Kirk, Bull Rocket y sobre todo El Eternauta, la que es considerada su obra maestra.\r\n</p><p>\r\nLa obra más temprana de Oesterheld, en la década de 1950 y principios de los años \'60, contiene sutiles críticas al capitalismo, el colonialismo y el imperialismo. A medida que transcurre la década su compromiso político aumenta y su ideología se vuelve más fácilmente reconocible: realiza junto a Alberto y Enrique Breccia una biografía en historieta sobre el Che Guevara, Vida del Che, publicada en 1968,3​la cual fue secuestrada y destruida por los censores de la dictadura cívico-militar que gobernaba entonces.4​Luego completa una nueva versión más políticamente cargada de El Eternauta en 1969, con dibujos de Solano López, como en la obra original.\r\n\r\nSu compromiso político aumenta aún más durante la década de 1970, lo cual se refleja tanto en su decisión de unirse a la agrupación guerrillera Montoneros como en los guiones de sus últimas obras, destacándose particularmente el caso de El Eternauta II (de nuevo ilustrada por Solano López), la cual debió finalizar mientras se ocultaba en la clandestinidad. En 1977 fue secuestrado por las fuerzas armadas durante la última dictadura cívico-militar argentina y fue visto por última vez en un centro clandestino de detención. Desde entonces pasó a formar parte de la lista de detenidos-desaparecidos víctimas del terrorismo de Estado en Argentina.\r\n</p><p>\r\nEl legado de Oesterheld es amplio: es uno de los artistas de trayectoria más extensa de la historieta argentina, su influencia se extiende a artistas de nuevas generaciones y diversos medios, y es considerado informalmente como uno de los \"padres\" de la historieta argentina moderna.', 'Oesterheld_joven.jpeg', '2021-05-06 21:42:39', 0),
(70, 'Alberto', 'Ongaro', 'Ongaro', 'Estudió letras y filosofía en la Universidad de Padua. Vivió durante algunos años en América del Sur —hasta 1957—, para lluego partir hacia Inglaterra hasta 1979, cuando regresó a su ciudad natal.  Trabajó como historietista para la revista Corriere dei Piccoli. Como periodista fue corresponsal extranjero del periódico L\'Europeo. Escribió libros de novelas como La taverna del doge Loredan, Il ponte della solita ora y La partita, que fue adaptada para la película The Gamble en 1988.  En 1943 estuvo en prisión debido a su actividad antifascista junto a su primo, el dibujante de historietas y editor Mario Faustinelli. Allí ambos gestaron la idea de hacer una revista de historietas. En 1947 nació la revista Albi Uragano en donde aparecía la historieta Asso di Picche [As de Espadas], con dibujos de Hugo Pratt y guion de Ongaro. En esta publicación trabajó el «grupo de Venecia» conformado por Ongaro, Faustinelli, Hugo Pratt, Ivo Pavone, Giorgio Bellavitis, Dino Battaglia, Fernando Carcupino, Paul Campani y Rinaldi D\'Ami.  Por esa época escribía la serie Junglemen de la mano de Dino Battaglia, la que más adelante sería editada en Argentina bajo el nombre Hombres de la jungla en las revistas Salgari y Cinemisterio, con dibujos de Hugo Pratt.  Asso di Picche se publicó poco después en Argentina, en la revista Salgari. César Civita, su editor, invitó al grupo de Venecia a trabajar para la Editorial Abril en Argentina o desde Italia. Optaron por enviar sus trabajos hasta 1951, cuando una parte del equipo —Ongaro, Faustinelli, Pratt, Pavone— viajó hacia Buenos Aires', 'ongaro.jpeg', '2021-05-07 11:51:18', 0),
(71, 'VVAA', 'VVAA', 'VVAA', 'VVAA', 'vvaa.jpeg', '2021-05-07 12:40:11', 0),
(72, 'Venceslas', 'Kruta', 'Kruta', 'Venceslas Kruta es un arqueólogo e historiador francés nacido en Saumur, Francia, el 4 de noviembre de 1939. Se especializa en la protohistoria de Europa, principalmente en la cultura e historia de los Celtas', 'vvaa.jpeg', '2021-05-07 12:43:21', 0),
(73, 'Erik', 'Hornung', 'Hornung', 'Erik Hornung es un egiptólogo suizo nacido en Riga (Letonia) en 1933.', 'vvaa.jpeg', '2021-05-07 12:45:06', 0),
(74, 'Federico', 'Lara Peinado', 'Federico Lara Peinado', 'Federico Lara Peinado es un historiador español y profesor de Historia Antigua en la Universidad Complutense de Madrid, especializado en las civilizaciones sumeria, acadia, mesopotámica y egipcia. Ha escrito numerosos libros sobre el tema.\r\n</p><p>Tras obtener su doctorado en Historia Antigua trabajó como archivero de la Diputación Provincial de Lérida y como profesor de la Universidad Autónoma de Barcelona.1​ Posteriormente, en 1986, consiguió plaza de profesor titular de la Universidad Complutense de Madrid y codirector de la cátedra de Egiptología «José Ramón Mélida», fundada en 2005 por el Instituto de Estudios del Antiguo Egipto y la Fundación General de la Universidad Complutense de Madrid.\r\n\r\n', 'vvaa.jpeg', '2021-05-07 12:46:04', 0),
(75, 'Nicolas', 'Grimal', 'Grimal', 'Nicolas Grimal se diplomó en Letras clásicas en 1971, doctorándose en 1984. Desde 1988 es profesor de Egiptología en La Sorbona (París IV). De 1989 a 1999 fue director del Instituto Francés de Arqueología Oriental de El Cairo (Institut français d\'archéologie orientale). Desde 1990 es director científico del Centro Franco-Egipcio de Estudios de Karnak (CFEETK). Es Presidente de Egiptología en el Collège de France desde 2000.', 'vvaa.jpeg', '2021-05-07 12:47:14', 0),
(76, 'Margaret', 'Weis', 'Margaret Weis', '<span>Margaret Edith Weis</span> nació el 16 de marzo de 1948 en Independence (Missouri, EE.UU.), y es una de las autoras más prolíficas de la literatura fantástica. Sus obras más conocidas han sido colaboraciones con otro escritor, Tracy Hickman, uno de los creadores originales del mundo de la Dragonlance, del mundo de los juegos y libros', 'margaret-weis.jpeg', '2021-05-07 17:43:53', 0),
(77, 'Tracy', 'Hickman', 'Tracy Hickman', '<span>Tracy Raye Hickman</span> nació el 26 de noviembre de 1955 en Salt Lake City (Utah), y es autor de literatura fantástica, conocido sobre todo gracias a su participación en la colección Dragonlance junto a Margaret Weis. Es mormón de fuertes convicciones, está casado y tiene cuatro hijos. Colaboró en TSR junto a Weis, con la que formó equipo de desarrollo para la creación de la Dragonlance, todo un filón que comenzó con los juegos de rol y se extendió a la literatura. Las ventas de los libros de esta colección han significado millones de ejemplares en todo el mundo.', 'tracy-hickman.jpeg', '2021-05-07 17:45:57', 0),
(78, 'Tucídides', 'Tucídides', 'Tucídides', 'Tucídides (en griego ático, Θουκυδίδης Thūkydídēs: Antigua Atenas, c. 460 a. C.-Tracia, c. ¿396 a. C.?) fue un historiador y militar ateniense. Su obra Historia de la guerra del Peloponeso recuenta la historia de la guerra del siglo V a. C. entre Esparta y Atenas hasta el año 411 a. C. Tucídides ha sido considerado como el padre de la historiografía científica, debido a sus estrictos estándares de recopilación de pruebas y de sus análisis en términos de causa-efecto sin referencia a la intervención de dioses, tal y como él mismo subraya en su introducción a su obra.1​\r\n</p><p>\r\nTambién ha sido considerado el padre de la escuela del realismo político, que valora las relaciones entre las naciones en función de su poder, y no en razón de la justicia.2​ Su texto todavía se estudia en academias militares avanzadas de todo el mundo, y el Diálogo de los melios continúa siendo una importante obra en el estudio de la teoría de las relaciones internacionales', 'tuci.jpeg', '2021-05-07 19:10:09', 0),
(79, 'Esquilo', 'Esquilo', 'Esquilo', '<span>Esquilo</span> (en griego antiguo: Αἰσχύλος, Aischýlos; Eleusis, ca. 526-525 a. C.-Gela, ca. 456-455 a. C.) fue un dramaturgo griego. Predecesor de Sófocles y Eurípides, es considerado como el primer gran representante de la tragedia griega.1​\r\n</p><p>\r\nNació en Eleusis (Ática), lugar en el que se celebraban los misterios eleusinos. Pertenecía a una noble y rica familia de terratenientes. En su juventud fue testigo del fin de la tiranía de los Pisistrátidas en Atenas.', 'Esquilo.jpeg', '2021-05-07 19:13:36', 0),
(80, 'Homero', 'Homero', 'Homero', '<span>Homero</span> (en griego antiguo Ὅμηρος Hómēros; ca. siglo VIII a. C.) es el nombre dado al aedo a quien tradicionalmente se atribuye la autoría de los principales poemas épicos griegos: la Ilíada y la Odisea. Desde el período helenístico se ha cuestionado que el autor de ambas obras fuera la misma persona; sin embargo, antes no solo no existían estas dudas sino que la Ilíada y la Odisea eran considerados relatos históricos reales.\r\n</p><p>\r\nLa Ilíada y la Odisea son el pilar sobre el que se apoya la épica grecolatina y, por ende, la literatura occidental.1​', 'homero.jpeg', '2021-05-07 19:16:27', 0),
(81, 'Apuleyo', 'Apuleyo', 'Apuleyo', '<span>Apuleyo</span> (Madaura, 123/5-m. en torno a 180), a veces llamado Lucio Apuleyo —si bien el praenomen Lucio se toma del protagonista de una de sus obras, El asno de oro—, fue el escritor romano más importante del siglo II, muy admirado tanto en vida como por la posteridad. Posiblemente un bereber muy romanizado, nació en Madaura, ciudad romana de Numidia en la frontera con Getulia, en la actualidad conocida como Mdaourouch (en Argelia). En su tiempo fue una zona relativamente alejada de los principales centros culturales de la latinidad, radicados en Italia, aunque su desarrollo urbano y económico permitieron que, hacia el siglo II, importantes intelectuales y políticos romanos procedieran de la zona.', 'Apuleius3.png', '2021-05-07 19:19:55', 0),
(82, 'Esopo', 'Esopo', 'Esopo', 'El personaje de Esopo ha quedado de tal manera envuelto en leyenda que es difícil separar en su biografía lo que pertenece a su vida real y lo que es producto de la ficción. Parece que vivió en el siglo VI antes de Cristo y que era natural de Frigia, en Asia Menor, o de Tracia, al norte de Grecia. Fue esclavo, pero consiguió que su amo lo liberase, y tuvo una vida llena de peripecias. Sobre esos pocos datos se fue forjando desde muy pronto una biografía popular y anónima que conoció sucesivas versiones hasta el final de la Edad Media. Según estas, sirvió como esclavo para el filósofo Janto, con quien desarrolló la agudeza que después le haría famoso. Una vez libre, actuó como consejero de reyes en Asia Menor y en Babilonia. Su reputación se extendió por toda Grecia, Oriente Próximo y Egipto. Finalmente, enviado por el rey Creso de Lidia, llegó a la ciudad griega de Delfos, donde murió víctima de una conspiración.', 'Esopo.jpeg', '2021-05-07 19:25:44', 0),
(83, 'Cayo', 'Julio César', 'Julio César', 'Cayo Julio César o Gayo Julio César a​ (c.100-44 a. C.) fue un político y militar romano del siglo I a. C. miembro de los patricios Julios Césares que alcanzó las más altas magistraturas del Estado romano y dominó la política de la República tras vencer en la guerra civil que le enfrentó al sector más conservador del Senado.\r\n</p><p>\r\nNacido en el seno de la gens Julia, una familia patricia de escasa fortuna, estuvo emparentado con algunos de los hombres más influyentes de su época, como su tío Cayo Mario, quien influiría de manera determinante en su carrera política. En 84 a. C., a los 16 años, el popular Lucio Cornelio Cinna lo nombró flamen Dialis, cargo religioso del que fue relevado por Sila, con quien tuvo conflictos a causa de su matrimonio con la hija de Cinna. Tras escapar de morir a manos de los sicarios del dictador Sila, fue perdonado gracias a la intercesión de los parientes de su madre. Trasladado a la provincia de Asia, combatió en Mitilene como legado de Marco Minucio Termo. Volvió a Roma a la muerte de Sila en 78 a. C., y ejerció por un tiempo la abogacía. En 73 a. C. sucedió a Cayo Aurelio Cota como pontífice, y pronto entró en relación con los cónsules Pompeyo y Craso, cuya amistad le permitiría lanzar su propia carrera política.b​ En 70 a. C. César sirvió como cuestor en la provincia de la Hispania Ulterior y como edil curul en Roma. Durante el desempeño de esa magistratura ofreció unos espectáculos que fueron recordados durante mucho tiempo por el pueblo', 'cesar.jpeg', '2021-05-07 19:29:52', 0),
(84, 'Heródoto', 'de Halicarnaso', 'Heródoto', '<span>Heródoto de Halicarnaso</span> (en griego Ἡρόδοτος Ἁλικαρνᾱσσεύς [Hēródotos Halikarnāsseús]; en latín, Hērŏdŏtus Hălĭcarnassensis) fue un historiador y geógrafo griego que vivió entre el 484 y el 425 a. C., tradicionalmente considerado como el padre de la Historia en el mundo occidental y fue el primero en componer un relato razonado y estructurado de las acciones humanas.1​\r\n</p><p>\r\nDedicó parte de su vida a efectuar viajes para obtener la información y los materiales que le permitieron escribir una obra de gran valor histórico y literario.1​ No obstante, recibió severas críticas, incluso por parte de sus contemporáneos, por incluir en su trabajo anécdotas y digresiones que, aunque proporcionaban informaciones valiosas, poco tenían que ver con el objeto de estudio que se había propuesto: las luchas de los persas contra los griegos.1​', 'herodo.jpg', '2021-05-07 19:35:41', 0),
(85, 'Manolo', 'Muñoz Sánchez', 'Chinato', '<span>Manuel Muñoz Sánchez</span> (Puerto de Béjar, 31 de diciembre de 1952), más conocido como Manolo Chinato, es un poeta español natural de Puerto de Béjar, aunque dice sentirse extremeño.1​ Sus poesías tratan principalmente temas bucólicos, sentimentales y sociales y parte de su obra ha sido publicada en un libro titulado Amor, rebeldía, libertad y sangre. Es conocido por haber colaborado con varios grupos de rock, como Extremoduro, Platero y Tú, Inconscientes, La Fuga o Marea.', 'chinato.jpeg', '2021-05-07 19:51:27', 0),
(86, 'Juan Antonio', 'Cebrián', 'Cebrián', '<span>Juan Antonio Cebrián Zúñiga</span> (Albacete, 30 de noviembre de 1965-Madrid, 20 de octubre de 2007) fue un periodista, escritor y locutor de radio español. Su obra literaria y los programas de radio realizados, especialmente Turno de Noche y La rosa de los vientos, fueron su principal fuente de éxito y reconocimiento. Por su particular estilo ante el micrófono y la variedad y amenidad de los temas de sus programas se convirtió en un referente de los más queridos en la radio española, con gran número de seguidores.', 'jua-cebrian.jpeg', '2021-05-13 15:25:06', 0),
(87, 'Fernando', 'Aramburu', 'Aramburu', 'En 1983 se licenció en Filología Hispánica en la Universidad de Zaragoza. Antes había participado en San Sebastián, su ciudad natal, en la fundación del Grupo CLOC de Arte y Desarte, que entre 1978 y 1981 editó una revista e intervino en la vida cultural del País Vasco, Navarra y Madrid con propuestas de índole surrealista y acciones de todo tipo caracterizadas por una mezcla particular de poesía, contracultura y sentido del humor.\r\n</p><p>\r\nDesde 1985 reside en Alemania, donde ha impartido clases de lengua española a descendientes de emigrantes. En 1996 publicó la novela Fuegos con limón, basada en sus experiencias juveniles con el Grupo CLOC.3​ En 2006 enfocó los estragos causados por la banda terrorista ETA en su libro de relatos Los peces de la amargura.\r\n</p><p>\r\nEn 2009 abandonó la docencia para dedicarse exclusivamente a la creación literaria. Sus libros han sido traducidos a más de treinta idiomas y colabora con frecuencia en la prensa española.', 'aramburu.jpeg', '2021-05-14 17:20:57', 0),
(88, 'Jean', 'M. Auel', 'Auel', 'A los 18 años se casó con Ray Bernard Auel, y a los 25 años ya tenía 5 hijos. La familia reside enPortland, Oregón. Tras finalizar su etapa universitaria, en 1977, comenzó sus investigaciones para escribir un libro ambientado en la Edad de Hielo. Además de pasar muchas horas en la biblioteca estudiando, tomó parte de cursos de supervivencia para aprender cómo construir un refugio de hielo y vivir la experiencia de habitar en uno de aquellos. Aprendió también los métodos primitivos de hacer fuego, curtir el cuero y tallar piedra para hacer herramientas.\r\n</p><p>\r\nFinalmente decidió que en vez de un libro escribiría una saga. El primero de los libros, El clan del oso cavernario, publicado en 1980, fue un auténtico éxito. El libro tenía como protagonista a Ayla, una niña Cromañón que queda huérfana tras un terremoto y es recogida por un grupo de hombres de Neanderthal. Cada uno sus siguientes libros fue creado como una secuela del precedente; sin embargo, aunque la acción continúa inmediatamente de un libro en el siguiente, el tiempo de publicación entre los distintos volúmenes ha demorado hasta 12 años. La saga se compone de seis libros.', 'auel.jpeg', '2021-05-14 22:00:26', 0),
(89, 'Francisco', 'de Quevedo', 'Quevedo', 'Francisco Gómez de Quevedo Villegas y Santibáñez Cevallos (Madrid, 14 de septiembre de 15801​-Villanueva de los Infantes, Ciudad Real, 8 de septiembre de 1645), conocido como Francisco de Quevedo, fue un escritor español del Siglo de Oro. Se trata de uno de los autores más destacados de la historia de la literatura española, conocido especialmente por su obra poética, aunque también escribió narrativa (Buscón, los Sueños), teatro (entremeses y Cómo ha de ser el privado) y diversos opúsculos filosóficos, políticos, teológicos, satíricos, morales, ascéticos, hagiográficos, humanísticos e históricos. Conocedor de muchas lenguas, incluidas las semíticas,fue, asimismo, traductor del latín y del griego, y, entre las lenguas modernas, del italiano y del francés.\r\n</p><p>\r\nOstentó los títulos de señor de Torre de Juan Abad (obtenido en 1620, después de no pocas dificultades2​) y caballero de la Orden de Santiago (su ingreso se hizo oficial el 29 de diciembre de 1617, mediante cédula real firmada por Felipe III, y el título fue despachado el 8 de febrero de 1618).3​', 'quevedo.jpeg', '2021-05-14 22:13:43', 0),
(90, 'Ramón María', 'del Valle-Inclán', 'Valle-Inclán', 'Ramón María Valle Peña (Villanueva de Arosa, 28 de octubre de 1866-Santiago de Compostela, 5 de enero de 1936), también conocido como Ramón del Valle-Inclán o Ramón María del Valle-Inclán, fue un dramaturgo, poeta y novelista español, que formó parte de la corriente literaria denominada modernismo. Se le considera uno de los autores clave de la literatura española del siglo xx.\r\n</p><p>\r\nNovelista, poeta y autor dramático español, además de cuentista, ensayista y periodista. Destacó en todos los géneros que cultivó y fue un modernista de primera hora que satirizó amargamente la sociedad española de su época. Estudió Derecho en Santiago de Compostela, pero interrumpió sus estudios para viajar a México, donde trabajó de periodista en El Correo Español y El Universal. A su regreso a Madrid llevó una vida literaria, adoptando una imagen que parece encarnar algunos de sus personajes. Actor de sí mismo, profesó un auténtico culto a la literatura, por la que sacrificó todo, llevando una vida bohemia de la que corrieron muchas anécdotas. Perdió un brazo durante una pelea. En 1916 visitó el frente francés de la I Guerra Mundial, y en 1922 volvió a viajar a México.', 'Valle-Inclán.jpeg', '2021-05-14 22:24:35', 0),
(91, 'Federico', 'García Lorca', 'Lorca', '<span>Federico García Lorca</span>, (Fuentevaqueros, 5 de junio de 1898 - Víznar, 19 de agosto de 1936) fue un poeta y dramaturgo español.\r\n</p><p>\r\nEn 1915 comienza a estudiar Filosofía y Letras, así como Derecho, en la Universidad de Granada. Forma parte de El Rinconcillo, centro de reunión de los artistas granadinos donde conoce a Manuel de Falla. Entre 1916 y 1917 realiza una serie de viajes por España con sus compañeros de estudios, conociendo a Antonio Machado. En 1919 se traslada a Madrid y se instala en la Residencia de Estudiantes, coincidiendo con numerosos literatos e intelectuales.\r\n</p><p>\r\nJunto a un grupo de intelectuales granadinos funda en 1928 la revista Gallo, de la que sólo salen 2 ejemplares. En 1929 viaja a Nueva York y a Cuba. Dos años después funda el grupo teatral universitario La Barraca, para acercar el teatro al pueblo, y en 1936 vuelve a Granada donde es detenido y fusilado por sus ideas liberales.\r\n', 'federico-garcia-lorca1_22cb027e_1400x2000.jpeg', '2021-05-18 11:17:19', 0),
(92, 'Leopoldo', 'Alas y Ureña', 'Clarín', 'Leopoldo Enrique García-Alas y Ureña, conocido simplemente como Leopoldo Alas y apodado Clarín (Zamora, 25 de abril de 1852—Oviedo, 13 de junio de 1901), fue un escritor y jurista español. Catedrático primero en la Universidad de Zaragoza y más tarde en la de Oviedo, se desempeñó como crítico literario en la prensa periódica de la época, desde donde atacó con punzantes artículos a muchos literatos contemporáneos. Es conocido por su novela <i>La Regenta</i> (1885), considerada como una de las obras cumbres de la literatura española del siglo XIX.1​2​', 'LeopoldoAlasClarin.jpeg', '2021-05-18 11:23:35', 0),
(93, 'Victor-Marie', 'Hugo', 'Victor Hugo', 'VICTOR-MARIE HUGO. Nació el 26 de febrero de 1802, en Besanzón, Francia. Es considerado el máximo exponente del Romanticismo francés.\r\nDe temprana vocación literaria, en 1817 la Academia Francesa le premió un poema. Luego escribió Bug-Jargal (1818), Odas y poesías diversas (1822), Han de Islandia (1823) y Odas y baladas (1826). En su drama histórico Cromwell (1827), plantea la liberación de las restricciones que imponía el Clasicismo. Su segunda obra teatral, Marion de Lorme (1829), fue censurada durante dos años por «demasiado liberal». El 25 de febrero de 1830 su obra teatral en verso Hernani tuvo un tumultuoso estreno que aseguró el éxito del Romanticismo. Entre 1829 y 1843 escribió obras de gran popularidad, como la novela histórica Nuestra Señora de París (1831) y Claude Gueux (1834), donde condenó los sistemas penal y social de la Francia de su tiempo. Además escribió volúmenes de poesía lírica como Orientales (1829), Hojas de otoño (1831), Los cantos del crepúsculo (1835) y Voces interiores (1837). De sus obras teatrales destacan El rey se divierte (1832), adaptado por Verdi en su ópera Rigoletto, el drama en prosa Lucrecia Borgia (1833) y el melodrama Ruy Blas (1838). Los Burgraves (1843) fue un fracaso de público, por lo que en apariencia abandonó la literatura y se dedicó a la política.', 'descarga.jpeg', '2021-05-18 11:28:38', 0),
(94, 'Henry David', 'Thoreau', 'Thoreau', '<span> Hendry D. Thoreau</span>, Concord (EE. UU.), 1817 - Ibídem, 1862. Escritor y ensayista estadounidense. Nacido en el seno de una familia modesta, se graduó en Harvard en 1837 y volvió a Concord, donde inició una profunda amistad con el escritor Ralph Waldo Emerson y entró en contacto con otros pensadores trascendentalistas. En 1845 se estableció en una pequeña cabaña que él mismo construyó cerca del pantano de Walden a fin de simplificar su vida y dedicar todo el tiempo a la escritura y la observación de la naturaleza. En este período surgieron <i>Una semana en los ríos Concord y Merrimack</i> (1849), descripción de una excursión que diez años antes había realizado con su hermano, y, finalmente, <i>Walden</i> (1854), que tuvo una notable acogida.\r\n</p><p>\r\nEn 1846, concluida su vida en el pantano, Thoreau se negó a pagar los impuestos que el gobierno le imponía, como protesta contra la esclavitud en América, motivo por el cual fue encarcelado; este episodio le llevó a escribir <i>Desobediencia Civil</i> (1849), donde establecía la doctrina de la resistencia pasiva que habría de influir más tarde en figuras de la talla de Gandhi y Martin Luther King. Cercano a los postulados del trascendentalismo, su reformismo partía del individuo antes que de la colectividad, y defendía una forma de vida que privilegiara el contacto con la naturaleza.', 'thoreau.jpeg', '2021-05-18 11:36:34', 0),
(95, 'William', 'Blake', 'William Blake', '<span>William Blake</span>, fue, además de poeta, pintor y grabador. Nació el 28 de noviembre de 1757 en Londres, Inglaterra. Estudió en la Royal Academy, pero se rebeló contra su director, pues rechazaba el neoclasicismo. En 1784 abrió una imprenta, y más adelante trabajó como grabador e ilustrador. Realizó ilustraciones para las obras de John Milton, Thomas Gray, la Biblia y otros libros, además de crearlos para sus propios poemas. Falleció en Londres, el 12 de agosto de 1827.\r\n', 'blake.jpeg', '2021-05-18 11:40:00', 0),
(96, 'Jaime', 'Gil de Biedma', 'Gil de Biedma', '<span>Gil de Biedma</span> se encuadra en las llamadas «escuela de Barcelona» y «generación del 50». Sus inicios están más inclinados a lo social, evolucionando posteriormente hacia la denominada poesía de la experiencia, un concepto que se desarrolla en el tiempo de este poeta. Su poesía, caracterizada por el coloquialismo y el carácter intimista, se inspira en su historia personal, aunque no se puede considerar circunstancial. Si sus poemas pueden mostrar una visión irónica, crítica o desencantada de la burguesía o la España de su tiempo, él mismo diría que en su poesía sólo había dos temas: «el paso del tiempo y yo». Francisco Rico habla de una poesía «directa y descarnadamente autobiográfica». No fue un autor prolífico, pero su intensa, lúcida y exquisita obra justifican el papel sumamente destacado que ocupa en la poesía moderna.\r\n', 'biedma.jpeg', '2021-05-18 11:43:18', 0),
(97, 'Juan Ramón', 'Jiménez', 'Juan Ramón Jiménez', '<span>Juan Ramón Jiménez</span> (Moguer, Huelva, 23 de diciembre de 1881 – San Juan, Puerto Rico, 29 de mayo de 1958) es considerado uno de los grandes autores españoles del siglo XX y uno de los mejores poetas contemporáneos en lengua castellana, siendo ganador del Premio Nobel de Literatura en 1956.\r\nNacido en una familia de clase media, Juan Ramón Jiménez cursó estudios de arte en el Puerto de Santa María. En 1896 se estableció en Sevilla para, por una parte, iniciarse en el mundo de la pintura y también para estudiar Derecho, aunque dejó atrás la facultad en 1899.\r\nEn Sevilla comenzó a colaborar con diarios y revistas, actividad literaria que mantuvo en Madrid donde publicó por primera vez Ninfas y Almas de violeta. Debido a motivos familiares, cayó en una honda depresión de la que comenzó a recuperarse en 1901, con la publicación de Arias Tristes. En 1905 muere su padre, momento que marcó gran parte de su obra posterior, y Jiménez decidió volver a Moguer, donde escribió la mayor parte de su obra: más de quince libros en verso y dos alternando prosa, entre los que habría que destacar <i>Baladas de Primavera</i>, <i>Libros de amor</i> o <i>Melancolía</i>.', 'jimenez.jpeg', '2021-05-18 11:47:04', 0),
(98, 'José Luis', 'Alonso de Santos', 'Alonso de Santos', '<span>José Luis Alonso de Santos</span> (Valladolid, 23 de agosto de 1942). Desde 1959 vive en Madrid, donde se licenció en Ciencias de la Información (Imagen), Filosofía y Letras (Psicología), y cursó estudios teatrales en el Teatro Estudio de Madrid. Su carrera teatral se inició en 1964 en los grupos de Teatro Independiente, donde trabajó como actor, director y dramaturgo.\r\nHa sido director de la Real Escuela Superior de Arte Dramático de Madrid, (y Catedrático de Escritura Dramática), y director de la Compañía Nacional de Teatro Clásico.', '225732.jpeg', '2021-05-18 11:52:20', 0),
(99, 'Publio', 'Virgilio Marón', 'Virgilio', '<span>Publio Virgilio Marón</span>. Nació el 15 de octubre de 70 a.C. en una granja cercana a Mantua.\r\nCon doce años se trasladó a Cremona para cursar sus primeros estudios, después partió a Milán y con 17 años a Roma para continuar su formación. Allí aprendió retórica y filosofía.\r\nTras la guerra civil entre Julio Cesar y Pompeyo se expropió la granja de su familia. Sus amigos lo presentaron a Octavio, quien estaba a punto de ser el emperador Augusto. Mecenas, principal ministro de Augusto, fue su mejor amigo. Gracias a su generosidad pudo consagrarse enteramente a la literatura.\r\nEstudió a los poetas griegos. Siguiendo a Theocritus como modelo, escribió su Égloga, poemas pastorales. Por sugerencia de Mecenas escribió un trabajo en el arte del cultivo y los encantos de vida campiña a los que llamó los Georgicos. Un año después inicia su gran obra, la Eneida. Tomó como héroe al troyano Eneas, supuestamente fundador de la nación Romana. Había consagrado más de diez años a este trabajo cuando en una visita a Grecia contrajo una fiebre fatal. En su lecho de muerte rogó que la Eneida se destruyera.', 'virgilio.jpeg', '2021-05-18 11:59:30', 0),
(100, 'Ignacio', 'González Vegas', 'Nacho Vegas', '<span>Ignacio González Vegas</span>, (más conocido como <span>Nacho Vegas</span>) (Gijón, 9 de diciembre de 1974) es un cantautor español que estilísticamente oscila entre la música folk y el rock. Suele cantar en solitario o con el grupo La Cuarta Trama Asturiana.', 'Nacho_Vegas_0055.jpeg', '2021-05-18 12:08:13', 0),
(101, 'Garcilaso', 'de la Vega', 'Garcilaso de la Vega', '<span>Garcilaso de la Vega</span> (Toledo, entre 1498 y 1503 - Niza, Ducado de Saboya, 1536) fue un poeta y militar español del Siglo de Oro, considerado uno de los escritores de habla hispana más grandes de la historia.\r\n</p><p>\r\nPerteneciente a una noble familia castellana, participó ya desde muy joven en las intrigas políticas de Castilla. En 1510 ingresó en la corte del emperador Carlos I y tomó parte en numerosas batallas militares y políticas. Participó en la expedición a Rodas (1522) junto con Boscán y en 1523 fue nombrado caballero de Santiago.\r\n\r\nEn 1530 se desplazó con Carlos I a Bolonia, donde éste fue coronado. Permaneció allí un año, hasta que, debido a una cuestión personal mantenida en secreto, fue desterrado a la isla de Schut, en el Danubio, y después a Nápoles, donde residió a partir de entonces. Herido de muerte en combate, durante el asalto de la fortaleza de Muy, en Provenza, fue trasladado a Niza, donde murió.\r\n</p><p>\r\nSu escasa obra conservada, escrita entre 1526 y 1535, fue publicada póstumamente junto con la de Boscán, en Barcelona, bajo el título de Las obras de Boscán con algunas de Garcilaso de la Vega (1543), libro que inauguró el Renacimiento literario en las letras hispánicas. Sin embargo, es probable que antes hubiera escrito poesía de corte tradicional, y que fuese ya un poeta conocido.', 'garcilaso.jpeg', '2021-05-18 13:12:56', 0),
(102, 'Frank', 'Baer', 'Frank Baer', 'Escritor y periodista alemán, nacido en Dresde en 1938. Debe su fama el éxito de su novela histórica <i>El Puente de Alcantara</i> publicada en 1991 y que constituyó todo un éxito editorial.\r\n</p><p>\r\nNacido en Dresde en 1938, Baer se educó en la ciudad de Würzburg. Estudió filología y luego pasó a trabajar como periodista, en prensa escrita para luego pasar a la Radio televisión bávara. Consiguió su primer éxito con su primera novela <i>Die Magermilchbánde</i>, que tuvo mucho éxito en su país, donde fue adaptada al cine. Su siguiente éxito y el que le dio fama mundial, <i>El Puente de Alcantara</i>. Se trata de una novela histórica ambientada en la España del siglo XI y en su diversidad cultural.', 'vvaa.jpeg', '2021-05-18 13:21:25', 0),
(103, 'José', 'de Sousa Saramago', 'Saramago', '<span>José de Sousa Saramago</span> (Azinhaga, Santarém, Portugal, 16 de noviembre de 1922 - Tías, Lanzarote, España, 18 de junio de 2010) fue un escritor, novelista, poeta, periodista y dramaturgo portugués. En 1998 le fue concedido el Premio Nobel de Literatura. La Academia Sueca destacó su capacidad para «volver comprensible una realidad huidiza, con parábolas sostenidas por la imaginación, la compasión y la ironía».', 'preto_branco_foto_jose_saramago_4.jpeg', '2021-05-18 13:24:40', 0),
(104, 'Michael', 'Crichton', 'Michael Crichton', '<span>Michael Crichton</span> (Chicago, Illinois, 23 de octubre de 1942 - Los Ángeles, California, 4 de noviembre de 2008) fue un médico, escritor y cineasta estadounidense, considerado el iniciador del estilo narrativo llamado tecno-thriller.\r\n</p><p>\r\nSe han vendido más de 150 millones de copias literarias de sus obras, la mayoría best-sellers, que han sido traducidas a más de treinta idiomas y de las cuales doce se han llevado al cine, a destacar <i>Devoradores de cadáveres</i> (1973), <i>Parque Jurásico</i> (1990) o <i>Twister</i> (1996).\r\n</p><p>\r\nQuizá principalmente conocido por ser el padre de Parque Jurásico, lo es también de la prestigiosa serie de televisión, ER (Urgencias). Es la única persona que ha tenido: el libro número uno (Acoso), la película número uno (Parque Jurásico) y la serie de televisión número uno (Urgencias - ER), en el mismo instante.', 'crichton.jpeg', '2021-05-18 13:28:36', 0),
(105, 'Matilde', 'Asensi', 'Matilde Asensi', 'Desde pequeña quería ser escritora y aunque no comenzó a publicar a una edad temprana, lleva escribiendo \"toda la vida\". Muy aficionada a la lectura desde su infancia, \"algunas de sus compañeras del colegio Teresianas de Alicante todavía recuerdan que, a veces, sacrificaba el recreo para quedarse leyendo en el aula\".</p><p>\r\nEstudió periodismo en la Universidad Autónoma de Barcelona. Trabajó durante tres años en los informativos de Radio Alicante-SER, después pasó a Radio Nacional de España (RNE) como responsable de los informativos locales y provinciales, ejerciendo simultáneamente como corresponsal de la agencia EFE, y colaborando en los diarios provinciales La Verdad e Información.\r\nEn 1991, después de comprender que el periodismo le quitaba el tiempo que necesitaba para escribir ficción, se presentó a una plaza de administrativa en el Servicio Valenciano de Salud, para tener un horario que le permitiera dedicarse a su verdadera vocación.\r\n', 'asensi.jpeg', '2021-05-18 13:36:10', 0),
(106, 'Eric Arthur', 'Blair', 'George Orwell', '<span>George Orwell</span>, seudónimo de Eric Arthur Blair (Motihari, Raj Británico, 25-6-1903 – Londres, Reino Unido, 21-1-1950), fue un escritor y periodista británico, cuya obra lleva la marca de las experiencias personales vividas por el autor en tres etapas de su vida: su posición en contra del imperialismo británico que lo llevó al compromiso como representante de las fuerzas del orden colonial en Birmania durante su juventud; a favor de la justicia social, después de haber observado y sufrido las condiciones de vida de las clases sociales de los trabajadores de Londres y París; en contra de los totalitarismos nazi y stalinista tras su participación en la Guerra Civil Española.\r\n</p><p>\r\nOrwell es uno de los ensayistas en lengua inglesa más destacados del siglo XX, y más conocido por dos novelas críticas con el totalitarismo: Rebelión en la granja y 1984 (la cual escribió y publicó en sus últimos años de vida).\r\n</p><p>\r\nTestigo de su época, Orwell es, en los años treinta y cuarenta, cronista, crítico de literatura y novelista. De su producción variada, las dos obras que tuvieron un éxito más duradero fueron dos textos publicados después de la Segunda Guerra Mundial: Rebelión en la granja y, sobre todo 1984, novela en la que crea el concepto de «Gran Hermano» que desde entonces pasó al lenguaje común de la crítica de las técnicas modernas de vigilancia.', 'george-orwell-orig.jpeg', '2021-05-18 13:44:18', 0),
(107, 'Dan', 'Simmons', 'Dan Simmons', '<span>Dan Simmons</span> (4 de abril de 1948) es un escritor estadounidense. Su obra más conocida es <i>Hyperion</i> (1989), ganadora de los premios de ciencia ficción Hugo y Locus. <i>Hyperion</i> es la primera novela de la tetralogía <i>Los Cantos de Hyperion</i>, completada por las obras <i>La caída de Hyperion</i>, <i>Endymion</i> y <i>El Ascenso de Endymion</i>. Desde el año 2009 se está produciendo una película basada en las dos primera novelas con el título Hyperion Cantos, por parte de GK Films.\r\n</p><p>\r\n<span>Dan Simmons</span> suele cultivar los géneros de ciencia ficción, fantasía y terror, a veces mezclados en la misma obra.\r\n', 'Dan_Simmons.jpeg', '2021-05-18 13:53:40', 0),
(108, 'Anne', 'Rice', 'Anne Rice', '<span>Anne Rice</span>, nació con el nombre Howard Allen O\'Brien, (Nueva Orleans, 1941), es una escritora estadounidense autora de bestsellers de temática gótica y religiosa. Estudió Filosofía y Letras en la Universidad de San Francisco donde se doctoró en 1972 en Escritura Creativa. </p><p> Desde pequeña estuvo interesada en temas de vampiros y brujas. En su carrera como escritora, también ha publicado con los pseudónimos Anne Rampling y A. N. Roquelaure, este último en sus primeros años y para temas más orientados a adultos, sus libros contienen constantemente mezclas de lo horroroso con lo lujurioso, destacándose en sus historias de ficción los sentimientos homoeróticos que sienten sus personajes. Sus más importantes obras bajo estos seudónimos son la <i>Trilogía de la Bella Durmiente</i> </p><p> Su obra más conocida es <i>Crónicas Vampíricas</i>, cuya temática principal es el amor, la muerte, la inmortalidad, el existencialismo y las condiciones humanas.', 'AnneRiceFeatured.jpeg', '2021-05-18 13:58:33', 0),
(109, 'Boris', 'Vian', 'Boris Vian', '<span>Boris Vian</span> (10 de marzo de 1920 - 23 de junio de 1959), escritor francés, nació en el seno de una adinerada familia afincada en Ville d’Avray (Francia), una localidad cercana a Versalles. Su madre, pianista e intérprete de arpa, se llamaba Yvonne Revenez, y su padre, rentista y empresario de talante libertario, era Paul Vian.\r\n</p><p>\r\n<span>Boris Vian</span> participó de lleno en la bohemia parisina, y además de su faceta literaria y su trabajo de burócrata (en el que estuvo pocos años), se ocupó en diversos oficios y aficiones, como trompetista y crítico de jazz, actor, cantante de cabaret, compositor y productor. Además organizaba regulares y animadas fiestas con la ayuda de sus hermanos Ninon, Lélio y Alain.', 'Boris_Vian_-_WIKI-713x1024.jpeg', '2021-05-18 14:06:20', 0),
(110, 'Jon', 'Krakauer', 'Krakauer', '<span>Jon Krakauer</span> (n. 12 de abril de 1954) es un periodista, escritor y montañero estadounidense, reconocido por sus libros sobre alpinismo. En 2003, se incursionó en el campo del periodismo de investigación.\r\nNació en Brookline, Massachusetts pero creció en Corvallis, Oregón desde los dos años. Fue el tercero de cinco hermanos. Compitió en tenis en Corvallis High School y se graduó en 1972. Estudió en Hampshire College en Massachusetts, obteniendo su título en estudios medioambientales en 1976. En 1977, conoció a la escaladora Linda Mariam Moore, con quien se casaría tres años después.', 'vvaa.jpeg', '2021-05-18 14:55:27', 0),
(111, 'Ryszard', 'Kapuściński', 'Kapuściński', '<span>Ryszard Kapuściński</span>, Pinsk, Bielorrusia, entonces parte de Polonia, el 4 de marzo de 1932 - Varsovia, 23 de enero de 2007) fue un periodista, historiador, escritor, ensayista y poeta.\r\n</p><p>\r\nEstudió en la Universidad de Varsovia historia, aunque finalmente se dedicó al periodismo. Colaboró en Time, The New York Times, La Jornada y Frankfurter Allgemeine Zeitung. Compaginó desde 1962 sus colaboraciones periodísticas con la actividad literaria y ejerció como profesor en varias universidades.\r\n</p><p>\r\nYa con diecisiete años publicó poemas en la revista Hoy y Mañana, y en el año 1953, ingresó en el Partido Comunista de su país, licenciándose en Historia en la Universidad de Varsovia tres años después. Comenzó su carrera periodística en el periódico Bandera de la Juventud, y en 1968, fue nombrado corresponsal de la Agencia de Prensa Polaca en el extranjero, trabajando en África, Latinoamérica y Asia, compaginando este trabajo con la escritura de libros. Recibió numerosos honores y premios, como el Príncipe de Asturias de Comunicación y Humanidades en el año 2003, y doctorados Honoris Causa por numerosas universidades. Fue también miembro de la Academia Europea de las Ciencias y las Artes.', '6255.jpeg', '2021-05-18 15:04:42', 0),
(112, 'Jean-Louis', 'Kerouac', 'Jack Kerouac', '<span>Jack Kerouac</span>. Nació en Lowell, Massachusetts, en 1922, en el seno de una familia de origen franco-canadiense. Estudió en escuelas católicas y posteriormente en la Universidad de Columbia, aunque no llegó a graduarse. Recorrió Estados Unidos trabajando en múltiples empleos. Influido por las lecturas de London, Hemingway, Saroyan, Wolfe y Joyce, su primera novela, La ciudad y el campo (1950), lo convirtió en uno de los patriarcas de la Generación Beat junto a William Burroughs y Allen Ginsberg. Entre sus obras más importantes están: En el camino (1957), Los subterráneos (1958), Los Vagabundos del Dharma (1958), Doctor Sax (1959) y Big Sur (1962). Después de alcanzar el reconocimiento literario, se retiró a su natal Lowell, se casó y abandonó toda actividad pública. Murió en St. Petersburg, Florida, en 1969, debido a un derrame interno producto de la cirrosis.', 'vvaa.jpeg', '2021-05-18 15:11:04', 0),
(113, 'Chuck', 'Palahniuk', 'Palahniuk', 'Nació el 21 de febrero de 1964 en Portland, Oregón. Cursó estudios de periodismo y trabajó en una cadena de montaje, en una fábrica de contenedores y mecánico entre otros oficios. Se cuenta que en 1943 su abuelo mató a su esposa y buscó por la casa a su hijo de cuatro años hasta que decidió pegarse un tiro. Ese niño superviviente, padre de Chuck, fue asesinado en las montañas de Idaho por un desconocido. Palahniuk padre tenía 59 años. En esas fechas, la película El Club de la lucha, basada en su novela, dirigida por David Fincher y protagonizada por Brad Pitt y Edward Norton, conmociona a Estados Unidos. Hasta que su novela se convirtió en un guión de cine, <span>Chuck Palahniuk</span> había llevado una vida corriente como los personajes de El Club de la lucha. Fue voluntario en una institución que alberga a los sin techo y trabajo en un hospicio cuidando a pacientes terminales. Empezó a escribir en el taller de escritura creativa que dirigía Tom Spanbauer, autor de \"El hombre que se enamoró de la luna\". Cada martes el grupo se reunía a criticar el trabajo de los otros y El club de la lucha se gestó en tres meses: \"Escribía en todas partes: debajo de camiones, en la lavandería, en el gimnasio. Fue más un dictado que un escrito original, más o menos se fue escribiendo sola\". Su siguiente obra fue Superviviente, donde retrata un mundo igual de diabólico y desesperado que en su anterior obra. Una secta que se sacrifica en masa y un superviviente, el narrador de la novela, convertido en un mesías telefónico sin piedad ni escrúpulos, que reparte consejos a las almas más desgraciadas. Los derechos de la novela los compró la Fox.', 'vvaa.jpeg', '2021-05-18 15:17:08', 0),
(114, 'Joseph', 'Conrad', 'Conrad', '<span>Joseph Conrad</span>, escritor británico de origen polaco, nació en Berdyczów el 3 de diciembre de 1857. Debido a la profundidad de su obra, en la que analiza los rincones más débiles y oscuros del alma humana, está considerado uno de los grandes autores en lengua inglesa del siglo XIX.\r\n</p><p>\r\n<span>Conrad</span> nació en el seno de una familia noble, muy activa dentro de los movimientos nacionalista polacos, algo que supuso su exilio tras la insurrección polaca de 1863. Tras quedar huérfano marchó a Marsella donde, a los 17 años, se enroló como marinero en un barco mercante.\r\n</p><p>\r\nDe sus experiencias como marino por las costas de Sudamérica, India o África se nutren muchos de sus posteriores relatos, así como de sus vivencias durante las Guerras Carlistas en España, en las que participó en el bando carlista.', 'Joseph-Conrad-1916.jpeg', '2021-05-18 15:24:09', 0),
(115, 'Javier', 'Cercas Mena', 'Cercas', 'Hijo de un veterinario rural, cuando contaba cuatro años, en 1966 su familia se trasladó a Tarragona, y allí estudió con los jesuitas. Es primo carnal del político Alejandro Cercas.\r\nA los quince años la lectura de Jorge Luis Borges le inclinó para siempre a la escritura. En 1985 se licenció en Filología Hispánica en la Universidad Autónoma de Barcelona y más tarde se doctoró.\r\nTrabajó durante dos años en la Universidad de Illinois en Urbana; mientras estaba allí se publicó su primera novela El móvil y compuso su segunda novela; desde 1989 es profesor de literatura española en la Universidad de Gerona.\r\nEstá casado y tiene un hijo.', 'cercas.jpeg', '2021-05-18 15:32:19', 0),
(116, 'Gaston', 'Rebuffat', 'Rebuffat', 'Natural de Marsella, tras un aprendizaje en Calanques, consigue el título de guía en 1942 e ingresa en la Escuela Nacional de Alpinismo. Guía emblemático, asciende prácticamente todas las vías difíciles de su época en los Alpes, entre las cuales destacan las caras norte del Espolón Walker, del Eiger, del Cervino y del Dru. Participa en la histórica expedición francesa de 1950 que logra el Annapurna, el primer ochomil en ser ascendido. Escritor de contenido lirismo y cineasta de talento, es el paradigma del hombre de montaña completo. También se le conoce por el apelativo \"el guía del jersey bonito\", por el característico dibujo del mismo. Fue uno de los alpinistas más destacados de su generación y uno de los personajes más completos y polivalentes de la historia del alpinismo.', 'vvaa.jpeg', '2021-05-18 15:34:19', 0),
(117, 'Cormac', 'McCarthy', 'Cormac McCarthy', '<span>Cormac McCarthy</span> (Providence, Rhode Island, 1933), es un escritor estadounidense ganador del Premio Pulitzer de ficción por La carretera (2006) y del National Book Award por <i>Todos los hermosos caballos</i> (1992).\r\n</p><p>\r\nEn Knoxville acudió al instituto católico de la ciudad antes de ingresar en la Universidad de Tennessee, también ubicada en Knoxville, y pasar varios años en el ejército del aire de su país. Sin terminar sus estudios, Cormac publicó con influencias de William Faulkner su primera novela, <i>El Guardián Del Vergel</i> (1965), libro ambientado en una localidad rural de Tennessee que liga a dos personajes, John Wesley Rattner y Marion Slyder, vinculados por un hecho criminal.', 'mccar.jpg', '2021-05-18 15:39:24', 0),
(118, 'Irvine', 'Welsh', 'Welsh', '<span>Irvine Welsh</span> nació en 1958 en Escocia y creció en el corazón del barrio obrero de Muirhouse.\r\n</p><p>\r\nDejó la escuela a los dieciséis años, cambiando multitud de veces de trabajo hasta que emigró a Londres con el movimiento punk. A finales de los ochenta volvió a Escocia, donde trabajó para el Edinburgh District Council a la par que se graduaba en la universidad y se dedicaba a la escritura.\r\n</p><p>\r\nSu primera novela, <i>Trainspotting</i>, tuvo un éxito extraordinario, así como su adaptación cinematográfica.', 'vvaa.jpeg', '2021-05-18 15:53:43', 0),
(119, 'Alberto', 'Vázquez-Figueroa', 'Figueroa', 'Natural de Santa Cruz de Tenerife (Canarias, España), nací el 11 de octubre de 1936. Antes de cumplir un año, mi familia y yo fuimos deportados por motivos políticos a África, donde permanecí entre Marruecos y el Sahara hasta cumplir los dieciséis años. A los veinte, me convertí en profesor de submarinismo a bordo del buque-escuela Cruz del Sur.\r\nCursé estudios de periodismo y en 1962 comencé a trabajar como enviado especial de Destino, La Vanguardia y, posteriormente, de Televisión Española. Durante quince años visité casi un centenar de países y fui testigo de numerosos acontecimientos clave de nuestro tiempo, entre ellos, las guerras y revoluciones de Guinea, Chad, Congo, República Dominicana, Bolivia, Guatemala, etc. Las secuelas de un grave accidente de inmersión me obligaron a abandonar mis actividades como enviado especial.', 'vazquez-fi.jpeg', '2021-05-18 15:56:02', 0),
(120, 'Keith', 'Richards', 'Keith Richards', '<span>Keith Richards</span> (Dartford, Kent, Inglaterra; 18 de diciembre de 1943) es un guitarrista, cantante, compositor, productor y actor británico. Reconocido mundialmente por ser fundador (junto a Brian Jones) de la banda de rock The Rolling Stones parte ininterrumpidamente de la misma desde 1962, y junto al cantante Mick Jagger y el batería Charlie Watts (únicos elementos que permanecen de la formación original) son la asociación más larga en la historia del rock.\r\n</p><p>\r\nA partir de mediados de la década de 1960 se convirtió junto a Jagger en el motor creativo de los Stones, componiendo desde esa época casi todas las canciones del grupo, y en algunas ocasiones interpretando la voz principal. La revista Rolling Stone enumera catorce canciones escritas por la dupla Jagger/Richards en su Las 500 mejores canciones de todos los tiempos según Rolling Stone.\r\n</p><p>\r\nPese a que casi toda su carrera musical la ha desarrollado como integrante de este grupo inglés, al igual que Jagger, también materializó su proyecto solista X-Pensive Winos y se unió a la banda The New Barbarians junto con su compañero stone Ronnie Wood. Su material solistas, del mismo modo que las composiciones de la banda, se centran en temas rock con influencias en el rhythm and blues y el blues.\r\n</p><p>\r\nDesde finales de la década de 1970 arrastró grandes diferencias con Jagger, situación que llegó a su punto máximo durante la mitad de la década de 1980, que coincidió con la edición de Talk is Cheap (1988) y posteriormente Main Offender (1992). Fue elegido por la revista Rolling Stone en el puesto número 4 de la Lista de los 100 guitarristas más grandes de todos los tiempos.\r\n</p><p>\r\nCon más de 50 años de carrera, su patrimonio neto es de aproximadamente $ 340 millones de dólares, lo que lo convierte en la undécima estrella de rock más rica del mundo', 'Keith_Richards_por_Richard_Burbridgejpg_217bddc9c1221f947c17568e86a2dbff.jpeg', '2021-05-18 18:46:10', 0);
INSERT INTO `autor` (`id`, `nombre`, `apellidos`, `alias`, `bio`, `foto`, `fecha`, `dibujante`) VALUES
(121, 'Enrique', ' Ortiz de Landázuri', 'Bunbury', '<span>Enrique Ortiz de Landázuri Izarduy</span> (Zaragoza, España, 11 de agosto de 1967),1​ más conocido como <span>Enrique Bunbury</span>, es un cantante, compositor y músico español. Es reconocido por ser el vocalista de la banda de rock Héroes del Silencio.\r\n</p><p>\r\nComenzó su actividad musical durante los primeros años de la década de los 80 formando parte de Apocalipsis, Rebel Waltz, Proceso Entrópico y Zumo de Vidrio, aunque su consagración llegó siendo el vocalista y líder de la banda Héroes del Silencio, grupo musical de gran éxito y considerado por muchos una de las mejores bandas de rock en español.2​3​ Después de la ruptura del grupo en 1996, comenzó su carrera como solista al año siguiente consolidándose como una importante figura en el ámbito musical español e hispanoamericano.\r\n</p><p>\r\nLa trayectoria solista del cantante a diferencia de Héroes del Silencio ha sido muy diferente en cuanto al sonido musical, manteniendo la esencia del rock, llegando a experimentar varios ritmos desde música electrónica y música árabe en los primeros tiempos, pasando por música de cabaret, rancheras, blues, flamenco y tangos,4​ hasta salsa, milongas, boleros y cumbias en uno de sus últimos trabajos donde homenajea a América Latina', 'bunbury-002.jpeg', '2021-05-18 18:53:07', 0),
(122, 'José María', 'Sanz Beltrán', 'Loquilo', '<span>José María Sanz Beltrán</span>, o también conocido por su nombre artístico <span>Loquillo</span> o \"Loco\", es un cantante español de rock and roll. Hasta mediados de 2007, lo acompañó la banda Los Trogloditas. Actualmente se presenta solo como \"Loquillo\", si bien, acompañado de sus colaboradores habituales, como Igor Paskual o Josu García', 'Loquillo.jpeg', '2021-05-18 19:39:55', 0),
(123, 'Adolfo', 'Cabrales', 'Fito Cabrales', '<span>Adolfo Cabrales</span>, conocido como «Fito», nació en la calle bilbaína de Zabala, pasando parte de su infancia y adolescencia en Laredo (Cantabria) y en Málaga.​ En su juventud trabajó de camarero en un prostíbulo del que su padre era jefe,​ en la calle de Las Cortes (más conocida por La Palanca).​ En la versión en directo del tema Un ABC sin letras que aparece en el disco <i>A pelo</i> de Platero y Tú, <span>Fito</span> comenta que «curraba en La Palanca y ahora soplo en Barrenkale (una de las Siete Calles del Casco Viejo bilbaíno)». Estas no son las únicas referencias en la obra de <span>Fito</span> a esta zona de la capital vizcaína: en el disco de Platero y Tú Muy deficiente hay una canción ambientada en el cercano puente de Cantalojas en la que alude a una «chica de las Cortes» (es decir, una prostituta). En esta época comienza también sus problemas con las drogas; aunque en la actualidad asegura «estar limpio»​ durante años abusó del «speed». Varias canciones suyas (por ejemplo Marabao) hablan de esta droga. En Corazón oxidado, de Fito & Fitipaldis, dice «mi pobre corazón, que está enganchado al speed»; sin embargo, en la versión del disco en directo de 2004 Vivo… para contarlo, deja la frase a medias, alejándose del micro.', '33568452--624x624.jpeg', '2021-05-18 19:46:07', 0),
(124, 'Rosendo', 'Mercado Ruiz', 'Rosendo', '<span>Rosendo Mercado Ruiz</span> (Madrid, 23 de febrero de 1954), más conocido simplemente como Rosendo, es un guitarrista, cantante y compositor español de rock . Formó parte de los grupos Ñu y Leño, y es considerado uno de los más importantes representantes del rock español.', 'Rosendo-Mercado-foto-pepe-castro.jpeg', '2021-05-18 19:48:41', 0),
(125, 'Julián', 'Hernández Rodríguez-Cebral', 'Julián Hernández', '<span>Julián Hernández Rodríguez-Cebral</span>, es un músico y cantante español, fundador y líder del grupo Siniestro Total, que también se ha desempeñado como escritor, productor discográfico y actor', '5374f4f6259eb3.94912252.jpg', '2021-05-18 19:50:35', 0),
(126, 'Enrique', 'González Morales', 'Quique González', '<span>Enrique González Morales</span>, conocido artísticamente como <span>Quique González</span> (Madrid, 17 de octubre de 1973), es un músico de rock español.', 'quq.jpeg', '2021-05-18 19:52:23', 0),
(127, 'Thomas', 'Harris', 'Thomas Harris', '<span>Thomas Harris</span>(nacido el 11 de abril de 1940 en Jackson, Tennessee) es un escritor estadounidense célebre por ser el autor de la serie de novelas de suspense cuyo protagonista es el psiquiatra caníbal Hannibal Lecter, adaptadas al cine en cinco películas y una serie de televisión.\r\n</p><p>\r\nHijo único de un ingeniero eléctrico, Harris nació en Jackson, Tennessee,​ pero se mudó a Rich, Mississippi, siendo niño. Asistió a la bautista Baylor University en Waco, Texas, donde en 1964 se licenció en lengua inglesa.​ Mientras estaba en la universidad trabajó como reportero en el periódico local, el Waco Tribune-Herald, donde cubrió los casos de sucesos y policiales. Se mudó en 1968 a Nueva York para trabajar en la agencia Associated Press hasta 1974, cuando comenzó a escribir su primera novela, Domingo Negro.', 'H8flCkX.jpeg', '2021-05-19 12:35:33', 0),
(128, 'Antonio', 'Gala', 'Antonio Gala', '<span>Antonio Gala</span>, nació en Brazatortas (Ciudad Real) donde su padre ejercía de médico, el 2 de octubre de 1930, pero a los pocos meses la familia se traslada a Córdoba. Se licenció en Derecho, Filosofía y Letras y Ciencias Políticas y Económicas.\r\n</p><p>\r\nDramaturgo, novelista, poeta y ensayista, con su primera incursión en la novela, <i>El manuscrito carmesí</i>, ganó el Premio Planeta en 1990. A ésta le siguieron <i>La pasión turca</i>, con una conocida adaptación cinematográfica, <i>Más allá del jardín</i>, <i>Las afueras de Dios</i>, <i>El imposible olvido</i> y los libros de relatos: <i>Los invitados al jardín</i> y <i>El dueño de la herida</i>.', 'antoniogala.jpeg', '2021-05-19 12:43:38', 0),
(129, 'Richard', 'Matheson', 'Matheson', '<span>Richard Matheson</span> nació en New Jersey (Estados Unidos) el 20 de febrero de 1926, empezó a escribir a la corta edad de siete años y sus primeras publicaciones fueron algunos poemas e historias cortas en el periódico Brooklyn Eagle. Estudió periodismo.\r\n</p><p>\r\nTras su traslado a California, Matheson empieza a escribir relatos de fantasía, terror y ciencia ficción, envió un primer relato, Nacido de hombre y mujer a la revista «Magazine of fantasy and Science Fiction», que lo publicó con gran éxito en 1950, esta obra es una recreación moderna del clásico Frankestein de Mary Shelley.\r\n', 'persimg11983.jpeg', '2021-05-19 12:51:56', 0),
(130, 'Roberto', 'Saviano', 'Saviano', '<span>Roberto Saviano</span> nació en 1979 en Nápoles, donde vivía y trabajaba hasta que en septiembre de 2006 el éxito de Gomorra, su primer libro, en el que cita nombres y lugares, le ha obligado a vivir oculto y bajo protección policial permanente. Miembro del grupo de estudios sobre la Camorra y la ilegalidad, y colaborador de los periódicos Il Manifesto e Il Corriere del Mezzogiorno, sus narraciones y reportajes han aparecido en numerosas publicaciones y antologías.', 'Vb7L2uQ.jpeg', '2021-05-19 12:56:36', 0),
(131, 'Arturo', 'Barea', 'Barea', '<span>Arturo Barea</span>. (Badajoz, 1897 – Faringdon, Inglaterra, 1957). Escritor español.</p><p>\r\nSu padre trabajaba en el servicio de reclutamiento y murió a los 34 años. Su madre y hermanos se trasladaron a Madrid donde ella trabajó de lavandera. Barea fue educado al principio por unos tíos acomodados (su madre y hermanos siguieron con su vida humilde), pero al morir también el tío, dejó los estudios a los trece años. Trabajó de aprendiz en un comercio, y más tarde en un banco hasta 1914. Le llamaron a filas en 1920 y tuvo que ir a Marruecos, donde vivió la derrota de Annual en 1921. Se casó en 1924 con Aurelia Rimaldos, y tuvo cuatro hijos, pero el matrimonio no fue afortunado y terminó separándose.', 'Arturo_Barea.jpeg', '2021-05-19 12:59:23', 0),
(132, 'Erich María', 'Remarque', 'Remarque', '', 'vvaa.jpeg', '2021-05-19 13:47:10', 0),
(133, 'Jorge Mario Pedro', 'Vargas Llosa', 'Mario Vargas Llosa', '<span>Jorge Mario Pedro Vargas Llosa</span> nació un domingo 28 de marzo de 1936 en la ciudad de Arequipa (Perú). Sus padres, Ernesto Vargas Maldonado y Dora Llosa Ureta, ya estaban separados cuando vino al mundo y no conocería a su progenitor hasta los diez años de edad.\r\n</p><p>\r\nEstudia la primaria hasta el cuarto año en el Colegio La Salle de Cochabamba en Bolivia. En 1945 su familia vuelve al Perú y se instala en la ciudad de Piura, donde cursa el quinto grado en el Colegio Salesiano de esa ciudad. Culmina su educación primaria en Lima e inicia la secundaria en el Colegio La Salle.\r\n</p><p>\r\nEl reencuentro con su padre significa un cambio en la formación del adolescente, que ingresa al Colegio Militar Leoncio Prado de Lima, en el cual sólo estudia el tercer y cuarto año; sin embargo, termina la secundaria en el Colegio San Miguel de Piura.', 'Qf0LPtsx_o.jpeg', '2021-05-19 14:01:12', 0),
(134, 'George Raymond Richard', 'Martin', 'George R.R. Martin', '<span>George Raymond Richard Martin</span>, nació el 20 de septiembre de 1948, en Bayonne, Nueva Jersey, EE. UU.\r\n</p><p>\r\nEs licenciado en Periodismo por la Northwestern University en Evanston, obteniendo un master también en Periodismo en la misma universidad, y fue profesor de Periodismo en el Clarke Institute de Iowa.\r\n</p><p>\r\nDurante varios años vivió en Hollywood, trabajando como guionista para la CBS en la que fue coproductor. Desde 1996, se dedica en exclusiva a la literatura.\r\n</p><p>\r\nHa recibido en varias ocasiones los premios Hugo, Nebula, Locus e Ignotus, y también el Bram Stoker.\r\n</p><p>\r\nDe entre su obra cabría destacar, además de sus relatos cortos y novelas de ciencia ficción y horror, su saga fantástica <i>Canción de Hielo y Fuego</i>, de gran éxito internacional y que ha sido adaptada a la televisión por la productora HBO.\r\n', 'rs-18919-georgex1800-1402678578.jpeg', '2021-05-20 13:31:08', 0),
(135, 'Rita Monaldi', 'Francesco Srti', 'Monaldi & Sorti', 'Monaldi y Sorti o Rita Monaldi (nacida en 1966) y Francesco Sorti (nacido en 1964) son un matrimonio italiano, autores de varios libros y novelas de género histórico.1​ Rita Monaldi es periodista y licenciada en Filología Clásica, y Francesco Sorti es también periodista, además de musicólogo especializado en el siglo XVII. Actualmente residen en Viena, autoexiliados, después de que su primera novela, \"Imprimatur\", desatara una fuerte polémica en Italia.  Sus más famosas novelas hasta la fecha son Imprimatur, Secretum, Veritas y Mysterium, todas ellas ambientadas en plena era Barroca, a caballo entre los siglos XVII y XVIII, y protagonizadas por Atto Melani, un castrato que existió en la vida real y actuó como espía. Estas cuatro novelas son parte de una serie de siete libros, cuyos títulos formarán una frase en latín: Imprimatur secretum, veritas mysterium, unicum…, que se traduce así: \"Aunque el secreto esté impreso, la verdad sigue siendo un misterio, y solo queda...\"; las dos últimas palabras (y títulos de las novelas) no han sido aún reveladas por los autores.', 'Monaldi-Sorti-c-Luis-Barra-.jpeg', '2021-06-15 09:44:51', 0),
(136, 'Edgar', 'Rice', 'E.R. Burroughs', 'Edgar Rice Burroughs fue un escritor de género fantástico estadounidense, célebre por sus series de historias de Barsoom, de Pellucidar, el ciclo de Venus con Carson Napier como protagonista principal y, en especial, por la creación del mundialmente famoso Tarzán', '1521398424_5.jpeg', '2021-06-15 10:04:32', 0),
(137, 'Oscar', 'Wilde', 'Oscar Wilde', '<span>Oscar Fingal O\'Flahertie Wills Wilde</span>​(Dublín, Irlanda,4​ entonces perteneciente al Reino Unido,1​ 16 de octubre de 1854-París, Francia, 30 de noviembre de 1900), conocido como Oscar Wilde, fue un escritor, poeta y dramaturgo de origen irlandés.5​ </p><p> Wilde es considerado uno de los dramaturgos más destacados del Londres victoriano tardío; además, fue una celebridad de la época debido a su gran y aguzado ingenio. Hoy en día, es recordado por sus epigramas, sus cuentos, sus obras de teatro, su única novela El retrato de Dorian Gray, y la tragedia de su encarcelamiento, seguida de su muerte prematura. </p><p> Como un portavoz del esteticismo, se dedicó a varias actividades literarias; publicó un libro de poemas, dio conferencias en Estados Unidos y Canadá sobre el renacimiento inglés6​ y después regresó a Londres, donde trabajó prolíficamente como periodista.7​ Conocido por su ingenio mordaz, su vestir extravagante y su brillante conversación, Wilde se convirtió en una de las mayores personalidades de su tiempo. También exploró profundamente el catolicismo —religión a la que se convirtió en su lecho de muerte—', '1920px-Oscar_Wilde_portrait.jpeg', '2021-06-15 10:19:14', 0),
(138, 'Anthony', 'Hope', 'Hope', '<span>Anthony Hope</span> nació en Londres en 1863. Ejerció la abogacía compaginándola con su vocación política y literaria. Aunque escribió teatro, el éxito le llegó con <i>El Prisionero de Zenda</i>. Años más tarde publicó la segunda parte de la novela, titulada <i>Rupert de Hentzau</i>.</p><p> En 1918 se le concedió el título de caballero por sus servicios a la nación y murió en 1933', 'vvaa.jpeg', '2021-06-16 10:47:57', 0),
(139, 'Lyman Frank', 'Baum', 'Baum', '<i>EL Mago de Oz</i> surgió de los cuentos que el escritor norteamericano <span>Lyman Frank Baum</span> le contaba a sus hijos. EL enorme éxito del libro le empujó a publicar novelas con los mismo personajes durante años. Antes de dedicarse a la literatura administró una pequeña cadena de teatros que había heredado de su padre, fue periodista, actor, comerciante y dirigió una revista', 'vvaa.jpeg', '2021-06-16 10:52:36', 0),
(140, 'Rafael', 'Sabatini', 'Sabatini', '<span>Rafael Sabatini</span> escribió alrededor de cincuenta obras a medio camino entre la novela de aventuras y la novela histórica', 'vvaa.jpeg', '2021-06-16 10:55:39', 0),
(141, 'James', 'Fenimore Cooper', 'J. Fenimore Cooper', 'James Fenimore Cooper (Burlington, Nueva Jersey, 15 de septiembre de 1789 - Cooperstown, 14 de septiembre de 1851) fue un novelista estadounidense. Escribió ocho novelas de aventuras, en las cuales relata la vida de los pioneros y sus enfrentamientos con los pieles rojas. Destacan Los pioneros (1823), El último mohicano (1826), La pradera (1827), El trampero (1840) y El cazador de ciervos (1841).1​ Vivió la mayor parte de su vida en Cooperstown, ciudad fundada por su padre, William Cooper sobre un terreno de su propiedad. Fenimore Cooper fue durante buena parte de su vida un miembro de la Iglesia episcopal, contribuyendo con donaciones a su sostenimiento.', 'vvaa.jpeg', '2021-06-16 11:02:33', 0),
(142, 'Stephen', 'Crane', 'Crane', 'Stephen Crane (1 de noviembre de 1871–5 de junio de 1900) fue un poeta, novelista y escritor de relatos americano. A pesar de su muerte temprana, pudo escribir obras verdaderamente importantes dentro de la tradición realista americana. Está reconocido como uno de los escritores más innovadores de su generación.', 'vvaa.jpeg', '2021-06-16 11:10:36', 0),
(143, 'Amin', 'Maalouf', 'Amin Maalouf', 'Amin Maalouf es un escritor y periodista franco-libanés. Estudió Economía Política y Sociología en la Universidad de San José de Beirut. Periodista en el diario An-Nahar, como enviado especial en zonas como Vietnam y Etiopía. En 1976 se exilió en Francia a causa de la guerra civil libanesa', 'Amin_Maalouf_par_Claude_Truong-Ngoc_novembre_2013.jpeg', '2021-06-16 15:42:03', 0),
(144, 'Eugene Luther Gore', 'Vidal', 'Gore Vidal', '<span>Eugene Luther Gore Vidal</span>,​​ más conocido como Gore Vidal, fue un escritor, ensayista, guionista y periodista estadounidense, candidato al Premio Nobel de Literatura', '112255.jpeg', '2021-06-16 15:47:06', 0),
(145, 'Umberto', 'Eco', 'Umberto Eco', '<span>Umberto Eco</span>​ fue un semiólogo, filósofo y escritor italiano, autor de numerosos ensayos sobre semiótica, estética, lingüística y filosofía, así como de varias novelas, entre ellas <i>El Nombre de la Rosa</i>', '564.png', '2021-06-16 15:52:03', 0),
(146, 'Robert', 'von Ranke Graves', 'Robert Graves', '<span>Robert von Ranke Graves</span> fue un escritor y erudito británico. Popular por novelas históricas llevadas a la televisión como Yo, Claudio, además de poeta ha destacado como investigador de los mitos griegos y la figura de La diosa blanca. Es padre de la escritora y traductora Lucía Graves', '1212141.jpeg', '2021-06-16 15:58:14', 0),
(147, 'Tony Robert', 'Judt', 'Tony Judt', '<span>Tony Judt</span> (Londres, 1948-Nueva York, 2010) realizó sus estudios en el King\'s College de Cambridge y en la École Normale Supérieure de París. Impartió clases en las universidades de Cambridge, Oxford, Berkeley y Nueva York, y en esta última ocupó la cátedra de Estudios Europeos, que él mismo fundó en 1995, y fue director del Remarque Institute. Entre sus publicaciones cabe destacar El peso de la responsabilidad (Taurus, 2014), ¿Una gran ilusión? (Taurus, 2013), Pensar el siglo XX (Taurus, 2012), El refugio de la memoria (Taurus, 2011), Algo va mal (Taurus, 2010), Sobre el olvidado siglo XX (Taurus, 2008), Pasado imperfecto (Taurus, 2007), Postguerra (Taurus, 2006), considerado uno de los diez mejores libros de 2005 por la New York Times Book Review, galardonado con el Premio Council on Foreign Relations Arthur Ross y finalista del premio Pulitzer, y Cuando los hechos cambian (Taurus, 2015). Judt colaboró en diferentes medios de Europa y Estados Unidos, como The New York Review of Books, el Times Literary Supplement o The New York Times. En 2007 recibió el Premio Hannah Arendt, y en 2009 el Orwell Prize for Lifetime Achievement. Falleció en agosto de 2010 a causa de una enfermedad degenerativa.', '123141251.jpeg', '2021-06-18 09:52:59', 0),
(148, 'Valerio', 'Massimo Manfredi', 'Manfredi', '<span>Valerio Massimo Manfredi</span> se define a sí mismo como \"<i>un topógrafo de la Antigüedad</i>\".  </p><p> Desde 1978 ha estado impartiendo clases en diferentes universidades europeas, participando en diversas excavaciones arqueológicas en el Mediterráneo y Oriente Próximo y escribiendo novelas, de las que una parte están traducidas al español. Es autor asimismo de muchos artículos y ensayos. </p><p> Su obra ha sido publicada en cincuenta y cinco países y en treinta y seis idiomas distintos. Fue galardonado con el premio de Hombre del Año en 1999 por el American Biographical Institute. Dos de sus novelas han sido llevadas al cine: <i>I guardiani del cielo</i> (telefilme basado en su novela <i>La torre della solitudine</i>) y <i>L\'ultima legione</i> (La última legión). Además ha participado como guionista de la película <i>Memorias de Adriano</i>.', '12121.jpeg', '2021-06-18 10:08:18', 0),
(149, 'Arturo', 'Pérez-Revert', 'Reverte', 'Arturo Pérez-Reverte (Cartagena, España, noviembre de 1951) se dedica en exclusiva a la literatura, tras vivir 21 años (1973-1994) como reportero de prensa, radio y televisión, cubriendo informativamente los conflictos internacionales en ese periodo. Trabajó doce años como reportero en el diario Pueblo, y nueve en los servicios informativos de Televisión Española (TVE), como especialista en conflictos armados. \r\n</p><p>\r\nComo reportero, Arturo Pérez-Reverte ha cubierto, entre otros conflictos, la guerra de Chipre, diversas fases de la guerra del Líbano, la guerra de Eritrea, la campaña de 1975 en el Sahara, la guerra del Sahara, la guerra de las Malvinas, la guerra de El Salvador, la guerra de Nicaragua, la guerra del Chad, la crisis de Libia, las guerrillas del Sudán, la guerra de Mozambique, la guerra de Angola, el golpe de estado de Túnez, etc. Los últimos conflictos que ha vivido son: la revolución de Rumania (1989-90), la guerra de Mozambique (1990), la crisis y guerra del Golfo (1990-91), la guerra de Croacia (1991) y la guerra de Bosnia (1992-93-94). \r\n</p><p>\r\nDesde 1991 y, de forma continua, escribe una página de opinión en XLSemanal, suplemento del grupo Vocento que se distribuye simultáneamente en 25 diarios españoles, y que se ha convertido en una de las secciones más leídas de la prensa española, superando los 4.500.000 de lectores. ', 'APR-CarmeloRubio-IX.jpeg', '2021-06-18 10:14:29', 0),
(150, 'Haruki', 'Murakami', 'Murakami', '<span>Haruki Murakami</span> (村上 春樹 Murakami Haruki?) (Kioto, 12 de enero de 1949) es un escritor y traductor japonés, autor de novelas, relatos y ensayos. Sus libros han generado críticas positivas y obtenido numerosos premios, incluidos el Franz Kafka (2006), el Mundial de Fantasía (2006), el Jerusalén (2009) y el Hans Christian Andersen de Literatura (2016). Traducida a 50 idiomas y a veces criticada por el establishment literario japonés como no japonesa, su obra está influida por el surrealismo y se centra en temas como la soledad y la alienación. Es considerado una figura importante en la literatura posmoderna. The Guardian ha situado a Murakami \"entre los mayores novelistas de la actualidad\". Ha sido considerado candidato1​al Premio Nobel de literatura en repetidas ocasiones,2​ sin que hasta el momento haya obtenido el galardón. ', '1212.jpeg', '2021-06-18 10:42:57', 0),
(151, 'Chrétien', 'de Troyes', 'Chrétien de Troyes', 'Se conoce muy poco de la vida de <span>Chrétien de Troyes</span> a no ser por lo que él mismo dice en sus obras, por lo que casi todos los datos de su biografía son hipotéticos. Su nombre lo menciona él en el prólogo de Érec y Énide. A partir de aquí se supone que Chrétien habría nacido hacia 1130 en la región de Champagne, acaso en la propia Troyes, algo que confirman los restos dialectales de sus obras. Sus comienzos literarios parecen haber tenido lugar hacia 1160 con traducciones del Arte de amar y de las Metamorfosis de Ovidio, casi todas las cuales se perdieron, así como su primera novela artúrica, sobre Tristán e Iseo. Hacia 1162 habría escrito Érec y Énide y después de 1164 Cligès, aunque se han propuesto también otras fechas de redacción más tardías.\r\n', '40499c855b3f51a1fe2b7f0f630c8ff9205466f9.jpeg', '2021-06-18 10:47:56', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balda`
--

CREATE TABLE `balda` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `estanteria` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `balda`
--

INSERT INTO `balda` (`id`, `numero`, `estanteria`, `ubicacion`) VALUES
(1, 1, 'A', 'Habitación Pablo'),
(2, 2, 'A', 'Habitación Pablo'),
(3, 3, 'A', 'Habitación Pablo'),
(4, 4, 'A', 'Habitación Pablo'),
(5, 5, 'A', 'Habitación Pablo'),
(6, 6, 'A', 'Habitación Pablo'),
(7, 1, 'B', 'Habitación Pablo'),
(8, 2, 'B', 'Habitación Pablo'),
(9, 3, 'B', 'Habitación Pablo'),
(10, 4, 'B', 'Habitación Pablo'),
(11, 5, 'B', 'Habitación Pablo'),
(12, 6, 'B', 'Habitación Pablo'),
(13, 1, 'C', 'Habitación Pablo'),
(14, 2, 'C', 'Habitación Pablo'),
(15, 3, 'C', 'Habitación Pablo'),
(16, 4, 'C', 'Habitación Pablo'),
(17, 5, 'C', 'Habitación Pablo'),
(18, 6, 'C', 'Habitación Pablo'),
(19, 7, 'C', 'Habitación Pablo'),
(20, 1, 'D', 'Habitación Pablo'),
(21, 2, 'D', 'Habitación Pablo'),
(22, 3, 'D', 'Habitación Pablo'),
(23, 4, 'D', 'Habitación Pablo'),
(24, 5, 'D', 'Habitación Pablo'),
(25, 6, 'D', 'Habitación Pablo'),
(26, 7, 'D', 'Habitación Pablo'),
(27, 1, 'E', 'Habitación Pablo'),
(28, 2, 'E', 'Habitación Pablo'),
(29, 3, 'E', 'Habitación Pablo'),
(30, 4, 'E', 'Habitación Pablo'),
(31, 5, 'E', 'Habitación Pablo'),
(32, 6, 'E', 'Habitación Pablo'),
(33, 1, 'F', 'Habitación Pablo'),
(34, 2, 'F', 'Habitación Pablo'),
(35, 3, 'F', 'Habitación Pablo'),
(36, 4, 'F', 'Habitación Pablo'),
(37, 5, 'F', 'Habitación Pablo'),
(38, 6, 'F', 'Habitación Pablo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coleccion`
--

CREATE TABLE `coleccion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coleccion`
--

INSERT INTO `coleccion` (`id`, `nombre`, `imagen`) VALUES
(43, 'Legendarium', 'legendarium.png'),
(44, 'El Cártel', 'elcartel.png'),
(45, 'Trilogía del Baztán', 'trilogia-del-baztan.png'),
(46, 'Trilogía de Trajano', 'trajano.png'),
(47, 'Salvajes', 'salvajes.png'),
(48, 'Trilogía Africanus', 'escipion.png'),
(49, 'ElPais - Aventura', 'ElPais - Aventura2.png'),
(50, 'ElPais - Historia', 'ElPais - Historia.png'),
(51, 'Los Pilares de la Tierra', 'los-pilares-de-la-tierra-2.png'),
(52, 'Julia Domna', 'jui.png'),
(53, 'Civilizaciones - Ascenso y Caída', 'civilizaciones2.png'),
(54, 'Visor de Poesía', 'visor.png'),
(55, 'Todo Pratt', 'todopratt.png'),
(57, 'Corto Maltés', 'corto.png'),
(58, 'Dragonlance', 'drag.png'),
(59, 'Catedra Letras Universales', 'catedra.png'),
(60, 'Los Hijos de la Tierra', '3357.png'),
(61, 'Colección Espasa-Calpe', '27431115.png'),
(63, 'Trilogía Martín Ojo de Plata', '9788408144120.png'),
(64, 'Los Cantos de Hyperion', 'LoscantosdeHyperion.png'),
(65, 'Crónicas Vampíricas', 'Entrevista-con-el-vampiro-Cronicas-Vampiricas-1--i6n17461331.png'),
(66, 'Serie de los Robots', 'robot.png'),
(67, 'El Silencio de los Corderos', 'silencio-de-los-corderos-curiosidades-e-imagenes-de-su-estreno_reference-min.png'),
(68, 'Historia de Piratas', 'pirata.png'),
(69, 'Tercer Reich - libros profesor', 'riefenstahl-y-sus-peliculas-del-tercer-reich.png'),
(70, 'Ilion/Olimpo', 'big.png'),
(71, 'El Mundo de Hielo y Fuego', 'dunk.png'),
(72, 'Imprimatur', 'ImprimaturCol.png'),
(73, 'Iacobus', 'iacobus.png'),
(74, 'ElPais - Serie Negra', 'serie-negra.png'),
(75, 'Aléxandros', 'alexandros.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estanteria`
--

CREATE TABLE `estanteria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estanteria`
--

INSERT INTO `estanteria` (`id`, `nombre`, `ubicacion`) VALUES
(1, 'A', 'Habitación Pablo'),
(2, 'B', 'Habitación Pablo'),
(3, 'C', 'Habitación Pablo'),
(4, 'D', 'Habitación Pablo'),
(5, 'E', 'Habitación Pablo'),
(6, 'F', 'Habitación Pablo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`, `imagen`) VALUES
(1, 'Novela Negra', 'negra.png'),
(2, 'Fantasía Épica', 'fantasia.png'),
(5, 'Novela Histórica', 'aventuras.png'),
(6, 'Novela de Aventuras', 'historia.png'),
(7, 'Ciencia Ficción / Fantasía', 'sci-fi.png'),
(8, 'Ensayo Social', 'social.png'),
(9, 'Ensayo Político', 'politica.png'),
(10, 'Poesía / Teatro', 'poesia.png'),
(11, 'Manuales de Estudio', 'manual.png'),
(12, 'Relatos & Cuentos', 'cuentos.png'),
(13, 'Obra Clásica', 'anti1.png'),
(14, 'Ensayo Histórico', 'historia2.png'),
(15, 'Recopilación de Artículos', 'prensa.png'),
(16, 'Terror', 'terror-survival.png'),
(17, 'Comic / Novela Gráfica', 'comic.png'),
(18, 'Misterio', 'misterio.png'),
(19, 'Epopeya Clásica', 'epopeya.png'),
(20, 'Mitos y Leyendas', 'mitosyleyendas.png'),
(21, 'Novela Contemporánea', 'novela_contemporanea.png'),
(22, 'Thriller / Suspense', 'the_old_lantern_1_by_rasskabak.png'),
(23, 'No-ficción', 'no-fic.png'),
(24, 'Memorias / Biografías', 'recuerdos.png'),
(25, 'Ficción', 'imgpp.png'),
(26, 'Bélico / Guerra', 'Cine-belico.png'),
(27, 'Humor', 'humor.png'),
(28, 'Literatura Medieval', 'medieval.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`id`, `nombre`, `imagen`) VALUES
(1, 'Castellano', 'españa.png'),
(5, 'Inglés', 'inglaterra.png'),
(6, 'Francés', 'Francia11.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leyendo`
--

CREATE TABLE `leyendo` (
  `id` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `act_pag` int(11) NOT NULL DEFAULT 0,
  `inicio` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `paginas` int(11) NOT NULL,
  `idioma` int(11) DEFAULT NULL,
  `leido` tinyint(1) NOT NULL,
  `coleccion` int(11) DEFAULT NULL,
  `saga` int(11) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `estanteria` varchar(100) DEFAULT NULL,
  `balda` int(11) DEFAULT NULL,
  `portada` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `sinopsis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `titulo`, `paginas`, `idioma`, `leido`, `coleccion`, `saga`, `ubicacion`, `estanteria`, `balda`, `portada`, `fecha`, `sinopsis`) VALUES
(111, 'La Balada del Mar Salado - 1ª parte', 90, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'balada-mar-salado-I.jpeg', '2021-05-05 11:51:14', 'En <i>La Balada del Mar Salado</i>, una de las muchas obras maestras de Hugo Pratt, se entretejen varias historias cuyos protagonistas se han convertido en fi guras casi legendarias: la bella Pandora, su primo Caín, el misterioso monje, el feroz pirata Rasputín, el teniente Slu?tter, los polinesios Cranio y Tarao, y cómo no, Corto Maltés, el marino errante.\r\n<p></p>\r\nLa narración adquiere un ritmo sorprendentemente moderno y desarrolla una atmósfera extraordinaria que subraya el dibujo, de una fuerza insólita. Todo comienza en 1913, en los lejanos mares del Sur, en una época en la que, pese al acre aroma a sangre y pólvora de la Primera Guerra Mundial, aún se mantenían vivos los ideales románticos de un siglo XIX que se resistía a desaparecer.'),
(112, 'La Vuelta al Mundo en 80 Días', 282, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, '80-dias.jpg', '2021-05-06 11:04:23', 'Phileas Fogg ha apostado una gran suma de dinero a que es capaz de dar la vuelta al mundo\r\nen 80 días, gracias a los distintos medios de locomoción de su época. Una aventura en la que\r\nhabrá momentos de humor, de peligro, de acciones heroicas e incluso de amor. Una historia\r\nque surge inspirada por la Revolución Industrial, en la que inventos como el ferrocarril, el barco\r\nde vapor o el telégrafo estaban cambiando el mundo a una velocidad nunca imaginada. Y en la\r\nque su protagonista decide embarcarse en un viaje frenético por el simple hecho de que es\r\nposible hacerlo.'),
(113, 'La Isla del Tesoro', 269, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'isla-tesoro.jpeg', '2021-05-06 11:05:54', 'Tras estas páginas sigue una historia de barcos y corsarios, de mapas del tesoro y riquezas. Hubo una epoca en la que los piratas eran temidos en alta mar. Con banderas negras y calaveras, sus barcos surcaban los mares en busca de fortunas y atravesaban su daga en aquellos que trataran de interponerse en su camino. Eran feroces y salvajes, y no obedecían ninguna ley. Jim Hawkins es un chico normal que trabaja ayudando a sus padres, hasta que un día se ve envuelto en una aventura fascinante que jamás hubiera imaginado. No tiene otra opción: debe embarcarse a bordo de laáHispaniolaáen busca del tesoro. Porque ¿que hubieras hecho tú si un hombre grande, con coleta y una cicatriz que le cruza la mejilla te revelara el lugar donde se encuentra un mapa del tesoro?'),
(114, 'Robinson Crusoe', 358, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'robin-crusoe.jpeg', '2021-05-06 11:07:23', 'Aunque presentada como relato autobiográfico, la historia de un hombre que se ve obligado a vivir aislado durante muchos años en una isla desierta no tiene nada que ver con la historia personal de Daniel Defoe. Lo que si hay en Robinson Crusoe son muchas referencias a cuestiones políticas, religiosas, económicas, educativas y filosóficas que habían preocupado al autor hasta ese momento. Sus inquietudes sobre la moralidad, el catolicismo, la Inquisición, el imperio español, el comercio, las plantaciones americanas, etc., están presentes en la novela. Su natural sentimiento antiespañol, su oposición al poder español en el Pacífico, puede ser, de hecho, el motor más directo que impulsó la composición y publicación de la novela en 1719.'),
(115, 'Las Aventuras de Tom Sawyer', 269, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'tom-sawyer.jpeg', '2021-05-06 11:08:55', 'Tom Sawyer es un huerfano que vive con su tía Polly. Y no es un niño modelico. Como cabecilla de la panda que forma con sus amigos Joe Harper y Huckleberry Finn, vive aventuras emocionantes jugando a los piratas en la Isla de Jackson, pescando, haciendo excursiones nocturnas o incluso simulando la muerte para asistir a su propio funeral. Pero todo se oscurece cuando Tom es testigo de un asesinato y el asesino decide eliminar al incómodo testigo.\r\n\r\nMark Twain nos retrata a un heroe moderno que refleja irónicamente la America racista y supersticiosa de mediados del siglo XIX. Una novela dirigida a los niños, pero tambien a los adultos, para que no olviden las hazañas de la juventud.'),
(116, 'Los Viajes de Gulliver', 355, 1, 0, 49, NULL, 'Habitación Pablo', 'C', 15, 'gulliver.jpeg', '2021-05-06 11:11:19', '<i>Los Viajes de Gulliver</i> fue publicada por primera vez en 1726, y tres siglos después mantiene toda su vigencia. Esta célebre novela sat#rica es a la vez un relato de aventuras y una artera reflexión filos#fica sobre la constitución de las sociedades modernas.\r\n\r\nMuchos asocian a Gulliver tan solo con su primera parte, la que se desarrolla entre los minúsculos liliputienses, pero, m#s tarde, el protagonista de esta obra va a parar a un reino donde #l es tan peque#o como los de Lilliput eran para #l. Y el tercer viaje lleva a Gulliver a una isla volante con una minor#a rectora siempre absorta en elucubraciones filosóficas. Antes de regresar, Gulliver acudir# a un lugar donde se le aparecen las grandes figuras de la humanidad y donde algunos nunca mueren, envejeciendo horriblemente.'),
(117, 'El Libro de la Selva', 206, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'libro-selva.jpeg', '2021-05-06 11:12:46', 'Bienvenido a Seeonee, una selva verde, frondosa, de mil olores y colores, la casa de Mowgli; un cachorro de Hombre criado por lobos bajo las estrictas reglas de la Ley de la Selva. El Libro de la Selva no es sólo una historia sobre animales, nos habla tambien de la libertad, de la amistad, del esfuerzo, de los peligros que nos encontramos en el camino y, sobre todo, del respeto. Acompañado por Baloo, el oso marrón y soñoliento, y Bagheera, la pantera negra, Mowgli aprende a buscar comida, seguir huellas, saltar por las lianas, nadar, pescar, pero sobretodo, a protegerse de la amenaza del tigre Shere Khan, el Grande. Prepárate para adentrarte en esta fascinante y peligrosa selva.'),
(118, 'El Hombre Invisible', 211, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'hombre-invisible.jpg', '2021-05-06 11:14:03', 'Una novela que advierte de los potenciales peligros de una mala utilización de la ciencia.\r\nSiguiendo la tradición de Swift (aunque sin llegar a su corrosiva acidez), H. G. Wells se sirvió de sus \"fantasías científicas\" para criticar las instituciones y debilidades humanas. En \"El hombre invisible\" nos muestra las contradicciones de un joven y brillante científico que, tras largas jornadas de agotadores experimentos, descubre la forma de hacerse invisible. Sin embargo, trastornado por los sufrimientos y el acoso a que se ve sometido, abandona todo escrúpulo y trata de emplear su descubrimiento para enriquecerse y dominar, sin detenerse ante la violencia y el engaño. Novela fantástica y un tanto amarga, subraya los potenciales peligros de una ciencia mal utilizada.\r\nSiguiendo la tradición de Swift (aunque sin llegar a su corrosiva acidez), H. G. Wells se sirvió de sus \"fantasías científicas\" para criticar las instituciones y debilidades humanas. En \"El hombre invisible\" nos muestra las contradicciones de un joven y brillante científico que, tras largas jornadas de agotadores experimentos, descubre la forma de hacerse invisible. Sin embargo, trastornado por los sufrimientos y el acoso a que se ve sometido, abandona todo escrúpulo y trata de emplear su descubrimiento para enriquecerse y dominar, sin detener...'),
(119, 'Las Alegres Aventuras de Robin Hood', 365, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'alegres-robin-hood.jpeg', '2021-05-06 11:15:26', 'Howard Pyle narra los principales episodios de las andanzas de Robin Hood en el marco de una Inglaterra idealizada. La vida en el bosque de Sherwood se muestra como una existencia libre y feliz en un entorno paradisíaco, donde Robin y su banda de forajidos viven al margen de la ley, imponiendo su propio sentido de la justicia. Pero el Robin de los Bosques de Pyle no es tanto el bandido generoso y rebelde, cuanto un ladrón simpático, astuto, pendenciero y algo fanfarrón, dispuesto a reparar injusticias siempre que ello le reporte diversión y ganancias. Un libro entretenido que hará las delicias de cualquier lector.'),
(120, 'El Gato Negro y otros cuentos', 202, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'gato-negro.jpeg', '2021-05-06 11:16:36', 'Espacios cerrados y claustrofóbicos, misteriosas tumbas, tétricas alucinaciones, fabulosos tesoros, oscuras y peligrosas criptas, cadáveres ensangrentados, presión psicológica, extrañas enfermedades psíquicas, secretos, presuntas resurrecciones, detectiv'),
(121, 'Colmillo Blanco', 260, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'colmillo-blanco.png', '2021-05-06 11:18:07', 'Ambientada en la vida agreste y salvaje de una frontera que trasciende su mero carácter físico para convertirse en una encarnación del conflicto entre la naturaleza y el ser humano alienado de ella, \"Colmillo Blanco\" es una de las obras más célebres de Jack London (1872-1916). Reverso casi simétrico de \"La llamada de la naturaleza\" -publicada también en esta colección-, en la historia del perro salvaje que, significativamente, se degrada en su contacto con el hombre, hallamos en efecto, matizadas por la belleza de los grandes escenarios naturales y una remota esperanza de redención, las inquietudes que rigen toda la obra del autor estadounidense: el choque entre civilización y naturaleza, la perpetua pugna entre el bien y el mal, la supervivencia del más fuerte, el determinismo genético, la selección natural.'),
(122, 'El Sabueso de los Baskerville', 214, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'sabueso-basker.jpeg', '2021-05-06 11:19:24', 'Sobre los Baskerville pesa una terrible maldición: un demonio en forma de perro gigantesco se les aparece cuando llega la hora de la muerte de algún familiar. La maldición se ha renovado con la repentina muerte de sir Charles. El diabólico can deambula por los páramos y el último vástago de los Baskerville, sir Henry, regresa de Canadá para hacerse cargo de la heredad. Ante la persistencia de los terribles aullidos que se escuchan en dirección a los pantanos de Grimpen, el doctor Mortimer decide recurrir a los celebres detectives Sherlock Holmes y Watson. Así, cuando todo parecía perdido para sir Henry, la agudeza de Holmes desvelará la verdad sobre una amenaza que no resulta ser tan fantasmagórica como se creía.'),
(123, 'Moby Dick I', 364, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'moby-dick-I.jpeg', '2021-05-06 11:22:32', 'El capitan Ahab, con aire lúgubre, apoyado en su pierna que alguien torneó en el mar a partir de una mandíbula de cachalote, arrastra a la tripulación de Pequod en su obsesión por destruir a la ballena blanca, causa no sólo de su mutilación corporal, sino de las tribulaciones de su alma.\r\nMoby Dick es un clásico de las novelas de aventuras, además de un apasionante tratado sobre los balleneros y el mar.'),
(124, 'Moby Dick II', 372, 1, 0, 49, NULL, 'Habitación Pablo', 'C', 15, 'moby-dick-II.jpeg', '2021-05-06 11:23:39', 'Y fue entonces cuando, cruzando repentinamente la mandíbula inferior en forma de hoz por debajo de él, Moby Dick segó su pierna, al igual que una guadaña corta la hierba del campo. A partir de ese maldito día, un obsesivo deseo de venganza atormenta al capitán Ahab, obligándose a perseguir por todos los mares a la ballena blanca. El cineasta John Huston llevó a la pantalla la historia d esta descarnada lucha.'),
(125, 'La Quimera del Oro', 236, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'quimera-oro.jpeg', '2021-05-06 11:24:43', 'Los cuentos que recoge este volumen tienen casi todos como factor común la fiebre de los buscadores de oro en Alaska durante la segunda mitad del siglo XIX. El oro enriqueció a algunos y destruyó a muchos, convirtiéndose así en una auténtica \"quimera\". Historias duras, trágicas o solidarias, todas tienen como escenario estas heladas tierras. Porque la verdadera protagonista es la inmisericorde naturaleza helada, ese impresionante silencio blanco, preludio de la muerte. Frente al implacable frío polar, la lucha del hombre por la supervivencia en un medio hostil; protagonizada por seres generosos (\"El silencio blanco\", \"La ley de la vida\"), estafadores (\"Demasiado oro\"), inútiles y degradados (\"En un país lejano\"), avariciosos (\"El hombre de la cicatriz\"), o por la astucia (\"El burlado\") o la obstinación angustiosa y rabiosa de sus protagonistas (\"Las mil docenas\", \"El amor a la vida\", \"La hoguera\", \"El diablo\").'),
(126, 'Frankenstein o el moderno prometeo', 259, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'frankenstein.jpeg', '2021-05-06 11:25:54', 'En 1816, Mary Shelley dio vida al que sería su personaje más famoso, el doctor Victor Frankenstein. La historia es bien conocida: un científico consigue crear una criatura a la que luego rechaza. Metáfora sobre la vida, la libertad y el amor, Frankenstein o el moderno Prometeo es una maravillosa fábula con todos los ingredientes de los grandes mitos. La presente edición se abre con una lúcida introducción de Alberto Manguel, titulada «La novia de Frankenstein», en la que el afamado escritor y crítico analiza el mito del monstruo y su influencia en la cultura contemporánea. «Cuando esos músculos y esas articulaciones adquirieron la facultad de moverse, aquel ser se convirtió en algo tan indescriptible que ni siquiera Dante habría sido capaz de concebir nada igual.»'),
(127, 'El Tulipán Negro', 276, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'tulipan-negro.jpeg', '2021-05-06 11:31:49', 'Los mejores libros jamás escritos. «Un hombre ha recibido siempre del cielo mucho para ser feliz, bastante para no serlo.» Los hermanos De Witt, protegidos del gran rey Luis de Francia, encuentran la muerte a manos de la enloquecida población de La Haya, que los cree culpables de conspiración. Pero antes de morir dejan a su ahijado Cornelius unos comprometedores documentos que lo llevarán a la cárcel. Allí, en compañía de la joven Rosa, se afanará en conseguir lo que más desea en el mundo: el bulbo del tulipán negro. Magníficamente introducida en esta edición por el estudio de la investigadora Robin Buss, El tulipán negro reúne los ingredientes necesarios para atrapar al lector desde la primera página y sumergirlo en la tumultuosa sociedad holandesa de finales del siglo XVII. Dumas despliega así su habitual talento narrativo en una novela de intriga extraordinaria. George Bernard Shaw dijo...«Dumas fue una cumbre del arte. Nadie podría, pudo o podrá mejorar sus novelas y obras de teatro.»'),
(128, 'El Corsario Negro', 363, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'corsario-negro.jpeg', '2021-05-06 11:33:12', 'La venganza, el amor a una duquesa flamenca y la fidelidad al juramento dado son los tres elementos que condicionan el comportamiento del protagonista, el caballero Emilio di Roccanera, el Corsario Negro, y que hacen avanzar este entretenido relato del fecundo narrador que fue Emilio Salgari. La acción, las aventuras y los sentimientos de los personajes de esta magnífica novela de piratas a buen seguro \"apresarán\" entre sus páginas a los lectores.'),
(129, 'Ivanhoe', 587, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'ivanhoe.jpg', '2021-05-06 11:34:21', '«¡Valor, bravos caballeros! El hombre muere, pero la gloria queda. ¡Valor! ¡Antes morir que ser vencidos!» Inglaterra, siglo XII. Desterrado por querer casarse contra los deseos de su padre, el joven y valiente Wilfred de Ivanhoe se pone al servicio de Ricardo Corazón de León y parte como cruzado junto a sus tropas para reconquistar Tierra Santa. A su regreso, decidido a recuperar su honor y a reunirse con su amada pero prohibida Lady Rowena, rápidamente se verá en medio de una lucha por el poder entre el noble rey Ricardo y su hermano, Juan Sin Tierra, un traidor despreciable y sin escrúpulos. Solo Ivanhoe, con la ayuda de Robin de Locksley -el legendario Robin Hood-, tiene la clave para defender su buen nombre y el de la Corona. El estudio sociolingüístico del doctor Graham Tulloch analiza cómo Walter Scott demostró que escribir sobre el pasado puede ser un modo de opinar sobre el presente. Una cronología sobre el autor completa los apéndices para captar en su totalidad la importancia de una de las obras más influyentes de la literatura histórica. Stendhal dijo...«Walter Soctt es nuestro padre. Nos inventó a todos.»'),
(130, 'Las Aventuras de Huckleberry Finn', 337, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'huck-finn.jpeg', '2021-05-06 11:35:45', 'Un clásico indiscutible de la literatura norteamericana y uno de los libros más memorables de la literatura juvenil. La suerte de Huckleberry Finn, el mejor amigo de Tom Sawyer, se acaba cuando su padre regresa al pueblo y se lo lleva a vivir a una cabaña. Huck logra escapar en una balsa río abajo y se encuentra con su amigo Jim, un esclavo que, como él, huye buscando la libertad. Edición completa, ilustrada por Dani Torrent.'),
(131, 'El Escarabajo de Oro y otros cuentos', 189, 1, 0, 49, NULL, 'Habitación Pablo', 'C', 15, 'escarabajo-oro.jpeg', '2021-05-06 11:36:53', 'Sin duda es la literatura norteamericana la que ha proporcionado una mayor y más personal aportación a la novela de terror, dejando una huella indeleble con autores de la talla de Nathaniel Hawthorne, Ambrose Bierce, Howard Philips Lovecraft y Edgar Allan Poe, el más célebre de todos ellos, que nos hace gala tanto de un terror negro –macabro y tenebroso-, como de un terror blanco –psicológico y poético-, elevando así a niveles de arte la literatura de terror. Después de Poe, el género de intriga y terror ya no vuelve a ser el mismo. La solidez y el nivel de exigencia que aporta suponen un salto cualitativo y cuantitativo de enormes proporciones, que hace que para muchos esté considerado como el padre y nuevo descubridor de este tipo de género, así como de la novela policiaca y detectivesca.'),
(132, 'La Maquina del Tiempo', 138, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'maquina-tiempo.jpg', '2021-05-06 11:38:00', 'Obra que se halla en los inicios de la novela de ciencia-ficción, \"La máquina del tiempo\" (1895) sigue conservando el mismo poder de fascinación y vigor narrativo que le valieron el éxito inmediato en el momento de su publicación. Afortunada síntesis de los conocimientos científicos del autor, del maquinismo que hacía furor en la época y de la visión escéptica de Herbert George Wells (1866-1946) respecto al rumbo tomado por la sociedad que le tocó vivir, el relato (un clásico) describe un futuro inquietante en el que dos razas semibestiales, los eloi y los morlock, comparten en una peculiar simbiosis un planeta extraño y desolado sobre el que se han cernido catástrofes y transformaciones, pero en el que brilla aún, como tenue esperanza, un hálito de humanidad.'),
(133, 'Las Minas del Rey Salomón', 275, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'rey-salomon.jpeg', '2021-05-06 11:39:24', 'Escrita por el autor inglés H. Rider Haggard, “Las Minas del Rey Salomón” es una de las novelas inaugurales del género de aventuras a lugares exóticos. La búsqueda del hermano perdido de un explorador lleva a Allan Quatermain y a su grupo de aventureros a las profundidades del continente africano. La misión pronto se transforma en la cacería del tesoro más grande de todos los tiempos, escondido por cientos de años en las Minas del Rey Salomón. Aventura, acción, emoción y los parajes más peligrosos y lejanos son los protagonistas de estas páginas.'),
(134, 'Las Aventuras de Oliver Twist', 499, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'oliver-twist.jpeg', '2021-05-06 11:40:22', 'Oliver Twist narra las aventuras y desventuras de un niño huérfano que crece en un orfanato hasta que empieza a trabajar para un fabricante de ataúdes. Oliver se escapa y se va a Londres, donde cae víctima de engaños y, sobre todo, de su inocencia. Para sobrevivir, tendrá que distinguir quién está de su parte... pero los bajos fondos de la gran ciudad no se lo pondrán fácil.'),
(135, 'Veinte Mil Leguas de Viaje Submarino', 469, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'veinte-submarino.jpg', '2021-05-06 11:42:12', 'La desaparición de numerosos barcos ha puesto en jaque la navegación en aguas internacionales. Ante la amenaza de un ignoto monstruo abisal, se fleta una expedición para darle caza. Pero nadie contaba con el Nautilus, un submarino de alta tecnología comandado por el insondable capitán Nemo. Tres de los expedicionarios descubrirán a bordo de la fabulosa nave los prodigios que pueblan las profundidades, vedados a la mirada humana.'),
(136, 'El Extraño Caso del Dr.Jekyll y Mr.Hyde', 128, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'mr-hyde.jpeg', '2021-05-06 11:43:31', 'La racionalidad, los protocolos sociales y la honorabilidad de un científico respetado se contraponen con las pulsiones ocultas, la violencia y los elementos indomables de toda psique humana, que emergen tras la ingesta de un poderoso brebaje. Esta dualidad en pugna se desarrolla en las oscuras y brumosas calles del Londres de hace dos siglos, bajo cuyas sombras se intensifica el misterio que brota de esta truculenta historia. Lo cotidiano se confunde con lo inexplicable, lo secreto y lo sobrenatural. ¿Quién es el siniestro y condenable Edward Hyde y qué lo une al honorable doctor Jekyll? Esta obra invita a la reflexión a través del elemento de la transformación física y de la exploración acerca de la mítica figura del monstruo. Luis Scafati despliega su maestría en el manejo de la tinta y el collage para dar cuerpo a lo amoral y a las pasiones más turbulentas en este relato imborrable sobre la condición humana.'),
(137, 'Los Tres Mosqueteros I', 387, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'tres-mosqueteros1.jpg', '2021-05-06 11:45:54', 'Durante el reinado de Louis XIII, D\'Artagnan, un gascón valiente y astuto, se une a los mosqueteros Athos, Porthos y Aramis. Juntos ponen su coraje y lealtad al servicio de la reina Ana de Austria -víctima de una conspiración a causa de unas joyas prestadas- y sortean todas las trampas que el cardenal Richelieu les tiende. El director de cine George Sidney contó con Gene Kelly para la versión más lograda de sus hazañas.'),
(138, 'Los Tres Mosqueteros II', 388, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'tres-mosqueteros2.jpg', '2021-05-06 11:47:21', 'Honor, valentía, lealtad, destreza con la espada y amistad son el sello de Athos, Porthos y Aramis. El joven gascón, D\'Artagnan, une a estas cualidades su astucia para desbaratar la conspiración del poderoso cardenal Richelieu contra la reina Ana de Austria y conseguir así el título de mosquetero y el amor de Constance. Esta novela, combinado de historia, intriga y aventuras, se publicó por entregas en los periódicos.'),
(139, 'La Llamada de lo Salvaje', 146, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'llamada-salvaje.jpg', '2021-05-06 11:48:57', 'En la segunda mitad del siglo XIX Alaska fue el objetivo de muchas expediciones que buscaron fortuna con la explotación del oro. El Ártico es también el destino que le ha sido reservado a Buck, un formidable perro mestizo, hijo de un San Bernardo y de una pastora escocesa, que disfruta de una existencia apacible y civilizada hasta que es vendido para tirar de un trineo en los páramos helados de Alaska y Canadá. De poco servirá lo que ha aprendido hasta el momento. En este nuevo entorno hostil, rápidamente advierte que la única ley válida es la del «garrote y el colmillo», tan cruel como implacable. Buck se verá obligado a luchar por la propia supervivencia y conocerá la ferocidad de la naturaleza, que despertará en él atávicos instintos que habían permanecido dormidos mucho tiempo.'),
(140, 'Miguel Strogoff', 370, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'miguel-strogonoff.jpeg', '2021-05-06 11:50:06', 'La historia del valiente y voluntarioso correo del zar, que emprende un peligroso viaje a través de la estepa siberiana para cumplir con su misión, se ha convertido en un clásico de enorme popularidad. Esta obra ha sido llevada al teatro, al cine, a la televisión... Contiene todos los ingredientes necesarios necesarios para enganchar al lector: acción trepidante, escenas de gran dramatismo, personajes que actúan como héroes y una ambientación espectacular.'),
(141, 'El Fantasma de la Ópera', 323, 1, 1, 49, NULL, 'Habitación Pablo', 'C', 15, 'fantasma-opera.png', '2021-05-06 11:51:10', 'Un fantasma enmascarado recorre las galerías secretas de la lujosa Ópera Garnier de París aterrorizando a los empleados. ¿Qué horror se oculta tras la máscara? ¿Un malvado ser de ultratumba? ¿O solo un hombre obsesionado con vengarse de quienes lo rechazaron por su aspecto repulsivo? Sea cual sea la respuesta, nadie está a salvo del fantasma'),
(142, 'Historia de Dos Ciudades', 469, 1, 0, 49, NULL, 'Habitación Pablo', 'C', 15, 'dos-ciudades.jpg', '2021-05-06 11:52:13', 'El Londres pacífico pero grotesco del rey Jorge III y el París clamoroso y ensangrentado de la Revolución Francesa son las dos ciudades sobre cuyo fondo se escribe esta inolvidable historia de intriga apasionante. Violentas escenas de masas, estallidos de hambre y venganza, espías y conspiradores, héroes fracasados y héroes a su pesar se mezclan en una trama artística y perfecta, llena de sorpresas y magistralmente elaborada por un Dickens en uno de sus mejores momentos creativos.'),
(143, 'La Noche en que Frankenstein leyó el Quijote, la vida secreta de los libros', 230, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 18, 'frankenstein-leyo-quijote.jpeg', '2021-05-06 12:09:06', '¿Quién escribió las obras de Shakespeare? ¿Qué libro perseguía el KGB? ¿Qué novela ocultó Hitler? ¿Quién pensó en el orden alfabético para organizar los libros? ¿Qué autor burló al índice de libros prohibidos de la Inquisición? Estos y otros enigmas literarios encuentran respuesta en las páginas de La noche en que Frankenstein leyó el Quijote, un viaje en el tiempo por la historia de la literatura universal de la mano de Santiago Posteguillo, uno de los novelistas históricos más reconocidos por la crítica y el público de los últimos años. Y un profesor de literatura… poco convencional.'),
(144, 'Yo, Julia', 654, 1, 1, 52, NULL, 'Habitación Pablo', 'C', 18, 'yo-julia.jpeg', '2021-05-06 12:10:12', '192 d.C. Varios hombres luchan por un imperio, pero Julia, hija de reyes, madre de césares y esposa de emperador, piensa en algo más ambicioso: una dinastía. Roma está bajo el control de Cómodo, un emperador loco. El Senado se conjura para terminar con el tirano y los gobernadores militares más poderosos podrían dar un golpe de Estado: Albino en Britania, Severo en el Danubio o Nigro en Siria. Cómodo retiene a sus esposas para evitar su rebelión y Julia, la mujer de Severo, se convierte así en rehén. De pronto, Roma arde. Un incendio asola la ciudad. ¿Es un desastre o una oportunidad? Cinco hombres se disponen a luchar a muerte por el poder. Creen que la partida está a punto de empezar. Pero para Julia la partida ya ha empezado. Sabe que solo una mujer puede forjar una dinastía.'),
(145, 'Y Julia Retó a los Dioses', 738, 1, 1, 52, NULL, 'Habitación Pablo', 'C', 18, 'jualia-2.jpeg', '2021-05-06 12:10:54', 'Mantenerse en lo alto es mucho más difícil que llegar. Julia está en la cúspide de su poder, pero la traición y la división familiar amenazan con echarlo todo a perder. Para colmo de males, el médico Galeno diagnostica que la emperatriz padece lo que él, en griego, llama karkinos, y que los romanos, en latín, denominan cáncer. El enfrentamiento brutal entre sus dos hijos aboca la dinastía de Julia al colapso. En medio del dolor físico y moral que padece la augusta, cualquiera se hubiera rendido. Se acumulan tantos desastres que Julia siente que es como si luchara contra los dioses de Roma. Pero, en medio del caos, una historia de amor más fuerte que la muerte, una pasión capaz de superar pruebas imposibles emerge al rescate de Julia. Nada está perdido. La partida por el control del imperio continúa. JULIA DOMNA, la nueva saga del autor que ha conquistado a más de 4 millones de lectores.'),
(146, 'Los Asesinos del Emperador', 1108, 1, 1, 46, NULL, 'Habitación Pablo', 'C', 18, 'portada-asesinos.jpeg', '2021-05-06 12:12:31', '18 de septiembre del año 96 d. C. Un plan perfecto. Un día diseñado para escribir la Historia, pero cuando todo sale mal la Historia ya no se escribe…, se improvisa: una guerra civil, las fieras del Coliseo, la guardia pretoriana, traiciones, envenenamientos, delatores y poetas, combates en la arena, ejecuciones sumarísimas, el último discípulo de Cristo, el ascenso y la caída de una dinastía imperial, locura y esperanza, la erupción del Vesubio, un puñado de gladiadores, la amistad inquebrantable, Marco Ulpio Trajano, el mito de las amazonas, una gladiadora, nueve emperadores, treinta y cinco años de la historia de Roma. Un grupo de gladiadores dispuestos a todo avanza por las alcantarillas de Roma. Nada ni nadie puede detenerlos. Ni siquiera la Historia'),
(147, 'Circo Máximo', 1117, 1, 1, 46, NULL, 'Habitación Pablo', 'C', 18, 'circo-maximo.jpeg', '2021-05-06 12:13:27', ' Circo Máximo es la historia de Trajano y su gobierno, de guerras y traiciones, lealtades insobornables e historias de amor imposibles. Hay una vestal, un juicio, inocentes acusados, un abogado brillante, mensajes cifrados, fortalezas inexpugnables, dos aurigas rivales, gladiadores y tres carreras de cuadrigas. Hay un caballo especial, diferente a todos, leyes antiguas olvidadas, sacrificios humanos, amargura y terror, pero también destellos de nobleza y esperanza, como la llama del Templo de Vesta, que, mientras arde, preserva Roma. Sólo que algunas noches la llama tiembla. La rueda de la Fortuna comienza entonces a girar. En esos momentos, todo es posible y hasta la vida de Trajano puede correr peligro. Y, esto es lo mejor, ocurrió: hubo un complot para asesinar a Marco Ulpio Trajano.'),
(148, 'La Legión Perdida', 1046, 1, 1, 46, NULL, 'Habitación Pablo', 'C', 18, 'legion-perdida.jpeg', '2021-05-06 12:14:34', 'Intrigas, batallas, dos mujeres adolescentes, idiomas extraños, Roma, Partia, India, China, dos Césares y una emperatriz se entrecruzan en el mayor relato épico del mundo antiguo, La legión perdida, la novela con la que Santiago Posteguillo cierra su aclamada trilogía sobre Trajano. Hay emperadores que terminan un reinado, pero otros cabalgan directos a la leyenda.    '),
(149, 'Africanus, el hijo del cónsul', 684, 1, 0, 48, NULL, 'Habitación Pablo', 'C', 18, 'africanus.jpeg', '2021-05-06 12:15:24', 'Con magistral precisión histórica y un excelente ritmo narrativo, Santiago Posteguillo presenta la historia de la infancia y juventud de Africanus, uno de los personajes más influyentes de Occidente. ¡MAGISTRAL! ¡IMPRESCINDIBLE! ¡UN AUTÉNTICO BEST-SELLER! A finales del siglo III a. C., Roma se encontraba al borde de la destrucción total, a punto de ser aniquilada por los ejércitos cartagineses al mando de uno de los mejores estrategas militares de todos los tiempos: Aníbal. Su alianza con Filipo V de Macedonia, que pretendía la aniquilación de Roma como Estado y el reparto del mundo conocido entre las potencias de Cartago y Macedonia, constituía una fuerza imparable que, de haber conseguido sus objetivos, habría determinado para siempre el devenir de Occidente. Pero el azar y la fortuna intervinieron para que las cosas fueran de otro modo. Pocos años antes del estallido del más cruento conflicto bélico que se hubiera vivido en Roma, nació un niño que estaba destinado a cambiar el curso de la historia: Publio Cornelio Escipión.'),
(150, 'Las Legiones Malditas', 811, 1, 1, 48, NULL, 'Habitación Pablo', 'C', 18, 'legiones-malditas.jpeg', '2021-05-06 12:16:10', 'Segundo volumen de la trilogía iniciada con Africanus. Déjate atrapar por esta trepidante novela sobre la guerra, el amor, la envidia, la amistad y la supervivencia. Publio Cornelio Escipión, conocido por el apodo de Africanus, que era considerado por muchos el heredero de las cualidades militares atribuidas a su padre y a su tío, sólo tenía veintiséis años cuando aceptó comandar las tropas romanas en Hispania. Pero de ellos no sólo había recibido estos magníficos atributos, sino también algunos enemigos, entre otros Asdrúbal, el hermano de Aníbal, y el general púnico Giscón, quienes harían lo posible por acabar con su enemigo y masacrar sus ejércitos. En un fascinante relato que recrea un momento decisivo de la expansión de Roma, Santiago Posteguillo hace al lector cómplice y testigo de las batallas, conquistas y derrotas de Escipión y sus ejércitos.'),
(151, 'La Traición de Roma', 810, 1, 1, 48, NULL, 'Habitación Pablo', 'C', 18, 'traincion-roma.jpeg', '2021-05-06 12:16:52', 'Última novela de la Trilogía de Roma, en la que descubriremos el épico final de dos de los personajes más legendarios de la historia: Escipión y Aníbal. «He sido el hombre más poderoso del mundo, pero también el más traicionado.» Así comienza Publio Cornelio Escisión sus memorias en La traición de Roma, para continuar con el final de dos de los más épicos personajes de la historia, Escisión y Aníbal. Los eternos enemigos se encuentran una vez más en la batalla de Magnesia, un episodio casi desconocido dela historia de occidente. Pero además de batallas, el autor nos cuenta lo que ha sido de los hijos de Escisión; de sus enemigos, Marco Porcio Catón y de su aliado Graco; de la esclava Netikerty; de la prostituta Areté; de su fiel aliado Ledio; de Antíoco III, el rey de Siria; del ya anciano dramaturgo Plauto, que se pasea por las calles de Roma, y también de la mujer de Escisión, Emilia Tercia, digna hasta el final en medio de la mayor de las hecatombes públicas y privadas. Con la electrizante prosa que lo caracteriza, Posteguillo nos transporta de nuevo a la antigua Roma para ser testigos privilegiados del ocaso de una vida tan intensa como desbordante: el final de la epopeya de Publio Cornelio Escisión y de todo su mundo en el marco incomparable de una Roma que emerge victoriosa, por encima de la historia, sin importarle arrasar en su imparable ascenso todo y a todos, incluidos a sus héroes.'),
(152, 'La Sangre de los Libros', 208, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 18, 'sangre-libros.jpeg', '2021-05-06 12:17:43', 'Asesinatos, suicidios, duelos, condenas a muerte, guerras, eclipses, vampiros, misterios, juicios… Detrás de los grandes libros se esconde mucha más sangre de lo que uno podría imaginar. ¿Por qué Pushkin murió en un duelo? ¿Es cierto que se han hallado pruebas de la reencarnación de Shakespeare? ¿Sabías que Pessoa tuvo dificultades para encontrar editor o que La Divina Comedia estuvo a punto de no publicarse?Santiago Posteguillo, referente de narrativa histórica, nos guía en un magnífico viaje desde los discursos de Cicerón hasta las obras de ciencia ficción de Asimov por la historia más enigmática y sorprendente de la literatura universal.'),
(153, 'Los Pilares de la Tierra', 1038, 1, 1, 51, NULL, 'Habitación Pablo', 'C', 18, 'pilares-tierra.jpg', '2021-05-06 12:18:56', 'Los pilares de la Tierra es la obra maestra de Ken Follett y constituye una excepcional evocación de una época de violentas pasiones. El gran maestro de la narrativa de acción y suspense nos transporta a la Edad Media, a un fascinante mundo de reyes, damas, caballeros, pugnas feudales, castillos y ciudades amuralladas. El amor y la muerte se entrecruzan vibrantemente en este magistral tapiz cuyo centro es la construcción de una catedral gótica. La historia se inicia con el ahorcamiento público de un inocente y finaliza con la humillación de un rey'),
(154, 'Un Mundo Sin Fin', 1178, 1, 1, 51, NULL, 'Habitación Pablo', 'C', 18, 'un_mundo_sin_fin.jpeg', '2021-05-06 12:19:46', 'Veinte años después de la publicación de Los pilares de la Tierra, Ken Follett volvía al fascinante mundo de Kingsbridge para presentar a sus lectores un retrato admirable del mundo medieval y una magnífica saga épica que aporta una nueva dimensión a la ficción histórica. La publicación de Los pilares de la Tierra supuso un acontecimiento editorial sin precedentes que cautivó a millones de lectores. En Un mundo sin fin Ken Follett vuelve al fascinante mundo de Kingsbridge dos siglos después de la construcción de su majestuoso templo gótico. La catedral y el priorato ocupan de nuevo el centro de una encrucijada de amor y de odio, orgullo y codicia. En un mundo en que defensores a ultranza de las viejas costumbres luchan con encono con las mentes más progresistas, la intriga y la tensión llegan rápidamente a límites insoportables con el devastador telón de fondo de la Peste Negra, que aniquiló a la mitad de la población europea. Intriga, asesinatos, hambruna, plagas y guerras. Un retrato admirable del mundo medieval y una novela extraordinaria que aporta una nueva dimensión a la ficción histórica.'),
(155, 'La Balada del Mar Salado - 2ª parte', 90, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'balada-mar-salado-II.png', '2021-05-06 12:43:53', 'En La balada del mar salado, una de las muchas obras maestras de Hugo Pratt, se entretejen varias historias cuyos protagonistas se han convertido en fi guras casi legendarias: la bella Pandora, su primo Caín, el misterioso monje, el feroz pirata Rasputín, el teniente Slu?tter, los polinesios Cranio y Tarao, y cómo no, Corto Maltés, el marino errante.\r\n</p><p>\r\nLa narración adquiere un ritmo sorprendentemente moderno y desarrolla una atmósfera extraordinaria que subraya el dibujo, de una fuerza insólita. Todo comienza en 1913, en los lejanos mares del Sur, en una época en la que, pese al acre aroma a sangre y pólvora de la Primera Guerra Mundial, aún se mantenían vivos los ideales románticos de un siglo XIX que se resistía a desaparecer.'),
(156, 'Suite Caribeña', 90, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'Suite-caribena.png', '2021-05-06 13:10:01', 'En este volumen se recogen dos episodios que se desarrollan en el Caribe. El secreto de Tristán Bantam narra el encuentro entre Corto Maltés con el profesor Jeremías Steiner —futuro camarada de diversas aventuras que les depararán un sinfín de quebraderos de cabeza pero también una estrecha amistad— y con el joven Tristán, quien intenta defenderse de las intrigas de su abogado para arrebatarle todo su patrimonio. El legendario marino viajará con sus nuevos compañeros desde Paramaribo, en la Guayana Holandesa, hasta la localidad brasileña de Bahía, donde Tristán podrá conocer por fi na Morgana, su enigmática hermanastra. Samba con Tiro Fijo se desarrolla en el sertón, una vasta región semiárida de Brasil, donde Corto se pondrá del lado de los cangaceiros en su lucha contra los grandes terratenientes y se encontrará con Boca Dorada, una maga tan bella como astuta que lo marcará de por vida.'),
(157, 'El Mar de Oro', 90, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'mar-oro.png', '2021-05-06 13:34:38', 'La isla de Maracá, la desembocadura del Amazonas, un barco fantasma alemán… Los lugares preferidos de Corto, pero también de Rasputín, amigo y adversario a la vez, quien, tras La balada del mar salado, reaparece en una de estas aventuras, ambientada en Saint Kitts. Y, por si fuera poco, una gaviota se convierte en la protagonista de una historia muy alocada que se desarrolla en una isla de la Honduras Británica.\r\n\r\nPoco más se necesita para describir tres historias caribeñas con perfume de ron y aventura, en las que los disparos y los cañonazos suelen interrumpir el susurro de las palmeras y el murmullo apacible de las olas.\r\n\r\nTres historias para soñar con un mundo salobre donde el verdadero tesoro es nuestro propio viaje a través de la imaginación.'),
(158, 'Las Lejanas Islas del Viento', 70, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'lejanas-islas-viento.png', '2021-05-06 13:35:40', '¿Qué deparará el destino a Corto Maltés en estas aventuras?\r\n\r\nUnos hongos mágicos que le permitirán recuperar la memoria tras haber recibido un fuerte golpe en la cabeza, diversos encontronazos, a cuál más peligroso, con guerreros jíbaros, los temibles cazadores de cabezas, así como con zombis y villanos de toda clase. Viajará hasta un pequeño pueblo de la costa oriental de Honduras inmerso en una revolución. Poco después, recalará en la isla imaginaria de Port Ducal,\r\n\r\ndonde asistirá a un juicio grotesco por brujería. De sorpresa en sorpresa, saltando de una aventura a otra, estas tres historias están impregnadas de una magia un tanto irónica, pero también de la sed de justicia que caracteriza a muchos caballeros de fortuna.'),
(159, 'La Laguna de los Misterios', 92, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'laguna-misterios.png', '2021-05-06 13:36:51', 'En La laguna de los hermosos sueños, un soldado alemán se embosca en las marismas de efluvios tóxicos del Orinoco para huir de los remordimientos que le ocasiona la cobardía que mostró en el campo de batalla. Abuelos y leyendas transcurre en otra selva, la Amazonía peruana, en la que Corto y Steiner buscan a un niño blanco desaparecido. El ángel de la ventana de Oriente comienza en la pequeña isla de San Francisco del Desierto, en Venecia, y prosigue en Malamocco, donde una bella espía rubia transmite mensajes cifrados a la aviación austríaca. Bajo la bandera del oro se desarrolla en buena parte en el sector veneciano de Caorle, en plena batalla de Caporetto, que tuvo lugar en octubre de 1917.'),
(160, 'Las Célticas', 92, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'celticas.png', '2021-05-06 13:37:52', 'La lucha que libra Irlanda en pos de su independencia enmarca Concierto en do menor para arpa y nitroglicerina, en la que Corto se cruza con Banshee O’Danann, una joven revolucionaria cuyas aspiraciones comparte. El sueño de una mañana de invierno constituye un homenaje evidente a Shakespeare. La acción se desarrolla en Stonehenge, en Inglaterra. El hada Morgana, el mago Merlín, Puck y Oberon se unen a Corto en la llanura de Salisbury para salvar a la vieja Bretaña del invasor alemán. Vinos de Borgoña y rosas de Picardía transcurre en un contexto histórico preciso: la batalla del Somme, en Francia, en la que murió el legendario Barón Rojo, el gran as de la aviación alemana. En el tinglado de la antigua farsa narra, en el mismo tiempo y la misma atmósfera que el episodio anterior, el enfrentamiento entre Corto y Mélodie Gaël, una traidora tan sofisticada como peligrosa.'),
(161, 'Las Etiópicas', 92, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'etiopicas.png', '2021-05-06 13:38:50', 'El desierto de Yemen sirve como telón de fondo para En el nombre de Alá, compasivo y misericordioso, el episodio en el que Corto se encuentra con Cush, el guerrero danakil que, pese a la amistad que lo ligará al legendario marino, muestra un desprecio sin reservas hacia esa cultura «blanca». En El último disparo, la terquedad del capitán Bradt se pone a prueba ante la actitud irritante de Cush, al que defiende Corto Maltés. El tema de la cobardía, que Pratt ya ha tratado en esta serie, adquiere de nuevo una gran importancia en De otros Romeos y de otras Julietas, una historia que discurre en el desierto etíope y en la que Corto y Cush sienten el miedo a morir asesinados. Leopardos es una historia de tintes oníricos ambientada en el África oriental alemana y en la que se describen los mecanismos de una justicia que, a menudo, opera al margen de la ley de los blancos.'),
(162, 'Corto Maltés en Siberia - 1ª Parte', 88, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'corot-siberia-I.png', '2021-05-06 13:40:24', 'Corto Maltés se halla en Hong Kong, donde se encuentra una vez más con Rasputín, en relaciones con las “Linternas Rojas”, una sociedad secreta china que le encarga la búsqueda de un tren blindado lleno de oro que perteneció al zar Nicolás II. En esta aventura, que se desarrolla entre 1919 y 1920, la acción transcurre entre China, Manchuria, Mongolia y Siberia. Sin embargo, Corto no es el único que busca el convoy: en su periplo deberá enfrentarse a ejércitos regulares, grupos de guerrilleros, revolucionarios y contrarrevolucionarios, entre los que se encuentran figuras históricas como el barón Roman von Ungern-Sternberg, el general ruso que tuvo a su mando la división de caballería asiática. En esta historia emergen dos figuras femeninas prominentes: la fría y gélida duquesa Marina Seminova, representante de una aristocracia ya condenada a desaparecer, y Shanghai Li, una guerrera sin escrúpulos, miembro de las “Linternas Rojas”.'),
(163, 'Corto Maltés en Siberia - 2ª Parte', 95, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'corot-siberia-II.png', '2021-05-06 13:41:34', 'Corto Maltés se halla en Hong Kong, donde se encuentra una vez más con Rasputín, en relaciones con las “Linternas Rojas”, una sociedad secreta china que le encarga la búsqueda de un tren blindado lleno de oro que perteneció al zar Nicolás II. En esta aventura, que se desarrolla entre 1919 y 1920, la acción transcurre entre China, Manchuria, Mongolia y Siberia. Sin embargo, Corto no es el único que busca el convoy: en su periplo deberá enfrentarse a ejércitos regulares, grupos de guerrilleros, revolucionarios y contrarre- volucionarios, entre los que se encuentran figuras históricas como el barón Roman von Ungern-Sternberg, el general ruso que tuvo a su mando la división de caballería asiática.'),
(164, 'Fábula de Venecia', 102, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'fabula-venecia.png', '2021-05-06 13:42:32', 'La aventura tiene lugar en Venecia en 1921, en un clima marcado por la influencia creciente de la masonería y el fascismo. La realidad temporal se confunde con los numerosos motivos esotéricos que pertenecen, además, a la historia misma de Venecia.'),
(165, 'La Casa Dorada de Samarkanda - 1ª parte', 76, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'corto-samarkanda-I.png', '2021-05-06 13:43:50', 'Un manuscrito de Lord Byron, escondido en la cúpula de la mezquita de Kawakly, en la isla de Rodas, sirve como punto de partida para esta aventura cuya acción transcurre entre 1921 y 1922 en la legendaria ruta de la seda.\r\n\r\nCorto Maltés, tras la pista del fabuloso tesoro de Alejandro Magno, deberá enfrentarse a personajes y situaciones extremadamente difíciles: derviches giróvagos, adoradores del demonio, miembros de la secta de los hashashins… sin contar a los diversos ejércitos que guerrean por la región. De hecho, el protagonista cae en manos de los bolcheviques y se libra por muy poco de acabar ante un pelotón de fusilamiento.\r\n\r\nLa aventura le permitirá encontrarse con viejos conocidos, como Veneciana Stevenson, su antigua enemiga, o Rasputín, quien acaba de fugarse de una terrible prisión conocida como «La casa dorada de Samarkanda».'),
(166, 'La Casa Dorada de Samarkanda - 2ª parte', 71, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'corto-samarkanda-II.png', '2021-05-06 13:44:51', 'Un manuscrito de Lord Byron, escondido en la cúpula de la mezquita de Kawakly, en la isla de Rodas, sirve como punto de partida para esta aventura cuya acción transcurre entre 1921 y 1922 en la legendaria ruta de la seda.\r\n\r\nCorto Maltés, tras la pista del fabuloso tesoro de Alejandro Magno, deberá enfrentarse a personajes y situaciones extremadamente difíciles: derviches giróvagos, adoradores del demonio, miembros de la secta de los hashashins… sin contar a los diversos ejércitos que guerrean por la región. De hecho, el protagonista cae en manos de los bolcheviques y se libra por muy poco de acabar ante un pelotón de fusilamiento.\r\n\r\nLa aventura le permitirá encontrarse con viejos conocidos, como Veneciana Stevenson, su antigua enemiga, o Rasputín, quien acaba de fugarse de una terrible prisión conocida como «La casa dorada de Samarkanda».'),
(167, 'La Juventud', 69, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'juventud.png', '2021-05-06 13:45:45', 'Manchuria, 1905. La guerra ruso-japonesa vive sus últimas horas. Allí, entre los lupanares de la ciudad china de Mukden y la línea del frente, donde de vez en cuando resuenan los disparos de los últimos francotiradores, nace una extraña amistad entre dos personajes excepcionales: Rasputín, un siberiano sin ideales ni bandera, y Corto, un joven marinero atraído por las artes marciales, a los que presenta un periodista estadounidense llamado Jack London.\r\n\r\nDesde un punto de vista estrictamente biográfico, esta es la primera aventura en la que aparece Corto Maltés. Y lo hace en medio de un gran drama épico orquestado por Hugo Pratt.\r\n\r\nAventura e ironía sobre un trasfondo histórico en movimiento: todo el sabor inimitable de la saga de este caballero de fortuna.'),
(168, 'Tango', 108, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'tango.png', '2021-05-06 15:15:19', 'Buenos Aires, 1923. La amistad lleva de nuevo a Corto Maltés hasta Argentina. El tango es un sentimiento y una historia. La de Corto Maltés comienza en una sala de billar en Buenos Aires, donde este juego se ha convertido en una manera de pasar el tiempo, en una pasión, en una religión, en una guerra. Mientras busca a la hija de una amiga asesinada por una red de trata de blancas, Corto descubre una Buenos Aires imprevista e imprevisible. No se puede bailar el tango sin emoción. Corto lo hace y, de paso, venga a su amiga. Al fin y al cabo, el tango también es una lucha.'),
(170, 'Equatoria', 86, 1, 1, 57, NULL, 'Habitación Pablo', 'C', 19, 'equatoria.jpeg', '2021-05-06 15:32:46', 'Corto Maltés se encuentra en su amada Venecia tras los pasos del espejo del Preste Juan, legendario monarca cuyo reino se hallaba en algún lugar impreciso entre África y la India. Según la leyenda, sus vastos dominios estaban poblados de amazonas, unicornios y toda clase de prodigios. Sin embargo, su mayor tesoro era un espejo a través del cual podía observar cualquier parte del reino. La búsqueda de este objeto mágico llevará a Corto a recorrer un continente africano agitado por el colonialismo europeo de comienzos del siglo XX.');
INSERT INTO `libro` (`id`, `titulo`, `paginas`, `idioma`, `leido`, `coleccion`, `saga`, `ubicacion`, `estanteria`, `balda`, `portada`, `fecha`, `sinopsis`) VALUES
(171, 'Bajo el Sol de Medianoche', 82, 1, 1, 57, NULL, 'Habitación Pablo', 'C', 19, 'bajo-sol-medianoche.jpeg', '2021-05-06 16:17:15', '1915, Corto Maltés atraviesa las vastas extensiones heladas del Gran Norte, entre Estados Unidos y Canadá. Consigo lleva un mensaje de su amigo, el célebre escritor Jack London, autor de Colmillo Blanco. La carta está destinada a un amor de juventud. A cambio de hacérsela llegar, London le promete a Corto una nueva aventura en la que está envuelto un misterioso tesoro…'),
(172, 'Las Helvéticas', 72, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'las-helveticas.png', '2021-05-06 16:20:00', 'Suiza, 1924. Corto ha aceptado la invitación de su amigo Steiner para acudir a una reunión de alquimistas, a pesar de que todavía anda perdido en sus lecturas de iniciación. Tras sumirse en un extraño sueño, deberá afrontar una aventura, a medio camino entre la danza macabra y la prueba diabólica, que lo impele a descubrir la fuente de la vida eterna: el Santo Grial.\r\n\r\n«[Es] este país en el que se dan cita tantas cosas ocultas: alquimia, magia, astrología, leyenda… Además de las tradiciones religiosas y… las esotéricas». En estos términos Jeremiah Steiner habla de Suiza y sus aldeas secretas a su amigo cuando se dirigen al Tesino para reunirse con el gran escritor Hermann Hesse. Hay quien dice que Las Helvéticas es una historia excesivamente literaria. Quizá sea así, pero no cabe duda de que entre tanta erudición, fantasía, misterio y onirismo, Corto vive una de sus más extrañas aventuras.'),
(173, 'Mû, La Ciudad Perdida - 1ª Parte', 91, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'mu-I.png', '2021-05-06 16:21:18', 'Un barco se dirige a una pequeña isla de América Central con un extraño pasaje: Steiner, Rasputín, Soledad, Tristán Bantam, Boca Dorada, Levi Columbia... Corto Maltés viaja junto con algunos de sus viejos compañeros de aventuras en busca del lugar que pueda llevarlos hasta M?, el legendario continente perdido.\r\n\r\nPor supuesto, no están solos. En su periplo deberán vérselas con un junco chino, diversos piratas, indios hostiles, dioses mayas volubles, una aviadora que ha sobrevivido a un accidente e, incluso, un grupo de amazonas armadas hasta los dientes. Los enfrentamientos, las persecuciones y los amoríos se suceden y entrecruzan en el dédalo de la Ciudad de los Muertos, un inquietante conjunto de ruinas que parece existir en este y en otros mundos.\r\n\r\n¿Cómo distinguir lo real de lo aparente? ¿Acaso el viaje y la huida no son un modo de expresar una odisea interior? A medio camino entre el onirismo y la poesía, y con una considerable carga irónica, Hugo Pratt narra de manera magistral un recorrido inolvidable por los senderos de la historia y el espíritu.'),
(174, 'Mû, La Ciudad Perdida - 2ª Parte', 85, 1, 1, 55, 5, 'Habitación Pablo', 'C', 19, 'mu-II.png', '2021-05-06 16:22:24', 'Un barco se dirige a una pequeña isla de América Central con un extraño pasaje: Steiner, Rasputín, Soledad, Tristán Bantam, Boca Dorada, Levi Columbia... Corto Maltés viaja junto con algunos de sus viejos compañeros de aventuras en busca del lugar que pueda llevarlos hasta M?, el legendario continente perdido.\r\n\r\nPor supuesto, no están solos. En su periplo deberán vérselas con un junco chino, diversos piratas, indios hostiles, dioses mayas volubles, una aviadora que ha sobrevivido a un accidente e, incluso, un grupo de amazonas armadas hasta los dientes. Los enfrentamientos, las persecuciones y los amoríos se suceden y entrecruzan en el dédalo de la Ciudad de los Muertos, un inquietante conjunto de ruinas que parece existir en este y en otros mundos.\r\n\r\n¿Cómo distinguir lo real de lo aparente? ¿Acaso el viaje y la huida no son un modo de expresar una odisea interior? A medio camino entre el onirismo y la poesía, y con una considerable carga irónica, Hugo Pratt narra de manera magistral un recorrido inolvidable por los senderos de la historia y el espíritu.'),
(175, 'Fort Wheeling 1', 60, 1, 1, 55, 6, 'Habitación Pablo', 'C', 19, 'fort-wheeling-I.png', '2021-05-06 16:23:49', 'Al igual que la de tantos otros europeos de su generación, la infancia de Hugo Pratt transcurrió entre las páginas de un sinfín de novelas de aventuras ambientadas en el Lejano Oeste americano, escritas por James Fenimore Cooper, James-Oliver Curwood o Zane Grey, a las que no tardó en incorporarse la gran epopeya del wéstern hollywoodiense.\r\n\r\nTodo este rico acervo, junto con sus numerosos viajes, dio origen a Fort Wheeling, una saga que toma su nombre de una pequeña ciudad de Virginia Occidental y cuyo primer episodio, ambientado en 1774, presenta a los principales protagonistas. En la región de los Grandes Lagos, los indios de las primeras naciones, de buen grado o por la fuerza, resisten desesperados el avance de los colonos. En medio de esa violencia, se encuentran tres personajes entre la adolescencia y la edad adulta: Criss Kenton, oriundo de Virginia; Patrick Fitzgerald, que lleva el uniforme inglés; y Mohena, a la que raptaron los shawnees cuando era una niña.'),
(176, 'Fort Wheeling 2', 55, 1, 1, 55, 6, 'Habitación Pablo', 'C', 19, 'fort-wheeling-II.png', '2021-05-06 16:24:58', 'En medio del odio y los enfrentamientos, Criss Kenton conoce a Tiny, un joven shawnee preso en el fuerte de Boonesborough. En un primer momento, lo libera con el propósito de canjearlo por su hermano, en manos de los indios. Sin embargo, el destino le depara nuevas sorpresas: su amigo Patrick, ascendido a oficial del ejército inglés, se convierte en su adversario cuando estalla la lucha por la independencia de las colonias en 1775 y, además, su reencuentro con Mohena le suscita unos sentimientos que no había imaginado.\r\n\r\nPratt integra todos estos elementos para iniciar así una trama romántica que discurrirá paralela a la epopeya de los dos amigos. Su talento le permite construir una historia arraigada en un tiempo y una geografía muy precisos, en la que intervienen personajes históricos que parecen moverse entre la realidad y la leyenda, como Daniel Boone, Betty Zane, Robert Rogers, Simon Girty, Lew Wetzel…'),
(177, 'Fort Wheeling 3', 52, 1, 1, 55, 6, 'Habitación Pablo', 'C', 19, 'fort-wheeling-III.png', '2021-05-06 16:25:58', 'Veinte años después de que se publicase el primer capítulo de la saga, Hugo Pratt se reencuentra con sus héroes en un mundo del que posee un conocimiento más refinado. Criss Kenton, cada vez más implicado en la causa yanqui, se separa de Mohena para adentrarse de nuevo en una región castigada por la guerra. Viñeta a viñeta y página a página, Pratt nos muestra el devenir caótico de sus personajes: la reaparición de Tiny, los viajes de un campamento a otro, el regreso a Wheeling… La historia se teje con una trama apretada y llena de cicatrices.\r\n\r\nComo bien dijo Pratt, «en Fort Wheeling y otras obras he tratado de contar algo en lo que se mezclan imaginación e historia. Y no pocas veces lo verdadero resulta más fantástico que la ficción».'),
(178, 'Fort Wheeling 4', 55, 1, 1, 55, 6, 'Habitación Pablo', 'C', 19, 'fort-wheeling-IV.png', '2021-05-06 16:27:00', '¿Cómo concluir una novela gráfica de tan largo aliento como esta? Hugo Pratt lo hace llevado por la melancolía, como las hojas de otoño que salpican el álbum antes de que lleguen las nieves del invierno. En estas páginas, muestra el fin definitivo de las naciones indias ?sin que importen sus alianzas con el bando lealista o con el insurgente? y las matanzas que perpetran los soldados británicos; además, presenta al misterioso clan de los Montour y, finalmente, arranca a Criss Kenton de su región natal y lo destierra al Oeste, vencido, resignado a abandonar una guerra que ya no es la suya. «Ya he hecho lo que tenía que hacer ?confiesa?. He perdido mucho por su culpa… Voy contigo, Tiny… Intentaré olvidar… Bueno… Espero conseguirlo…».'),
(179, 'Los Escorpiones del Desierto 1', 93, 1, 1, 55, 7, 'Habitación Pablo', 'C', 19, 'escorpiones1.png', '2021-05-06 17:06:05', 'Entre 1940 y 1943, se libró en el desierto libio una de las etapas más apasionantes de la Segunda Guerra Mundial. Los protagonistas de esta historia pertenecen a una unidad legendaria del ejército británico, el Long Range Desert Group (Grupo del Desierto de Largo Alcance), más conocidos como «Los Escorpiones», y solo tienen un objetivo: derrotar a las tropas italianas y, sobre todo, al temible Afrika Korps alemán.\r\n\r\nLos Escorpiones, formados por voluntarios a los que la disciplina, el corte del pelo o los uniformes les da lo mismo, se han especializado en misiones de ataque y contraataque, a menudo tras las líneas enemigas. Hugo Pratt se basó en hechos reales para crear al teniente Koinsky, un antiguo oficial del ejército polaco, dispuesto a dejarse la vida si con ello contribuye a derrotar a quienes tomaron su país a sangre y fuego.'),
(180, 'Los Escorpiones del Desierto 2', 96, 1, 1, 55, 7, 'Habitación Pablo', 'C', 19, 'escorpiones2.png', '2021-05-06 17:07:32', '«El teniente Koinsky, personaje principal de Los Escorpiones del desierto, es mucho más duro, más moderno y menos anarquista que Corto, hecho que lo hace, en cierto modo, más cercano a nosotros» (Didier Platteau).\r\n\r\nAzadas Dankali\r\n\r\nFebrero de 1941: ante el ataque de un avión italiano, Koinsky y sus amigos Hassan y Akavia se separan. Koinsky encuentra refugio en el fuerte Giulietti, situado en la región de Dankalia, donde conoce al teniente De La Motte, un meharista que se ha pasado a la resistencia, y a un guerrero afar. Los episodios, a veces con tintes surrealistas, conforman un sorprendente fresco tragicómico.\r\n\r\nDry Martini\r\n\r\nParlor Febrero de 1941: Koinsky y De La Motte abandonan el fuerte Giulietti y se adentran en un área bajo el control de los terribles dankali. Su coche salta por los aires y a los dos no les queda más remedio que dirigirse al fuerte de Moulhoulé. Allí entablan una larga conversación, a caballo entre la ficción y la realidad, con Fanfulla, el comandante italiano de la guarnición.'),
(181, 'Brise de Mer 1', 72, 1, 1, 55, 7, 'Habitación Pablo', 'C', 19, 'escorpiones3.png', '2021-05-06 17:11:01', 'Una aventura de largo aliento en medio de las arenas del norte de África. Durante la Segunda Guerra Mundial, Koinsky atraviesa el desierto en dirección a Abisinia acompañado por dos soldados indochinos, un italiano y su vehículo blindado, además de un guerrero dankali que les hace de guía. De pronto, se encuentra en el camino con Madame Brezza, la dueña del Brise de Mer, un burdel de Yibuti.\r\n\r\n«Aunque esté lleno de soldados, el universo de Brise de Mer es lo opuesto al mundo militar: allí todo es confusión; se invierten todos los valores tradicionales. La guerra es un carnaval en el que todos se aprestan a ponerse varios disfraces según las circunstancias» (Dominique Petitfaux).'),
(182, 'Brise de Mer 2', 79, 1, 1, 55, 7, 'Habitación Pablo', 'C', 19, 'escorpiones4.png', '2021-05-06 17:13:06', 'Hugo Pratt se basó en sus recuerdos de adolescencia para crear la que tal vez sea su narración más personal. Los Escorpiones del desierto le permiten rendir un sentido homenaje a los hombres y las mujeres que conoció en aquel momento de su vida, que marcó su imaginario para siempre. Pratt, quien perdió a su padre en el norte de África durante la guerra, emplea todo su talento a la hora de revivir aquel periodo de la historia.\r\n\r\n«Koinsky es el héroe de esta serie ?afirmaba Pratt?, pero también debe tenerse en cuenta el espíritu de todos esos relatos, de las personas que se encuentran y recorren juntas un largo camino con la guerra, el mayor crimen de la historia, como telón de fondo».'),
(183, 'El Hombre del Caribe / El Hombre de Somalia', 100, 1, 1, 55, 11, 'Habitación Pablo', 'C', 19, 'un_hombre_aven_1.png', '2021-05-06 17:19:52', 'El hombre del Caribe Svend\r\n\r\n</p><p>\r\nUn marino de origen danés radicado en las islas Vírgenes, se gana la vida transportando mercancías o paseando a turistas ricos en su barco por aguas del Caribe. De camino a Jamaica, con un taciturno italiano y su amante, la escultural Bombón, se topa con un yate de bandera argentina en apuros. Decide ayudarlos y… cae en la trampa.\r\n\r\n</p><p>\r\nEl hombre de Somalia\r\n</p><p>\r\nEn pleno desierto, en el límite de Somalia con Etiopía, una patrulla de meharistas a las órdenes del teniente del Ejército británico Abel Robinson intenta dar caza a un guerrero solitario y escurridizo que se hace llamar El Vengador. A medida que la persecución se intensifica y el paisaje se torna más árido, las fronteras entre lo real y lo sobrenatural se desvanecen. Las viejas leyendas que impregnan aquella tierra bíblica cobran vida y empujan a Robinson y a sus hombres hasta los confines de la locura.'),
(184, 'El Hombre del Sertón / El Hombre del Gran Norte', 104, 1, 1, 55, 11, 'Habitación Pablo', 'C', 19, 'un_hombre_aven_2.png', '2021-05-06 17:21:21', 'El hombre del sertón\r\n</p><p>\r\nEn las desoladas llanuras del sertón brasileño, la policía da caza a los últimos cangaceiros, bandidos legendarios que controlaron durante décadas las regiones del nordeste y a los que se masacró sin piedad. Gringo Vargas, uno de los pocos que quedan, es abatido después de que uno de sus hombres lo traicione. Sin embargo, el amor de su mujer y las artes de una hechicera que se vale del poder de los orishas, los antiguos dioses africanos que nutren el candomblé, lo devuelven a la vida.\r\n</p><p>\r\nEl hombre del Gran Norte\r\n</p><p>\r\nEn los albores del siglo XX, en los confines del oeste de Canadá, un mestizo indio toma prestado el uniforme de un miembro de la Policía Montada del Canadá. Enfundado en su casaca roja, emprende un viaje caótico y violento a través de las nieves de un invierno eterno en el que, como si de un justiciero solitario se tratase, ejecuta a sangre fría a forajidos, secuestradores o indios rebeldes. Jesuit Joe es el retrato sobrio y conmovedor de una persona desarraigada, dividida entre dos culturas, incapaz de asumir su alteridad de una manera serena.'),
(185, 'Ausencias Justificadas / 41º Latitud Norte / El Amuleto', 76, 1, 1, 55, 10, 'Habitación Pablo', 'C', 19, 'koinsky_1.png', '2021-05-06 17:22:49', 'Este álbum «forma parte de las memorias de guerra que el mayor Koinsky escribió durante la campaña de Italia, que tuvo lugar entre 1943 y 1945. A Koinsky ya lo habíamos seguido en sus aventuras militares en África gracias a Los Escorpiones del desierto» (Hugo Pratt).\r\n\r\nAusencias justificadas\r\n</p><p>\r\nBilly y Sandy, dos soldados australianos, protagonizan este breve relato bélico. Ambos pertenecen a una pintoresca comunidad de soldados bebedores de cerveza negra ?en su mayor parte, bisnietos de antiguos delincuentes juveniles y mujeres de costumbres ligeras que fueron deportados? que en 1941 ocasionaron muchos problemas tanto a los italianos como a los alemanes destinados al norte de África para combatir a las órdenes del general Rommel.\r\n</p><p>\r\n41º latitud norte\r\n</p><p>\r\n«En enero de 1945, a bordo de una lancha MTB de la Royal Navy británica que surcaba las aguas de Rávena, alguien me contó la historia de los dos hermanos Philips, un relato bastante peculiar que comenzó de una manera un tanto rara, con un montón de coincidencias» (Hugo Pratt).\r\n</p><p>\r\nEl amuleto\r\n</p><p>\r\n«Durante la Segunda Guerra Mundial, nunca vi luchar a soldados de tantas nacionalidades distintas como en Italia. Entre las ruinas de Cassino, al pie del célebre monasterio que destruyó la aviación de Estados Unidos, encontraron la muerte estadounidenses, británicos, neozelandeses, maoríes, indios, nepalíes, franceses, argelinos, marroquíes, tunecinos, brasileños, polacos, alemanes, italianos, rusos y turcomanos. Los protagonistas de este breve relato tomaron parte en aquella contienda» (Hugo Pratt).'),
(186, 'Baldwin 622 / Un Pálido Sol Primaveral', 80, 1, 1, 55, 10, 'Habitación Pablo', 'C', 19, 'koinsky_2.png', '2021-05-06 17:24:10', 'Baldwin 622\r\n</p><p>\r\nLa historia, de tintes fantásticos y un tanto surreales, se desarrolla en Palestina durante la Primera Guerra Mundial. El teniente británico Solomon Horaz, de origen judío, recibe la orden de transportar a bordo de la locomotora Baldwin 622 diez cajas de soberanos con los que se pagará a los obreros egipcios que trabajan en el tendido del ferrocarril que irá de El-Kossaima hasta Suez. Horaz viajará con una pequeña escolta armada y con una joven intérprete, Sheeba Trumpeldor, que colabora en secreto con la Haganá, una organización paramilitar sionista.\r\n</p><p>\r\nUn pálido sol primaveral\r\n</p><p>\r\nUn extraordinario relato basado en hechos reales. La acción transcurre en abril de 1945, a finales de la Segunda Guerra Mundial, en la laguna de Comacchio, justo donde, unos cien años atrás, Giuseppe Garibaldi huyó con Anita, su compañera. En esta ocasión, William Fogg, un oficial británico cuya familia procede de la Romaña, regresa a aquellas tierras y se encuentra de manera imprevista con Anita Bonelli, su viejo amor de juventud.'),
(187, 'El Piloto Australiano / El Gafe / Noche Diabólica', 72, 1, 1, 55, 10, 'Habitación Pablo', 'C', 19, 'koinsky_3.png', '2021-05-06 17:25:42', 'Hugo Pratt, lejos del heroísmo simplón tan frecuente en los relatos bélicos, se vale de los códigos del género para expresar las dudas, los miedos e incluso la cobardía que puede sentirse en ciertos momentos, así como el valor de la amistad, el respeto y la intensa camaradería que unen a los hermanos de armas.\r\n</p><p>\r\nEl piloto australiano\r\n</p><p>\r\nEn 1941, el Reino Unido incorpora a sus filas a buena parte de la Real Fuerza Aérea Australiana, cuyas unidades pasan a operar desde bases británicas. Entre aquel contingente, se encuentra Henri Le June, cuyos vuelos a bordo de los Spitfire resultan poco ortodoxos para la tradición británica, por su estilo impetuoso y temerario. Después de varios problemas con sus superiores, se le confía un gran bombardero equipado para el reconocimiento, que el bueno de Le June se empeñaba en pilotar como si de un caza se tratase.\r\n</p><p>\r\nEl gafe\r\n</p><p>\r\nEn la jungla birmana, británicos y japoneses libran una lucha feroz. Algo extraño pasa cuando el soldado Jack Green se une al Tercer Pelotón del Regimiento de Infantería: tras varias acciones, sus nuevos camaradas creen que es un gafe. En realidad, todo lo ocurrido hubiera pasado aunque el pobre Jack no hubiera estado allí, pero ya se sabe que las supersticiones tienen la piel muy dura.\r\n</p><p>\r\nNoche diabólica\r\n</p><p>\r\nSiete hombres de una patrulla británica han estado caminando durante horas a través de la infernal jungla birmana con un solo objetivo: volar un puente situado en la frontera con Siam. El calor, la fatiga y la tensión los han llevado al borde del agotamiento. Y además está a punto de anochecer. Con el teniente Robert Salter al frente, llegan a un claro en el que se alza un templo extraordinario en cuyo interior se encuentra un gran ídolo dorado...'),
(188, 'Wambo ha muerto... Wambo Vuelve / La Ciudad Perdida de Amón-Ra', 68, 1, 1, 55, 9, 'Habitación Pablo', 'C', 19, 'ana-jungla-I.png', '2021-05-06 21:37:35', 'En algún lugar de África oriental, en vísperas de la Primera Guerra Mundial, se encuentra Gombi, una guarnición situada en el confín de los dominios británicos en aquella parte del mundo, en la que vive un puñado de soldados y civiles occidentales, entre ellos, la joven Ana Livingstone, hija de un médico británico.\r\n\r\nLa aventura comienza cuando el tam-tam de las tribus de la región anuncia la muerte de Wambo, el hechicero de los wagayas. Según el mensaje, su espíritu, sediento de venganza, regresará para acabar con todos los blancos.\r\n\r\nAna de la jungla es el primer álbum que Hugo Pratt concibió en su totalidad. Tipperary O’Hara podría considerarse como una primera encarnación del futuro Corto Maltés, el personaje que hizo famoso a Pratt. El trazo ya es plenamente reconocible y la narración se desarrolla en ese mundo repleto de aventuras, luchas a muerte y selvas exuberantes tan querido al autor.'),
(189, 'El Hechicero de Ujiji / El Cementerio de Elefantes', 50, 1, 1, 55, 9, 'Habitación Pablo', 'C', 19, 'ana-2.png', '2021-05-06 21:38:51', 'El enclave británico de Gombi, pese a encontrarse en un rincón apartado de África, bulle de actividad. Tipperary O’Hara desembarca en compañía de Dan, un joven príncipe que viaja de incógnito para tomar parte en un safari, bajo la protección de los militares.\r\n\r\nCualquier excusa se convierte en un buen pretexto para subir a bordo del Golden Vanity y lanzarse al rescate de algún camarada en peligro o a la búsqueda de un tesoro. Tanto da si hay que adentrarse en una ciudad perdida o seguir el rastro de un cementerio de elefantes: son ocasiones para conocer a gente fuera de lo común y enfrentarse a toda clase de peligros. Ana Livingstone y Dan, dos adolescentes con un coraje y una inteligencia excepcionales, se harán amigos para siempre.\r\n\r\nEn Ana de la jungla, Pratt nos ofrece una magnífica lección de dibujo, así como un deslumbrante homenaje a la aventura.'),
(190, 'Ernie Pike 1', 79, 1, 1, 55, 8, 'Habitación Pablo', 'C', 19, 'ernie-1.png', '2021-05-06 21:58:46', 'Ernie Pike es una serie emblemática que fi rmaron Hugo Pratt y el guionista argentino Héctor Germán Oesterheld. Concebido y publicado a fi nales de la década de 1950 y principios de la siguiente, durante el llamado «período argentino» de Pratt, este conjunto de historias de diverso formato narra las peripecias del reportero Ernie Pike en varios frentes de la Segunda Guerra Mundial. El personaje se inspira en un periodista que realmente existió, Ernie Pyle, muerto en Okinawa en 1945, y al que Pratt decidió dibujar con los rasgos del propio Oesterheld. Como corresponsal, Pyle siguió a los soldados por casi todo el planeta para escribir unas crónicas que, por aquel entonces, le hicieron muy célebre en su país.\r\n<p></p>\r\nCon la personificación de Ernie Pike los autores quisieron rendir homenaje a una fi gura extraordinaria del periodismo que supo representar las atrocidades y el absurdo de la guerra como pocos lo han hecho. Y lo hicieron con un cómic preciso, bien documentado y de una calidad innegable. Las historias de Ernie Pike brindan un testimonio vívido tanto de la violencia durante los combates como de los intensos momentos de humanidad que marcaron aquellos dramáticos acontecimientos.'),
(191, 'Ernie Pike 2', 79, 1, 1, 55, 8, 'Habitación Pablo', 'C', 19, 'ernie-2.png', '2021-05-06 21:59:55', 'Ernie Pike es una serie emblemática que firmaron Hugo Pratt y el guionista argentino Héctor Germán Oesterheld. Concebido y publicado a finales de la década de 1950 y principios de la siguiente, durante el llamado «período argentino» de Pratt, este conjunto de historias de diverso formato narra las peripecias del reportero Ernie Pike en varios frentes de la Segunda Guerra Mundial. El personaje se inspira en un periodista que realmente existió, Ernie Pyle, muerto en Okinawa en 1945, y al que Pratt decidió dibujar con los rasgos del propio Oesterheld. Como corresponsal, Pyle siguió a los soldados por casi todo el planeta para escribir unas crónicas que, por aquel entonces, le hicieron muy célebre en su país.\r\n<p></p>\r\nCon la personificación de Ernie Pike los autores quisieron rendir homenaje a una figura extraordinaria del periodismo que supo representar las atrocidades y el absurdo de la guerra como pocos lo han hecho. Y lo hicieron con un cómic preciso, bien documentado y de una calidad innegable. Las historias de Ernie Pike brindan un testimonio vívido tanto de la violencia durante los combates como de los intensos momentos de humanidad que marcaron aquellos dramáticos acontecimientos.'),
(192, 'Ernie Pike 3', 87, 1, 1, 55, 8, 'Habitación Pablo', 'C', 19, 'ernie-3.png', '2021-05-06 22:01:23', 'Ernie Pike es una serie emblemática que firmaron Hugo Pratt y el guionista argentino Héctor Germán Oesterheld. Concebido y publicado a finales de la década de 1950 y principios de la siguiente, durante el llamado «período argentino» de Pratt, este conjunto de historias de diverso formato narra las peripecias del reportero Ernie Pike en varios frentes de la Segunda Guerra Mundial. El personaje se inspira en un periodista que realmente existió, Ernie Pyle, muerto en Okinawa en 1945, y al que Pratt decidió dibujar con los rasgos del propio Oesterheld. Como corresponsal, Pyle siguió a los soldados por casi todo el planeta para escribir unas crónicas que, por aquel entonces, le hicieron muy célebre en su país.\r\n<p></p>\r\nCon la personificación de Ernie Pike los autores quisieron rendir homenaje a una figura extraordinaria del periodismo que supo representar las atrocidades y el absurdo de la guerra como pocos lo han hecho. Y lo hicieron con un cómic preciso, bien documentado y de una calidad innegable. Las historias de Ernie Pike brindan un testimonio vívido tanto de la violencia durante los combates como de los intensos momentos de humanidad que marcaron aquellos dramáticos acontecimientos.'),
(193, 'Ernie Pike 4', 91, 1, 1, 55, 8, 'Habitación Pablo', 'C', 19, 'ernie-4.png', '2021-05-06 22:02:26', 'Ernie Pike es una serie emblemática que firmaron Hugo Pratt y el guionista argentino Héctor Germán Oesterheld. Concebido y publicado a finales de la década de 1950 y principios de la siguiente, durante el llamado «período argentino» de Pratt, este conjunto de historias de diverso formato narra las peripecias del reportero Ernie Pike en varios frentes de la Segunda Guerra Mundial. El personaje se inspira en un periodista que realmente existió, Ernie Pyle, muerto en Okinawa en 1945, y al que Pratt decidió dibujar con los rasgos del propio Oesterheld. Como corresponsal, Pyle siguió a los soldados por casi todo el planeta para escribir unas crónicas que, por aquel entonces, le hicieron muy célebre en su país.\r\n<p></p>\r\nCon la personificación de Ernie Pike los autores quisieron rendir homenaje a una figura extraordinaria del periodismo que supo representar las atrocidades y el absurdo de la guerra como pocos lo han hecho. Y lo hicieron con un cómic preciso, bien documentado y de una calidad innegable. Las historias de Ernie Pike brindan un testimonio vívido tanto de la violencia durante los combates como de los intensos momentos de humanidad que marcaron aquellos dramáticos acontecimientos.'),
(194, 'Ernie Pike 4', 91, 6, 0, 55, 8, 'Habitación Pablo', 'C', 19, 'ernie-4-1.png', '2021-05-06 22:03:56', 'Ernie Pike est une série emblématique signée par Hugo Pratt et le scénariste argentin Héctor Germán Oesterheld. Conçu et publié à la fin des années 1950 et au début des années 1950, pendant la soi-disant «période argentine» de Pratt, cet ensemble diversifié d\'histoires raconte les aventures du journaliste Ernie Pike sur divers fronts de la Seconde Guerre mondiale. Le personnage est inspiré d\'un journaliste qui a vraiment existé, Ernie Pyle, décédé à Okinawa en 1945, et que Pratt a décidé de dessiner avec les propres traits d\'Oesterheld. En tant que correspondant, Pyle a suivi les soldats dans presque toute la planète pour écrire une chronique qui, à cette époque, le rendit très célèbre dans son pays.\r\n<p> </p>\r\nAvec la personnification d\'Ernie Pike, les auteurs ont voulu rendre hommage à une figure extraordinaire du journalisme qui a su représenter les atrocités et l\'absurdité de la guerre comme peu l\'ont fait. Et ils l\'ont fait avec une bande dessinée précise et bien documentée d\'une qualité indéniable. Les histoires d\'Ernie Pike témoignent de manière éclatante à la fois de la violence pendant les combats et des moments intenses d\'humanité qui ont marqué ces événements dramatiques.'),
(195, 'Ernie Pike 5', 88, 1, 1, 55, 8, 'Habitación Pablo', 'C', 19, 'ernie-5.jpeg', '2021-05-07 11:47:33', 'Ernie Pike es una serie emblemática que firmaron Hugo Pratt y el guionista argentino Héctor Germán Oesterheld. Concebido y publicado a finales de la década de 1950 y principios de la siguiente, durante el llamado «período argentino» de Pratt, este conjunto de historias de diverso formato narra las peripecias del reportero Ernie Pike en varios frentes de la Segunda Guerra Mundial. El personaje se inspira en un periodista que realmente existió, Ernie Pyle, muerto en Okinawa en 1945, y al que Pratt decidió dibujar con los rasgos del propio Oesterheld. Como corresponsal, Pyle siguió a los soldados por casi todo el planeta para escribir unas crónicas que, por aquel entonces, le hicieron muy célebre en su país.\r\n</p><p>\r\nCon la personificación de Ernie Pike los autores quisieron rendir homenaje a una figura extraordinaria del periodismo que supo representar las atrocidades y el absurdo de la guerra como pocos lo han hecho. Y lo hicieron con un cómic preciso, bien documentado y de una calidad innegable. Las historias de Ernie Pike brindan un testimonio vívido tanto de la violencia durante los combates como de los intensos momentos de humanidad que marcaron aquellos dramáticos acontecimientos.'),
(196, 'La Sombra', 102, 1, 0, 55, NULL, 'Habitación Pablo', 'C', 19, 'sombra.jpeg', '2021-05-07 11:52:44', 'Si bien La Sombra es un justiciero que podría incluirse en la gran tradición de los vengadores enmascarados, no se trata de un héroe al uso: posee un peculiar sentido del humor y un carácter muy mediterráneo. Como es de esperar, lleva una doble vida y cuenta con un arsenal compuesto de gases paralizantes, sueros de la verdad, máquinas voladoras, coches de gran potencia… La tecnología irrumpe con fuerza en esta serie: juguetes mecánicos, autómatas y otros extraños dispositivos ponen a prueba a La Sombra, quien recurre en algunos episodios a la ayuda de Lorna, su pantera negra. No es para menos, ya que debe enfrentarse a enemigos de gran calado, megalómanos enloquecidos como el General, el Almirante o el Supremo, todos con una sed insaciable por dominar el mundo.\r\n</p><p>\r\nNos encontramos, sin duda, ante un superhéroe creado a principios de la década de 1960 en el que se combinan el estilo gráfico de Pratt y los códigos del cómic estadounidense.'),
(197, 'Ticonderoga 1', 87, 1, 1, 55, 12, 'Habitación Pablo', 'C', 19, 'ticon1.jpeg', '2021-05-07 11:54:05', 'Con esta larga historieta, Hugo Pratt pudo tratar, al fin y con una cierta soltura, un período histórico que siempre le atrajo y con el que regresó, quizá con nostalgia, a ciertas lecturas de juventud, como El gran paso, de Kenneth Roberts, o El último de los mohicanos, de James Fenimore Cooper.\r\n<p></p>\r\nLa historia se desarrolla en la América del Norte del siglo XVIII, cuando franceses y británicos pugnaban por la conquista de los territorios situados en las inmediaciones del lago Champlain. Los protagonistas son tres jóvenes: el cadete del Ejército de Su Majestad Británica Caleb Lee, el inteligente Joe Flint, llamado “Ticonderoga”, y el amerindio Numokh. Existen otros muchos personajes, entre los que destacan los guerreros indios, que toman partido por alguno de los dos bandos. La aventura tiene como telón de fondo una naturaleza boscosa, salvaje y pura. En este trabajo, Pratt recurrió a la técnica del medio tono para que resultase aún más cautivadora la simbiosis entre el hombre y la naturaleza, rota por una guerra que conduciría poco después al nacimiento de una nación. Nos encontramos, pues, ante una gran aventura iniciática, así como un álbum fundamental en la obra de Pratt, una gran saga histórica que avanza a través de flash-backs, en la que Oesterheld, el legendario guionista, se vale de la voz del viejo Caleb Lee para narrar sus andanzas con Ticonderoga.'),
(198, 'Ticonderoga 2', 53, 1, 0, 55, 12, 'Habitación Pablo', 'C', 19, 'ticon-2.jpeg', '2021-05-07 11:55:38', 'Con esta larga historieta, Hugo Pratt pudo tratar, al fin y con una cierta soltura, un período histórico que siempre le atrajo y con el que regresó, quizá con nostalgia, a ciertas lecturas de juventud, como El gran paso, de Kenneth Roberts, o El último de los mohicanos, de James Fenimore Cooper.\r\n</p><p>\r\nLa historia se desarrolla en la América del Norte del siglo XVIII, cuando franceses y británicos pugnaban por la conquista de los territorios situados en las inmediaciones del lago Champlain. Los protagonistas son tres jóvenes: el cadete del Ejército de Su Majestad Británica Caleb Lee, el inteligente Joe Flint, llamado “Ticonderoga”, y el amerindio Numokh. Existen otros muchos personajes, entre los que destacan los guerreros indios, que toman partido por alguno de los dos bandos. La aventura tiene como telón de fondo una naturaleza boscosa, salvaje y pura. En este trabajo, Pratt recurrió a la técnica del medio tono para que resultase aún más cautivadora la simbiosis entre el hombre y la naturaleza, rota por una guerra que conduciría poco después al nacimiento de una nación. Nos encontramos, pues, ante una gran aventura iniciática, así como un álbum fundamental en la obra de Pratt, una gran saga histórica que avanza a través de flash-backs, en la que Oesterheld, el legendario guionista, se vale de la voz del viejo Caleb Lee para narrar sus andanzas con Ticonderoga.'),
(199, 'La Isla  / Secuestrado de Robert Louis Stevenson (adpt. Mino Milani)', 88, 1, 1, 55, NULL, 'Habitación Pablo', 'C', 19, 'isla.jpeg', '2021-05-07 11:57:21', 'Dos obras maestras de la novela de aventuras, dos clásicos de R. L. Stevenson reinterpretados magistralmente por Hugo Pratt a partir de las adaptaciones que realizó Mino Milani. Estas versiones en cómic de La isla del tesoro y Secuestrado son una oportunidad para evadirse y soñar con otros lugares. En sus páginas aparece, una vez más, el trazo rotundo, el poder de evocación y el innegable genio que caracteriza el estilo de Pratt, capaz de plasmar tanto los rasgos psicológicos como las actitudes, en particular cuando retrata a los personajes patibularios que pueblan las novelas de Stevenson. El color contribuye a crear la atmósfera en la que se desarrollan ambos relatos. Su uso es muy distinto en La isla del tesoro y en Secuestrado; en este último se siente todo el misterio de esa Escocia eterna sumida en las brumas.'),
(200, 'Puño de Hierro / Una Valiosa Carga', 104, 1, 1, 55, 13, 'Habitación Pablo', 'C', 19, 'wwii-1.jpeg', '2021-05-07 12:02:14', 'En la década de 1960, Hugo Pratt se mudó a Inglaterra, donde dibujó una serie bastante larga de historias bélicas sin un verdadero protagonista y centradas en batallas célebres o en las peripecias de diversos combatientes en la mayoría de los frentes de la Segunda Guerra Mundial. Lejos del heroísmo habitual en este tipo de relatos, Pratt se apropió de los códigos de la narrativa bélica para expresar las dudas, los miedos y la cobardía, pero también la amistad, el respeto y la intensa solidaridad que unen a los hermanos de armas.\r\n</p><p>\r\nLos relatos, pese a su carácter popular, poseen una gran calidad. Desde un punto de vista gráfico, Pratt recurre a un formato sencillo: las historias a menudo alcanzan las sesenta planchas, con una, dos o tres imágenes por página. En defi nitiva, se trata de un conjunto de alegatos contra el horror de los enfrentamientos bélicos.'),
(201, '¡Adelante, Marines!', 70, 1, 1, 55, 13, 'Habitación Pablo', 'C', 19, 'wwii-2.jpeg', '2021-05-07 12:03:17', 'En la década de 1960, Hugo Pratt se mudó a Inglaterra, donde dibujó una serie bastante larga de historias bélicas sin un verdadero protagonista y centradas en batallas célebres o en las peripecias de diversos combatientes en la mayoría de los frentes de la Segunda Guerra Mundial. Lejos del heroísmo habitual en este tipo de relatos, Pratt se apropió de los códigos de la narrativa bélica para expresar las dudas, los miedos y la cobardía, pero también la amistad, el respeto y la intensa solidaridad que unen a los hermanos de armas.\r\n</p><p>\r\nLos relatos, pese a su carácter popular, poseen una gran calidad. Desde un punto de vista gráfico, Pratt recurre a un formato sencillo: las historias a menudo alcanzan las sesenta planchas, con una, dos o tres imágenes por página. En defi nitiva, se trata de un conjunto de alegatos contra el horror de los enfrentamientos bélicos.'),
(202, 'Sospechosos en la Oscuridad', 70, 1, 1, 55, 13, 'Habitación Pablo', 'C', 19, 'wwii-3.jpeg', '2021-05-07 12:04:11', 'En la década de 1960, Hugo Pratt se mudó a Inglaterra, donde dibujó una serie bastante larga de historias bélicas sin un verdadero protagonista y centradas en batallas célebres o en las peripecias de diversos combatientes en la mayoría de los frentes de la Segunda Guerra Mundial. Lejos del heroísmo habitual en este tipo de relatos, Pratt se apropió de los códigos de la narrativa bélica para expresar las dudas, los miedos y la cobardía, pero también la amistad, el respeto y la intensa solidaridad que unen a los hermanos de armas.\r\n</p><p>\r\nLos relatos, pese a su carácter popular, poseen una gran calidad. Desde un punto de vista gráfico, Pratt recurre a un formato sencillo: las historias a menudo alcanzan las sesenta planchas, con una, dos o tres imágenes por página. En defi nitiva, se trata de un conjunto de alegatos contra el horror de los enfrentamientos bélicos.'),
(203, 'Venganza Explosiva / A Sangre Fría', 86, 1, 1, 55, 13, 'Habitación Pablo', 'C', 19, 'wwii-4.jpeg', '2021-05-07 12:05:13', 'En la década de 1960, Hugo Pratt se mudó a Inglaterra, donde dibujó una serie bastante larga de historias bélicas sin un verdadero protagonista y centradas en batallas célebres o en las peripecias de diversos combatientes en la mayoría de los frentes de la Segunda Guerra Mundial. Lejos del heroísmo habitual en este tipo de relatos, Pratt se apropió de los códigos de la narrativa bélica para expresar las dudas, los miedos y la cobardía, pero también la amistad, el respeto y la intensa solidaridad que unen a los hermanos de armas.\r\n</p><p>\r\nLos relatos, pese a su carácter popular, poseen una gran calidad. Desde un punto de vista gráfico, Pratt recurre a un formato sencillo: las historias a menudo alcanzan las sesenta planchas, con una, dos o tres imágenes por página. En defi nitiva, se trata de un conjunto de alegatos contra el horror de los enfrentamientos bélicos.'),
(204, 'Capitán Cormorant y otras historias', 86, 1, 0, 55, NULL, 'Habitación Pablo', 'C', 19, 'cormorant.jpeg', '2021-05-07 12:06:25', '«Pero ¿quién es ese insolente?» «El capitán Cormorant, el mejor navegante de estos mares». Los lectores de Hugo Pratt tienen la oportunidad de conocer a uno de los simpáticos aventureros que, vistos en retrospectiva, parecen esbozos de Corto Maltés. Cormorant, un marino de finales del siglo XVIII, también navega por los mares del sur, donde protagoniza toda clase de trepidantes peripecias, entre tribus salvajes y piratas sin fe ni ley...\r\n</p><p>\r\nEl volumen se completa con otras dos historias, Billy James y Asalto al fuerte. Ambas se desarrollan en la Norteamérica colonial, en torno a la década de 1760, y entroncan con la vena «india» de Pratt, al estilo de Fenimore Cooper.'),
(205, 'Morgan', 80, 1, 0, 55, NULL, 'Habitación Pablo', 'C', 19, 'morgan.jpeg', '2021-05-07 12:09:47', 'Mar Adriático, 1943. Un joven oficial de la Royal Navy, el teniente Morgan, cansado de realizar sencillas operaciones de enlace, decide correr toda clase de riesgos, a cuál más temerario. Sus superiores - y los servicios secretos- reparan en él y le asignan una nueva misión: eliminar a un espía enemigo en Venecia</p>\r\n<p>Una historia clásica con fondo bélico y un toque de amor apasionado para un bello personaje con un futuro muy prometedor que, por desgracia, truncó la desaparición de Pratt'),
(206, 'Cato Zulú: El Fin de un Príncipe / La Caravana de los Bóeres', 86, 1, 1, 55, NULL, 'Habitación Pablo', 'C', 19, 'cato.jpeg', '2021-05-07 12:18:40', 'Esta miniserie narra la historia de un personaje que realmente existió: Catone Milton, conocido luego como Cato Zulú. Nacido en Londres, su padre trabajaba como chófer de un barón inglés y su madre era ayudante de cocina en la misma mansión. Inició su carrera castrense en la campaña contra el emperador Theodoros de Etiopía, antes de que se lo destinase a la India, ya con rango de ofi cial, y posteriormente a Sudáfrica como asesor militar. Implicado en la muerte del príncipe Napoleón, hijo de Napoleón III, desertó del ejército británico. En torno a este incidente gira este álbum, en el que Pratt nos muestra a un nuevo héroe con todas sus virtudes y debilidades. Fanfarrón, cínico, bocazas, mentiroso, indisciplinado…, Cato Zulú resulta, pese a todo, un personaje atractivo, en especial por su lenguaje rudo y procaz. No obstante, buena parte de la simpatía que despierta en los lectores se debe también a sus arrebatos de generosidad, a su valentía, a su comportamiento insolente y a su gusto innato por una vida repleta de riesgo y aventuras.'),
(207, 'En un Cielo Lejano', 79, 1, 1, 55, NULL, 'Habitación Pablo', 'C', 19, 'cielo-lejano.jpeg', '2021-05-07 12:19:52', 'La historia comienza en Rodas, durante los días inmediatamente anteriores al 10 de junio de 1940, fecha en que Italia entró en la Segunda Guerra Mundial. En la isla, los soldados italianos y los ofi ciales de la Royal Air Force simpatizan. Los hermanos Luca y Pietro Bronzi, protagonistas del relato y rivales en el amor, se hallan destacados allí en calidad de pilotos de combate. Traban buena amistad con el capitán Melrose de la RAF, quien se convertirá en su adversario tras estallar el confl icto. Cuando Pietro se dirige a Etiopía, donde los movimientos de tropas son más insistentes, se encuentra allí con su amigo inglés. Mientras los dos hombres toman una copa juntos, se declara la guerra y se convierten en enemigos. Una historia de lealtad, amor y muerte como solo Pratt sabía crear. No en vano, reconocía: «Hay momentos en los que no quiero salir de este mundo de mitos ni saber dónde está el mundo r'),
(208, 'Sargento Kirk 1', 100, 1, 1, 55, 14, 'Habitación Pablo', 'C', 19, 'kirk-1.jpeg', '2021-05-07 12:24:07', 'Esta larga serie fue una historieta decididamente innovadora.\r\n</p><p>\r\nA diferencia de los wésterns de la época, en los que se aprecia la impronta del cine hollywoodiense más esnob y sesgado ?que presentaba al espectador la imagen errónea de un blanco «bueno» y un indio «malo»?, los relatos en torno a Kirk son precursores de un nuevo modo más realista y objetivo de narrar las relaciones entre los indios y la presunta «civilización» de los blancos. Hubo que esperar hasta la década de 1970 para que el cine estadounidense comenzase a cambiar de registro. Si se tiene en cuenta que Sargento Kirk se remonta a 1953, se entenderá mucho mejor el valor de esta serie de historietas que, desde los primeros episodios, presenta al protagonista, un sargento del Séptimo Regimiento de Caballería del Ejército de Estados Unidos, atenazado por las dudas y los sentimientos encontrados, confuso y escindido entre su sentido del deber como soldado y sus ansias de justicia y la piedad por los indios.\r\n</p><p>\r\nTras una dolorosa y desgarradora lucha interna, decide desertar y ponerse del lado de los pieles rojas. Se convierte así en el hermano de sangre de Maha, el joven hijo del jefe indio de la tribu tchatooga, y se integra cuanto le es posible en la tribu. Lo acompañarán en sus aventuras otros personajes importantes de la serie, como el doctor Forbes, un médico inconformista, y Corto, un antiguo bandido de aire un tanto romántico.\r\n</p><p>\r\nLa riqueza de los diálogos, que a menudo expresan posturas ideológicas opuestas y modos de entender la vida muy distintos, contribuye mucho a que esta serie se considere hoy en día una obra maestra.'),
(209, 'Sargento Kirk 2', 95, 1, 1, 55, 14, 'Habitación Pablo', 'C', 19, 'kirk-2.jpeg', '2021-05-07 12:25:02', 'Esta larga serie fue una historieta decididamente innovadora.\r\n</p><p>\r\nA diferencia de los wésterns de la época, en los que se aprecia la impronta del cine hollywoodiense más esnob y sesgado ?que presentaba al espectador la imagen errónea de un blanco «bueno» y un indio «malo»?, los relatos en torno a Kirk son precursores de un nuevo modo más realista y objetivo de narrar las relaciones entre los indios y la presunta «civilización» de los blancos. Hubo que esperar hasta la década de 1970 para que el cine estadounidense comenzase a cambiar de registro. Si se tiene en cuenta que Sargento Kirk se remonta a 1953, se entenderá mucho mejor el valor de esta serie de historietas que, desde los primeros episodios, presenta al protagonista, un sargento del Séptimo Regimiento de Caballería del Ejército de Estados Unidos, atenazado por las dudas y los sentimientos encontrados, confuso y escindido entre su sentido del deber como soldado y sus ansias de justicia y la piedad por los indios.\r\n</p><p>\r\nTras una dolorosa y desgarradora lucha interna, decide desertar y ponerse del lado de los pieles rojas. Se convierte así en el hermano de sangre de Maha, el joven hijo del jefe indio de la tribu tchatooga, y se integra cuanto le es posible en la tribu. Lo acompañarán en sus aventuras otros personajes importantes de la serie, como el doctor Forbes, un médico inconformista, y Corto, un antiguo bandido de aire un tanto romántico.\r\n</p><p>\r\nLa riqueza de los diálogos, que a menudo expresan posturas ideológicas opuestas y modos de entender la vida muy distintos, contribuye mucho a que esta serie se considere hoy en día una obra maestra.'),
(210, 'Sargento Kirk 3', 84, 1, 1, 55, 14, 'Habitación Pablo', 'C', 19, 'kirk-3.jpeg', '2021-05-07 12:26:03', 'Esta larga serie fue una historieta decididamente innovadora.\r\n</p><p>\r\nA diferencia de los wésterns de la época, en los que se aprecia la impronta del cine hollywoodiense más esnob y sesgado ?que presentaba al espectador la imagen errónea de un blanco «bueno» y un indio «malo»?, los relatos en torno a Kirk son precursores de un nuevo modo más realista y objetivo de narrar las relaciones entre los indios y la presunta «civilización» de los blancos. Hubo que esperar hasta la década de 1970 para que el cine estadounidense comenzase a cambiar de registro. Si se tiene en cuenta que Sargento Kirk se remonta a 1953, se entenderá mucho mejor el valor de esta serie de historietas que, desde los primeros episodios, presenta al protagonista, un sargento del Séptimo Regimiento de Caballería del Ejército de Estados Unidos, atenazado por las dudas y los sentimientos encontrados, confuso y escindido entre su sentido del deber como soldado y sus ansias de justicia y la piedad por los indios.\r\n</p><p>\r\nTras una dolorosa y desgarradora lucha interna, decide desertar y ponerse del lado de los pieles rojas. Se convierte así en el hermano de sangre de Maha, el joven hijo del jefe indio de la tribu tchatooga, y se integra cuanto le es posible en la tribu. Lo acompañarán en sus aventuras otros personajes importantes de la serie, como el doctor Forbes, un médico inconformista, y Corto, un antiguo bandido de aire un tanto romántico.\r\n</p><p>\r\nLa riqueza de los diálogos, que a menudo expresan posturas ideológicas opuestas y modos de entender la vida muy distintos, contribuye mucho a que esta serie se considere hoy en día una obra maestra.'),
(211, 'Sargento Kirk 4', 85, 1, 1, 55, 14, 'Habitación Pablo', 'C', 19, 'kirk-4.jpeg', '2021-05-07 12:27:39', 'Esta larga serie fue una historieta decididamente innovadora.\r\n</p><p>\r\nA diferencia de los wésterns de la época, en los que se aprecia la impronta del cine hollywoodiense más esnob y sesgado ?que presentaba al espectador la imagen errónea de un blanco «bueno» y un indio «malo»?, los relatos en torno a Kirk son precursores de un nuevo modo más realista y objetivo de narrar las relaciones entre los indios y la presunta «civilización» de los blancos. Hubo que esperar hasta la década de 1970 para que el cine estadounidense comenzase a cambiar de registro. Si se tiene en cuenta que Sargento Kirk se remonta a 1953, se entenderá mucho mejor el valor de esta serie de historietas que, desde los primeros episodios, presenta al protagonista, un sargento del Séptimo Regimiento de Caballería del Ejército de Estados Unidos, atenazado por las dudas y los sentimientos encontrados, confuso y escindido entre su sentido del deber como soldado y sus ansias de justicia y la piedad por los indios.\r\n</p><p>\r\nTras una dolorosa y desgarradora lucha interna, decide desertar y ponerse del lado de los pieles rojas. Se convierte así en el hermano de sangre de Maha, el joven hijo del jefe indio de la tribu tchatooga, y se integra cuanto le es posible en la tribu. Lo acompañarán en sus aventuras otros personajes importantes de la serie, como el doctor Forbes, un médico inconformista, y Corto, un antiguo bandido de aire un tanto romántico.\r\n</p><p>\r\nLa riqueza de los diálogos, que a menudo expresan posturas ideológicas opuestas y modos de entender la vida muy distintos, contribuye mucho a que esta serie se considere hoy en día una obra maestra.'),
(212, 'Los Celtas', 156, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'los-celtas.jpeg', '2021-05-07 12:53:28', 'Los Celtas'),
(213, 'Diccionario Biográfico del Mundo Antiguo - Egipto y Próximo Oriente', 600, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'diccionario-biografico-del-mundo-antiguo-egipto-y-proximo-oriente-2.jpeg', '2021-05-07 12:54:26', 'Diccionario Biográfico del Mundo Antiguo - Egipto y Próximo Oriente'),
(214, 'Atlas de Historia Clásica (del 1700 a.C. al 565 d.C.)', 100, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'atlas-akal.png', '2021-05-07 12:57:50', 'Atlas de Historia Clásica (del 1700 a.C. al 565 d.C.)'),
(215, 'El Sonido en el Cine', 95, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'sonido-cine.png', '2021-05-07 12:58:43', 'El Sonido en el Cine'),
(216, 'El Uno y los Múltiples - concepciones egipcias de la divinidad', 237, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'uno-multiples.png', '2021-05-07 12:59:53', 'El Uno y os Múltiples - concepciones egipcias de la divinidad');
INSERT INTO `libro` (`id`, `titulo`, `paginas`, `idioma`, `leido`, `coleccion`, `saga`, `ubicacion`, `estanteria`, `balda`, `portada`, `fecha`, `sinopsis`) VALUES
(217, 'Historia del Antiguo Egipcio', 415, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'antiguo-egipcio.jpeg', '2021-05-07 13:02:24', 'Historia del Antiguo Egipcio de Grimal'),
(218, 'La Crisis del Siglo III y el Fin del Mundo Antiguo', 117, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'crisis-antiguo.jpeg', '2021-05-07 13:03:53', 'La Crisis del Siglo III y el Fin del Mundo Antiguo'),
(219, 'La Especie Elegida - la larga marcha de la evolución humana', 336, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'especie-elegida.jpeg', '2021-05-07 13:05:12', '¿Es el hombre «la especie elegida», la consecuencia necesaria de la larga marcha de la evolución? ¿Es, por el contrario, un accidente, el resultado de una de tantas opciones posibles en la historia de la vida? ¿Qué fue antes, un ser bípedo o un ser inteligente? ¿Desde cuándo hablan los seres humanos? ¿Eran monógamos nuestros antepasados, cómo vivían, de qué se alimentaban? Este libro ha sido concebido para dar respuestas a estas y a muchas otras preguntas acerca de nuestros orígenes. Con el rigor científico que se espera de investigadores de primera fila mundial, Juan Luis Arsuaga e Ignacio Martínez nos ofrecen en La especie elegida la mejor y más documentada síntesis acerca del enigma del hombre.'),
(220, 'Prehistoria UNED Tomo I', 0, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'uned-pre.jpeg', '2021-05-07 13:08:08', 'Prehistoria UNED Tomo I'),
(221, 'Prehistoria UNED Tomo II', 0, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'uned-pre.jpeg', '2021-05-07 13:08:32', 'Prehistoria UNED Tomo II'),
(222, 'Historia de la Grecia Antigua', 0, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'historia-grecia-roldan.jpeg', '2021-05-07 13:11:26', 'Historia de la Grecia Antigua'),
(223, 'Historia de Roma', 0, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'historia-roma-roldan.jpeg', '2021-05-07 13:11:56', 'Historia de Roma'),
(224, 'Crónicas de la Dragonlance', 1438, 1, 1, 58, NULL, 'Habitación Pablo', 'D', 20, 'cronicas-dragonlance.jpg', '2021-05-07 17:55:29', 'Al cabo de cinco años, un grupo de amigos se reúne en <i>El último Hogar</i>, mientras vientos de guerra asolan el mundo en el que viven. Un arma mágica de increíble poder caerá en las manos de estos amigos y los obligará a emprender una larga aventura que decidirá el destino de Krynn, su mundo.\r\n</p><p>\r\n\r\nAsí comienzan las <i>Crónicas de la Dragonlance</i>, la primera trilogía de la fantasía épica escrita por Weis y Hickman, que se ha convertido en referencia para todas las obras posteriores de este género. Para esta edición, que reúne en un solo volumen los tres libros originales, los autores han añadido una serie de comentarios a pie de página que explican y aclaran el proceso de creación de una de las mayores sagas de literatura fantástica.'),
(225, 'Historia de la Guerra del Peloponeso', 720, 1, 0, 59, NULL, 'Habitación Pablo', 'C', 17, 'pelopo.jpeg', '2021-05-07 19:11:59', 'Tucídides es el creador de un tipo absolutamente nuevo de literatura histórica. Su estilo revela las características propias de una historiografía moderna: afán de verdad con sus correlatos de objetividad, imparcialidad y precisión, búsqueda de lo general en lo individual, etc. Su gran hallazgo está en considerar al hombre y no a la divinidad como motor de la Historia.'),
(226, 'Tragedias Completas', 500, 1, 0, 59, NULL, 'Habitación Pablo', 'C', 17, 'trage.jpeg', '2021-05-07 19:15:10', 'Esquilo (525-455 a.C.) vivió en Atenas, cuya democracia cantó en sus obras. De sus numerosas obras, solo siete tragedias se han conservado: Los Persas, Los Siete contra Tebas, Las Suplicantes, Prometeo encadenado y la trilogia de La Orestia. En este volumen se ofrece una version ritmica de las obras.'),
(227, 'Iliada', 1032, 1, 1, 59, NULL, 'Habitación Pablo', 'C', 17, 'iliada.jpeg', '2021-05-07 19:18:10', '<span>Homero</span> es el poeta griego por antonomasia, el poeta divino que influyo en el arte, la literatura, la lengua, la religion y la filosofia griegas. El mensaje de la lliada es claro: aunque los heroes hagan frente al inexorable hado que pesa sobre los mortales cosechando la gloria, nada hay sobre la tierra mas miserable que el hombre. La presente edicion restituye la obra a sus origenes ofreciendo una traduccion literal en verso.'),
(228, 'El Asno de Oro', 334, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'asno-oro.jpeg', '2021-05-07 19:22:16', 'Apuleyo (Madaura, actual Argelia, h. 125 - Cartago, hoy desaparecida, actual Túnez, h. 180) se formó en retórica en Cartago y acudió a Atenas para iniciarse en la filosofía platónica. Viajó por diversas ciudades y países, hasta que se instaló definitivamente en Cartago. Acusado de haberse casado con una viuda rica de Trípoli mediante unos encantamientos maléficos, escribió en su defensa la Apología. A partir de entonces, desarrolló una brillante carrera de orador en Cartago, donde sus discursos tenían mucho éxito. Su fama como literato se debe a la Metamorfosis, conocida en la Antigüedad como el Asno de oro, novela en once partes que ofrece una penetrante y divertida sátira de la sociedad de su tiempo.'),
(229, 'Fábulas', 175, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'fabulas.jpeg', '2021-05-07 19:26:26', 'Pertenecientes a un género antiquísimo y de duradera fortuna en nuestro ámbito cultural, las Fábulas son composiciones generalmente breves que proporcionan una enseñanza práctica, un consejo moral o una regla de comportamiento. Pese a su carácter folclórico y popular y su difusión esencialmente oral, ya desde muy antiguo estos cuentecillos se atribuyeron en Grecia casi de forma sistemática a un personaje nebuloso, quizá incluso legendario, llamado ESOPO. El presente volumen ofrece las versiones originales de estos textos, algunos de los cuales -como «La tortuga y la liebre», «La zorra y las uvas» o «La cigarra y las hormigas»- han perdurado sin perder un ápice de vigor hasta nuestros días.'),
(230, 'La Guerra de las Galias - libro I-II-III', 265, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'guerra-galias.png', '2021-05-07 19:31:46', 'ayo Julio César, que es uno de los tres más grandes capitanes\r\nde la Historia con Alejandro Magno y con Napoleón, es también uno\r\nde los tres más considerables historiadores latinos, con Cayo Crispo\r\nSalustio y con Tito Livio, formando el ejemplar triunvirato del período\r\nclásico por excelencia, período verdaderamente «áureo» de las letras\r\nlatinas. Y Julio César es todo esto, tiene tal significación,\r\nprecisamente como historiador de sí mismo, narrador de sus propias\r\nhazañas guerreras y de su política.\r\nHabía en él, además de un excepcional militar y un no menos\r\nextraordinario estadista y gobernante, un admirable literato, más\r\nplural o polifacético de lo que, por lo común, suele saberse; un\r\nliterato al que, por haberse perdido varias de sus obras ajenas al\r\ngénero histórico, no podemos juzgar en su integridad y de modo\r\ndirecto, pero sin duda no muy inferior al historiador en el cultivo de\r\notras manifestaciones literarias, distintas a lo histórico; un literato, en\r\nfin, autor del poema El viaje, de la tragedia Edipo y de otras\r\ncreaciones poéticas, del Anti-Catón, de una astronomía De astris y de\r\nun tratado acerca de los augures y los auspicios.\r\nCon todo, le bastan sus obras de carácter histórico, sobre la\r\nhistoria que él mismo vivió e hizo, protagonizándola, para que le\r\njuzguemos conforme se dice al principio de estas líneas; obras\r\nevidentemente originales, redactadas sin asistencia de persona\r\nalguna, en las que, lejos de imitar, se haría digno de imitación,\r\nafirmando notables cualidades y condiciones de historiador, de\r\nmaestro de la historia narrativa. Sobrio y preciso, claro y metódico,\r\nbrillante y colorista sin alardes, de acuerdo con la austeridad y la\r\nseveridad propias del género en sus más dignas concepciones..., así\r\nes Julio César, historiador de sí mismo'),
(231, 'La Guerra de las Galias - libro IV-V-VI', 321, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'guerra-galias.png', '2021-05-07 19:32:28', 'ayo Julio César, que es uno de los tres más grandes capitanes\r\nde la Historia con Alejandro Magno y con Napoleón, es también uno\r\nde los tres más considerables historiadores latinos, con Cayo Crispo\r\nSalustio y con Tito Livio, formando el ejemplar triunvirato del período\r\nclásico por excelencia, período verdaderamente «áureo» de las letras\r\nlatinas. Y Julio César es todo esto, tiene tal significación,\r\nprecisamente como historiador de sí mismo, narrador de sus propias\r\nhazañas guerreras y de su política.\r\nHabía en él, además de un excepcional militar y un no menos\r\nextraordinario estadista y gobernante, un admirable literato, más\r\nplural o polifacético de lo que, por lo común, suele saberse; un\r\nliterato al que, por haberse perdido varias de sus obras ajenas al\r\ngénero histórico, no podemos juzgar en su integridad y de modo\r\ndirecto, pero sin duda no muy inferior al historiador en el cultivo de\r\notras manifestaciones literarias, distintas a lo histórico; un literato, en\r\nfin, autor del poema El viaje, de la tragedia Edipo y de otras\r\ncreaciones poéticas, del Anti-Catón, de una astronomía De astris y de\r\nun tratado acerca de los augures y los auspicios.\r\nCon todo, le bastan sus obras de carácter histórico, sobre la\r\nhistoria que él mismo vivió e hizo, protagonizándola, para que le\r\njuzguemos conforme se dice al principio de estas líneas; obras\r\nevidentemente originales, redactadas sin asistencia de persona\r\nalguna, en las que, lejos de imitar, se haría digno de imitación,\r\nafirmando notables cualidades y condiciones de historiador, de\r\nmaestro de la historia narrativa. Sobrio y preciso, claro y metódico,\r\nbrillante y colorista sin alardes, de acuerdo con la austeridad y la\r\nseveridad propias del género en sus más dignas concepciones..., así\r\nes Julio César, historiador de sí mismo'),
(232, 'La Guerra de las Galias - libro VII', 215, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'guerra-galias.png', '2021-05-07 19:33:03', 'ayo Julio César, que es uno de los tres más grandes capitanes\r\nde la Historia con Alejandro Magno y con Napoleón, es también uno\r\nde los tres más considerables historiadores latinos, con Cayo Crispo\r\nSalustio y con Tito Livio, formando el ejemplar triunvirato del período\r\nclásico por excelencia, período verdaderamente «áureo» de las letras\r\nlatinas. Y Julio César es todo esto, tiene tal significación,\r\nprecisamente como historiador de sí mismo, narrador de sus propias\r\nhazañas guerreras y de su política.\r\nHabía en él, además de un excepcional militar y un no menos\r\nextraordinario estadista y gobernante, un admirable literato, más\r\nplural o polifacético de lo que, por lo común, suele saberse; un\r\nliterato al que, por haberse perdido varias de sus obras ajenas al\r\ngénero histórico, no podemos juzgar en su integridad y de modo\r\ndirecto, pero sin duda no muy inferior al historiador en el cultivo de\r\notras manifestaciones literarias, distintas a lo histórico; un literato, en\r\nfin, autor del poema El viaje, de la tragedia Edipo y de otras\r\ncreaciones poéticas, del Anti-Catón, de una astronomía De astris y de\r\nun tratado acerca de los augures y los auspicios.\r\nCon todo, le bastan sus obras de carácter histórico, sobre la\r\nhistoria que él mismo vivió e hizo, protagonizándola, para que le\r\njuzguemos conforme se dice al principio de estas líneas; obras\r\nevidentemente originales, redactadas sin asistencia de persona\r\nalguna, en las que, lejos de imitar, se haría digno de imitación,\r\nafirmando notables cualidades y condiciones de historiador, de\r\nmaestro de la historia narrativa. Sobrio y preciso, claro y metódico,\r\nbrillante y colorista sin alardes, de acuerdo con la austeridad y la\r\nseveridad propias del género en sus más dignas concepciones..., así\r\nes Julio César, historiador de sí mismo'),
(233, 'Historias Libro I - IV', 450, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'historias.jpeg', '2021-05-07 19:37:08', 'Primeros cuatro libros de las Historias del celebre historiador del siglo V a.C., considerado como el padre de la Historia. La Historia de Heródoto es sin duda una de las más atractivas que nos ha dejado la antigua Grecia. Planeada más para ser escuchada que para ser leída, guarda todo el encanto de las investigaciones personales del autor en la Helade y en oriente en una epoca que estaba pasando de la cultura arcaica a la etapa clásica. Contiene un esbozo de historia y costumbres de los pueblos orientales, Egipto, Persia, Lidia, etc., y una narración de las guerras medicas, que desembocaron en la deslumbrante Atenas de Pericles'),
(234, 'Himnos Sumerios', 219, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'sumerios copia.png', '2021-05-07 19:40:27', 'Himnos Sumerios'),
(235, 'Poema de Gilgamesh', 343, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'gilgamesh.jpeg', '2021-05-07 19:42:05', 'El Poema de Gilgamesh constituye, tanto por su cronología como por su contenido argumental y fuerza poética, la primera de las grandes epopeyas literarias de la humanidad. El poema, estructurado en doce tabillas, cuestiona los grandes interrogantes que siempre se ha planteado el hombre: significado de la vida, problema de la muerte, planteamiento de la inmortalidad y resignación ante el destino.'),
(236, 'Ebla - una nueva historia. una nueva cultura', 243, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'ebla.jpeg', '2021-05-07 19:44:21', 'Las ruinas de la antigua ciudad de Ebla, situada en el corazón de Siria, constituyen el mayor núcleo urbano, fuera de los valles aluviales del Nilo, del Éufrates y del Tigris. Su localización y excavación comenzó en los años 60 del siglo XX por el arqueólogo italiano Paolo Matthiae. La piqueta ha ido descubriendo uno de los capítulos más impresionantes de la Historia Antigua. Especial De Mesopotamia a Irak'),
(237, 'Tercios de España - la infanteria legendaria', 276, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'tercios.jpeg', '2021-05-07 19:47:25', 'Para los europeos de su tirmpo no hubo sombra de duda: durante más de ciento cincuenta años, entre 1534 y finales del siglo XVII, los tercios españoles fueron las mejores unidades militares del mundo. Tres siglos después de su desaparición, todavía los especialistas de hoy comparan los tercios de infantería española con las legiones romanas y la falanges macedónicas. En este volumen encontrará, con el rigor, las ilustraciones y la amenidad necesarias, todas las respuestas a cómo se encuadraban, qué haberes percibían, qué tácticas y estrategias adoptaron, quiénes fueron sus generales más laureados, sus hechos más notables, su lenguaje y un sinfín de curiosidades sobre la vida del soldado de infantería.'),
(238, 'La Casta -  el increible chollo de ser político en españa', 261, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'casta.jpeg', '2021-05-07 19:49:39', 'Qué futuro tiene un país como España donde las casi 80.000 personas que forman la clase política están envueltas en un velo informativo sobre el despilfarro de sus privilegios?\r\n¿Un país donde la casta política lava los trapos sucios en casa para ocultar abusos, privilegios y corruptelas?\r\n¿Un país cuya legislación carece de una normativa específica para regular los regalos de empresarios a políticos?\r\n¿Un país que permite que los políticos de todos los niveles disfruten de cierta libertad para disponer de dinero público?\r\n¿Un país que ha convertido el Parlamento Europeo en el cajón de sastre para exiliados de la política, enchufados y parientes que utilizan el padrinazgo de los partidos para dar el salto a la política de mejor nivel y a un mejor sueldo?\r\nSi quiere saber cómo se mantiene la Casta española y disfruta de los privilegios del poder, sumérjase en las páginas de este libro. Tras su lectura, su visión sobre la política de nuestro país será distinta.'),
(239, 'Amor, Rebeldía, Libertad y Sangre', 96, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 17, 'chinato2.png', '2021-05-07 19:53:58', 'Ama, ama y ensancha el alma.\r\nQuisiera que mi voz fuera tan fuerte\r\nque a veces retumbaran las montañas\r\ny escucharéis las mentes social-adormecidas\r\nlas palabras de amor de mi garganta.\r\n</p><p>\r\nAbrid los brazos, la mente y repartíos\r\nque sólo os enseñaron el odio y la avaricia\r\ny yo quiero que todos como hermanos\r\nrepartamos amores, lágrimas y sonrisas.\r\n</p><p>\r\nDe pequeño me impusieron las costumbres\r\nme educaron para hombre adinerado\r\npero ahora prefiero ser un indio\r\nque un importante abogado.\r\n</p><p>\r\nHay que dejar el camino social alquitranado\r\nporque en él se nos quedan pegadas las pezuñas\r\nhay que volar libre al sol y al viento\r\nrepartiendo el amor que tengas dentro.\r\nAma, ama y ensancha el alma, Ama, ama y ensancha el alma'),
(240, 'El Mundo Clásico - la epopeya de Grecia y Roma', 806, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 17, 'mundo.jpg', '2021-05-07 19:56:06', 'Robin Lane Fox enseña historia antigua en Oxford y es, además un gran narrador. De esta afortunada combinación ha surgido un libro de historia del mundo clásico distinto, que tiene el rigor del buen trabajo académico -y ha merecido por ello los elogios de un especialista como Peter Jones- y la amenidad de un relato del que los críticos han dicho que es \"increíblemente entretenido\" y \"más épico que la mejor película de romanos\". Porque, si algo caracteriza este fascinante recorrido del mundo de la antigüedad clásica desde Homero a Adriano, es precisamente la presencia constante del toque humano: su capacidad de evocar figuras como Sócrates, Alejandro, Cicerón o César y de hablarnos, a la vez, de la vida cotidiana de los ciudadanos, de los últimos días de Pompeya o de los juegos del circo, en unas páginas que nos devuelven el encanto de la mejor narrativa histórica.'),
(241, 'Pasajes de la Historia', 540, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, 'pasajes.jpeg', '2021-05-13 15:31:01', 'La austeridad de Esparta y su entrega heroica en el paso de las Termópilas; la crueldad y ferocidad del implacable Iván IV; la intrigante Lucrecia Borgia; los enigmáticos mundos soñados por Edgar Allan Poe; la trepidante carga de la Brigada Ligera; los apasionantes viajes de Stevenson, el «contador de historias» o los míticos vuelos del Barón Rojo y los últimos caballeros del aire. Pasajes de la historia recoge veinticinco semblanzas cuyo autor, Juan Antonio Cebrián, ha recopilado en un libro que adopta el nombre de una de las secciones más populares de La rosa de los vientos, dirigido por él mismo en Onda Cero y que conmemora este año su décimo aniversario. Una obra que destaca por el rigor y la amenidad excepcional de todo un genio de la divulgación histórica. «En estos pasajes queda reflejada la propia condición humana, con sus virtudes y defectos; la lectura de éstas páginas no le dejarán indiferente. Estoy convencido de que, tras vivir los acontecimientos aquí expuestos, usted sacará muchas y buenas conclusiones sobre nuestro inmediato presente. Sólo me resta desear que tanto oyentes como lectores mantengan viva la hoguera de nuestra tribu humana y, a buen seguro, las generaciones posteriores se lo agradecerán. Ése es, como dijo Poe, mi anhelo del porvenir.»'),
(242, 'Los Peces de la Amargura', 237, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 16, 'peces-amargura.jpeg', '2021-05-14 17:28:12', 'Un padre se aferra a sus rutinas y aficiones, como cuidar los peces, para sobrellevar el trastorno de una hija hospitalizada e invalida; un matrimonio acaba fastidiado por el hostigamiento de los fanaticos contra un vecino y esperan que este se decida a marcharse; un hombre hace todo lo posible para que no lo seÃ±alen, y vive aterrado porque todos le dan la espalda; una mujer decide irse con sus hijos sin entender por que la acosan. A manera de cronicas o reportajes, de testimonios en primera persona, de cartas o relatos contados a los hijos, Los peces de la amargura recoge fragmentos de vidas en las que, sin dramatismo aparente, solo asoma la emocion a la par que el homenaje o la denuncia de manera indirecta o inesperada, es decir de la manera mas eficaz.'),
(243, 'Chistes para Desorientar a la Poesía', 216, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 16, 'chistes-policia.jpeg', '2021-05-14 17:44:07', 'Nicanor Parra escribe una poesía deliberadamente coloquial, una poesía que usa la entonación de las frases que hacemos todos los días; abundan en ellas la información burocrática que el poeta inserta hábilmente para hacer estallar un contexto de alta tonalidad afectiva.Poesía prosaica sin duda, pero prosaica del mismo modo que lo es \"Les Fleurs du mal\": por la insistencia en atravesar la piel de lo cotidiano, para encontrar debajo las presencias invisibles pero seguras del dolor, del engaño, de la locura, de la muerte. Pero eso la poesía de este hombre superficialmente alegre y politizante izquierdista, tan desnuda y descarnada, una poesía en la que resuena la misma nota lúcida de Baudelaire, la misma clara visión del infierno que se encuentra en los poetas medievales. A través de su propia e intransferible voz, Nicanor Parra ha encontrado el secreto de la poesía de larguísima y sombría tradición.'),
(244, 'Arder en el Agua / Ahogarse en el Fuego', 559, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, 'arder-agua.jpeg', '2021-05-14 18:05:21', 'Como una doncella tierna y de poca edad, y en todo extremo hermosa, a quien tienen cuidado de enriquecer, pulir y adornar otras muchas doncellas, que son todas las otras ciencias; pero esta tal doncella no quiere ser manoseada, ni traida por las calles, ni publicada por las esquinas de las plazas ni por los rincones de los palacios'),
(245, 'Habitaciones Separadas', 77, 1, 1, 54, NULL, 'Habitación Pablo', 'C', 16, 'habitaciones-separadas.jpeg', '2021-05-14 18:06:49', 'L. G. M. indica una de las terndencias más valiosas de la lírica española contemporánea, esa línea que se ha llamado \"poesía de la experiencia\". Podríamos llamarla también poesía de la vida, poesía que trata de explorar la realidad de todos los días, que colinda por una parte con lo maravilloso y por otra lo cotidiano. Es un libro lleno de emociones en el cual, estoy seguro, los jóvenes van a reconocerse. Pero no sólo ellos, todos nosotros podemos reconocernos en muchos momentos de este libro escrito en versos diáfanos y al mismo tiempo inteligentes.> Octavio Paz'),
(246, 'Sonetos, Odas y otros Poemas', 101, 1, 1, 54, NULL, 'Habitación Pablo', 'C', 16, 'sonetos-odas.jpeg', '2021-05-14 18:08:05', 'John Keats nace en Londres en 1795 y muere en Roma, tuberculoso, en 1821 donde se encuentran sus restos bajo el siguiente epitafio: «Aquí descansa aquel cuyo nombre quedó escrito sobre las aguas.»\r\n<p></p>\r\n«Keats, que sin exagerada injusticia pudo escribir: \"No sé nada, no he leído nada\", adivinó, a través de las páginas de algún diccionario escolar, el espíritu griego; sutilísima prueba de esa adivinación o recreación es haber intuido en el oscuro ruiseñor de una noche el ruiseñor platónico. Keats, acaso incapaz de definir la palabra \"arquetipo\" se anticipó en un cuarto de siglo a una tesis de Schopenhauer.»'),
(247, 'Ciento Volando de Catorce', 137, 1, 1, 54, NULL, 'Habitación Pablo', 'C', 16, 'ciento-volando.jpeg', '2021-05-14 18:09:38', 'El mundo de Joaquín es real y matizado porque surge de la melancolía para desembocar en los impulsos irónicos. El vitalismo de sus consignas procura darle la vuelta a los relojes y a las palabras...\". Así nos habla Luis García Montero en el prólogo de este libro de sonetos, en el que Sabina transmite todas sus emociones a lo largo de cuarenta años. '),
(248, 'Madrigales de la Pensión', 121, 1, 1, 54, NULL, 'Habitación Pablo', 'C', 16, 'madrigales.jpeg', '2021-05-14 18:10:56', 'La obra en verso de Charles Bukowski (1920 - 1994), no ha sido tan conocida como lo son su producción novelística y sus relatos cortos, a pesar de estar constituida aquélla por todo un corpus compuesto de varios volúmenes en forma de libro y cientos de poemas aparecidos en decenas de revistas a lo largo de más de cuarenta años. Los aquí reunidos bajo el título de Roominghouse Madrigals (Madrigales de la pensión), forman parte de una antología que su casa editorial en California publicó en 1998. En esos primeros tiempos, mediante un lenguaje a veces crudo y directo -pero también salpicado de liberadoras metáforas (en palabras del traductor José María Moreno Carrascal) -Charles Bukowski nos cuenta historias vividas o recordadas desde un cuarto de alquiler que nos hablan, básicamente, de la muerte, el sexo o el amor, como temas centrales en las vidas de unos personajes a los que observamos con un cierto \"voyeurismo\", el cual nos permite reflecionar acerca de lo absurdo de una existencia pobre y rutinaria. Y todo ello expresado en un lenguaje poético con resonancias del verso explosivo de un Whitman, la ironía sintácticamente anarquizante de un E. E. Cummings o el trazo imaginista de un W. C. Williams'),
(249, 'Guerra sin Cesar - Poemas 1981-1984', 341, 1, 0, 54, NULL, 'Habitación Pablo', 'C', 16, 'guerra-bukosqki.jpeg', '2021-05-14 18:12:09', 'War All the Time is a selection of poetry from the early 1980s. Charles Bukowski shows that he is still as pure as ever but he has evolved into a slightly happier man that has found some fame and love. These poems show how he grapples with his past and future colliding.'),
(250, 'Escrutaba la Locura en busca de la Palabra, el Verso, la Ruta', 440, 1, 0, 54, NULL, 'Habitación Pablo', 'C', 16, 'escrutaba-bukowski.jpeg', '2021-05-14 18:13:45', 'Los poemas de este volumen constituyen una colección articulada por el propio autor para ser publicada después de su muerte, y, si bien sería muy aventurado decir que todos pertenecen a sus últimos años, sin duda prevalece en ellos la mirada del poeta poco antes del final. Al margen de las circunstancias de deterioro físico, los poemas seguían surgiendo con fuerza porque eran para el autor una necesidad y llegó un momento en que éste no entendía la vida sin la palabra escrita; no había vida sin la plabra escrita. No hay razones lógicas para encasillar a Bukowski como poeta callejero y alcohólico. En este libro se descubrer como un escritor apasionado por la musica clásica, como un romántico confeso que salda sus deudas de gratitud con quienes le aydaron en tiempos difíciles y como admirador de Céline, Dostoiwsky o Vallejo, de los que se considera heredero directo.Bukowski nació en Andercach, Alemania, en 1920, hijo de un soldado americano, y murió en Los Ángeles, donde siempre vivió, en 1994.'),
(251, 'Completamente Viernes', 124, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, 'completa-viernes.png', '2021-05-14 18:15:55', 'Si la veta amorosa ya estaba en algunos libros anteriores del propio García Montero, en éste se manifiesta con un protagonismo radical y vertebrador. No hay momento, actividad, día que no esté entreverado de la presencia del otro. Hasta los malos pensamientos, las rutinas, el trabajo, el caos urbano, dibujan los peculiares trabajos y días del enamorado. Por encima de las sombras que se cruzan, los tropiezos, las torpezas, el poeta deja clara su voluntad de afirmar la plenitud de su amor, la totalidad de su experiencia: a ese sentimiento pertenece no sólo «la realidad con su mirada inhóspita, / el deseo que nace de los sueños», sino el pasado y el futuro. Si el amor es el sentimiento que rescata de la literatura, aquí comprobamos admirados que también es el que todavía la hace posible.'),
(252, 'Vista Cansada', 137, 1, 1, 54, NULL, 'Habitación Pablo', 'C', 16, 'vista-cansada.jpg', '2021-05-14 18:17:08', 'El escritor Luis García Montero cumple a finales de 2008 cincuenta años, un buen momento para hacer «un ejercicio de memoria» como el que supone su nuevo poemario, Vista cansada, una obra en la que la melancolía del recuerdo no impide que haya en sus páginas «un canto a la vida y a la dignidad de la existencia». «La poesía es un ajuste de cuentas con la realidad», afirma el escritor granadino en una entrevista que tiene lugar en su casa de Madrid y en la que desgrana las claves de este libro por el que desfila su vida, pero también «los cambios vertiginosos» que ha experimentado España en las últimas décadas. Luis García Montero (Granada, 1958) es poeta, ensayista y catedrático de Historia de la Literatura en la Universidad de Granada. Entre sus ensayos destacan Poesía, cuartel de invierno (1987), Confesiones poéticas (1993), El sexto día. Historia íntima de la poesía española (2000) y Gigante y extraño. Las Rimas de Gustavo Adolfo Bécquer (2002). Como poeta ha publicado algunos de los libros más importantes de la literatura española de las últimas décadas, caracterizados por la búsqueda de equilibrio entre el rigor formal y la intensidad reflexiva. Ofrecemos aquí una extensa antología de su obra, seleccionada por el propio autor. Ha recibido el Premio Nacional de Literatura (1994) y el Premio Nacional de la Crítica (2003)'),
(253, 'Memorias de un Mujeriego', 259, 1, 0, 54, NULL, 'Habitación Pablo', 'C', 16, 'memorias-leonard.jpeg', '2021-05-14 18:18:26', 'L. Cohen (Canadá, 1934) es uno de los más grandes poetas-compositores vivos. En este libro se encuentran todos los elementos que han hecho de Cohen un auténtico genio: la experiencia del amor y de la amistad; las reflexiones, llenas de dudas y de propuestas sobre el pasado, sobre la historia y sobre el hoy; sobre el amor humano y el erotismo, la ternura y la belleza.\r\n<p></p>\r\n\"En cuanto al derrumbamiento del viejo sistema, estoy dispuesto a dejarlo caer y, sin embargo, juro defenderlo personalmente, apenas puedo alejar mi mente de las arrugas de sus faldas. No sé, desearía que se diesen prisa, y tomaran el poder. Dejad que lo consigan. Yo me rindo\". L.C.'),
(254, 'Defensa Propia - 60 poemas y 85 bagatelas', 112, 1, 1, 54, NULL, 'Habitación Pablo', 'C', 16, 'defensa-propia.jpg', '2021-05-14 18:19:48', 'Con la ironía intacta, con la inocencia del niño, con el compromiso del militante, que es signo fundante de sus textos, Mario Benedetti sabe hacer la defensa de la lectura placentera. Entre los 60 poemas y las 85 bagatelas hay gestos para la emoción, la furia, la tristeza y la esperanzadora luz del mañana.\r\nDefensa propia es el testamento poético de un hombre cuyo oficio ha sido defender siempre la palabra. En diferentes lenguajes -poesía o bagatela- la impronta lírica, la capacidad de asombro, el ineludible paso del tiempo, la imagen instantanea y reveladora nos atraviesa como un rayo.'),
(255, 'Existir Todavía', 120, 1, 1, 54, NULL, 'Habitación Pablo', 'C', 16, 'eistir-todavia.jpg', '2021-05-14 18:21:00', 'Existir Todavía es un libro donde cada poema simula un año de vida. Mario Benedetti nos hace viajar por su memoria, y las cosas, las personas, la naturaleza, y el universo de sensaciones cotidianas, tantas veces golpeadas, se ven embellecidas por la palabra poética, que propone emborracharnos de esperanzas utópicas. En Existir Todavía , Benedetti explora el goce de vivir, para nombrar desde el asombro los recuerdos de su experiencia, el ahora y la apuesta al futuro. A los 83 años, la voz melancólica del poeta le rinde homenaje a la existencia, y la mirada se extiende hasta capturar el alma de las cosas más queridas.'),
(256, 'El Olvido está Lleno de Memoria', 159, 1, 1, 54, NULL, 'Habitación Pablo', 'C', 16, 'olvido-memoria.jpeg', '2021-05-14 18:22:44', 'Mario Benedetti, uno de los escritores más leidos de las letras hispánicas, ha sido traducido a veinticinco idiomas. \'La poesía de Benedetti es una crítica de la sociedad y de la vida impartida según dos espacios temáticos, el amor como programación solidaria de la existencia y la historia como experiencia moral\'.J. M. Caballero Bonald. La poesía de M. Benedetti está recogida en esta colección en Inventario, Poesía 1950 - 1985 e Inventario Dos, Poesía 1986 - 1991'),
(257, '¡Indignaos1', 60, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, 'indignaos.jpeg', '2021-05-14 21:56:46', 'Cuando alguien como Stéphane Hessel llama a la «insurrección pacífica», a desperezarse, a rebelarse, hay que escucharle. Porque Hessel sabe de lo que habla: miembro de la Resistencia francesa, superviviente de Buchenwald, militante a favor de la independencia argelina y defensor de la causa palestina, este eterno luchador fue, además, miembro del comité que redactó la Declaración Universal de los Derechos Humanos de 1948. Por eso, cuando reclama «un motivo de indignación» para todos hay que hacerle caso. Porque «las razones para indignarse pueden parecer hoy menos nítidas o el mundo, demasiado complejo», pero siguen ahí, en la dictadura de los mercados, en el trato a los inmigrantes, a las minorías étnicas. «Buscad y encontraréis», nos dice, «coged el relevo, ¡indignaos!», porque «la peor actitud es la indiferencia. Si os comportáis así, perdéis uno de los componentes esenciales que forman al hombre: la facultad de indignación y el compromiso que la sigue». Un mensaje que ya ha contagiado a millones de personas en todo el mundo.'),
(258, 'El Clan del Oso Cavernario', 509, 1, 0, 60, NULL, 'Habitación Pablo', 'C', 16, 'El-clan-del-oso-cavernario-Jean-M.-Auel-portada.jpg', '2021-05-14 22:04:57', 'En la última fase de la Era Glacial, cuando Neandertales y Cromañones compartían la tierra, Ayla, una niña Cromañón de 5 años, queda aislada de su tribu por culpa de un terremoto y es acogida por un grupo de Neandertales. Valiente e indomable la joven al principio inspira sorpresa, luego cautela y, por fin, es aceptada por parte del Clan. Iza, la curandera y Creb, el Hombre Santo, cuidan de ella. Ayla se interesa por las cacerías y los preparativos de las armas, algo que está prohibido a las mujeres y que ella, no obstante, domina con maestría.'),
(259, 'Inventario Uno (parte primera) - 1950-1975', 166, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 16, 'c5f0732b1d3f69a74ccf78969408d055 copia.png', '2021-05-14 22:10:08', 'Inventario Uno (parte primera) - 1950-1975'),
(260, 'Inventario Uno (parte segunda) - 1976-1985', 134, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, 'c5f0732b1d3f69a74ccf78969408d055 copia.png', '2021-05-14 22:11:05', 'Inventario Uno (parte segunda) - 1976-1985'),
(261, 'Inventario Dos - 1986-1991', 120, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, 'c5f0732b1d3f69a74ccf78969408d055 copia.png', '2021-05-14 22:11:49', 'Inventario Dos - 1986-1991'),
(262, 'Obras Jocosas', 172, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 16, '34649272._SY475_.jpg', '2021-05-14 22:15:25', 'Conocer las obras festivas o jocosas de Quevedo, que en su publicación primera llevaron el título de Juguetes de la niñez y travesuras del ingenio, constituye un requisito imprescindible para obtener una idea cabal y completa de uno de los escritores más ingeniosos y ricos, tanto en recursos lingüísticos como conceptuales. Estas obras breves nos ofrecen la otra cara de la moneda del Quevedo preocupado por problemas teológicos y filosóficos, y honradamente lacerado por el dolor, la envidia y el encarcelamiento'),
(263, 'Luces de Bohemia', 144, 1, 0, 61, NULL, 'Habitación Pablo', 'C', 16, '274315.jpeg', '2021-05-14 22:41:42', 'Publicada en una primera versión por entregas semanales, en 1924 se edita la versión definitiva, revisada y reeditada con tres escenas más. Se considera una de las obras más importantes de Valle-Inclán, con la que inaugura un nuevo género teatral, el «esperpento», y sería el primero de los cuatro textos que el propio autor consideraría de ese género.\r\n<i>Luces de Bohemia</i> narra las últimas horas de la vida de Max Estrella, un «hiperbólico andaluz, poeta de odas y madrigales» ya anciano, miserable y ciego que gozó en algún momento de cierto reconocimiento. En su peregrinaje por un Madrid oscuro, turbio, marginal y sórdido le acompaña Don Latino de Hispalis y le dan la réplica algunos otros personajes de la bohemia madrileña de la época.\r\nLa obra se convierte en una parábola trágica y grotesca de la imposibilidad de vivir en un país deforme, injusto y opresivo, como es la España de la Restauración.'),
(264, 'La Sirena Varada / Los Árboles Mueren de Pié', 114, 1, 0, 61, NULL, 'Habitación Pablo', 'C', 16, '74b8bc88f7e808c42b562b11fe998adb.png', '2021-05-14 22:47:48', '<i>La Sirena Varada</i> es una obra que profundiza en una de las aspiraciones más ambicionadas por el hombre: la de escapar a su realidad. Narra la locura de un grupo de personas que deciden abandonarse a vivir en un mundo de sueños, donde el sentido común deja de existir. Es entonces cuando aparece el personaje principal de la obra, identificado únicamente como \"Sirena\". La historia de amor entre este personaje y el fundador de la comuna en la que vivían, y la imposibilidad del amor en un mundo irreal les lleva a enfrentarse a la realidad, por dura que esta sea.\r\n</p><p>\r\nEn <i>Los Árboles Mueren de Pié</i> El señor Balboa (abuelo) tenía un nieto desalmado al que, en su día, tuvo que echar de casa (hecho que ocultó a su esposa). Desde entonces él mismo se hacía llegar cartas que en teoría se las mandaba su nieto a la abuela (su esposa). El nieto real decide volver a su hogar (en busca de dinero) pero el barco en el que venía naufraga. Balboa contrata a un imitador y hacedor de ilusiones benéficas (Mauricio) en conjunto con una linda muchacha (Isabel), para que finja ser el nieto perdido y «su feliz esposa» ante la abuela; los alecciona y logra que den el pego.'),
(265, 'Bodas de Sangre', 140, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, 'bodas_sangre.png', '2021-05-18 11:21:23', 'Lorca estrenó <i>Bodas de Sangre</i> el 8 de marzo de 1933 en el Teatro Infanta Beatriz de Madrid y obtuvo un éxito arrollador que lo consagró como dramaturgo. En esta tragedia en tres actos, el autor vuelca prosa, verso y música para vestir a unos personajes con las ropas del amor, los celos, el odio y la violencia. Una historia pasional que tiene lugar en un innominado pueblo andaluz y que constituye un conmovedor alegato contra el miedo y la intolerancia.'),
(266, 'Cuentos', 133, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, '7376848._SX318_.jpg', '2021-05-18 11:27:04', 'Tal vez la faceta de la que menos se habla es su papel como gran cultivador de la novela corta, de relatos y de cuentos, formas que se desarrollan de forma extraordinaria en la literatura europea a partir de la mitad del siglo xix. Entre las obras más destacadas de Clarín se pueden señalar cronológicamente las novelas cortas Pipá, Doña Berta, Cuervo, Superchería, de los cuentos y relatos El Señor y lo demás son cuentos, Cuentos Morales, El gallo de Sócrates, obra póstuma, y Doctor Sutilis.'),
(267, 'Manifiesto Romántico - escritos de batalla', 159, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 16, 'manifiesto.png', '2021-05-18 11:33:02', '<i>Manifiesto Romántico</i> reúne los textos fundamentales de lo que podríamos llamar la teoría literaria de Victor Hugo. El prólogo a Cromwell y la revalorización romántica de Shakespeare desencadenan en su momento un violento escándalo cultural, hoy díficil de imaginar. Reunidos en volumen, los escritos de batalla de Victor Hugo constituyen un testimonio de las ideas que han fraguado la literatura moderna.'),
(268, 'Desobediencia Civil y otros escritos', 188, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 16, '17833900.jpeg', '2021-05-18 11:38:20', 'Figura singular y enemiga de convenciones, el estadounidense Henry D. Thoreau (1817-1862) desarrolló una obra fértil y heterogénea impregnada de un individualismo y de una integridad radicales. Si su obra más conocida, «Walden», fue el resultado de su voluntad de experimentar la libertad y la vida autosuficiente en la naturaleza, en sus «Diarios», ensayos y conferencias fue consignando su propia construcción como persona. Su ideología fue heterodoxa, radical, casi libertaria, antiimperialista y antiesclavista, y su influencia en los movimientos contemporáneos de desobediencia civil, desde Gandhi a nuestros días, ha sido enorme. De su discurso, tan firme como revolucionario, y que por otro lado, lejos de haber perdido actualidad, se revela hoy más que nunca como un referente para una sociedad asustada y secuestrada por poderes tan difusos como sospechosos, son excelente muestra los cuatro ensayos reunidos en este volumen —«Una vida sin principios», «Desobediencia civil», «La esclavitud en Massachusetts» y «Apología del capitán John Brown»— que la introducción de Juan José Coy ayuda a situar en el contexto oportuno.'),
(269, 'Canciones de Inocencia y de Experiencia', 161, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, '2636827.jpeg', '2021-05-18 11:41:16', 'La actividad y energía creadoras de William Blake están impregnadas de un estado místico, consecuencia del contexto histórico en que vivió. En Canciones de inocencia y de experiencia, reúne toda la formulación simbólica de un universo poético rico y fructífero en el que se identifican un proceso ritual con la esencia de la poesía.\r\n</p><p>\r\nLa inocencia y la experiencia representan tanto estados contrarios del alma humana, como situaciones sociales incompatibles en las que confluyen circunstancias materiales y relaciones sociales que implican un cambio de vida y sensibilidad.'),
(270, 'Antología Poética', 130, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, '820304.jpeg', '2021-05-18 11:44:46', 'La obra de Jaime Gil de Biedma —observa Javier Alfaya en el prólogo a este volumen— ocupa un lugar privilegiado y, en cierto modo aislado, en el llamado «grupo poético de los cincuenta». Esta Antología poética —preparada por Shirley Mangini González— permite apreciar la trayectoria de una labor creadora caracterizada por la búsqueda de la perfección y que eleva la experiencia individual del escritor al nivel de significación de la vida de todos los hombres.'),
(271, 'Antología Poética', 188, 1, 0, 59, NULL, 'Habitación Pablo', 'C', 16, 'anto-poet.png', '2021-05-18 11:50:22', 'La presente \"Antología poética\" refleja, a la vez, la unidad y la variedad de la amplia y compleja obra de Juan Ramón Jiménez (1881-1958), Premio Nobel de Literatura en 1956, cuyo magisterio en las letras españolas se extiende con una fuerza que no decae hasta la fecha de hoy. Ya en sus primeros libros quedan patentes la emoción, la intensidad y la pureza que preludian la etapa que se inicia en 1916 con \"Diario de un poeta recién casado\", de rigor extremado y de gran densidad conceptual, y que desembocará, después de la guerra, en una poesía de gran fuerza simbólica, marcada por un vehemente afán de trascendencia y de penetrar en la verdad última de las cosas. En el presente volumen, Antonio Colinas ha ordenado cronológicamente las muestras más representativas de los libros que el poeta publicó o dejó inéditos: «Aparente o subterráneo, siempre hay en los textos aquí recogidos un mismo espíritu. Es, precisamente este espíritu el que hemos intentado expresar con nuestra selección».'),
(272, 'Bajarse al Moro', 193, 1, 1, 59, NULL, 'Habitación Pablo', 'C', 16, '397884.jpeg', '2021-05-18 11:53:54', 'Madrid, los años 80, y cuatro jovenes como tantos constituyen el espacio, el tiempo y los protagonistas de la obra. Su fuente de inspiración fue la realidad que le rodeaba, haciendo resaltar una serie de códigos circunstanciales que operaban en el mundo cotidiano y que el autor consideraba relevantes y, el público, familiares.'),
(273, 'Ropa de Calle - antología poética (1980-2008)', 291, 1, 1, 59, NULL, 'Habitación Pablo', 'C', 16, '15139736._SY475_.jpg', '2021-05-18 11:55:37', 'Existe en la conciencia creadora de Luis García Montero (Granada, 1958) una significativa propensión a hacer de la normalidad un rasgo distintivo. El protagonista verbal se viste con ropa de calle. La premisa toma cuerpo en su amplio discurso teórico y en las sucesivas poéticas que acogen sus entregas. Con un profundo sentido orgánico, esta voz personal tiene su raíz en una nutrida tradición que enlaza el romanticismo, Antonio Machado, el espíritu vanguardista del 27 y la nómina casi completa de la generación mediosecular. Esta edición recoge una amplia muestra desde su primer fruto \" El jardín extranjero \" (1983) hasta \" Vista cansada \" (2008). En \" Ropa de calle \" se puede apreciar la fuerte trabazón entre intimidad, cultura y pensamiento y el avance natural de una obra que hace de la poesía un ejercicio de conocimiento; la escritura propone una indagación en la identidad que quiebra los márgenes del yo ensimismado y reafirma la dimensión social del individuo.'),
(274, 'Eneida', 338, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 16, 'enei.png', '2021-05-18 12:01:25', 'Publio Virgilio Marón (70-19 a. C.) estuvo dedicado a la composición de la <i>Eneida</i>, el más perfecto exponente del clasicismo latino. Virgilio ofreció con ella al pueblo romano la gran epopeya de sus orígenes, y una justificación y exaltación del nuevo régimen impuesto por el emperador Augusto. El resultado sería esta magistral combinación entre el pasado legendario de Roma y su historia reciente. Más allá de las evidentes funciones políticas y sus distintos niveles temáticos, la Eneida nos ofrece la gesta de un héroe exiliado de su patria. Tras la quema de Troya, Eneas parte hacia una tierra extraña, en la que hallará su nuevo hogar. En su viaje por mar, el hijo de Venus arrostrará numerosas dificultades hasta llegar a su destino en la costa italiana, e incluso allí se verá obligado a entablar una guerra contra los pueblos itálicos, para conseguir al fin fundar una ciudad llamada a convertirse en cabeza del mundo.'),
(275, 'La Odisea', 239, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 16, 'odisea.png', '2021-05-18 12:03:54', '<i>La Odisea</i> es un poema épico griego compuesto por 24 cantos, atribuido al poeta griego Homero. Se cree que fue escrito en el siglo VIII a. C., en los asentamientos que Grecia tenía en la costa oeste del Asia Menor (actual Turquía asiática). Según otros autores, La Odisea se completa en el siglo VII a. C. a partir de poemas que sólo describían partes de la obra actual. Fue originalmente escrita en lo que se ha llamado dialecto homérico. Narra la vuelta a casa del héroe griego Odiseo (Ulises en latín) tras la Guerra de Troya. Odiseo tarda veinte años en regresar a la isla de Ítaca, donde poseía el título de rey, período durante el cual su hijo Telémaco y su esposa Penélope han de tolerar en su palacio a los pretendientes que buscan desposarla (pues ya creían muerto a Odiseo), al mismo tiempo que consumen los bienes de la familia. La mejor arma de Odiseo es su metis o astucia. Gracias a su inteligencia —además de la ayuda provista por Palas Atenea, hija de Zeus Cronida— es capaz de escapar de los continuos problemas a los que ha de enfrentarse por designio de los dioses. Para esto, planea diversas artimañas, bien sean físicas —como pueden serlo disfraces— o con audaces y engañosos discursos de los que se vale para conseguir sus objetivos.'),
(276, 'La Iliada', 410, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, 'iliada.png', '2021-05-18 12:05:50', '<i>La Ilíada</i>  es una epopeya griega y el poema más antiguo escrito de la literatura occidental. Se atribuye tradicionalmente a Homero. Compuesta en hexámetros dactílicos, consta de 15.693 versos (divididos por los editores, ya en la antigüedad, en 24 cantos o rapsodias) y su trama radica en la cólera de Aquiles (μῆνις, mênis). Narra los acontecimientos ocurridos durante 51 días en el décimo y último año de la guerra de Troya. El título de la obra deriva del nombre griego de Troya, Ιlión.\r\nTanto <i>La Ilíada</i> como <i>La Odisea</i> fueron consideradas por los griegos de la época clásica y por las generaciones posteriores como las composiciones más importantes en la literatura de la Antigua Grecia y fueron utilizadas como fundamentos de la pedagogía griega. Ambas forman parte de una serie más amplia de poemas épicos de diferentes autores y extensiones denominado ciclo troyano; sin embargo, de los otros poemas, únicamente han sobrevivido fragmentos.'),
(277, 'Política de Hechos Consumados (relatos, monólogos y poemas)', 79, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, 'politica-nacho.png', '2021-05-18 12:11:59', 'Relatos de historias familiares, plantas carnívoras, chaperos, celos, plata, amor y muerte, con N. V. pasando de niño asustado a cabrón dominante, con un estilo crudo y directo que no admite concesiones pero que deja entrever su sólida formación literaria, permitiéndose hasta juegos de estilo con la puntuación que sabe llevar a buen puerto. Y poemas con ecos del mejor Cohen donde la espiritualidad (\'Casi sentí su roce,/ el rastro gélido a su paso./ Yo estaba cerca, pero eligió/ la habitación contigua.\') se mezcla con la dura pornografía de la realidad. Necesario más que recomendable. </p><p> <i>Política de hechos consumados</i> es un libro que para sus seguidores merecería la pena sólo por el hecho de complementar la historia de \"El ángel Simón\", al margen de la realidad o ficción que haya en las páginas (que tan poco me importa), pero que ofrece mucho más, mundos tan sucios y corruptos como bellos y adictivos, convertidos en piezas que completan el complejo puzzle de su obra pero que no pretenden aclararte nada más de lo que estés dispuesto a comprender.'),
(278, 'Poesías Completas', 184, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 16, '53408587.jpeg', '2021-05-18 13:15:21', 'Garcilaso de la Vega (1503-1536), poeta y militar español, fue un exquisito poeta que, en su corta vida, escribió una epístola, dos elegías, tres églogas, cinco odas y treinta y ocho sonetos. En su poesía predomina el recuerdo de Virgilio y sus sonetos, casi siempre de corte amoroso, son de una delicadeza próxima a la perfección.');
INSERT INTO `libro` (`id`, `titulo`, `paginas`, `idioma`, `leido`, `coleccion`, `saga`, `ubicacion`, `estanteria`, `balda`, `portada`, `fecha`, `sinopsis`) VALUES
(279, 'Cuentos', 422, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, 'cuentos-benedet.png', '2021-05-18 13:18:52', 'Ambientados en el medio urbano de Montevideo, los treinta y cinco CUENTOS de esta antología, seleccionados por el propio autor, giran en torno a la cotidiana peripecia de la pequeña burguesía ciudadana: funcionarios públicos, empleados de banca o tenderos que animan la vida de la capital y padecen la estrechez de sus horizontes. Con una prosa cargada de ironía, sobria, precisa, producto de un sabio oficio y de una cuidadosa labor de depuración, Mario Benedetti logra trascender la individualidad de sus modestos personajes, inmersos en existencias grises siempre acechadas por posibilidades dramáticas, para ofrecer al lector un cuadro veraz y complejo de la sociedad contemporánea.'),
(280, 'El Puente de Alcántara', 1077, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, '66363.jpeg', '2021-05-18 13:22:56', 'En Barbastro, en el año 1064, se inicia un sitio por parte de caballeros normandos y franceses contra los árabes. En aquella ocasión, coinciden tres hombres: Muhammad ibn Ammar, poeta andalusí de origen árabe; Yünus ibn al Awar, médico judío; y Lope, un escudero de tan sólo quince años. Tiempo después, los tres coinciden de nuevo en la ciudad de Sevilla, donde Muhammad ibn Ammar se ha convertido en gran visir. Pero esta vez sus vidas convergen en una terrible historia de amor y venganza de la que les es difícil sustraerse.</p>\r\n<p><i>El Puente de Alcántara</i> ofrece una perfecta oportunidad para revisar una parte importantísima de la historia de la Reconquista. Obra rigurosa y cuidada, apoyada en una ingente labor de investigación (el autor, Frank Baer, dedicó tres años a documentarse y otros dos a redactarla), la novela recrea con realismo, con toda la crudeza propia de la época, las relaciones entre cristianos, árabes y judíos, en un tiempo cuyo recuerdo nos ha llegado distorsionado por la leyenda. Baer, demostrando una enorme habilidad como narrador, consigue reproducir la atmósfera del siglo XI, hasta en sus más mínimos detalles, y crea al mismo tiempo una compleja red de sentimientos y pasiones, que trascienden el mero hecho histórico.'),
(281, 'Ensayo sobre la Lucidez', 383, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, '3254508.jpeg', '2021-05-18 13:26:17', 'Durante las elecciones municipales de una ciudad sin nombre, la mayoría de sus habitantes decide individualmente ejercer su derecho al voto de una manera inesperada. El gobierno teme que ese gesto revolucionario, capaz de socavar los cimientos de una democracia degenerada, sea producto de una conjura anarquista internacional o de grupos extremistas desconocidos. Las cloacas del poder se ponen en marcha: los culpables tienen que ser eliminados. Y si no se hallan, se inventan.\r\n</p><p>\r\nLos protagonistas de esta nueva novela de Saramago, un inspector de policía y la mujer que conservó la vista en la epidemia de luz blanca de <i>Ensayo sobre la ceguera</i>, dan muestras de la altura moral que los ciudadanos anónimos pueden alcanzar cuando deciden ejercer la libertad.'),
(282, 'Esfera', 507, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 16, '2991438.jpeg', '2021-05-18 13:29:51', 'En las profundidades del Océano Pacífico se descubre una misteriosa nave espacial de grandes dimensiones. Las autoridades norteamericanas envían a un grupo de científicos para que investigue el inquietante hallazgo. ¿Procede la nave de alguna civilización extraterrestre? ¿De un universo diferente? ¿Del futuro? La respuesta desafía la imaginación y escapa a cualquier intento de explicación lógica: un extraordinario y terrible poder amenaza toda la vida existente en torno al enigmático objeto... Una de las novelas más trepidantes del autor de Parque jurásico, también adaptada al cine en una superproducción de éxito mundial'),
(283, 'Cuentos Completos I', 814, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, '1058650.jpeg', '2021-05-18 13:33:16', 'El contenido alucinante de esta colección es lo que siempre han querido los miles de seguidores de la obra de Asimov: todos los cuentos cortos que el autor llegó a escribir en su carrera. Este primer tomo de la colección contiene 46 títulos, algunos de los cuales ya se han convertido en clásicos del género de la ciencia ficción.'),
(284, 'Cuentos Completos II', 731, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, '793950.jpeg', '2021-05-18 13:34:41', 'Los miles de lectores de Asimov que vienen apasionándose desde hace más de cincuenta años con sus cuentos de ciencia ficción se han topado constantemente con el mismo problema: se trata de un escritor tan prolífico que resulta casi imposible tener la certeza de haber leído todo lo que publicó en este género. Para ellos, este libro y el volumen que le precedió serán sin duda verdaderas joyas.\r\n</p><p>\r\nEste segundo volumen contiene cuarenta cuentos cortos de Asimov que demuestran una vez más el desbordante talento del autor. Se cuentan entre ellos algunos de los más célebres, como \"Al estilo marciano\", \"La piedra parlante\" o \"Intuición femenina\".\r\n</p><p<\r\nA veces rayando lo erudito y otras muy amenos, los cuentos que componen esta colección son una auténtico abanico de la gran diversidad que abordaba Asimov. '),
(285, 'Venganza en Sevilla', 300, 1, 0, 63, NULL, 'Habitación Pablo', 'C', 14, 'sevilla.jpeg', '2021-05-18 13:41:50', 'Sevilla 1607. Catalina Solís –la protagonista de Tierra firme—llevará a cabo su gran venganza en una de las ciudades más ricas e importantes del mundo, la Sevilla del siglo XVII. Catalina cumplirá así el juramento hecho a su padre adoptivo de hacer justicia a sus asesinos, los Curvo, dueños de una fortuna sin igual amasada con la plata robada en las Américas.\r\nSu doble identidad –como Catalina y como Martín Ojo de Plata—y un enorme ingenio le hacen diseñar una venganza múltiple con distintas estrategias que combinan el engaño, la seducción, la fuerza, la sorpresa, el duelo, la medicina y el juego, sobre un profundo conocimiento de las costumbres de aquella sociedad.\r\n</p><p>\r\nEn su arriesgada aventura plagada de peligros y emociones, a Catalina la acompañan algunos amigos de Tierra firme y sus nuevos cómplices, unos pícaros supervivientes, dispuestos a dar su vida una y otra vez por personaje tan legendario y de vida tan extraordinaria.'),
(286, '1984', 368, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '8763821.jpeg', '2021-05-18 13:49:07', 'Londres, 1984: Winston Smith decide rebelarse ante un gobierno totalitario que controla cada uno de los movimientos de sus ciudadanos y castiga incluso a aquellos que delinquen con el pensamiento. Consciente de las terribles consecuencias que puede acarrear la disidencia, Winston se une a la ambigua Hermandad por mediación del líder O’Brien. Paulatinamente, sin embargo, nuestro protagonista va comprendiendo que ni la Hermandad ni O’Brien son lo que aparentan, y que la rebelión, al cabo, quizá sea un objetivo inalcanzable. Por su magnífico análisis del poder y de las relaciones y dependencias que crea en los individuos, 1984 es una de las novelas más inquietantes y atractivas de este siglo.'),
(287, 'Hyperion', 618, 1, 1, 64, NULL, 'Habitación Pablo', 'C', 14, '3938.jpeg', '2021-05-18 13:55:23', 'En el mundo llamado Hyperion, más allá de la Red de la Hegemonía del hombre, aguarda el Alcaudón, una singular y temible criatura a la que los miembros de la Iglesia de la Expiación Final veneran como Señor del Dolor. En vísperas del Armageddon y bajo la amenaza de una guerra entre la Hegemonía, los enjambres éxter y las inteligencias artificiales del TecnoNúcleo, siete peregrinos acuden a Hyperion para recuperar un rito religioso. Todos son portadores de esperanzas imposibles y también de terribles secretos.'),
(288, 'La Caída de Hyperion', 731, 1, 1, 64, NULL, 'Habitación Pablo', 'C', 14, '3944.jpeg', '2021-05-18 13:56:31', 'La aventura épica de Hyperion alcanza su clímax cuando los peregrinos se reúnen ante las Tumbas de Tiempo y éstas se abren para liberar al Alcaudón. Los humanos de la Hegemonía y de los enjambres éxter, las Inteligencias Artificiales del TecnoNúcleo, los peregrinos del Alcaudón, el cíbrido que reproduce la personalidad de John Keats, se verán envueltos en la compleja trama del tiempo, del poder, la guerra, la inteligencia, la religión y el amor. Con gran maestría, Simmons logra en La caída de Hyperion una brillante conclusión al articular hábilmente todas las piezas temáticas presentadas.\r\nEvidente homenaje a John Keats, la saga de Hyperion es, a juicio de todos los críticos, uno de los títulos fundamentales de la moderna ciencia ficción'),
(289, 'La Reina de los Condenados', 725, 1, 0, 65, NULL, 'Habitación Pablo', 'C', 14, 'reina.jpeg', '2021-05-18 14:04:47', 'Lestat, convertido en una famosa estrella del rock, despierta con su música a Akasha, la Reina de los Condenados. La que una vez fuera la reina del Nilo, toma a Lestat como amante y mano derecha, y vuelca todas sus fuerzas en la destrucción de vampiros y varones humanos con el fin de que las hembras creen en un nuevo orden.\r\n</p><p>\r\nPese a las súplicas de Lestat, los deseos de la Reina son irrefrenables, y será necesario un sacrificio para acabar con sus ansias de destrucción.'),
(290, 'La Espuma de los Días', 255, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '3150904.jpeg', '2021-05-18 14:07:41', 'Ambientada en un universo cercano a lo surreal, típicamente representativo de la vida y de la obra de Boris Vian (1920-1959), La espuma de los días, calificada en su día por R. Queneau como «la más desgarradora novela de amor contemporánea», narra dos historias de amor paralelas protagonizadas por unos personajes de alma adolescente —distintas manifestaciones, en realidad, de un misma y única pugna: la de la pureza frente a un mundo hostil—. Sorprendidos primero, y luego superados por la lógica absurda de unos acontecimientos que no controlan —trasunto, en último término, de la lógica que rige la vida—, Colin y Chloé, Chik y Alise, asisten con impotencia a su inexorable y, a la postre, brutal expulsión del paraíso, revelándose la novela finalmente como la fúlgida y dolorosa metáfora de la destrucción de la inocencia.'),
(291, 'Yo, Robot', 373, 1, 1, 66, NULL, 'Habitación Pablo', 'C', 14, '1368388.jpeg', '2021-05-18 14:54:03', 'Los robots de Isaac Asimov son máquinas capaces de llevar a cabo muy diversas tareas, y que a menudo se plantean a sí mismos problemas de \'conducta humana\'. Pero estas cuestiones se resuelven en Yo, robot en el ámbito de las tres leyes fundamentales de la robótica, concebidas por Asimov, y que no dejan de proponer extraordinarias paradojas que a veces se explican por errores de funcionamiento y otras por la creciente complejidad de los \'programas\'. Las paradojas que se plantean en estos relatos futuristas no son sólo ingeniosos ejercicios intelectuales sino sobre todo una indagación sobre la situación del hombre actual en relación con los avances tecnológicos y con la experiencia del tiempo.'),
(292, 'Hacia Rutas Salvajes', 285, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '4942622.jpeg', '2021-05-18 15:00:22', 'En abril de 1992, Chris McCandless, de 24 años, se internó solo y apenas equipado en tierras de Alaska. Cuatro meses más tarde, unos cazadores encontraron su cuerpo sin vida. Su historia, difundida en un reportaje de Jon Krakauer, suscitó una agitada polémica, pues, ¿por qué un joven que acababa de graduarse decide cortar todos los lazos con su familia y perderse en una región inhóspita?'),
(293, 'Deseo de Ser Punk', 187, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, '21424936.jpeg', '2021-05-18 15:02:30', 'Algo le ocurrió a Martina el 4 de diciembre. Desde entonces busca la furia, la actitud o cualquier otra cosa que le permita no traicionar su código. Tiene dieciséis años y ningún lugar al que pertenecer, pero encuentra en el rock el principio de una historia mientras Alice Cooper la mira desde el tejado, cuando el punk es...'),
(294, 'Un Día Más con Vida', 182, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '35906069.jpeg', '2021-05-18 15:06:15', 'Segunda mitad del siglo XX: allí donde estalla una guerra o una revolución, donde se produce un golpe de Estado o hay un imperio que se desmorona, casi seguro que transcurren ante ese excepcional testigo de la historia in statu nascendi que es Ryszard Kapuscinski quien, en 1976, escribe Un día más con vida, que –junto con muchos lectores– considera su mejor obra. La revolución de los claveles anuncia el fin del colonialismo portugués y fija la proclamación de la independencia de Angola para el 11 de noviembre de 1975. Tres meses antes, Kapuscinski se instala en Luanda, donde asiste al «éxodo blanco»: observa cómo van abandonando el país médicos e ingenieros, bomberos, basureros y policías, corresponsales extranjeros y enviados especiales... Incluso los perros. Mientras, en su avance hacia la capital, la guerra por el poder en el futuro Estado soberano se recrudece por momentos, sembrando el caos, la desolación y la muerte.'),
(295, 'Peleando a la Contra', 538, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '70896._SY475_.jpg', '2021-05-18 15:07:45', 'Durante cinco décadas, los libros de Charles Bukowski fueron mordientes crónicas del lado salvaje de la vida, y le ganaron millones de devotos lectores en todo el mundo. Peleando a la contra reúne por primera vez sus mejores textos autobiográficos - cuentos, novelas y poemas -, y arroja una nueva luz sobre la vida y la obra del poeta laureado del underground de Los Ángeles; (Los Ángeles Times), uno de los mas auténticos e insobornables escritores de nuestros tiempos. Trabajos inusuales, mujeres muy poco comunes, inspiradas perversiones, la locura de la vida cotidiana y los triunfos literarios constituyen las hebras de la trama bukowskiana, entretejidas de manera fascinante. Los textos siguen un orden cronológico, que no es el de las fechas de su publicación, sino el de los acontecimientos y periodos de la vida del autor que los originaron. Peleando a la contra trasciende, pues, el ámbito de las antologías para convertirse en unas autenticas memorias de Bukowski (compiladas por su fiel editor norteamericano John Martin) que arrancan con su primer recuerdo consciente, cuando en 1922 gateaba debajo de una mesa, y culminan en las sabias e irónicas reflexiones de un septuagenario. La edad ha hecho a Bukowski más reflexivo, pero no lo ha domesticado. Aún ruge, y retoza buscando gemas en el lodo; (Booklist). Ningún escritor norteamericano contemporáneo ha descalificado el \'sueno americano\' con tanta perseverancia como Charles Bukowski; (San Francisco Chronicle).'),
(296, 'El Imperio', 353, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, '651777._SY475_.jpg', '2021-05-18 15:09:29', 'Ryszard Kapuscinski, el «periodista legendario» en palabras de Franco Marcoaldi, nos ofrece un fascinante relato de recuerdos y exploraciones de la Unión Soviética absolutamente imprescindible, un fascinante reportaje polifónico, uno de los grandes libros de la década. Kapuscinski rea­lizó entre 1989 y 1991 un largo viaje por los vastos territorios de la Unión Soviética. En esos años decisivos, cuando el imperio presentaba ya síntomas de derrumbe, este implacable e incisivo cronista de su siglo visitó quince repúblicas y habló con cientos de ciudadanos acerca de las extraordinarias experiencias que les había tocado en suerte vivir, y el terror del cual estaban saliendo. Este libro (que comprende también un relato de las primeras incursiones de Ryszard Kapus´cin´ski en la Unión Soviética, entre los años 1939 y 1967) es el producto de una carrera contra el tiempo para atrapar las memorias de los anónimos protagonistas de la Historia antes de que los terribles y pasmosos acontecimientos de esos años entren para siempre en el pasado. Guiado por su curiosidad insaciable y su pasión por la verdad, Kapuscinski nos cuenta el derrumbe de este imperio desde el interior mismo de la ballena, con el íntimo conocimiento que le otorga ser un ciudadano polaco cuyo propio país fue una de las colonias periféricas de dicho imperio'),
(297, 'En el Camino', 396, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '316495._SY475_.jpg', '2021-05-18 15:15:47', 'Con el paso del tiempo, <i>En el camino</i>, un libro que fue la biblia y el manifiesto de la generación beat, se ha convertido en una «novela de culto» y en un clásico de la literatura norteamericana.\r\n</p><p>\r\nCon un inconfundible estilo bop, que consiguió para Kerouac el título de «heredero de Charlie Parker», en esta novela se narran los viajes enloquecidos, a bordo de Cadillacs prestados y Dodges desvencijados, de Dean Moriarty el mítico hipster, el héroe de todos los beatniks, «un demente, un ángel, un pordiosero» y el narrador Sal Paradise, recorriendo el continente, de Nueva York a Nueva Orleans, Ciudad de México, San Francisco, Chicago y regreso a Nueva York.\r\n</p><p>\r\nAlcohol, orgías, marihuana, éxtasis, angustia y desolación, el retrato de una América subterránea, auténtica y desinhibida, ajena a todo stablishment. Una crónica cuyos protagonistas, en la vida real y en el libro, fueron Jack Kerouac (Sal Paradise), Neal Cassady (Dean Moriarty), Allen Ginsberg, William Burroughs.'),
(298, 'Club de la Lucha', 234, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '8431574.jpeg', '2021-05-18 15:19:46', 'Todos los fines de semana, en sótanos y aparcamientos a lo largo y ancho del país, jóvenes oficinisgtas se quitan los zapatos y las camisas y pelean entre sí hasta la extenuación. Los lunes regresan a sus despachos con los ojos amoratados, algún diente de menos y un sentimiento embriagador de onmipotencia. Esas reuniones clandestinas son parte del plan con el que Tyler Durden, proyeccionista, camarero y oscuro genio anárquico, aspira a venarse de una sociedad enferma por el consumismo exacerbado. Club de lucha, una de las novelas contemporáneas más originales y provocadoras, se convirtió desde su publicación- y la posterior adaptación cinematográfica de David Fincher ( El club de la lucha, 1999)-, en un clásico underground'),
(299, 'Storm Front', 307, 5, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, '9251500._SY475_.jpg', '2021-05-18 15:22:27', 'Meet Harry Dresden, Chicago\'s first (and only) Wizard P.I. Turns out that \'everyday\' world is full of strange and magical things - and most of them don\'t play well with humans. That\'s where Harry comes in. </p><p> Harry is the best at what he does - and not just because he\'s the only one who does it. So whenever the Chicago P.D. has a case that transcends mortal capabilities, they look to him for answers. But business isn\'t just slow, it stinks. </p><p> So when the police bring him in to consult on a grisly double murder committed with black magic, Harry\'s seeing dollar signs. But where there\'s black magic, there\'s a black mage behind it. And now that mage knows Harry\'s name. And that\'s when things start to get . . . interesting.'),
(300, 'El Corazón de las Tinieblas', 203, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '7312546.jpeg', '2021-05-18 15:28:53', '<i>El corazón de las tinieblas</i> es una de las novelas más estremecedoras de todos los tiempos, además de una de las obras maestras del siglo XIX. El libro cuenta el viaje que el protagonista, Marlow, hace por un río del Congo en busca de Kurtz, un agente comercial que al parecer se ha vuelto loco, ya que cruza la débil línea de sombra que separa el bien del mal y se entrega con placer a las más terribles atrocidades'),
(301, 'Nostromo', 556, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, '7380811._SY475_.jpg', '2021-05-18 15:30:32', 'Considerada por algunos críticos la gran novela inglesa del siglo XIX, NOSTROMO (1904) es un apasionante relato en el que la peripecia política se entrevera con la pintura de emociones y caracteres humanos, de la que Joseph Conrad (1857-1924) fue gran maestro, y el fascinante ingrediente de la aventura. La narración novelesca del nacimiento del estado de Sulaco, en la imaginaria Costaguana, muestra los riesgos que supone la audacia tanto en la acción individual como en el ámbito intelectual, al tiempo que es la alegoría de un problema de honda raíz humana: la pugna dramática entre los intereses materiales y los valores espirituales'),
(302, 'Soldados de Salamina', 209, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '24001.jpeg', '2021-05-18 15:33:30', 'Un joven periodista topa por casualidad con una historia fascinante, y muy significativa, de la Guerra Civil española, y se propone reconstruirla. Cuando las tropas republicanas se retiran hacia la frontera francesa, camino del exilio, en el desorden de la desbandada alguien toma la decisión de fusilar a un grupo de presos franquistas. Entre ellos se halla Rafael Sánchez-Mazas, fundador e ideólogo de Falange, quizás uno de los responsables directos del conflicto fratricida. Pero Sánchez-Mazas no sólo logra escapar del fusilamiento colectivo, sino que, cuando los republicanos salen en su busca, un miliciano anónimo le encañona y en el último momento le perdona la vida. Su buena estrella le permitirá vivir emboscado hasta el final de la guerra, protegido por un grupo de campesinos de la región, aunque siempre recordará a aquel miliciano de extraña mirada que no lo delató. El narrador se propone desentrañar el secreto del enigmático Sánchez-Mazas, de su asombrosa aventura de guerra, pero sólo para acabar descubriendo, en un quiebro inesperado, que el significado de esta historia se encuentra donde menos podía esperarlo, porque uno no encuentra lo que busca, sino lo que la realidad le entrega '),
(303, 'La Montaña es mi Reino', 174, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, 'rebu.jpeg', '2021-05-18 15:35:58', '<span>Gaston Rébuffat</span> es una de las grandes leyendas alpinas, a la vez que un extraordinario narrador. Conquistador de las caras norte del Eiger, del Espolón Walker y aperturista de nuevas vías en la Aiguille du Midi y otras zonas del Mont-Blanc, transmite a través de su prosa sencilla y sincera la esencia del alpinismo, concebido no como deporte, sino como una vida \"entre el cielo y la tierra\", impregnada de un profundo sentimiento de la montaña. Los textos literarios más relevantes de Gaston Rébuffat, reunidos por su esposa en este volumen, cuya 2ª edición proponemos esta primavera, nos permiten descubrir una cara desconocida de este hombre reservado y misterioso. Desde su juventud dedicada a la escalada en Calanques, en Marsella, hasta las grandes hazañas alpinas y la histórica expedición francesa al Annapurna en 1950, conocemos toda una vida vibrante con sentimiento. Sentimiento de amistad hacia sus compañeros de cordada, como Maurice Baguet o Haroun Tazieff, sentimiento de fascinación hacia las montañas, que convierte las grandes cimas como el Mont Blanc o el Cervino en verdaderos protagonistas de sus relatos y, finalmente, el sentimiento de solidaridad con la naturaleza patente en la firme denuncia de la agresión humana al medio ambiente. Esta visión profundamente humanista de las alturas llega hoy gracias al singular talento narrativo del autor a todos los que amamos las montañas.'),
(304, 'Una Forma de Resistencia', 216, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, '20569677.jpeg', '2021-05-18 15:37:18', 'Poesía de lo cotidiano, del aprecio y del apego por las cosas que te han rodeado al crecer y madurar.\r\nEn un mundo dominado por lo material pero en el que paradójicamente las cosas han perdido su valor, Luis García Montero emprende, con elegancia, ironía y gran\r\nsensibilidad, este hermoso inventario. Repasa y revisa algunas de sus pertenencias, guiado por la necesidad de «tocarlas una a una, como un deseo de rebeldía, como\r\nuna forma de resistencia».\r\nPequeñas piezas sobre objetos de uso tan cotidiano que a menudo nos pasan inadvertidos... Una copa, un reloj, una butaca... enseres rutinarios y aparentemente anodinos, todos ellos cobran vida y carácter propio en este hermoso libro que puede abrirse en cualquier página.'),
(305, 'No es País para Viejos', 242, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '15740118.jpeg', '2021-05-18 15:40:46', 'El cazador y veterano de Vietnam Llewelyn Moss descubre por casualidad la escena todavía caliente de una carnicería entre narcos en algún lugar de la frontera entre Texas y México, 1980. Moss descubre también, entre los cuerpos agujerados y los paquetes de heroína, algo más de dos millones de dólares. Lo que activa a esa implacable máquina de matar que es Anton Chigurh –un mercenario a sueldo de los capos del cartel– para quien recuperar el dinero de sus jefes es apenas la excusa para gatillar una y otra vez su extraña pistola cruzada con martillo neumático y poner en práctica su “mantra”: nunca dejar testigos. Entre uno y otro, clásicos personajes marca McCarthy: esposas fieles y curtidas y un viejo sheriff veterano de la Segunda Guerra Mundial recordando los viejos buenos tiempos y escondiendo un secreto que le duele pero lo mantiene vivo'),
(306, 'La Carretera', 210, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '5599435.jpeg', '2021-05-18 15:42:19', 'La carretera transcurre en la inmensidad del territorio norteamericano, un paisaje literalmente quemado por lo que parece haber sido un reciente holocausto nuclear. Un padre trata de salvar a su hijo emprendiendo un viaje con él. Rodeados de un paisaje baldío, amenazados por bandas de caníbales, empujando un carrito de la compra donde guardan sus escasas pertenencias, recorren los lugares donde el padre pasó una infancia recordada a veces en forma de breves bocetos del paraíso perdido, y avanzan hacia el sur, hacia el mar, huyendo de un frío «capaz de romper las rocas»'),
(307, 'Escupiré Sobre vuestra Tumba', 187, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, '96895.jpeg', '2021-05-18 15:43:51', 'Lee Anderson, de raza negra pero con apariencia de blanco, decide vengar la muerte de su hermano a manos de racistas blancos. Con minuciosidad obsesiva, trama y lleva a cabo y sobrecogedor plan de violencia física y sexual.\r\n</p><p>\r\nPublicada en 1946 bajo pseudónimo, \"Escupiré sobre vuestra tumba\" consiguió irritar profundamente a la sociedad francesa y, en 1948, fue prohibida por \"ultraje a la moral y a las buenas costumbres\". Violenta y pornográfica, la novela de Vian busca herir la sensibilidad del lector para dar mayor virulencia a su alegato antirracista. Una lectura loca y trepidante.'),
(308, 'El Arrancacorazones', 245, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, '3150359.jpeg', '2021-05-18 15:45:16', 'Los inolvidables personajes de Joël y Citroën fueron creados por Boris Vian a la medida del estremecedor delirio al que él cree que suelen conducir por un lado la dominación materna y, por el otro, el inevitable conflicto entre la vida autónoma, secreta de la infancia y la tiranía de la familia y la presión social. También se sirve del siniestro Jacquemort, un psicoanalista en busca de pacientes, para satirizar tanto el enloquecido mundo de los llamados cuerdos como el psicoanálisis y el comportamiento existencialista, tan en boga en aquellos años. Es precisamente en el ciclo de novelas escritas entre 1947 y 1953, al que pertenece El arrancacorazones, en el que Vian parece haberse asentado en un universo que le es finalmente propio, en un mundo de fábula poética cargada de fantasía, pero también de tensión y violencia, en la que la experiencia de los niños desafía los valores de los adultos. '),
(309, 'Leyendas de Galicia y Asturias', 120, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, 'legal.png', '2021-05-18 15:49:16', 'Leyendas de Galicia y Asturias'),
(310, 'Leyendas Nórdicas', 128, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, 'lenor.png', '2021-05-18 15:50:13', 'Leyendas Nórdicas'),
(311, 'Leyendas de Castilla', 124, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, 'lecast.png', '2021-05-18 15:51:10', 'Leyendas de Castilla'),
(312, 'Leyendas Celtas', 126, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, 'lecel.png', '2021-05-18 15:52:19', 'Leyendas Celtas'),
(313, 'Trainspotting', 344, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 14, '37275.jpeg', '2021-05-18 15:54:43', 'Esta novela se convirtió en uno de los acontecimientos literarios de la última década. Fue rápidamente adaptada al teatro y luego llevada a la pantalla por Danny Boyle, uno de los jóvenes prodigio del cine inglés. Sus protagonistas son un grupo de jóvenes desesperadamente realistas, habitantes del otro Edimburgo, el que no aparece en los famosos festivales, capital europea del sida y paraíso de la desocupación, la miseria y la prostitución, embarcados en una peripecia vital cuyo combustible es la droga'),
(314, 'Piratas', 317, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 14, 'piri.png', '2021-05-18 15:58:25', 'Piratas es la novela de aventuras en estado puro: el género que ha convertido Alberto Vázquez-Figueroa en el autor español número uno en ventas. Narra una extraordinaria historia repleta de acción, emociones e intriga protagonizada por un viejo corsario británico y un jovencísimo buscador de perlas español al que las circunstancias conducen hasta el barco del temido Jacaré Jack.\r\nLos combates en alta mar, los peligrosos juegos de la astucia, el destino de una familia de españoles afincada en el Caribe de la época de la trata de negros y la corrupción generalizada de las autoridades coloniales constituyen el transfondo de una trama trepidante, como corresponde a una de las mejores novelas de su autor.'),
(315, 'Vida', 504, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, '11323640.jpeg', '2021-05-18 18:48:50', 'Keith Richards, miembro de los Rolling Stones y generalmente considerado uno de los mejores guitarristas del rock de todos los tiempos, se ha dedicado a vivir una vida bajo sus propios términos—aun cuando esos términos han excedido por mucho las convenciones. Ahora, en su autobiografía muy esperada, se sincera sobre su niñez en Kent de la posguerra; aprender a tocar la guitarra y formar una banda con Mick Jagger y Brian Jones; el ascenso de los Rolling Stones y los famosos conciertos, las giras y los discos; su tensa relación con Jagger y sus romances con Anita Pallenberg y Patti Hansen; su lucha contra la adicción a las drogas y sus encuentros con la ley en varios países—todo se pone sobre la mesa. La historia de Richards es, en muchos sentidos, la historia del rock mismo y un vistazo cultural de las últimas cuatro décadas.'),
(316, 'Lo Demás es Silencio', 447, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, '9788401305511.jpeg', '2021-05-18 18:54:31', 'Apasionante aproximación biográfica a uno de los artistas más controvertidos del pop español.\r\n</p><p>\r\nPep Blay profundiza en la caleidoscópica vida personal y artística de Enrique Ortiz «Bunbury», ex líder de Héroes del Silencio. Partiendo de testimonios cercanos al músico, de charlas con el propio Bunbury y de una exhaustiva documentación, Blay explica la evolución de veinte años de una carrera que oscila entre el endiosamiento que conllevó el apoteósico éxito internacional de su banda, y su última etapa más intimista y experimental.\r\n</p><p>\r\nBunbury, uno los grandes mitos de la música española actual, cuenta con cientos de miles de fans en España y Latinoamérica.\r\nLa obra refleja a la perfección la personalidad arrolladora y el carácter polifacético de un artista que jamás ha provocado indiferencia.</p><p>\r\nEsta biografía posee el atractivo añadido de la participación directa de Bunbury en su realización.\r\nHéroes del silencio realizará una gira en distintas ciudades españolas durante el mes de octubre, y ya se han agotado todas las entradas puestas a la venta.'),
(317, 'Un Alto en el Camino - conversaciones con Loquillo', 152, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, '216703817.jpeg', '2021-05-18 19:43:08', 'José María Sanz, Loquillo. El chico de barrio que colocaba este anuncio en las tiendas de discos: \"busco rockers para hacer grupo y audiciones\". De voz rotunda, grandes dimensiones y siempre de negro, ya sea cuero de rockero o impecable traje de vocalista de jazz. A través de una serie de conversaciones grabadas tanto en el piso del Clot como en la actual residencia del cantante, el autor nos permite conocer su mundo, amigos, odios, pasiones, impresiones del negocio del rock and roll... ¡Y todo en primera persona!'),
(318, 'Yo También sé Jugarme la Boca - En Carne Viva', 420, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, '1639572.jpeg', '2021-05-18 19:55:35', 'Salvajemente sinceras, rebosantes de aliento y juventud, de humor y escepticismo, de literatura y gramática parda... Así son estas páginas, en las que Joaquín Sabina, espoleado por Javier Menéndez Flores, su biógrafo, decide despejar de una vez las muchas incógnitas que rodean su existencia \"Jugándose la boca\" y abordando, sin omitir detalle, los grandes temas de su vida: la música, la literatura, la política, la fama, las drogas y el alcohol, las santas mujeres de pago, sus auténticos amores, su familia, sus colegas de profesión, sus más feroces enemigos y sus impagables amistades, entre otros muchos asuntos de plena actualidad.\r\nUn Joaquín desnudo.\r\nUn Sabina en carne viva.\r\nUn libro apasionante.'),
(319, 'Una Historia que se Escribe en los Portales', 196, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, '12629721.jpeg', '2021-05-18 19:58:12', 'Sus letras, sus canciones, sus discos, sus encuentros y desencuentros, nada deja indiferente. Y el autor, Eduardo Izquierdo, en estrecha colaboración con un músico que canta canciones escritas en los portales, con un hombre acostumbrado a pelear a la contra, nos guía por su trayectoria musical y personal. Porque canción y cantante se funden en uno, y alguien tenía que contarlo. Y en el libro que presentamos, entre todos los invitados y con Izquierdo ejerciendo de autorizado director de orquesta, se repasan ocho obras capitales del rock en castellano, desde Personal hasta Daiquiri Blues. Su proceso creativo, sus sesiones de grabación, su traslado a la carretera. Se analizan con rigor las diversas etapas de una carrera sincera e intensa, todo ello prologado por otro músico excepcional, José Ignacio Lapido. Esta es una biografía oral autorizada donde de músicos que han acompañado a Quique, destacados compañeros de profesión, críticos musicales, managers y responsables de compañías discográficas unen sus voces para ofrecer un coral retrato de la carrera de uno de los más singulares e imprescindibles cantantes españoles. Sus letras, sus canciones, sus discos, sus encuentros y desencuentros, nada deja indiferente. Y el autor, en estrecha colaboración con un músico que canta canciones escritas en los portales, con un hombre acostumbrado a pelear a la contra, nos guía por su trayectoria musical y personal. Porque canción y cantante se funden en uno, y alguien tenía que contarlo.'),
(320, 'Cultura de Bar - conversaciones con Fito Cabrales', 121, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, 'culBar.png', '2021-05-18 20:04:03', 'Fito Cabrales nació en Bilbao, y durante unos setenta que, para él, pertenecieron a Leño y Rory Gallagher, creció en Laredo, se fumó sus porritos en Málaga y finalmente regresó a Bilbao, para fundar junto a tres bandarras de la localidad vasca Platero y Tú. Durante años demostraron que el rokancol de bareto tenía un hueco, con canciones como El roce de tu cuerpo, Mari Madalenas, A un tipo Listo o Juliette, y montándola en directo en algunas ocasiones con giras casi míticas como la que protagonizaron junto a Extremoduro. Tras su séptimo disco, Fito dejó a Platero en su punto justo de ebullición y éxito, para emprender una nueva aventura junto a sus Fitipaldis. Con ellos ha ampliado horizontes y grabado tres elepés, el último de ellos, Lo más lejos a tu lado, el más vendido de su carrera y disco de Platino a estas alturas. En este libro, Fito repasa toda su carrera y lo que es más molón, sus andanzas previas y paralelas a su ascenso como rock star, con una sinceridad y desparpajo poco habitual y que revelan aspectos muy poco conocidos no solo de su propia vida y carrera sino de la generación que ha crecido con sus canciones y las de tantos otros maestros del rock urbano.'),
(321, 'La Sana Intención - conversaciones con Rosendo', 197, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, 'sana.png', '2021-05-18 20:05:06', 'Empezó en esto de la música siendo guitarrista acompañante de orquestas. Pero para él, el rock and roll llegaría a ser religión a primeros de los setenta, con la melena ya crecidita, con los grupos Fresa y Ñu, en plena época del hippismo eléctrico. Siguiendo sus impulsos vitales, a finales de esa misma década daba un sentido al rock nacional con los tres discos de estudio y el directo que publicaron los imprescindibles Leño, ineludibles documentos sonoros que apuntalaban el nacimiento del rock urbano estatal. Su carrera en solitario, como Rosendo, empezaría a mediados de los ochenta. Catorce elepés en total y hasta la fecha, cargados de canciones viscerales que cuestionan asuntos existenciales, del ser de a pié, parapetados por su imprescindible Stratocaster. A punto de cumplir cincuenta primaveras, Rosendo Mercado Ruiz se erige como un clásico del rock and roll (con mayúsculas) patrio: guitarrista, compositor y cantante con identidad propia. En estas páginas recorremos, guiados por sus propias palabras, todos estos años de incesante carrera. Incluye fotos inéditas y discografía completa con todos los álbumes y singles.'),
(322, 'Diván - conversaciones con Enrique Bunbury', 126, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, 'diven.png', '2021-05-18 20:06:05', 'Un paseo por la infancia y la adolescencia del músico; por sus encuentros y desencuentros con las religiones y las drogas; por sus querencias políticas, sus viajes y sus aficiones; por su visión del negocio del rocanrol, su universo musical y la avalancha y posterior retirada de Héroes del Silencio. También por sus devaneos sexuales, claro. Diíase, resumiendo, que no hay pecado capital del que no se hable'),
(323, 'Tremendo Delirio - conversaciones con Julián Hernández', 190, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, 'treme.png', '2021-05-18 20:07:38', 'Tremendo Delirio - conversaciones con Julián Hernández. Una biografía de Siniestro Total'),
(324, 'Hannibal', 558, 1, 0, 67, NULL, 'Habitación Pablo', 'C', 13, '5577412.jpeg', '2021-05-19 12:37:02', 'Siete años han pasado desde que Clarice Starling, agente especial del FBI, se entrevistara con el doctor Hannibal Lecter en un hospital de máxima seguridad. Su ayuda fue decisiva para que ella capturara al asesino en serie Buffalo Bill.</p><p>\r\nSiete años han transcurrido desde que Hannibal el Caníbal burlara la vigilancia y desapareciera dejando una sangrienta estela de víctimas a su paso. Sin embargo, cuando Clarice cae en desgracia en el FBI, el doctor Lecter sale de las sombras para ponerse en contacto con ella. Así se reaviva la caza de la presa más codiciada, y Clarice, que nunca ha podido olvidar su encuentro con la brillante y perversa mente del psiquiatra, es encargada del caso'),
(325, 'Los Tres Mosqueteros', 612, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, 'tresMs.png', '2021-05-19 12:40:53', '\r\nFrancia, abril de 1625. En la polvorienta villa de Meung se cruzan los destinos de un joven gascón, una hermosa mujer y un misterioso hidalgo. Comienza así una de las mayores aventuras jamás escritas. Una carta de recomendación extraviada es la responsable de que el impulsivo D\'Artagnan se adentre, sin saberlo, en un mundo de intrigas palaciegas, luchas intestinas, traiciones, celos, capas y espadas en el que perseguirá su sueño de gloria.\r\n'),
(326, 'El Manuscrito Carmesí', 610, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 13, '39245926.jpeg', '2021-05-19 12:45:27', 'En los papeles carmesíes que empleo la Cancillería de la Alhambra, Boabdil el último sultán da testimonio de su vida a la vez que la goza o la sufre. La luminosidad de sus recuerdos infantiles se oscurecera pronto, al desplomarsele sobre los hombros la responsabilidad de un reino desahuciado. Su formación de príncipe refinado y culto no le servirá para las tareas de gobierno; su actitud lírica la aniquilará fatídicamente una épica llamada a la derrota. Desde las rencillas de sus padres al afecto profundo de Moraima o Farax; desde la pasión por Jalib a la ambigua ternura por Amin y Amina; desde el abandono de los amigos de su niñez a la desconfianza en sus asesores políticos; desde la veneración por su tio el Zagal o Gonzalo Fernández de Córdoba al aborrecimiento de los Reyes Católicos, una larga galería de personajes dibuja el escenario en que se mueve a tientas Boabdil el Zogoibi.'),
(327, 'Mar Brava - historias de corsarios, piratas y negreros españoles', 475, 1, 0, 68, NULL, 'Habitación Pablo', 'C', 13, '188944265.jpeg', '2021-05-19 12:50:29', 'Mar Brava - historias de corsarios, piratas y negreros españoles'),
(328, 'Más Allá de los Sueños', 308, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, 'aTqd69F.jpeg', '2021-05-19 12:55:37', '¿Qué nos ocurre tras la muerte? Chris Nielsen no tiene ni idea hasta que un grave accidente acaba con su corta vida y lo separa de su amada esposa, Annie. Ahora Chris tendrá que arreglárselas en el lugar desconocido que le espera después de dejar este mundo. Pero ni siquiera el cielo está completo sin Annie, y cuando la tragedia amenaza con separarlos para siempre, Chris arriesga su propia alma para salvarla de una eternidad de sufrimiento. Esta intensa historia de Richard Matheson, que trata acerca de la vida (y el amor) después de la muerte, sirvió de base para la película ganadora de un Óscar, protagonizada por Robin Williams.'),
(329, 'Gomorra', 325, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, 'share.jpeg', '2021-05-19 12:58:05', 'La Camorra napolitana, el Sistema, es una organización empresarial con ramificaciones por todo el planeta, incluyendo muchas ciudades españolas. Se ocupa de negocios muy diversos: desde la industria textil hasta el reciclaje de residuos, pasando por la droga o la especulación urbanística.\r\n</p><p>\r\nEn este relato trepidante y revelador, que es literatura de la buena con una sólida base documental, Roberto Saviano reconstruye la lógica del poder y la expansión de los clanes originarios de Nápoles. El autor ha recibido amenazas de muerte y vive escondido bajo protección policial.'),
(330, 'La Forja de un Rebelde', 800, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 13, '30379121875.jpeg', '2021-05-19 13:01:13', 'Una obra tan esencial para entender la España del siglo XX como indispensable es la lectura de Tolstoi para comprender la Rusia del siglo XIX The Daily Telegraph. La forja de un rebelde, de Arturo Barea, se compone de tres novelas autobiográficas: La forja, La ruta y La llama. El primer tomo cubre su infancia y juventud; el segundo, sus primeras experiencias literarias y, sobre todo, su servicio militar en Marruecos; el tercer tomo, por último, trata del período justamente anterior a la guerra civil y de la misma'),
(331, 'Piratas en Guerra', 315, 1, 1, 68, NULL, 'Habitación Pablo', 'C', 13, '169382528.jpeg', '2021-05-19 13:05:58', 'Piratas, corsarios y bucaneros son los protagonistas de este trepidante relato que, todavía en los albores de un nuevo milenio, fascina a millones de personas. Peter Earle narra las fechorías y desmanes de unos hombres capaces de quebrar todas las leyes humanas para conseguir su propio paraíso en la Tierra. La respuesta de las naciones civilizadas, lideradas por la poderosa Inglaterra, fue una persecución sin cuartel que, no sin grandes dificultades, se saldó con la extinción casi total de la piratería en el siglo XIX.\r\nLa obra se centra en el período que discurre entre 1600 y 1830, época durante la cual surge, se consolida y se extingue la piratería clásica en todos los mares del mundo. El autor recurre a fuentes inéditas para analizar las causas de este fenómeno que llegó a convertirse en una verdadera pesadilla para las flotas mercantes, sin olvidar el aspecto más “romántico” de los piratas, hombres endurecidos por una vida apátrida que forman parte de nuestro imaginario colectivo.'),
(332, 'Sin Novedad en el Frente', 261, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, '1075344.jpeg', '2021-05-19 13:51:23', '<i>Soy joven, tengo veinte años, pero no conozco de la vida más que la desesperación, el miedo, la muerte y el tránsito de una existencia llena de la más absurda superficialidad a una abismo de dolor. Veo a los pueblos lanzarse unos contra otros y matarse sin rechistar, ignorantes, enloquecidos, dóciles, inocentes. Veo a los más ilustres cerebros del mundo inventar armas y frases para hacer posible todo eso durante más tiempo y con mayor rendimiento</i>.\r\n</p><p>\r\nEste clásico de la literatura antimilitarista es un relato inclemente y veraz de la vida cotidiana de un soldado durante la primera guerra mundial.'),
(333, 'Aquellos Hombres Grises', 395, 1, 0, NULL, NULL, 'Habitación Pablo', 'C', 13, '19378483.jpeg', '2021-05-19 13:56:31', 'En la madrugada del 13 de julio de 1942, hombres del Batallón de Reserva de la Policía Alemana 101 entraron en la aldea polaca de Józefów. Al atardecer, habían reunido a 1.800 judíos: seleccionaron a unos pocos cientos como \"trabajadores\" para ser deportados; los demás, mujeres, ancianos o niños, los mataron. La crueldad ordinaria de los nazis, al parecer; pero los hombres del Batallón 101 eran trabajadores, empleados, comerciantes, artesanos recién alistados. Hombres comunes, reclutados por extrema necesidad, que no eran ni nazis ni fanáticos antisemitas, pero mataron a 1.500 víctimas en un solo día. Y la masacre de Józefów fue solo la primera de una larga serie: en poco más de un año, el Batallón 101 mató a otras 38.000 personas y colaboró ​​en la deportación a Treblinka y el exterminio de más de 45.000 judíos.</p><p>\r\nAl final de la guerra, quedaron 210 testimonios de miembros del Batallón 101: ¿qué pensaron al participar en la \"solución final\"? ¿Cómo justificaron su comportamiento? Y sobre todo, ¿por qué eran tan implacablemente eficientes en el cumplimiento de las órdenes? ¿Por fe en la autoridad, por temor al castigo? La explicación dada por Christopher Browning es mucho más alarmante y angustiosa: un hombre común puede convertirse en un asesino despiadado por puro espíritu de emulación y deseo de carrera. Es decir: los sentimientos más banales y aparentemente inofensivos son los motores de la inhumanidad más extrema. Ayer y hoy'),
(334, 'Ilión II: La Rebelión', 333, 1, 1, 70, NULL, 'Habitación Pablo', 'C', 13, '13518994._SY475_.jpg', '2021-05-19 13:59:31', 'La historia del asedio de Troya (Ilión), reconstruida en un lejano futuro con elementos de ciencia ficción: los dioses son post-humanos que disponen de una \"divina\" tecnología cuántica, el Monte Olimpo está en marte y los nuevos robots \"moravecs\" de más allá del cinturón de asteroides se interesan por la inusitada actividad que se observa en el planeta rojo. Mientras tanto, los últimos humanos en la Tierra viven una insulsa vida de \"eloi\" bajo la atenta vigilancia y supervisión de unos misteriosos Voynix de origen desconocido. Los elementos para la más inteligente revisión de la más clásica aventura épica humana están servidos.\r\n</p><p>\r\nAunque llamado a comprobar si el asedio de Troya se ajusta precisamente a lo narrado por Homero, al final el erudito Thomas Hockenberry sugiere a aqueos y troyanos la idea de una rebelión absoluta frente a los post-humanos que, misteriosamente, actuan como los dioses del Olimpo. Mientras tanto, los \"moravecs\" han llegado a Marte, se encuentran con los míticos \"hombrecillos verdes\" y se enfrentan también a los post-humanos del Monte Olimpo. Y, en la Tierra, el humano que ha aprendido a leer y su pequeño grupo de amigos se encuentran con un misterioso Odiseo que da testimonio de otro tipo de vida y descubren nuevas posibilidades. La aventura está servida.'),
(335, 'El Sueño del Celta', 454, 1, 1, NULL, NULL, 'Habitación Pablo', 'C', 13, 'sueño-celta.jpeg', '2021-05-19 14:03:33', 'La aventura que narra esta novela empieza en el Congo en 1903 y termina en una cárcel de Londres, una mañana de 1916.\r\n</p><p>\r\nAquí se cuenta la peripecia vital de un hombre de leyenda: el irlandés Roger Casement. Héroe y villano, traidor y libertario, moral e inmoral, su figura múltiple se apaga y renace tras su muerte.\r\n</p><p>\r\nCasement fue uno de los primeros europeos en denunciar los horrores del colonialismo. De sus viajes al Congo Belga y a la Amazonía sudamericana quedaron dos informes memorables que conmocionaron a la sociedad de su tiempo. Estos dos viajes y lo que allí vio cambiarían a Casement para siempre, haciéndole emprender otra travesía, en este caso intelectual y cívica, tanto o más devastadora. La que lo llevó a enfrentarse a una Inglaterra a la que admiraba y a militar activamente en la causa del nacionalismo irlandés.\r\n</p><p>\r\nTambién en la intimidad, Roger Casement fue un personaje múltiple: la publicación de fragmentos de unos diarios, de veracidad dudosa, en los últimos días de su vida, airearon unas escabrosas aventuras sexuales que le valieron el desprecio de muchos compatriotas'),
(336, 'Por Donde el Viento nos Lleve - antología de relatos españoles de piratas', 509, 1, 0, 68, NULL, 'Habitación Pablo', 'C', 13, 'viento-lleve.jpeg', '2021-05-19 14:05:50', 'Es un homenaje al mundo de los piratas, pero esta vez a mdo de antología. El complemento inevitable a Mar Brava, pues si en aquel libro se relataba una parte ignorada de nuestra historia, en éste se revisa y recopila la narrativa de aventuras marítimas');
INSERT INTO `libro` (`id`, `titulo`, `paginas`, `idioma`, `leido`, `coleccion`, `saga`, `ubicacion`, `estanteria`, `balda`, `portada`, `fecha`, `sinopsis`) VALUES
(337, 'La Comunidad del Anillo', 564, 1, 1, 43, 2, 'Habitación Pablo', 'D', 20, '63390.jpeg', '2021-05-19 14:08:56', 'En la adormecida e idílica Comarca, un joven hobbit recibe un encargo: custodiar el Anillo Único y emprender el viaje para su destrucción en las Grietas del Destino. Acompañado por magos, hombres, elfos y enanos, atravesará la Tierra Media y se internará en las sombras de Mordor, perseguido siempre por las huestes de Sauron, el Señor Oscuro, dispuesto a recuperar su creación para establecer el dominio definitivo del Mal.'),
(338, 'Las Dos Torres', 490, 1, 1, 43, 2, 'Habitación Pablo', 'D', 20, '54695.jpeg', '2021-05-19 14:10:21', 'La Compañía se ha disuelto y sus integrantes emprenden caminos separados. Frodo y Sam continúan solos su viaje a lo largo del río Anduin, perseguidos por la sombra misteriosa de un ser extraño que también ambiciona la posesión del Anillo. Mientras, hombres, elfos y enanos se preparan para la batalla final contra las fuerzas del Señor del Mal.'),
(340, 'Apéndices', 174, 1, 0, 43, 2, 'Habitación Pablo', 'D', 20, '54694.jpeg', '2021-05-19 14:12:42', 'Los Apéndices (que J. R. R. Tolkien incluyó en el tercer tomo de El Señor de los Anillos) reúnen y ordenan en un tour de force imaginativo la información que no tuvo cabida en el desarrollo de la narrativa, y que aclara o muestra de un modo nuevo la historia, usos y costumbres de los pueblos de la Tierra Media'),
(341, 'El Retorno del Rey', 415, 1, 1, 43, 2, 'Habitación Pablo', 'D', 20, '3379781.jpeg', '2021-05-19 14:15:12', 'Para la historia misma de la novela -una historia que se remonta a la Odisea y antes de la Odisea- El senor de los Anillos no es un retorno, sino un paso adelante o una revolucion: la conquista de un territorio nuevo.'),
(342, 'Guía Completa de la Tierra Media', 540, 1, 0, NULL, NULL, 'Habitación Pablo', 'D', 20, '7569049.jpeg', '2021-05-19 14:17:05', 'Para los millones de lectores que ya han viajado a la Tierra Media -y para los innumerables otros que todavía no han emprendido ese incomparable viaje- esta Guía de la Tierra Media es una obra única e indispensable que da vida y abre nuevas perspectivas al universo fantástico de Tolkien'),
(343, 'El Hobbit', 360, 1, 1, 43, NULL, 'Habitación Pablo', 'D', 20, '59304.jpeg', '2021-05-19 14:18:15', 'Una saga esplendidamente escrita de enanos y elfos, duendes y trasgos terribles; una excitante epica de viajes y aventuras magicas de Bilbo Bolson, el cual alcanza al fin un climax devastador'),
(344, 'El Silmarillion', 490, 1, 1, 43, NULL, 'Habitación Pablo', 'D', 20, '3425157.jpeg', '2021-05-19 14:20:16', 'El Silmarillion es el cuerpo central de los textos narrativos de J.R.R. Tolkien, una obra que no pudo publicar en vida porque crecio unto con el. Tolkien comenzo a escribirlo mucho antes que El Hobbit, obra concebida como historia independiente, pero que fue parte de lo que el llamaba un \"tema que copia y se ramifica,\" y del que emergio El Senor de los Anillos. El Silmarillion cuenta la historia de la Primera Edad, el antiguo drama del que hablan los personajes de El Senor de los Anillos, y en cuyos acontecimientos algunos de ellos tomaron parte, como Elrond y Galadriel. Los tres Silmarils eran gemas creadas por Fj .or, el mas dotado de los Elfos, y contenian la Luz de los Dos Crboles de Valinor antes que los Crboles mismos fueran destruidos por Morgoth, el primer Senor Oscuro. Desde entonces la inmaculada Luz de Valinor vivio solo en los Silmarils, pero Morgoth se apodero de ellos, y los engarzo en su corona, guardada en la fortaleza impenetrable de Angband en el norte de la Tierra Media.En este volumen se incluyen otras obras cortas, como el Ainulindali/ la Musica de los Ainur, la creacion mitica del mundo, y el Valaquenta, sobre la naturaleza y poderes de los dioses. A El Silmarillion sigue el Akallabeth, que vuelve a narrar la caida del reino de Numenor al fin de la Segunda Edad, y por ultimo la historia De los Anillos del Poder, en la que el tema de El Senor de los Anillos reaparece en la perspectiva mas amplia de El Silmarillion. El Silmarillion no es una novela, ni un cuento de hadas, ni una historia ficticia. Podria definirse como una obra de imaginacion inspirada, una vision sombria, legendaria o mitica, del interminable conflicto entre el deseo de poder y la capacidad de crear.'),
(345, 'Los Caballeros de Neraka', 511, 1, 1, 58, 16, 'Habitación Pablo', 'D', 20, 'los_caballeros_de_neraka.jpeg', '2021-05-19 14:25:28', 'Han transcurrido casi cuarenta años desde la devastadora Guerra de Caos, cuando los dioses abandonaron Krynn. Dragones crueles y poderosos se han repartido el dominio del continente de Ansalon y exigen tributo a los pueblos que han esclavizado.\r\n</p><p>\r\nSin embargo, para bien o para mal, un cambio se avecina en el mundo. Una violenta tormenta mágica azota Ansalon y ocasiona inundaciones, incendios, muerte y destrucción. En medio del caos desatado surge una joven misteriosa cuyo destino está estrechamente vinculado al de Krynn, ya que sólo ella conoce la verdad sobre el futuro. Un futuro que está relacionado de manera inextricable con un misterio aterrador del pasado de Krynn.'),
(346, 'El Río de los Muertos', 428, 1, 1, 58, 16, 'Habitación Pablo', 'D', 20, 'EL RIO DE LOS MUERTOS.jpeg', '2021-05-19 14:27:04', 'Una fuerza misteriosa tiene sometido a todo Krynn. Una joven, protegida por su regimiento de caballeros negros, invoca el poder de un dios desconocido para que su ejército salga victorioso de todas las batallas. Los espíritus de los muertos roban la magia a los vivos. La hembra de dragón Beryl amenaza con destruir la amada tierra de los elfos.\r\n</p><p>\r\nEn medio del caos, un puñado de héroes valientes y generosos lucha contra un poder inmortal que parece desbaratar todos sus planes. La creciente oscuridad amenaza con sumergir en su negrura toda esperanza, toda fe, toda luz.</p><p>\r\nLa guerra de los espíritus prosigue.'),
(347, 'El Nombre del Único', 457, 1, 1, 58, 16, 'Habitación Pablo', 'D', 20, 'big1.jpeg', '2021-05-19 14:28:43', 'El fuego de la guerra devora Ansalon. El ejército de espíritus marcha hacia la conquista conducido por la mística guerrera Mina, que sirve al poderoso dios Único. Un pequeño grupo de héroes, obligado a adoptar medidas desesperadas, dirige la lucha contra un enemigo que posee una superioridad abrumadora.\r\n</p><p>\r\nSurgen dos protagonistas inverosímiles: una hembra de dragón que no cederá fácilmente su liderazgo, y un indomable kender que ha emprendido un extraño e increíble viaje que tendrá un final sorprendente.'),
(348, 'El Ocaso de los Dragones', 703, 1, 1, 58, NULL, 'Habitación Pablo', 'D', 20, '12810047.jpeg', '2021-05-19 14:30:17', 'Esta obra se presenta por primera vez en un único volumen, que reúne los dos títulos que la integraban: Los caballeros de Takhisis y la guerra de los dioses. La Guerra de la Langa ya es historia. Y, ahora, en Krynn transcurre un verano abrasador como jamás se había visto antes. Pero tal vez sea el último, porque Caos, el padre de los dioses, ha regresado y el mundo entero puede desaparecer. Mientras, la Reina Oscura ha encontrado nuevos paladínes entre los Caballeros de Takhisis, seguidores fieles hasta el fin que cumplirán ciegamente sus propósitos. El ocaso de los dragones es a la vez un final y un principio, porque esta historia cierra el ciclo que se inicia con las Crónicas de la Dragonlance, y abre la puerta a nuevas aventuras y personajes en el mundo de Krynn durante la Quinta Era o Era de los Mortales. Selección de novelas de la Saga de la Dragonlance'),
(349, 'El Retorno de la Sombra', 609, 1, 0, 43, 18, 'Habitación Pablo', 'D', 20, '3425149._SY475_.jpg', '2021-05-20 13:12:56', 'En este primer volumen de la Historia de El Señor de los Anillos, Christopher Tolkien describe, citando notas y borradores, la intrincada evolución de La Comunidad del Anillo, y la gradual emergencia de las concepciones que transformaron lo que iba a ser un libro mucho más corto: una secuela de El hobbit. El anillo mágico de Bilbo crece, hasta convertirse en el peligroso y poderoso Anillo del Señor Oscuro, y en un asombroso e inesperado salto narrativo, un jinete Negro, entra cabalgando en la Comarca. La identidad del supuesto hobbit llamado Trotter (más tarde Trancos o Aragorn) es en un principio un misterio insoluble, hasta que al fin, muy lentamente, Tolkien descubre que tiene que ser un hombre. Muchas de las figuras mayores del libro aparecen con otros nombres y extrañas características: un siniestro Bárbol, aliado del Enemigo, un feroz y malévolo granjero Maggot. La historia concluye en el punto en que J.R.R. Tolkien abandona el relato durante largo tiempo, cuando la Compañía del Anillo, en la que todavía faltan Legolas y Gimli, se encuentra ante la tumba de Balin, en las Minas de Moria.\r\nEste volumen valió a Christopher Tolkien en 1989 el Mythopoeic Scholarship Award en su subcategoría de estudios sobre los Inklings.'),
(350, 'El Libro de los Cuentos Perdidos 1', 356, 1, 0, 43, 17, 'Habitación Pablo', 'D', 20, 'el libro de los cuentos perdidos.jpeg', '2021-05-20 13:15:13', 'El Libro de los Cuentos Perdidos fue la primera gran obra de imaginación de JRR Tolkien, comenzada en 1916-1917, cuando tenía veinticinco años, y abandonada varios años después. Es en realidad el principio de toda la concepción de la Tierra Media y Valinor, y el primer esbozo de los mitos y leyendas que constituirían El Silmarilion. El marco narrativo es el largo viaje hacia el Oeste que emprende el marinero llamado Eriol a Tol Eressëa, la isla solitaria donde habitan los Elfos. Allí conoce los Cuentos Perdidos de Elfenesse, en los que aparecen las ideas y concepciones más tempranas sobre los Dioses y los Elfos, los Enanos, los Balrogs y los Orcos, los Silmarils, los dos Árboles de Valinor, Nargothrond y Gondolin, y la geografía y la cosmología de la Tierra Media. Este primer libro de los Cuentos Perdidos contiene los cuentos de Valinor.'),
(351, 'El Libro de los Cuentos Perdidos 2', 474, 1, 0, 43, 17, 'Habitación Pablo', 'D', 20, 'el libro de los cuentos perdidos 2.jpeg', '2021-05-20 13:16:40', 'El libro de los Cuentos Perdidos fue la primera gran obra de imaginacion de J.R.R. Tolkien, comenzando en 1916-1917, cuando tenia veinticinco anos, y abandonada varios anos despues. Es en realidad el principio de toda la concepcion de la Tierra Media y Valinor, y el primer esbozo de los mitos y leyendas que constituirian El Silmarillion. El marco narrativo es el largo viaje hacia el Oeste que emprende un marinero llamado Eriol (Aelfwine) a Tol Eressj, la isla solitaria donde habitan los Elfos. Alli conoce los Cuentos Perdidos de Elfenesse, en los que aparecen las ideas y concepciones mas tempranas sobre los Dioses y los Elfos, los Enanos, los Balrogs y los Orcos, los Silmarils, los dos arboles de Valinor, Nargothrond y Gondolin, y la geografia y la cosmologia de la Tierra Media. El libro de los Cuentos Perdidos se publica en dos volumenes. El primero contiene los cuentos de Valinor, y el segundo incluye Beren y Luthien, Turin y el Dragon, y las historias del Collar de los Enanos y la Caida de Gondoiin. Cada cuento es seguido de un comentario --un ensayo breve--, y de algun poema relacionado con el texto, y en cada uno de los volumenes hay abundante informacion sobre el vocabulario y los nombres de las primeras lenguas elficas.'),
(352, 'Fuego y Sangre', 873, 1, 1, 71, 21, 'Habitación Pablo', 'D', 20, '42755778._SY475_.jpg', '2021-05-20 13:33:16', 'Siglos antes de que tuvieran lugar los acontecimientos que se relatan en «Canción de hielo y fuego», la casa Targaryen, la única dinastía de señores dragón que sobrevivió a la Maldición de Valyria, se asentó en la isla de Rocadragón.\r\n</p><p>\r\nAquí tenemos el primero de los dos volúmenes en el que el autor de Juego de tronos nos cuenta, con todo lujo de detalles, la historia de tan fascinante familia: empezando por Aegon I Targaryen, creador del icónico Trono de Hierro, y seguido por el resto de las generaciones de Targaryens que lucharon con fiereza por conservar el poder, y el trono, hasta la llegada de la guerra civil que casi acaba con ellos.\r\n</p><p>\r\n¿Qué pasó realmente durante la Danza de dragones? ¿Por qué era tan peligroso acercarse a Valyria después de la Maldición? ¿Cómo era Poniente cuando los dragones dominaban los cielos? Estas, y otras muchas, son las preguntas a las que responde esta monumental crónica, narrada por un culto maestre de la Ciudadela, que anticipa el ya conocido universo de George R.R. Martin.\r\n</p><p>\r\nFuego y Sangre brindará a los lectores la oportunidad de tener otra visión de la fascinante historia de Poniente. Esta obra, magníficamente ilustrada con 85 láminas inéditas de Doug Wheatley, se convertirá, sin duda, en una lectura ineludible para todos los fans de la aclamada serie'),
(353, 'El Reino de Istar', 335, 1, 1, 58, 23, 'Habitación Pablo', 'D', 21, 'descargar-libro-el-reino-de-istar-en-pdf-epub-mobi-o-leer-online.jpg', '2021-05-20 13:43:48', 'El mundo de Krynn es fuente de inagotables sorpresas, basten dos ejemplos: en uno de los siete cuentos incluidos en el presente volumen, un Kender se convierte en caballero de Solamnia (bueno, casi lo consigue). En otra narración, un ogro llega a ser salvador de la caza de los enanos, ¡vivir para ver!. El libro se cierra con una novela corta de Margaret Weis y Tracy Hickman, \"Hilos de seda\", en la que se cuenta la suerte que corrieron los verdaderos clérigos y cómo Nuitari, guardiana de la magia negra, intenta frustar las ambiciones del hechicero Túnica Negra, conocido como Fistandantilus.'),
(354, 'La Guerra de la Lanza', 394, 1, 1, 58, 23, 'Habitación Pablo', 'D', 21, '10239895.jpeg', '2021-05-20 13:45:27', 'La Guerra de la Lanza...Krynn se ve desgarrado por el terrible conflicto que enfrenta a los esbirros de Takhisis, Reina de la Oscuridad, con los seguidores de Paladine y los dioses del Bien.\r\n</p><p>\r\nLos dragones, buenos y malos, chocan en los cielos y un pequeño grupo de amigos, que llegarán a ser conocidos como los Héroes de la Lanza, luchan por el honor y la libertad.\r\n</p><p>\r\nCuentos de la Dragonlance recoge diversas historias que ocurrieron en Krynn durante los años de la guerra. Cierra el libro una auténtica exclusiva de Margaret Weis y Tracy Hickman, \"La historia que Tasslehoff prometió no contar nunca, nunca, nunca\".'),
(355, 'El Cataclismo', 390, 1, 1, 58, 23, 'Habitación Pablo', 'D', 21, 'descarga (1).jpeg', '2021-05-20 13:47:40', 'La arrogancia del Príncipe de los Sacerdotes de Istar provoca la ira de los dioses y, como resultado, se produce el Cataclismo. Con él llegan la anarquía, la desesperación, la vileza… pero también el heroísmo. Los diez cuentos de este volumen nos ofrecen diversas muestras de lo sucedido en Krynn tras el desastre.\r\nEl volumen se cierra con una novela corta de Margaret Weis y Tracy Hickman, «Un auténtico caballero», que retoma la historia del clérigo de Mishakal, el hermano Michael, y de Nikol, hija de un caballero de Solamnia. Los dos sobreviven al Cataclismo y tienen un encuentro con el caballero que, según los rumores, podría haber evitado la hecatombe.'),
(356, 'La Magia de Krynm', 351, 1, 1, 58, 22, 'Habitación Pablo', 'D', 21, '362740.jpeg', '2021-05-20 13:49:44', 'En el prologo de esta obra, Margaret Weis y Tracy Hickman se dirigen a los lectores y les comentan: \"Aquí estamos otra vez, dispuestos a vivir nuevas aventuras. Si sois antiguos compañeros de viaje, os damos la bienvenida una vez más. Si nunca habéis recorrido el mundo de Dragonlance . Esperamos que esta trilogía sea una introducción emocionante que capte vuestro interés\".\r\n</p><p>\r\nEn estas diez narraciones breves se hace un variado repaso a la intensa y misteriosa historia de Krynn y sus habitantes. Así, viviremos los peligros que sufre el valeroso Riverwind en su búsqueda de la Vara de Cristal Azul, conoceremos las terribles pruebas por las que pasó el mago, Raistlin, en la Torre de la Alta Hechicería y las vicisitudes de la doncella elfa Laurana para encontrar el Orbe de los Dragones en el castillo del Muro de Hielo. Del mismo modo, leeremos nuevas y apasionantes historias del incorregible kender Tasslehoff Burrfoot, de Tanis y Flint, o de los malvados draconianos.\r\n</p><p>\r\nSe inicia, pues, una sorprendente trilogía de la saga Dragonlance por la que desfilarán, además de los personajes conocidos, monstruos, guerreros, elfos, serpientes con cabeza de hidra y otras criaturas fantásticas que sólo hallamos en sueños… o en pesadillas.'),
(357, 'Kenders, enanos y gnomos', 350, 1, 1, 58, 22, 'Habitación Pablo', 'D', 21, '4556641.jpeg', '2021-05-20 13:51:21', 'El segundo volumen de los Cuentos de la Dragonlance nos sigue llevando por las legendarias tierras de Krynn. En este mundo distante habitan, junto a los humanos, diversas razas y criaturas: kenders -sobradamente conocidos por sus travesuras-, enanos, gnomos…, quienes juegan un papel importante en la intensa y misteriosa historia de Krynn.\r\n</p><p>\r\nEn uno de los cuentos, “La canción de la nieve”, Sturm y Tanis se pierden en una ventisca y la única esperanza de rescate es, ni más ni menos que el genial Kender, Tasslehoff Burrfoot. “Los anteojos del mago”, otro de los relatos, nos hará vivir los peligros que desencadena un enano inexperto cuando crea los conjuros que ha conseguido leer en el pergamino mágico con “Los anteojos de visión verdadera”.\r\n</p><p>\r\nTambién tendremos noticias de otros personajes. En “La desastrosa cacería de Fewmaster Toede”, descubriremos cómo murió en realidad este despreciable Señor del Dragón, y en “¿Qué te apuestas?”, conoceremos una de las mayores aventuras de Sturm, Tanis y Palin puesto que, en contra de su voluntad, se ven forzados a acompañar a Dougan Martillo Rojo en un viaje por mar a fin de recobrar la Gema Gris de Gargath'),
(358, 'Historias de Ansalon', 346, 1, 1, 58, 22, 'Habitación Pablo', 'D', 21, '260236.jpeg', '2021-05-20 13:52:39', 'Llegamos al final de la primera trilogía de los “Cuentos de la Dragonlance” y, como los dos volúmenes anteriores, éste se compone de una serie de relatos que nos proporciona más y más datos sobre Krynn y sus héroes. “Destino fatal” nos cuenta la peculiar relación entre el Señor del Bosque y el ciervo que guía a los compañeros hasta el centro del Bosque Oscuro y que fue el que condujo también a Huma, según las leyendas. En otro de los relatos, “Los exiliados”, conoceremos a Sturm niño, aunque ya imbuido por el espíritu del Código y la Medida. “La hija de Raistlin” es un misterioso cuento en el que se apunta la posibilidad de que el gran archimago hubiese engendrado un hijo en el viaje de regreso a Solace después de haber pasado la Prueba… por su parte, “Plata y acero” es otra versión de la batalla final entre Huma y la Reina de la Oscuridad, enfocada desde un punto de vista más humano y más realista, prescindiendo de escenas espectaculares. El contrapunto humorístico lo aporta “Jugar al Escondite”, cuyo protagonista, Tas, da un toque de alegría y diversión y nos remonta a los años precedentes a la Guerra de la Lanza.'),
(359, 'La Misión de Riverwind', 392, 1, 1, 58, 24, 'Habitación Pablo', 'D', 21, '1322797.jpeg', '2021-05-20 13:56:11', 'A fin de hacerse merecedor de su amada Goldmoon, Riverwind se ve forzado a emprender un viaje para realizar una misión casi imposible, encomendada por los ancianos de la tribu que-shu: encontrar alguna evidencia con la que pueda demostrar la existencia de los dioses verdaderos.</p><p>\r\nJunto con un excéntrico adivino, apodado Cazamoscas, Riverwind se precipita por un pozo mágico y llega a un mundo en el que reina la hechicería. Allí, sus habitantes están esclavizados, y se percibe que se está fraguando una rebelión.\r\nRiverwind, Cazamoscas y una perspicaz muchacha elfa llegan a Xak Tsaroth y descubren la Vara de Cristal Azul de Mishakal, así como la presencia del terrorífico dragón negro, Khisanth.\r\nUna vez más un entrañable personaje de la Dragonlance se convierte en el protagonista central de este nuevo volumen de la colección Preludios de la Dragonlance.'),
(360, 'Flint, Rey de los Gullys', 365, 1, 1, 58, 24, 'Habitación Pablo', 'D', 21, '8739358._SY475_.jpg', '2021-05-20 13:57:53', 'Flint Fireforge, el paternal enano, miembro de los Héroes de la Lanza, regresa al tranquilo y soñoliento pueblo natal donde transcurrió su infancia, situado en las estribaciones montañosas cercanas a Solace, y le sorprende encontrarlo inmerso en un febril ajetreo comercial. Cuando descubre por azar el ominoso origen de esta prosperidad, lo arrojan al Foso de la Bestia para acabar con él.\r\n</p><p>\r\nUnos enanos gullys lo rescatan de la muerte, junto con una joven enana muy atractiva. Investido monarca de Lodazal en contra de su voluntad, Flint se esfuerza por convertir a un montón de harapientos aghar en un ejército con el que hacer frente a un diabólico complot.\r\nFlint, rey de los gullys es una divertida y conmovedora historia sobre el genial enano de la saga Dragonlance.'),
(361, 'Tanis, el Semielfo', 346, 1, 1, 58, 24, 'Habitación Pablo', 'D', 21, '43407984.jpeg', '2021-05-20 14:43:11', '<i>La salmodia se inició con tono muy bajo, apenas audible. Poco a poco, creció de intensidad y se escucharon unas palabras misteriosas e incomprensibles</i>.\r\n</p><p>\r\n«i>El cántico aumentó aún más de volumen. La estructura de la pequeña choza empezó a temblar, como si el viento tratara de arrancarla de sus cimientos para arrojarla pendiente abajo hasta el valle tendido al pie de la montaña. Agua y barro escurrían entre las grietas, cada vez más anchas, del tejado. Una sección del entramado de troncos que cubría el techo se quebró y cayó dentro de la choza. La despavorida tejedora dejó escapar un gemido, pero Tanis no se atrevió a consolarla. Fistandantilus prosiguió con su salmodia y su voz sobrepasó incluso el ulular del viento</i>.\r\n</p><p>\r\nEn este apasionante relato, Tanis hace un enigmático viaje por la mente de un anciano hechicero y regresa al pasado, un pasado en el que conoce a su odiado y temido padre, y en el que tendrá que librar una batalla imposible contra el propio tiempo.'),
(362, 'La Leyenda de Huma', 463, 1, 1, 58, 25, 'Habitación Pablo', 'D', 21, '33119742._SY475_.jpg', '2021-05-20 14:46:27', 'De la mano de Astinus de Palanthas, el lector se remonta en el tiempo para conocer la vida de Huma, el Caballero de Solamnia, primer Lancero, paladín de la Orden de la Corona, el predestinado a descubrir dónde se halla la poderosa lanza Dragonlance, obra de los mismos dioses y la única capaz de derrotar a la legendaria Reina de la Oscuridad y sus hordas de Dragones, que desde tiempos inmemoriales asolan el mundo.\r\nEsta interesantísima narración de R. A. Knaak sigue el camino que iniciaron Margaret Weis y Tracy Hickman en sus \"Crónicas de la Dragonlance\" y \"Leyendas de la Dragonlance\". Con ella se inicia una nueva trilogía que recrea personajes y situaciones de las sagas mencionadas'),
(363, 'Espada de Reyes', 416, 1, 0, 58, 25, 'Habitación Pablo', 'D', 21, '33119807.jpeg', '2021-05-20 14:47:39', 'En las profundidades del reino enano de Thorbardin, un anciano herrero forja en secreto a Vulcania, Espada de Reyes, a la que da vida el mismo dios Reorx, y cuyo poseedor será entronizado como soberano de Thorbardin. Pero la espada es robada la misma noche de su creación... Por otro lado, un numeroso grupo de humanos, dirigidos por Tanis el Semielfo y por la princesa Goldmoon, acaban de huir de la esclavitud de las minas de Pax Tharkas, feudo del Señor del Dragón, Verminaard, y se disponen a pedir asilo en el reino de los enanos. Ambos sucesos obligarán a los enanos de Thorbardin a romper su aislamiento y tal vez participar en el grave acontecimiento que está sacudiendo el mundo de los humanos: La Guerra de la Lanza. '),
(364, 'El Retorno de los Dragones', 479, 1, 1, 58, 15, 'Habitación Pablo', 'D', 21, 'bbc681aa75a6b1c4dbeb869a437f72a9.jpeg', '2021-05-20 14:52:19', 'Son amigos de toda la vida que siguieron caminos distintos. Ahora vuelven a reunirse, aunque cada uno oculta a los demás algún secreto particular. Hablan de un mundo sobre el que se cierne la sombra de la guerra, cuentan historias de extraños monstruos, de criaturas míticas forjadas en la leyenda, pero no dicen nada de sus secretos. Al menos, no por el momento. No los revelarán hasta ques se encuentren con una misteriosa y enigmática mujer, que porta una vara mágica. Ella hará que el grupo de amigos se vea inmerso en las sombras, y que sus vidas cambien para siempre, al tiempo que forjan el destino del mundo. Nadie esperaba que fueran unos héroes.\r\nY ellos, menos que nadie.'),
(365, 'La Tumba de Huma', 445, 1, 1, 58, 15, 'Habitación Pablo', 'D', 21, 'la-tumba-de-huma-3625.jpeg', '2021-05-20 14:54:02', 'Ahora todo el mundo sabe que los esbirros draconianos de Takhisis, la Reina de la Oscuridad, han vuelto. Todas las naciones se disponen a defender sus hogares, sus vidas y su libertad. Pero las razas llevan largo tiempo divididas por el odio y los prejuicios. Los guerreros elfos luchan contra los caballeros humanos. La guerra parece perdida antes de comenzar. Los compañeros se ven separados por el conflicto, viviendo distintas aventuras. Pasará una estación completa antes de que vuelvan a reunirse, si es que lo consiguen. Bajo el pálido sol invernal, un caballero caído en desgracia, una doncella elfa mimada y un kender algo chiflado ven cómo se acercan las tinieblas.'),
(366, 'La Reina de la Oscuridad', 446, 1, 1, 58, 15, 'Habitación Pablo', 'D', 21, 'qwerty_preview (1).jpg', '2021-05-20 14:55:33', 'La guerra contra los dragones siervos de la Reina de la Oscuridad sigue su curso. Armados con los misteriosos y mágicos Orbes de los Dragones y con la resplandeciente Dragonlance, los compañeros se convierten en la esperanza del mundo. Pero ahora, cuando amanece un nuevo día, los oscuros secretos que han ensombrecido los corazones de este grupo de amigos salen a la luz. La traición, el engaño, la debilidad estarán a punto de destruir todo lo que ya han conseguido.'),
(367, 'El Templo de Istar', 504, 1, 1, 58, 26, 'Habitación Pablo', 'D', 21, '002900.jpeg', '2021-05-20 14:57:55', 'La Guerra de la Lanza ha terminado, y la Oscuridad ha desaparecido. ¿O tal vez no? Porque hay quien ansía reinstaurarla en Krynn.\r\nRaistlin, el mago de los ojos como relojes de arena, quiere ser más poderoso que su Reina de la Oscuridad y propagar el Mal en el mundo. El hechicero goza de un desmesurado poder porque Fistandantilus, el archimago más perverso del orbe, se ha encarnado en él.\r\nSólo dos personas pueden detener a Raistlin. Una es Crysania, una bella sacerdotisa, Hija venerable de Paladine, que no tiene en cuenta la flaqueza de sus sentimientos al enfrentarse al hechicero. La otra es Caramon, quien todavía sufre por no poder proteger ya a su hermano. El guerrero debe, ante todo, aceptarse a sí mismo para luego redimir a su gemelo.\r\nCrysania y Caramon junto al impetuoso kender, Tas, son catapultados al pasado gracias a la magia, para que vivan la reencarnación de Raistlin, y contemplen el agónico acontecimiento del Cataclismo, que hundirá la orgullosa ciudad de Istar en el fondo del Mar Sangriento.\r\nLas autoras Margaret Weis y Tracy Hickman han creado esta segunda trilogía, Leyendas de la Dragonlance, tanto o más interesante que la que formaba las Crónicas de la Dragonlance. En las Leyendas aparecen algunos de los personajes que intervenían en las Crónicas y se incorporan otros protagonistas, produciéndose nuevas y apasionantes situaciones tanto en el Presente como en el Pasado.'),
(368, 'La Guerra de los Enanos', 528, 1, 1, 58, 26, 'Habitación Pablo', 'D', 21, 'Weis, Margaret y Hickman, Tracy - Leyendas de la Drangonlance II - La guerra de los enanos.jpeg', '2021-05-20 14:59:28', '¿Dónde está el Poder? ¿Dónde su Umbral, su Portal?Cien años después del cataclismo, Raistlin-Fistandantilus sigue incansable la trayectoria que se ha trazado para intentar convertirse en el ser más poderoso del universo. Sin embargo, el mago descubre que el acceso al Poder, que debía estar en la Torre de Palanthas, se ha esfumado de ese lugar. El sabio historiador Astinus le revela que, para hallarlo, ha de trasladarse a Zhaman, fortaleza situada en Thorbadin, patria de los Enanos de la Montañas y plaza donde murió Fistandantilus… ¿Qué destino espera a Raistlin, si es la reencarnación del perverso archimago?Los Enanos de las Montañas están enzarzados en una cruenta guerra con los Enanos de la Colinas, que ansían apoderarse del supuesto tesoro de aquéllos'),
(369, 'El Umbral del Poder', 429, 1, 1, 58, 26, 'Habitación Pablo', 'D', 21, 'P-00003208.jpg', '2021-05-20 15:02:02', 'Así profetizará Caramon a Raistlin: <i>Gobernarás un mundo muerto, un universo de cenizas, de ruinas informes y cadáveres mutilados. Nadie te acompañará en tu palacio celeste y, aunque tratarás de crear, no quedará ni un soplo en tu interior que puedas insuflar en los nuevos moldes. Te nutrirás de las estrellas hasta que, exprimidas, estallen y nada quedará a tu alrededor, nada en tu alma…</i>.\r\n'),
(370, 'Los Hijos de Sargas', 332, 1, 1, 58, NULL, 'Habitación Pablo', 'D', 21, 'sargas.jpeg', '2021-05-20 18:07:19', 'A lo largo de la historia de Krynn, la raza de los minotauros se ha mantenido siempre firme en su orgullo y sus creencias. Se consideran hijos del destino y futuros amos del mundo. Ante la adversidad, la derrota y la esclavitud, esa convicción no los abandona jamás. Pero si existe un enemigo capaz de destruir a los minotauros, es precisamente su arrogancia.</p><p>\r\nEn <i>Los hijos de Sargas</i> se narra una lucha de clanes contra clanes, y de cómo el campeón exiliado, Kaz, debe descubrir el terrible secreto de los dirigentes del imperio, antes de que toda su raza sufra las catastróficas consecuencias.\r\n'),
(371, 'Mithas y Karthay', 329, 1, 1, 58, NULL, 'Habitación Pablo', 'D', 21, '1248574.jpeg', '2021-05-20 18:08:57', 'Caramon, Sturm y Tasslehoff emprenden un viaje por mar para llevar a cabo un encargo de Raistlin. Durante la travesía, un vendaval de origen mágico los transporta a miles de kilómetros de distancia, hacia el Mar Sangriento Oriental.\r\n</p><p>\r\nEn Solace, Raistlin convence a Flint y Tanis para que los tres realicen un peligroso viaje a Mithas, el reino de los minotauros. Su misión consistirá, no sólo en rescatar a sus amigos, sino en derrotar al Amo de la Noche, quien pretende que Sargonnas, el Dios de la Venganza, entre en el mundo y ayude a los minotauros a conseguir el dominio de Ansalon, para ello piensa sacrificar a una victima propiciatoria que no es ni más ni menos que Kitiara Uth Matar.'),
(372, 'La Segunda Generación', 255, 1, 0, 58, NULL, 'Habitación Pablo', 'D', 21, '8688450.jpeg', '2021-05-20 18:10:29', 'Los héroes soñaban con encontrar un refugio seguro en ese río de rápida corriente. Pero el equilibrio del poder eterno siempre es cambiante. La Reina de la Oscuridad fue vencida, pero no destruida. Sus poderes son muchos y la gente es débil. Se olvidan las lecciones del pasado y las aguas del río se vuelven más turbulentas y peligrosas. Pero no serán los Héroes de la Lanza quienes deberán lanzarse al río revuelto de la guerra que se acerca. Ha llegado la hora para los que son más jóvenes, más fuertes. Es hora de entregar la espada, o el bastón de mago, a quienes serán los héroes de la segunda generación. O a quienes traerán la perdición para esa nueva era'),
(373, 'Verminaard, Señor de Nidus', 294, 1, 1, 58, NULL, 'Habitación Pablo', 'D', 21, '1237905.jpeg', '2021-05-20 18:11:59', 'En las desoladas montañas Khalkist, en una tormentosa noche de invierno, nace un niño rodeado de malevolencia mientras se escuchan las ominosas palabras de una druida. Después, el joven Verminaard crece sin amor ni atención y deja de lado a su familia y a los amigos para establecer un siniestro idilio con una misteriosa Voz del Mal que habita en un arma terrible.'),
(374, 'Lord Soth', 255, 1, 1, 58, NULL, 'Habitación Pablo', 'D', 21, 'soth.jpg', '2021-05-20 18:14:26', 'Ésta es la historia de Lord Soth, quien, tras alcanzar gloria y dignidades sin igual en sus gestas como Caballero de Solamnia, asumió el más alto rango de la orden. Su corazón era puro y su alma, aparentemente, no albergaba maldad alguna.\r\n</p><p>\r\nHay quien dice que se apartó de la causa del Bien por culpa de un orgullo desmedido; otros aseguran que la causa fue la lujuria; y otros dicen que fue por avaricia. Sólo el propio Soth conoce los verdaderos motivos que lo impulsaron a destruir todo aquello que valoraba y quería.\r\n</p><p>\r\nPara redimirse, aceptó la misión que le encomendó el mismísimo Paladine: impedir que el Príncipe de los Sacerdotes de Istar reclamase para sí el poder de los dioses de Krynn; sólo de ese modo podría evitarse el Cataclismo.'),
(375, 'Vinas Solamnus, El Primer Caballero', 313, 1, 1, 58, NULL, 'Habitación Pablo', 'D', 21, '17337401.jpeg', '2021-05-20 18:15:39', 'Vinas Solamnus: soldado, noble, clérigo... pero también rebelde. Comandante y conquistador. Uno de los personajes más legendarios de Krynn, creador del código y la medida, fundador de los caballeros de Solamnia. Ningún caballero fue tan noble, tan espiritual, tan idealista como Vinas Solamnus. Pero este héroe no siempre fue así. La historia de sus primeros años, su educación y las pruebas que tuvo que superar en su juventud constituyen un relato apasionante'),
(376, 'Los Enanos Gullys', 269, 1, 1, 58, NULL, 'Habitación Pablo', 'D', 21, '175925654_tcimg_9AAC22E8.jpeg', '2021-05-20 18:17:46', 'Ésta es la profecía que el dios Reorx entrega a Verden Brillo de Hoja, un Dragón Verde reformado, repudiado por Takhisis, la reina de la infamia. Por si esto fuera poco, Reorx da instrucciones al dragón para que, llegado el momento, ayude al héroe.\r\n</p><p>\r\nPero ¿quién es este héroe formidable? Ni más ni menos que Bron, hijo del jefe de la tribu de enanos gullys de Bulp.\r\n</p><p>\r\nCon la ayuda de Verden Brillo de Hoja, Bron deberá mostrar su valía como el primer héroe aghar cuando los enanos gullys se vean atrapados en los conflictos que siguen a la Guerra de la Lanza.\r\n'),
(377, 'Gilthas, Orador de los Soles', 334, 1, 0, 58, NULL, 'Habitación Pablo', 'D', 21, '1491292.jpeg', '2021-05-20 18:18:42', '\"Porthios está a punto de acabar con los seres malignos que se instalaron en Silvanesti. Sólo queda la isla del delta de Thon-Thalas, una campaña aparentemente sencilla. Pero sus tropas caen en una emboscada mortal y tras el fracaso, los senadores reaccionarios de las dos naciones élficas le acusan de traidor. Es proscrito y se convierte en un elfo oscuro que regresará a su país natal para organizar una rebelión contra el Thalas-Enthia y el nuevo Orador de los Soles, su joven sobrino Gilthas. Gilthas se enfrenta a múltiples problemas: los senadores elfos pretenden manejarlo como una marioneta, los Dragones Azules y los Caballeros de Thakhisis se proponen invadir Qualinesti, y ahora tiene además Porthios en su contra.\"'),
(378, 'El Último Thane', 288, 1, 1, 58, NULL, 'Habitación Pablo', 'D', 21, '23204895.jpeg', '2021-05-20 18:20:37', 'Durante generaciones, los clanes inferiores de Thorbardin han odiado a los hylars, los gobernadores ancestrales del vasto reino subterráneo. Ahora, el ejército hylar se ha alejado para enfrentarse a los Caballeros de Takhisis y los enanos oscuros ven llegada su oportunidad. Asediados en su fortaleza, el Árbol de la Vida, los hylars luchan por sobrevivir. Magia y locura les acechan por todos lados, mientras que los theiwars, los daergars y los kiars insisten en su ataque, sedientos de sangre. Las fuerzas del Caos se unen a la batalla contra los enanos, y las esperanzas se desvanecen cuando los hylars han de enfrentarse a la traición suprema y ven aparecer el espectro de la perdición definitiva de Thorbardin.'),
(379, 'Los Dragones', 331, 1, 0, 58, NULL, 'Habitación Pablo', 'D', 21, 'Los-Dragones-350x525.jpeg', '2021-05-20 18:22:34', '<i>Cuando los dragones hacen la guerra, a Krynm  sólo le queda temblar bajo la sombra de sus alas enfurecidas</i>'),
(380, 'El Guardián Invisible', 433, 1, 1, 45, NULL, 'Habitación Pablo', 'D', 24, '17238220.jpeg', '2021-06-14 23:07:52', '«Ainhoa Elizasu fue la segunda víctima del basajaun, aunque entonces la prensa todavía no lo llamaba así. Fue un poco más tarde cuando trascendió que alrededor de los cadáveres aparecían pelos de animal, restos de piel y rastros dudosamente humanos, unidos a una especie de fúnebre ceremonia de purificación. Una fuerza maligna, telúrica y ancestral parecía haber marcado los cuerpos de aquellas casi niñas con la ropa rasgada, el vello púbico rasurado y las manos dispuestas en actitud virginal.» En los márgenes del río Baztán, en el valle de Navarra, aparece el cuerpo desnudo de una adolescente en unas circunstancias que lo ponen en relación con un asesinato ocurrido en los alrededores un mes atrás. La inspectora de la sección de homicidios de la Policía Foral, Amaia Salazar, será la encargada de dirigir una investigación que la llevará devuelta a Elizondo, una pequeña población de donde es originaria y de la que ha tratado de huir toda su vida. Enfrentada con las cada vez más complicadas derivaciones del caso y con sus propios fantasmas familiares, la investigación de Amaia es una carrera contrarreloj para dar con un asesino que puede mostrar el rostro más aterrador de una realidad brutal al tiempo que convocar a los seres más inquietantes de las leyendas del Norte'),
(381, 'Legado en los Huesos', 549, 1, 1, 45, NULL, 'Habitación Pablo', 'D', 24, '18741291.jpeg', '2021-06-14 23:09:31', 'Más emoción, más tensión, más revelaciones en la esperada segunda entrega de la trilogía del Baztán.\r\nEl juicio contra el padrastro de la joven Johana Márquez está a punto de comenzar. A él asiste una embarazada Amaia Salazar, la inspectora de la Policía Foral que un año atrás había resuelto los crímenes del llamado basajaun, que sembraron de terror el valle del Baztán. Amaia también había reunido las pruebas inculpatorias contra Jasón Medina, que imitando el modus operandi del basajaun había asesinado, violado y mutilado a Johana, la adolescente hija de su mujer. De pronto, el juez anuncia que el juicio debe cancelarse: el acusado acaba de suicidarse en los baños del juzgado. Ante la expectación y el enfado que la noticia provoca entre los asistentes, Amaia es reclamada por la policía: el acusado ha dejado una nota suicida dirigida a la inspectora, una nota que contiene un escueto e inquietante mensaje: «Tarttalo». Esa sola palabra que remite al personaje fabuloso del imaginario popular vasco destapará una trama terrorífica que envuelve a la inspectora hasta un trepidante final.'),
(382, 'Ofrenda a la Tormenta', 543, 1, 1, 45, NULL, 'Habitación Pablo', 'D', 24, '23002631.jpeg', '2021-06-14 23:10:40', 'El esperadísimo final de la Trilogía del Baztán, un éxito que ya ha cautivado a más de 200.000 lectores. Nunca lo habrías imaginado.\r\n\r\nUna mujer denuncia que la muerte súbita de su nieta, oficialmente una muerte de cuna, le parece sospechosa tras el comportamiento extraño del padre de la niña, que ha sido detenido cuando intentaba robar el cadáver pronunciando palabras inconexas acerca de entregar a su propia hija. El bebé tiene unas marcas rojizas en el rostro que indican que ha habido presión y parece claro que ha sido asesinada. La abuela de la pequeña habla de una criatura mágica de la zona, un ser maléfico, causante de las pesadillas que producen en el durmiente una inmovilización que les impide despertar. Se trata del inguma, el ser que arrebata la vida durante el sueño. La investigación de este caso llevará a Amaia y a su equipo a descubrir algunas irregularidades en casos parecidos que se produjeron en el valle en el pasado, demasiados casos en una zona relativamente pequeña.\r\nY entonces, trasladado por orden del juez Marquina, el asesino Berasategui aparece muerto en su celda, tras un coma inducido por una droga que alguien ha tenido que facilitarle.'),
(383, 'Corrupción Policial', 572, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 24, '35481490.jpg', '2021-06-14 23:12:20', 'Denny Malone es «el rey de Manhattan Norte», un condecorado sargento del Departamento de Policía de Nueva York y el auténtico líder de «La Unidad». Malone y sus hombres son los más listos, los más duros, los más rápidos, los más valientes, los más malos… y lo más corruptos.Ahora su corrupción está a punto de salir a la luz y Malone se verá obligado a transitar por la delgada línea que separa la traición a todo aquello en lo que cree y su propia supervivencia. Ahora, Denny Malone deberá decidir de una vez por todas qué significa ser un buen policía.'),
(384, 'El Cártel', 694, 1, 1, 44, NULL, 'Habitación Pablo', 'D', 24, '26857900.jpg', '2021-06-14 23:14:07', 'El cártel es una colosal narración que se mueve entre los áridos escenarios mexicanos y los despachos de los poderosos en Washington, y que se extiende hasta ciudades europeas como Berlín y Barcelona. El absorbente trabajo de documentación de Winslow (libros, prensa, fotos, vídeos, encuentros personales...) le ocupó cinco años, y marcó su vida personal por las implicaciones que acarrea adentrarse en un mundo tan increíblemente violento y corrupto.\r\n«El periodismo te proporciona los datos, pero la ficción te cuenta la verdad», confesó Don Winslow en una entrevista. Aunque El cártel sea ficción, muchos de los asesinatos, torturas y actuaciones policiales que se describen en el libro se basan en hechos reales, ocurridos sobre todo entre los años 2000 y 2011'),
(385, 'La Frontera', 951, 1, 1, 44, NULL, 'Habitación Pablo', 'D', 24, '43313823.jpg', '2021-06-14 23:15:30', '¿Qué haces cuando ya no hay fronteras? ¿Cuándo las líneas que creías que existían sencillamente se han esfumado? ¿Cómo te mantienes de pie cuando ya no sabes realmente de qué lado estás? La guerra ha llegado a casa.\r\n</p><p>\r\nHace cuarenta años que Art Keller está en primera línea de fuego del confl icto más largo de la historia de EE.UU.: la guerra contra la droga. Su obsesión por derrotar al capo más poderoso, rico y letal del mundo —el líder del cártel de Sinaloa, Adán Barrera— le ha costado cicatrices físicas y mentales, tener que despedir a personas a las que amaba e incluso se ha llevado parte de su alma. Ahora Keller se encuentra a los mandos de la DEA solo para ver como por destruir al monstruo han surgido otros treinta que están llevando incluso más caos y destrucción a su amado México. Pero eso no es todo.\r\n</p><p>\r\nEl legado de Barrera es una epidemia de heroína que está asolando EE.UU. Keller se lanza de cabeza a frenar este flujo mortal pero se encontrará rodeado de enemigos, personas que quieren matarle, políticos que quieren destruirle y aún peor: una administración entrante que comparte lecho con los traficantes de drogas que él quiere destruir.'),
(386, 'Los Reyes de lo Cool', 334, 1, 0, 47, NULL, 'Habitación Pablo', 'D', 24, '17350439.jpeg', '2021-06-14 23:17:16', 'En Salvajes, Don Winslow nos presentaba a Ben y a Chon, dos amigos capaces de arriesgarlo todo para salvar a O[felia], su chica multiorgásmica, a quien aman al extremo. Salvajes fue, sin duda, uno de los thrillers más trepidantes de los últimos años; prueba de ello es que el oscarizado director de cine Oliver Stone no dudó en comprar los derechos y adaptarla al cine.\r\n</p><p>\r\nEn Los reyes de lo cool, la precuela de Salvajes , Don Winslow recupera los personajes de aquella novela para reconstruir su pasado, y nos transporta a una California casi mítica en la que somos testigos de los orígenes del tráfico de drogas y sus conexiones con los cárteles de la droga mexicanos.Estamos en 2005. Ben, Chon y O viven a tope en Laguna Beach, al sur de California. Aparte de disfrutar del sexo, las cervezas y el voleibol, no saben muy bien qué hacer con sus vidas. Hasta el día en que Chon vuelve de permiso de Afganistán con una semilla de Viuda Blanca y la clave de su futuro. La Viuda Blanca es una variedad de cannabis tan exquisita y cargada de THC que es solo cuestión de tiempo que su negocio de cultivo y venta de marihuana florezca. También es solo cuestión de tiempo que empiecen los problemas.'),
(387, 'Rotos', 476, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 24, '52195470.jpg', '2021-06-14 23:19:46', 'En estas seis inquietantes e intensas novelas cortas, Don Winslow regresa a los temas que se han convertido en su sello: el crimen, la corrupción, la venganza, la justicia, la pérdida, la traición, la culpa y la redención, para explorar el lado más salvaje pero también el más noble de la naturaleza humana.\r\n</p><p>\r\nDesde Nueva Orleans a Hawái, cada una de estas historias es sin duda Winslow en estado puro: perspicaces, humanas, con humor y drama y, sobre todo, con el consumado arte literario del autor.'),
(388, 'El Poder del Perro', 719, 1, 1, 44, NULL, 'Habitación Pablo', 'D', 24, '30160757.jpg', '2021-06-14 23:21:22', 'Cuando su compañero aparece muerto con signos de haber sido torturado por la mafia de la droga, el agente de la DEA Art Keller, emprende una feroz venganza. Encadenados a la misma guerra, se encuentran una hermosa prostituta de alto standing; un cura católico confidente de esta y empeñado en ayudar al pueblo, y Billy «el Niño» Callan, un chico taciturno convertido por azar en asesino a sueldo. Narcovaqueros, campesinos, mafia al puro estilo italoamericano, policías corruptos, un soplón y un santo milagrero conforman el universo de esta historia de traiciones, frustración, amor, sexo y fe sobre la búsqueda de la redención'),
(389, 'Tierra Firme', 239, 1, 1, 63, NULL, 'Habitación Pablo', 'D', 24, '4912832.jpeg', '2021-06-15 09:33:39', 'Nada podía hacer sospechar a Catalina Solís cuando embarcó en la flota española de Los Galeones con destino al Caribe, que al otro lado del océano encontraría un Nuevo Mundo plagado de peligros y desafíos. Para salvar su vida, la joven tendrá que adoptar la personalidad de su hermano Martín Nevares, muerto durante un abordaje de los piratas ingleses a su galera. Después de dos años en una isla desierta y haciéndose pasar por Martín se convertirá en Martín Ojo de Plata, uno de los muchos contrabandistas que surcaban los mares a principios del siglo XVII.'),
(390, 'La Conjura de Cortés', 366, 1, 0, 63, NULL, 'Habitación Pablo', 'D', 24, '15710145.jpeg', '2021-06-15 09:35:47', 'La conjura de Cortés culmina el recorrido de Matilde Asensi por el Siglo de Oro español, visto esta vez desde la Nueva España. Una manera de contemplar la historia que le ha hecho acreedora del reconocimiento de los lectores y la crítica, y que, cómo no, está plagada de intrigas, corrupción, aventuras e imaginación.\r\n</p><p>\r\nEn esta novela, Catalina se ve obligada a desenmascarar una gran conjura ideada por sus enemigos para derrocar al rey de España. La aparición de un mapa que desvela dónde encontrar el legendario tesoro de Hernán Cortés desempeñará un papel clave en el plan de Catalina para descubrir a los traidores y cumplir su palabra de acabar con los Curvo.\r\n</p><p>\r\nLa doble personalidad de Catalina Solís/Martín Nevares se enfrentará además a un grave peligro para su equilibrio: el amor. Una vez más, Matilde Asensi sorprenderá a sus lectores con un final inesperado.'),
(391, 'Imprimatur', 631, 1, 1, 72, NULL, 'Habitación Pablo', 'D', 24, '1242145.jpeg', '2021-06-15 09:47:35', 'Imprimatur é um thriller histórico apaixonante, de grande intensidade detectivesca, que veio agitar o universo literário europeu pelo efeito sísmico que as suas revelações – corroboradas por documentos históricos – produziram. Esta obra lança uma nova luz sobre a nossa visão de um dos séculos mais ricos da história da Europa, e sobre as personalidades de muitos daqueles que o protagonizaram. Os efeitos das suas acções mais secretas alteraram para sempre a fisionomia do Velho Continente e iriam perdurar até aos nossos dias. Passados três longos séculos, emerge finalmente à claridade do dia um dos segredos mais bem guardados da história...'),
(392, 'Veritas', 713, 1, 0, 72, NULL, 'Habitación Pablo', 'D', 24, '1112.jpeg', '2021-06-15 09:51:51', 'Viena, 1711. Hace ya diez años que Europa está en guerra. El abad Atto Melani -ex castrati, diplomático y espía preferido de Luis XIV, El Rey Sol- llama a Viena a sus confidentes para encomendarles una enigmática misión de apoyo del joven káiser José I, tras recibir la noticia de que una terrible traición pondrá punto y final al conflicto bélico. Para sorpresa de todos, una delegación de sultanes otomanos llega a la ciudad para unirse a Melani y los suyos. ¿Qué esconde esa inesperada visita? ¿Está en peligro la paz reinante entre el Imperio austríaco y el otomano? El abad y sus colaboradores no tardarán en descubrir la existencia de una lucha de poder centenaria que pretende acabar en un asesinato. El cometido de Melani será mantenerse ecuánime para descubrir la verdad y esclarecer la lucha de manera que las fuerzas del bien salgan victoriosas. Veritas es la tercera entrega de la serie. Las dos primeras Imprimatur y Secretum. fueron publicadas en 2004 y 2006,');
INSERT INTO `libro` (`id`, `titulo`, `paginas`, `idioma`, `leido`, `coleccion`, `saga`, `ubicacion`, `estanteria`, `balda`, `portada`, `fecha`, `sinopsis`) VALUES
(393, 'Peregrinatio', 127, 1, 1, 73, NULL, 'Habitación Pablo', 'D', 24, '4177201.jpeg', '2021-06-15 09:54:43', 'Año de 1324. El ex caballero hospitalario Galcerán de Born, el Perquisitore, preocupado ante las noticias que recibe acerca de la conducta inapropiada de su hijo, Jonás, y de su disoluta vida en la corte de Barcelona, decide enviarle una misiva que contiene órdenes muy precisas para el joven y se convertirá en su Liber peregrinationis.\r\n</p><p>\r\nAcompañado por un caballero de Cristo (antiguos templarios), Jonás de Born iniciará una nueva andadura en su vida: prestará el solemne juramento de la caballería iniciática, convirtiéndose así en gentilhombre y adalid de la antigua Sabiduría y el Conocimiento. Para ello, recorrerá el Camino de Santiago o de la Gran Perdonanza, como un peregrino más, descubrirá toda la magia y el simbolismo que se encuentran en la ruta, reflexionará larga y seriamente sobre su futuro e irá cumpliendo, uno a uno, todos los rituales de su iniciación.'),
(394, 'Iacobus', 312, 1, 1, 73, NULL, 'Habitación Pablo', 'D', 24, '9571315.jpeg', '2021-06-15 09:56:08', 'Mitad moje mitad soldado, reconocido médicoy erudito, el caballero Galcerán de Born es el hombre idóneo para moverse en las más peligrosas situaciones y, haciendo honor a su apodo de Perquisitore, lograr su objetivo. La delicada misión que le confiará el papa Juan XXII pondrá a prueba de nuevo su sagacidad: averiguar quién mueve los hilos de un temible complot que amenaza con cambiar el mapa político de la cristiandad.'),
(395, 'Todo Bajo el Cielo', 457, 1, 0, NULL, NULL, 'Habitación Pablo', 'D', 24, '6567692.jpeg', '2021-06-15 09:57:51', 'Elvira, una pintora española afincada en París, recibe la noticia de que su marido ha muerto en su casa de Shanghai. Acompañada por su sobrina, parte desde Marsella en barco para recuperar el cadáver de Rémy sin imaginarse la gran aventura que la espera. </p><p> Cuando al fin pisan tierra firme, después de una travesía interminable, comienza para Elvira y Fernanda la mayor peripecia que nunca hubieran imaginado vivir. Sin tiempo para reaccionar, se verán perseguidas por los eunucos imperiales y los sicarios de la Banda Verde, que quieren robarles el cofre de las cien joyas. </p><p> Huyen en un viaje apasionante por el corazón de China hasta Xi\'an, donde, con la ayuda del anticuario Lao Jiang, la sabiduría oriental del maestro Jade Rojo y la inteligencia de Biao, podrán descifrar las claves y superar las arriesgadas pruebas para encontrar la tumba del Primer Emperador y la última pieza del secreto mejor guardado de la historia de la humanidad.'),
(396, 'El Último Catón', 489, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 24, '361939.jpeg', '2021-06-15 09:59:24', 'Bajo el suelo de la Ciudad del Vaticano, encerrada entre códices en su despacho del Archivo Secreto, la hermana Ottavia Salina, paleógrafa de prestigio internacional, recibe el encargo de descifrar unas extrañas escarificaciones aparecidas en el cadáver de un etíope: siete letras griegas y siete cruces. Junto al cuerpo se encontraron tres trozos de madera aparentemente sin valor. Todas las sospechas van encaminadas a que esos pedazos pertenecen, en realidad, a la Vera Cruz, la verdadera cruz de Cristo. Acompañada por el profesor Boswell, un Arqueólogo de Alejandría y por el capitán de la Guardia Suiza Vaticana, Kaspar Glauser-Röist, la protagonista deberá descubrir quién está detrás de la misteriosa desaparición de las reliquias en la iglesias de todo el mundo y vivirá una aventura llena de enigmas: siete pruebas basadas en los siete pecados capitales en las que Dante Alighieri y el Purgatorio de \"La Divina Comedia\" parecen tener las claves. Unas pruebas que les llevarán a siete ciudades (desde Roma a Antioquía, pasando por Rávena, Atenas, Jerusalén, Constantinopla y Alejandría) en un arriesgado y emocionante itinerario en el que tratarán de averiguar quién es el último Catón'),
(397, 'Tarzán de los Monos', 337, 1, 0, 49, NULL, 'Habitación Pablo', 'D', 22, '8653823.jpeg', '2021-06-15 10:07:48', 'Al morir sus padres en la jungla africana, Tarzán es criado por Kala, una joven gorila, como si fuera uno más de la manada. Tras el encuentro con seres humanos, viaja a Inglaterra y recupera lo que le pertenece: un nombre -sir John Clayton-, una vasta hacienda, y un título, el de conde de Greystoke. Pero, realmente, siempre será un hombre a caballo entre la civilización y la selva'),
(398, 'El Príncipe y el Méndigo', 281, 1, 0, 49, NULL, 'Habitación Pablo', 'D', 22, '27073689.jpeg', '2021-06-15 10:09:21', 'En principio, El príncipe y el mendigo estaba pensado para un público infantil, y el propio Twain quiso probar la eficacia del manuscrito leyéndoselo a sus hijas. Y, en efecto, la historia del muchacho pobre que se convertía en rey, mientras el verdadero príncipe aprendía humildad y misericordia entre la gente miserable, podía haber sido una de las invenciones que Tom Sawyer contaba a sus amigos. Pero Mark Twain no quiso quedarse ahí. En esta obra pueden rastrearse algunas de las preocupaciones constantes del autor, tales como la superioridad de la democracia sobre los caducos regímenes antiguos, o su obsesión por el parecido y el desdoblamiento de personalidad.'),
(399, 'Estudio en Escarlata', 173, 1, 1, 49, NULL, 'Habitación Pablo', 'D', 22, '17612121.jpeg', '2021-06-15 10:13:15', 'Estudio en escarlata es la primera obra de Arthur Conan Doyle en la que aparece Sherlock Holmes, no sólo el detective más famoso de la realidad y la ficción de todos los tiempos, sino uno de los personajes más entrañables, populares e imperecederos de la literatura.\r\n</p><p>\r\nUn cadáver hallado en extrañas circunstancias en una casa deshabitada provoca que los agentes de policía de Scotland Yard se pierdan en divagaciones equivocadas. Y, por si fuera poco, un nuevo asesinato parece complicar aún más la historia. Para resolver el misterio, habría que remontarse en el tiempo a otros asesinatos ocurridos hace 30 años en la ciudad mormona de Salt Lake City...'),
(400, 'Un Yanqui en la Corte del Rey Arturo', 405, 1, 0, 49, NULL, 'Habitación Pablo', 'D', 22, '10752544.jpeg', '2021-06-15 10:15:00', 'Cuando Hank recobra el conocimiento, el calendario ha retrocedido varios siglos. Se encuentra prisionero en la Corte del rey Arturo y con un porvenir nada alegre: morir en la hoguera. Echando mano de sus conocimientos predice un eclipse que causa terror entre la gente y le permite escapar. Sus peripecias, motivo de reflexión acerca de la sociedad y la justicia, son el argumento de esta sátira sobre la Inglaterra feudal.'),
(401, 'Viaje al Centro de la Tierra', 259, 1, 1, 49, NULL, 'Habitación Pablo', 'D', 22, '22917615.jpg', '2021-06-15 10:17:12', 'El obstinado profesor Lidenbrock descifra un criptograma del alquimista Arne Saknussemm y llega a la conclusión de que es posible viajar al centro de la Tierra. Por el cráter de un volcán apagado desciende junto a su escéptico sobrino Axel, y Hans Bjelke, un impertubable guía. Su esfuerzo y su coraje son tan grandes como la perplejidad que sienten ante abismos, mares de lava, rebaños de mastodontes o vegetación antediluviana.'),
(402, 'El Fantasmde Canterville', 165, 1, 0, 49, NULL, 'Habitación Pablo', 'D', 22, '10409366.jpg', '2021-06-15 10:21:29', 'This is Oscar Wilde\'s tale of the American family moved into a British mansion, Canterville Chase, much to the annoyance its tired ghost. The family -- which refuses to believe in him -- is in Wilde\'s way a commentary on the British nobility of the day -- and on the Americans, too. The tale, like many of Wilde\'s, is rich with allusion, but ends as sentimental romance. . .'),
(403, 'La Flecha Negra', 293, 1, 1, 49, NULL, 'Habitación Pablo', 'D', 22, '10257544.jpg', '2021-06-15 10:27:18', 'Inglaterra, mediados del siglo xv. En pleno estallido de la guerra de las Dos Rosas, que enfrenta a las casas de York y Lancaster, la hermandad de proscritos de la Flecha Negra atenta contra los poderosos. En medio de este tumulto, el joven Richard Shelton aspira a convertirse en caballero bajo la tutela del oscuro sir Daniel Brackley, defensor de la causa Lancaster. El azar quiere que en su camino se cruce John Matcham, que desea desesperadamente huir del cautiverio de Brackley. Cuando se descubra que el aguerrido John es, en realidad, la bella Joanna Sedley, Richard y la hermandad de la Flecha Negra se unirán en una cruzada para liberarla y quizá sellar, mediante el amor, el odio entre dos familias.'),
(404, 'De la Tierra a la Luna', 219, 1, 1, 49, NULL, 'Habitación Pablo', 'D', 22, '10752621.jpeg', '2021-06-15 10:28:30', 'El Gun-Club, centro de investigación de armamento, se ha quedado estancado tras la guerra de Secesión. Por tanto, apoyan el innovador proyecto de¡ profesor Barbicane para lanzar un cohete al espacio. Por desgracia, la nave, tripulada además por el aventurero francés Ardan y por el norteamericano Nicholl -que tiene muchas dudas sobre el éxito de la empresa- queda girando alrededor de la Luna, por alguna extraña causa.'),
(405, 'El Prisionero de Zenda', 204, 1, 0, 49, NULL, 'Habitación Pablo', 'D', 22, '9369408.jpeg', '2021-06-16 10:49:30', 'Rudolf Rassemdyll guarda un extraordinario parecido físico con el rey de Ruritania, un reino mítico. Los conspiradores conocen esta coincidencia y le obligan a hacerse pasar por él. De la suplantación resultan dos consecuencias: se enamora perdidamente de Flavia y se ve envuelto en refriegas de capa y espada, en las que tendrá que demostrar su valor y su lealtad al verdadero monarca'),
(406, 'E Mago de Oz', 157, 1, 0, 49, NULL, 'Habitación Pablo', 'D', 22, '8487501.jpeg', '2021-06-16 10:53:49', 'Dorothy se llevó el sobresalto más grande de su vida cuando un ciclón la arrastró, con casa y todo, hasta el país de Oz. La suerte fue que al caer mató a la Bruja Mala, por lo que pasó de tener una aburrida existencia en Arkansas, junto a sus tíos, a recorrer un mundo prodigioso. Camino de la Ciudad Esmeralda conoce al Espantapájaros en busca de cerebro, al Leñador que necesita un corazón y al León Cobarde empeñado en dejar de serlo'),
(407, 'Scaramouche', 405, 1, 0, 49, NULL, 'Habitación Pablo', 'D', 22, '24827322.jpeg', '2021-06-16 10:57:02', 'A finales de 1788, toda Francia era terreno abonado para la revolución, pero solo unos pocos hombres podían esparcir la simiente capaz de hacerla brotar. Uno de ellos, Philippe de Vilmorin, joven seminarista educado en los nuevos ideales, es asesinado en duelo desigual por el marqués de La Tour d\'Azyr por denunciar el despotismo de las clases privilegiadas y por poseer el peligroso don de la elocuencia. Ante el cuerpo sin vida de su amigo, André-Louis Moreau, abogado pragmático y poco dado a la defensa enardecida de ninguna idea, jura extender por todo el país la voz que el aristócrata quiso acallar con la muerte. </p><p> Acusado de sedición, entra a formar parte de una compañía de cómicos de la lengua. Su mordacidad y talento en los escenarios le harán triunfar tanto sobre las tablas, oculto bajo la máscara de Scaramouche, como en la Asamblea, donde será el paladín del Tercer Estado.'),
(408, 'Capitanes Intrépidos', 164, 1, 0, 49, NULL, 'Habitación Pablo', 'D', 22, '8655567.jpeg', '2021-06-16 10:58:37', 'Harvey Cheyne -hijo de un multimillonario- viaja con su madre en un lujoso transatlántico hacia Europa para recibir una refinada educación. En la travesía cae al mar y es recogido por una goleta que se dirige a los bancos de bacalao. Al cabo de tres meses de duro trabajo en el barco, de niño egoísta y consentido pasa a ser un buen compañero y un curtido pescador.'),
(409, 'Sandokan', 185, 1, 1, 49, NULL, 'Habitación Pablo', 'D', 22, '28446220._SX318_.jpg', '2021-06-16 11:00:29', 'Sandokán, conocido por su audacia como el Tigre de Malasia, se enfrentará a mil peligros en su lucha por devolver a su pueblo lo que los colonos le quitaron. Gracias a su fortaleza, y con la ayuda de su fiel amigo Yáñez y su tripulación pirata, será capaz de salir victorioso de las aventuras más increíbles.'),
(410, 'El Último Mohicano', 429, 1, 0, 49, NULL, 'Habitación Pablo', 'D', 22, '10790611.jpeg', '2021-06-16 11:03:32', 'El contraste entre la codicia y la traición de Magua, la ingenuidad de Cora y Alicia y el código estricto, honorable -y a veces cruel- de los mohicanos Uncas y Chingachgook, aflora en esta historia que discurre durante los enfrentamientos entre ingleses y franceses por el control del nuevo continente. Ojo de Halcón, un blanco criado por un pueblo indígena cuyas normas permiten matar y arrancar la cabellera de sus enemigos, es capaz sin embargo de experimentar sentimientos de compasión.'),
(411, 'El Conde de Montecristo (I)', 749, 1, 1, 49, NULL, 'Habitación Pablo', 'D', 22, '8339045.jpeg', '2021-06-16 11:07:22', 'Edmond Dantés, un joven marino, es arrestado el día de su boda y conducido al castillo de If, donde permanece catorce años -sin saber nunca la razón de su confinamiento- hasta que logra evadirse gracias a un viejo enemigo de Napoleón, el abate Faria. De él hereda sus conocimientos y un tesoro escondido en la isla de Montecristo. Convertido en un conde rico, influyente y enigmático, vuelve a París para consumar su venganza.'),
(412, 'El Conde de Montecristo (II)', 693, 1, 1, 49, NULL, 'Habitación Pablo', 'D', 22, '24394902.jpeg', '2021-06-16 11:09:45', '<i>Hay algo de cierto en eso, Morrel. He descendido de un planeta que se llama dolor</i>. La aterradora venganza de Edmond Dantés alcanza a todos aquellos que, con una falsa acusación, lograron que pasara en prisión catorce años de su vida. Pero los remordimientos no le dejan disfrutar del triunfo. El éxito de esta novela, publicada por entregas, se amplió con la versión teatral que el propio Dumas realizó.'),
(413, 'El Rojo Emblema del Valor', 196, 1, 0, 49, NULL, 'Habitación Pablo', 'D', 22, '20890944.jpeg', '2021-06-16 11:11:40', 'Henry Fleming has joined the Union army because of his romantic ideas of military life, but soon finds himself in the middle of a battle against a regiment of Confederate soldiers. Terrified, Henry deserts his comrades. Upon returning to his regiment, he struggles with his shame as he tries to redeem himself and prove his courage.'),
(414, 'Adiós. Muñeca', 285, 1, 0, 74, NULL, 'Habitación Pablo', 'D', 22, '6604702._SY475_.jpg', '2021-06-16 15:15:59', 'Un nuevo caso llega a las manos de Philip Marlowe: ha de encontrar a la novia de un matón recién salido de la cárcel. Aun cuando cree que el encargo es de poca monta, las cosas se complican cuando la joven decide casarse con un anciano cargado de millones. Muertes violentas y policías corruptos de Los Ángeles se cruzarán en su camino, así como los inolvidables Malloy el gigante, Geiger el pornógrafo y Velma Valente. Fue llevada al cine y Robert Mitchum encarnó al investigador.'),
(415, 'El Tercer Homber', 140, 1, 0, 74, NULL, 'Habitación Pablo', 'D', 22, '6605247.jpeg', '2021-06-16 15:17:19', 'Rollo Martins\' usual line is the writing of cheap paperback Westerns under the name of Buck Dexter. But when his old friend Harry Lime invites him to Vienna, he jumps at the chance. With exactly five pounds in his pocket, he arrives only just in time to make it to his friend\'s funeral. The victim of an apparently banal street accident, the late Mr. Lime, it seems, had been the focus of a criminal investigation, suspected of nothing less than being \"the worst racketeer who ever made a dirty living in this city.\" Martins is determined to clear his friend\'s name, and begins an investigation of his own..'),
(416, 'El Signo de los Cuatro', 156, 1, 0, 74, NULL, 'Habitación Pablo', 'D', 22, '7803988.jpeg', '2021-06-16 15:19:08', 'La hermosa perla que se envía por correo anualmente y en la misma fecha, misteriosas cartas, un curioso testamento, un crimen, una traición y un tesoro perdido que pasa de unas manos a otras, aprietan el retorcido nudo de Sherlock Colmes ha de desatar, a base de su infalible espíritu científico y deducción, donde el azar no tiene cabida.'),
(417, 'El Misterio del Cuarto Amarillo', 237, 1, 0, 74, NULL, 'Habitación Pablo', 'D', 22, '6605677.jpeg', '2021-06-16 15:20:28', 'En la residencia del profesor Stangerson se oyen gritos, tiros y golpes de muebles que se vuelcan. Su hija aparece sola, gravemente herida, cuando echan abajo la puerta de su habitación cerrada desde el interior. Ni rastro del criminal. Si no existe otra salida y si la ventana está asegurada por barrotes, ¿por dónde ha escapado? La inteligencia y la intuición del joven Joseph Rouletabille, mitad detective, mitad periodista, resolverá el enigma'),
(418, 'El Caso del Canario Asesinado', 301, 1, 0, 74, NULL, 'Habitación Pablo', 'D', 22, '48990715.jpeg', '2021-06-16 15:24:30', 'Una bella bailarina de cabaré, Margaret Odell, conocida como La Canario, aparece asesinada dentro de un piso cerrado. Es un caso para el ingenioso Philo Vance, hombre acaudalado y buen aficionado al arte, que ayuda al fiscal del distrito y a la policía en sus ratos libres.'),
(419, 'El Martillo Azul', 299, 1, 0, 74, NULL, 'Habitación Pablo', 'D', 22, '6607118.jpeg', '2021-06-16 15:26:06', 'A sus 60 años, el detective Lew Archer ya no es lo que se dice un hombre de acción. Sus armas son la escucha, la inteligencia y la sensibilidad. El caso que ha de resolver con tan sosegadas técnicas gira en torno a un cuadro robado –el retrato de una hermosa mujer–, pero lo que le interesa realmente es comprender la complejidad de los conflictos humanos.'),
(420, 'El Secuestro de Miss Blandish', 221, 1, 0, 74, NULL, 'Habitación Pablo', 'D', 22, '7803982.jpeg', '2021-06-16 15:27:42', 'Ladrones de bancos, policías corruptos de mentes sádicas, una rica heredera secuestrada y proclive a enamorarse, drogas, perversiones sexuales, y, por encima de todo, Slim Grisson, un psicópata asesino. Este tenebroso rompecabezas llegó a las manos de Robert Aldrich que se encargó de filmar las andanzas de Ma Grisson, una madre perversa, y su banda. El secuestro de miss Blandish, primera novela del autor, fue redactada en pocas semanas y le dio la fama instantáneamente.'),
(421, 'Por el Pasado Llorarás', 397, 1, 0, 74, NULL, 'Habitación Pablo', 'D', 22, '9475873.jpeg', '2021-06-16 15:28:56', '\"<i>Aquella era la primera noche que Jimmy Monroe, el preso número 57232, pasaba en el dormitorio común. Todo era extraño; todo le resultaba extraño</i>\". Novela autobiográfica escrita después de cumplir condena por robo a mano armada, en la que el autor cuenta, con maneras descarnadas y cierto lirismo, cómo el paso por el sistema penitenciario estuvo a punto de quebrantar su salud mental y romper, para siempre, el concepto del amor que tanto había sublimado'),
(422, 'Juego de Tronos (I)', 373, 1, 1, 71, 19, 'Habitación Pablo', 'D', 22, '1453612.jpeg', '2021-06-16 15:31:25', 'Tras el largo verano, el invierno se acerca a los Siete Reinos. Lord Eddard Stark, señor de Invernalia, deja sus dominios para unirse a la corte del rey Robert Baratheon el Usurpador, hombre díscolo y otrora guerrero audaz cuyas mayores aficiones son comer, beber y engendrar bastardos. Eddard Stark desempeñará el cargo de Mano del Rey e intentará desentrañar una maraña de intrigas que pondrá en peligro su vida... y la de los suyos. En un mundo cuyas estaciones duran décadas y en el que retazos de una magia inmemorial y olvidada surgen en los rincones más sombrios y maravillosos, la traición y la lealtad, la compasión y la sed de venganza, el amor y el poder hacen del juego de tronos una poderosa trampa que atrapa en sus fauces a los personajes... y al lector.'),
(423, 'Danza de Dragones (I)', 370, 1, 1, 71, 19, 'Habitación Pablo', 'D', 22, '15761880.jpeg', '2021-06-16 15:32:59', 'Daenerys Targaryen intenta mitigar el rastro de sangre y fuego que deja en las Ciudades Libres e intenta erradicar la esclavitud en Meereen. Mientras, un enano parricida, un príncipe de incógnito, un capitán implacable y un enigmático caballero acuden a la llamada de los dragones desde el otro lado del mar Angosto, ajenos al peligro que se cierne sobre el Norte, y que sólo las menguadas huestes de uno de los reyes en discordia y la Guardia de la Noche se aprestan a afrontar.'),
(424, 'Danza de Dragones (II)', 375, 1, 1, 71, 19, 'Habitación Pablo', 'D', 22, '15761880.jpeg', '2021-06-16 15:33:53', 'Daenerys Targaryen intenta mitigar el rastro de sangre y fuego que deja en las Ciudades Libres e intenta erradicar la esclavitud en Meereen. Mientras, un enano parricida, un príncipe de incógnito, un capitán implacable y un enigmático caballero acuden a la llamada de los dragones desde el otro lado del mar Angosto, ajenos al peligro que se cierne sobre el Norte, y que sólo las menguadas huestes de uno de los reyes en discordia y la Guardia de la Noche se aprestan a afrontar.'),
(425, 'Danza de Dragones (III)', 358, 1, 1, 71, 19, 'Habitación Pablo', 'D', 22, '15761880.jpeg', '2021-06-16 15:34:39', 'Daenerys Targaryen intenta mitigar el rastro de sangre y fuego que deja en las Ciudades Libres e intenta erradicar la esclavitud en Meereen. Mientras, un enano parricida, un príncipe de incógnito, un capitán implacable y un enigmático caballero acuden a la llamada de los dragones desde el otro lado del mar Angosto, ajenos al peligro que se cierne sobre el Norte, y que sólo las menguadas huestes de uno de los reyes en discordia y la Guardia de la Noche se aprestan a afrontar.'),
(426, 'El Clan del Oso Cavernario', 588, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '8469915.jpeg', '2021-06-16 15:39:52', 'Ayla, una niña Cro-Magnon de cinco años, queda sola en el mundo al perecer su tribu a causa de un terremoto. A punto de morir tras el ataque de un león, es rescatada por un grupo de Neandertales. Iza, la curandera, traspasa sus conocimientos; Mog-ur, el mago, ve en la niña la marca de uno de los espíritus más poderosos; pero para el resto del clan siempre será una extraña, rubia y de ojos azules, dueña de un lenguaje desconocido y hábil para tareas prohibidas a las mujeres, como la caza y el manejo de la honda'),
(427, 'León el Africano', 397, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '18392455.jpeg', '2021-06-16 15:43:22', '\"<i>Por boca mía oirás el árabe, el turco, el castellano, el bereber, el hebreo, el latín y el italiano vulgar, pues todas las lenguas, todas las plegarias me pertenecen. Mas yo no pertenezco a ninguna</i>\". Así se expresa un hombre nacido en Granada en un tiempo en que dos imperios -el cristiano y el musulmán- se disputan su hegemonía. Hasan, también llamado Juan León de Médicis, y al fin conocido como El Africano, es exiliado y recorrerá el mundo recibiendo sabiduría de Roma, pasión de El Cairo y en Fez angustia, mientras que su inocencia sigue viviendo en Granada.'),
(428, 'De Parte de la Princesa Muerta', 635, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '15721402.jpeg', '2021-06-16 15:44:36', 'Selma, nieta del sultán otomano Murad V, es una niña cuando la nobleza turca es expulsada del país y diseminada por las orillas del Mediterráneo. \"Puede abofetearme tanto como quiera que no bajaré la vista\" es la respuesta de una adolescente combativa en un colegio francés de Líbano, donde su familia se ha asentado, pero resume la vida de la protagonista. Casada con un rajá de la India musulmana al que no conoce, no se resigna a que el peso de la tradición la ahogue y, embarazada, llega a París, donde por fin será dueña de sí misma.'),
(429, 'Juliano el Apóstata', 589, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '18981179.jpeg', '2021-06-16 15:48:19', 'La vida del emperador Juliano refleja la lucha entre paganismo y cristianismo en el siglo IV, donde el mundo helénico decae mientras el Imperio Romano asciende. Sobrino de Constantino el Grande y educado como cristiano, se inició en el rito de Mitra -principal rival de la cultura de la cruz-, conviertiéndose en el emperador apóstata que proclamó la libertad de culto y luchó contra toda intolerancia religiosa. Había sobrevidido de niño a la matanza de todos sus parientes y murió antes de cambiar el rumbo de la historia.'),
(430, 'El Nombre de la Rosa', 575, 1, 1, 50, NULL, 'Habitación Pablo', 'D', 23, '1332153.jpeg', '2021-06-16 15:53:29', 'Es el año 1327. Los franciscanos de una rica abadía italiana son sospechosos de herejía, y el hermano William de Baskerville llega para investigar. Cuando su delicada misión se ve repentinamente ensombrecida por siete extrañas muertes, el hermano William se convierte en detective. Sus herramientas son la lógica de Aristóteles, la teología de Aquino, las intuiciones empíricas de Roger Bacon, todas afiladas hasta un borde brillante por el humor irónico y una feroz curiosidad. Reúne pruebas, descifra símbolos secretos y manuscritos codificados, y se adentra en el inquietante laberinto de la abadía, donde \"<i>las cosas más interesantes ocurren por la noche</i>\"'),
(431, 'La Plata de Britania', 335, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '36416090.jpg', '2021-06-16 15:55:07', 'El detective privado Marco Didio Falco carga con tres pesos en su vida: un hermano héroe, una madre que siempre tiene algo desagradable que decir y un padre que salió una noche a jugar una partida de damas y no volvió. Para poder pagar el alquiler se aviene a investigar la desaparición de unos lingotes de plata, llamados <i>cerdos</i>, grabados con el sello del emperador: T CL TRIF. El caso requiere que trabaje de esclavo en las minas de Britania y que sobreviva a más de una paliza con el riesgo de perder una pierna'),
(432, 'La Dama del Nilo', 510, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '7576035.jpeg', '2021-06-16 15:56:29', 'Treinta y cinco siglos antes de Cleopatra, una joven de 15 años fue consagrada emperatriz por primera vez en la historia. Según la tradición, los faraones de Egipto sólo podían gobernar si se casaban con una mujer de sangrre real, quien al contraer matrimonio otorgaba al cónyuge la condición de soberano. El faraón Tutmosis I, su padre, rompió la costumbre. Sin embargo, Hatshepsut necesitó de toda su audacia e inteligencia para gobernar en un mundo dominado por hombres y mantener el poder del imperio. Las intrigas de sus enemigos fueron tan grandes como victoriosas sus campañas militares o apasionados sus amores'),
(433, 'Yo, Claudio', 508, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '1561885.png', '2021-06-16 16:02:30', 'Llegado a los últimos años de su vida y temeroso de caer asesinado víctima de una conspiración, el emperador Claudio (o «Clau-Clau-Claudio», o «Claudio el idiota») decideconsignar por escrito su larga y azarosa vida desde los días en que gobernaba su tío abuelo Augusto, a cuya sombra su esposa Livia movía los hilos del poder. En esta novela inolvidable vemos desfilar delante de nosotros todo el esplendor y miseria de los primeros años del Imperio Romano, embarcado muy pronto en una espiral de conspiraciones, crueldad y violencia bajo los reinados del taciturno Tiberio y del extravagante Calígula. Lectura apasionante desde su primera línea, Yo, Claudio es sin duda una de las cinco mejores novelas históricas de todos los tiempos'),
(434, 'Claudio el Dios y su Esposa Mesalina', 557, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '13358393.jpeg', '2021-06-16 16:04:22', '\"<i>Claudio, el dios, y su esposa Mesalina</i>\" es la secuela de \"<i>Yo, Claudio</i>\". La novela, cuyo subtítulo es \"El turbulento reinado de Tiberio Claudio César\", emperador de los romanos (nacido en el año 10 a. de C. y muerto en el año 54), descrito por él mismo, narra el período de gobierno del emperador Claudio desde el asesinato de su sobrino Calígula hasta su propia muerte. Además, presta gran atención a los primeros años como gobernador de Herodes Agripa I, al que Claudio llegó a nombrar Rey de los judíos.\r\n</p><p>\r\nClaudio, tras el asesinato de su sobrino Calígula y tras haber renegado del poder toda su vida, es reconocido como el nuevo emperador del Imperio Romano en el año 41. A sus cuarenta y nueve años, Claudio se dispone a gobernar medio mundo, sabiendo que su peor enemigo es su propia familia'),
(435, 'Aníbal', 629, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '12437996.jpeg', '2021-06-16 16:05:53', 'Se había educado en el campo de batalla, acompañando a su padre, Amilcar Barba, en las campañas de España desde los nueve años. A los 26 recibió el mando supremo del ejército cartaginés en los años decisivos de la rivalidad entre las dos superpotencias de la época: Roma y Cartago. Desde el punto de vista cartaginés, Antígono, banquero heleno, relata las proezas de uno de los estrategas más grandes de la historia, el único capaz de derrotar a Roma y poner el mundo en manos de quienes ansiaban no imponer su concepción de vida, sino ganar territorios donde poder comerciar'),
(436, 'Los Hijos del Grial (I)', 447, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '53261687.jpeg', '2021-06-16 16:09:06', 'Ambientada en el siglo XII, la acción de esta magistral novela transcurre desde Sicilia, bajo el dominio de Federico II, hasta la Europa del Sacro Imperio, donde la guerra y las maquinaciones políticas entrecruzan los destinos de la Iglesia, el emperador, los caballeros templarios y la secta de los Asesinos. La narración se inicia con el sitio de Montségur, establecido por las tropas de Luis XI y el Papa. En este lugar se hallan \"los hijos del Grial\", los niños Roc y Yeza, quienes, por su ascendencia, están destinados a reconciliar las grandes religiones y a convertirse en reyes de un mundo de paz y armonía. En el último momento, Roc y Yeza son rescatados por una orden secreta al servicio del Grial, dando inicio a una peligrosa odisea a lo largo y ancho de Europa'),
(437, 'Los Hijos del Grial (II)', 429, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '55383627.jpg', '2021-06-16 16:10:14', 'Ambientada en el siglo XII, la acción de esta magistral novela transcurre desde Sicilia, bajo el dominio de Federico II, hasta la Europa del Sacro Imperio, donde la guerra y las maquinaciones políticas entrecruzan los destinos de la Iglesia, el emperador, los caballeros templarios y la secta de los Asesinos. La narración se inicia con el sitio de Montségur, establecido por las tropas de Luis XI y el Papa. En este lugar se hallan \"los hijos del Grial\", los niños Roc y Yeza, quienes, por su ascendencia, están destinados a reconciliar las grandes religiones y a convertirse en reyes de un mundo de paz y armonía. En el último momento, Roc y Yeza son rescatados por una orden secreta al servicio del Grial, dando inicio a una peligrosa odisea a lo largo y ancho de Europa'),
(438, 'Ben-Hur', 556, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '12665712.jpeg', '2021-06-16 16:11:23', 'La caída de una teja sobre el nuevo gobernador romano desencadena una serie de infortunios a Ben-Hur, príncipe judío: le acusan injustamente de intento de asesinato, le condenan a galeras de por vida, arruinan y encarcelan a su familia, y Messala -su amigo de la infancia y ahora al mando de una legión- es el que viene a detenerle. Aunque promete vengarse, el encuentro con Jesús de Nazaret cambia su vida. William Wyler dirigió una de las más espectaculares versiones para el cine, en la que Charlton Heston y Stephen Boyd bordan sus interpretaciones.'),
(439, 'Capitán de Mar y Guerra', 431, 1, 1, 50, NULL, 'Habitación Pablo', 'D', 23, '39350108.jpeg', '2021-06-16 16:17:09', 'Entre el cabo de Creus y Gibraltar, a comienzos del siglo XIX se suceden los combates de la Armada Inglesa contra navíos de vela que atraviesan el Mediterráneo, especialmente los franceses, en plena expansión napoleónica. La Shopie -corbeta un tanto rechoncha y desvencijada al servicio de su majestad-, con sus dos palos, doce cañones y una tripulación que deja bastante que desear, ha de escoltar a doce barcos mercantes. A bordo también se enfrentan distintas formas de afrontar la guerra y la vida en el mar. Mientras el capitán Jack Aubrey le mueve su ansia por conseguir botines, al cirujano Maturín le interesa la ciencia, y el impecable oficial Dillons lucha por honor'),
(440, 'Quo Vadis?', 589, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '9773305.jpeg', '2021-06-16 16:19:09', 'La novela comienza en el año 63 d.C, en tiempos de César Nerón, cuando el joven Vinicio visita a su tío Petronio, uno de los favoritos del emperador, para que le ayude a conseguir a Ligia, una rehén capturada por el ejército romano que vive con una familia que la considera su hija adoptiva. Sin embargo, Vinicio no sabe que ella es de religión cristiana y que únicamente podrán casarse si él se convierte. Sienkiewicz se sirve de esta historia de amor entre los dos protagonistas para retratar el contraste entre la aristocracia romana –presa de excesos y frivolidades– y los primeros cristianos martirizados por Nerón, que llegó a acusarlos del incendio de Roma. Muchos críticos han visto en Quo Vadis una metáfora del país en el que vivió su autor, Polonia, que en aquella época estaba sometida por el imperialismo de Rusia y su zar. La novela, ganadora del Premio Nobel de Literatura en 1905, se publicó en 1896 y en poco tiempo se convirtió en todo un clásico, con varias adaptaciones cinematográficas. En un principio la obra apareció por episodios en el periódico Gazeta Polska de Varsovia; su publicación en el periódico Gazeta y en los diarios Czas (Cracovia) y Dziennik Poznaski fue ligeramente posterior. Un poco más tarde, se editó en su totalidad y se presentó en Cracovia en 1896.'),
(451, 'El Día de Tarowean', 78, 1, 1, 57, NULL, 'Habitación Pablo', 'C', 19, 'b2715db795b9ba94a71f6fa2b75954b6a672b590.jpeg', '2021-06-17 09:53:15', 'Desde la publicación de La balada del mar salado, millones de lectores de todo el mundo se han preguntado bajo qué circunstancias Corto Maltés acabó atado a una balsa a la deriva cerca de la isla La Escondida. ¿Qué crimen pudo cometer para encontrarse en esa situación? ¿Qué papel juegan El Monje y Rasputín en esta aventura? El día de Tarowean desvela por fin el misterio más célebre del Pacífico.'),
(452, 'Sinuhé, el Egipcio', 623, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '12602561.jpeg', '2021-06-18 09:45:54', 'En una pequeña cesta calafateada con pez navega por el Nilo un niño recién nacido al que su madre adoptiva dará el nombre de un héroe legendario: Sinuhé. Como si hubiera sido un presagio, vivió toda clase de aventuras y conoció terribles secretos que le acarrearon, si no la muerte, el destierro. Médico por vocación, de su saber salieron remedios milagrosos y también mortíferos venenos. Llegó a ocupar el importante cargo de trepanador real y en su vejez, decepcionado de la vida, harto de mentiras y despreciando la inmortalidad, sólo quiso ser un hombre que escribe para sí mismo sus recuerdos'),
(453, 'Espartaco', 447, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '28568309.jpeg', '2021-06-18 09:47:35', 'Antes de cumplir los 13 años, Espartaco fue vendido para trabajar en las canteras como correspondia en el último siglo antes de la era Cristiana al hijo de una esclava. Pero cada golpe en la piedra, cada latigazo en su espalda le acercaban más al sueño de abolir la esclavitud. Desde Capua, donde se entrenaba como gladiador para servir luego de diversión en el circo, encabezó una rebelión que liberó a cientos de miles de hombres, obligó a Roma a emplear todo su poder militar y se convirtió en un símbolo contra cualquie opresión.'),
(454, 'Viriato, Iberia contra Roma', 302, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '12158313.jpeg', '2021-06-18 09:48:47', 'Cuando el Imperio Romano pretende extender su dominio en la península Ibérica, se encuentra un gran impedimento en su avance. Entre los años 147 y 139 a. C., un caudillo lusitano logra convertir unas cuantas tribus de guerreros en un ejército que mantuvo en jaque a la mayor potencia militar de su tiempo. Viriato, héroe del que es difícil separar historia y leyenda, estratega indiscutible y alma de la resistencia ibérica, fue vencido no en el campo de batalla sino en el de la traición. «Roma no paga traidores» fue la respuesta que recibieron los asesinos del general -tres de sus propios emisarios- en lugar de recompensa'),
(455, 'El Galeote de Argel', 142, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '10361372.jpeg', '2021-06-18 09:50:01', 'A finales del siglo XVI, el joven François Cocardon es capturado por los piratas argelinos. Con el paso de los años se convertirá en un próspero pirata que asolará las costas de los reinos cristianos bajo el nombre de Mustafá'),
(456, 'Troya', 505, 1, 0, 50, NULL, 'Habitación Pablo', 'D', 23, '12979186.jpeg', '2021-06-18 09:51:09', 'Troya, último refugio de las naves que atraviesan el Egeo y pretenden llegar al mar Negro, mantiene una posición estratégica dentro de la red comercial del Mediterráneo oriental que la convierte en diana de todas las codicias. Seiscientos años más tarde, en el siglo VI aC., Solón, legislador ateniense, viaja de Salamina a Egipto donde tiene conocimiento de la destrucción de la ciudad a través de narraciones de Ulises, las cartas de Corinnos y la historia de un mercader asirio. Grandes alianzas y mayores traiciones se dieron en esta gran epopeya, cruce de mito y realidad'),
(457, 'Algo Va Mal', 220, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 23, '24880093.jpeg', '2021-06-18 09:54:49', 'Un apasionado llamamiento a resucitar los valores colectivos y el compromiso político. Hay algo profundamente erróneo en la forma en que vivimos hoy. El estilo egoísta de la vida contemporánea, que nos resulta «natural», y también la retórica que lo acompaña (una admiración acrítica hacia los mercados no regulados, el desprecio por el sector público, la ilusión del crecimiento infinito) se remonta tan sólo a la década de los ochenta. En los últimos treinta años hemos hecho una virtud de la búsqueda del beneficio material hasta el punto de que eso es todo lo que queda de nuestro sentido de un propósito colectivo. «¿Por qué nos hemos apresurado tanto en derribar los diques que laboriosamente levantaron nuestros predecesores? ¿Tan seguros estamos de que no se avecinan inundaciones? », se pregunta Judt, uno de los más importantes pensadores contemporáneos. Rechazando tanto el individualismo extremo de la derecha como la desacreditada pose retórica de la izquierda, Judt nos desafía a oponernos a los males de nuestra sociedad y a afrontar nuestra responsabilidad sobre el mundo en que vivimos. Algo va mal es un inestimable obsequio para las futuras generaciones de ciudadanos comprometidos. Expresión concentrada de las preocupaciones de toda una vida, este libro pasará a formar parte de los grandes textos políticos de nuestra era. «Un valeroso manifiesto: una declaración de principios progresistas, una vindicación de la legitimidad de lo público y de lo universal como valores de la izquierda.» Antonio Muñoz Molina'),
(458, 'La Taberna Errante', 341, 1, 0, NULL, NULL, 'Habitación Pablo', 'D', 25, '13178683.jpeg', '2021-06-18 10:05:34', 'Armed with a donkey cart filled with rum, cheese and a tavern signpost, pub owner Humphrey Hump and a companion take to the road in this rollicking, madcap adventure, extending good cheer to a cast of memorable characters. A hilarious, satirical romp in which Chesterton inveighs against Prohibition, vegetarianism, theosophy, and other oppressive forms of modernity.'),
(459, 'El Hijo del Sueño', 308, 1, 1, 75, NULL, 'Habitación Pablo', 'D', 25, '62409.jpeg', '2021-06-18 10:11:16', 'Nadie puede permanecer indiferente ante la belleza de Alejandro. Ni ante la grandiosidad de su imperio. Que se extendi desde el danubio hasta el Indo.Un hombre considerado un Dios por sus contemporaneos. De ardientes sueos y violentas pasiones,que le consumieron hasta finalmente destruirle. Su vida transcurri en un mundo de leyendas. Esta es su historia.'),
(460, 'Mi Casco por Almohada - memorias de un marine en la guerra del pacífico', 378, 1, 0, NULL, NULL, 'Habitación Pablo', 'D', 25, '10764255.jpeg', '2021-06-18 10:12:57', 'Las memorias de Robert Leckie constituyen uno de los más apasionantes relatos de un testigo directo de la Segunda Guerra Mundial. En enero de 1942, poco después del ataque japonés a Pearl Harbor, se alistó en el cuerpo de marines de los Estados Unidos. En Mi casco por almohada narra su odisea, desde el durísimo entrenamiento en Carolina del Sur hasta las feroces batallas de la campaña del Pacífico.\r\nEncuadrado en la la división de marines, Leckie participó en las brutales acciones de Guadalcanal, Nueva Bretaña y Peleliu, donde se produjeron algunas de las luchas más encarnizadas de toda la guerra. Desde las tumultuosas juergas de los marines de permiso, conscientes de que puede no haber mañana, hasta los horrores de la guerra en la jungla contra un enemigo decidido a luchar hasta el último hombre, Leckie describe cómo es realmente la batalla, acercando al lector con toda inmediatez al barro, la sangre y la experiencia del combate. Intercala además en su narración sus elocuentes y nada sentimentales meditaciones sobre el sentido de la guerra y de por qué luchar. Un libro que no dejará a nadie indiferente'),
(461, 'La Tabla de Flandes', 416, 1, 0, NULL, NULL, 'Habitación Pablo', 'D', 25, '45810.jpeg', '2021-06-18 10:15:35', 'A finales del siglo XV un viejo maestro flamenco introduce en uno de sus cuadros, en forma de partida de ajadrez, la clave de un secreto que pudo cambiar la historia de Europa. Cinco siglos después, una joven resturadora de arte, un anticuario homosexual y un excéntrico jugador de ajedrez unem sus fuerzas para tratar de resolver el enigma.\r\nLa investigación les conducirá a través de una apasionante pesquisa en la que los movimientos del juego irán abriendo las puertas de un misterio que acabará por envolver a todos sus protagonistas'),
(462, 'El Asedio', 725, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 25, '7826309.jpeg', '2021-06-18 10:16:43', 'Cádiz, 1811. España lucha por su independencia mientras América lo hace por la suya. En las calles de la ciudad más liberal de Europa se libran batallas de otra índole. Mujeres jóvenes aparecen desolladas a latigazos. En cada lugar, antes del hallazgo del cadáver, ha caído una bomba francesa. Eso traza sobre la ciudad un mapa superpuesto y siniestro: un complejo tablero de ajedrez donde la mano de un jugador oculto —un asesino despiadado, el azar, las curvas de artillería, la dirección de los vientos, el cálculo de probabilidades— mueve piezas que deciden el destino de los protagonistas: un policía corrupto y brutal, la heredera de una importante casa comercial gaditana, un capitán corsario de pocos escrúpulos, un taxidermista misántropo y espía, un enternecedor guerrillero de las salinas y un excéntrico artillero a quien las guerras importan menos que resolver el problema técnico del corto alcance de sus obuses.\r\n</p><p>\r\nEl asedio narra el pulso asombroso de un mundo que pudo ser y no fue. El fin de una época y unos personajes condenados por la Historia, sentenciados a un vida que, como la ciudad que los alberga —una Cádiz equívoca, enigmática, sólo en apariencia luminosa y blanca—, nunca volverá a ser la misma'),
(463, 'Patente de Corso (1993-1998)', 527, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 25, '11034.jpeg', '2021-06-18 10:17:59', 'Desde hace años, millones de lectores de veintisiete periódicos españoles leen cada fin de semana el artículo que Arturo Pérez-Reverte publica en el suplemento dominical de El Semanal. Patente de corso recoge una amplia selección de estos textos. De ellos se puede disentir, participar, asumir o no sus postulados, pero es imposible no contagiarse con la fascinación de su honestidad salvaje, su compromiso personal y su coherencia. Porque son la mirada de veintiún años como reportero y espejo de la literatura, aplicados a quemarropa sobre la sociedad contemporánea'),
(464, 'No me Cogeréis Vivo (2001-2005)', 537, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 25, '11027.jpg', '2021-06-18 10:19:17', '«... Esta página no puede escribirse con bisturí. Carezco de talento para eso. Los ajustes de cuentas se hacen empalmando la chaira y acuchillando en corto, a lo que salga. En poco más de un folio, y con este panorama, uno pelea y apenas tiene tiempo de mirar a cuántos se la endiña. Sigue adelante, y que el diablo reconozca a los suyos. La justificación es que nadie me obliga, ni vivo de esto. Que podría firmar un libro cada dos años y observar la vida desde el escaparate de una librería. Pero ya ven. Unos domingos me divierto horrores, otros me desahogo, y otros digo en voz alta, o lo intento, lo que algunos no tienen medios para decir. Sin embargo, no es posible quedar bien con todos. Aquí no caben florituras ni sutilezas, si vas a lo que vas. Y menos en esta triste España, donde la gente sólo se da por aludida cuando le pateas los cojones. Pero mochar parejo trae daños colaterales. Víctimas inocentes. La justificación es que uno da la cara y se la juega sin red, sin Dios ni amo, en vez de llevárselo muerto por poner la foto y marear la perdiz, o por hacerle a los demagogos y mangantes que cortan el bacalao -o a quienes pretenden cortarlo- un francés con todas sus letras...»'),
(465, 'Con Ánimo de Ofender (1998-2001)', 445, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 25, '2168503.jpeg', '2021-06-18 10:20:57', 'Después de Patente de corso, este Con ánimo de ofender continúa recopilando la polémica, original y personalísima página de opinión de Arturo Pérez-Reverte en el suplemento dominical El Semanal, que llega a más de cuatro millones de lectores. Su compromiso personal, su honestidad y su coherencia quedan recogidos en esta selección apasionante de textos que miran tanto a la literatura como a las más variadas caras de la sociedad contemporánea. '),
(466, 'El Tango de la Guardia Vieja', 494, 1, 0, NULL, NULL, 'Habitación Pablo', 'D', 25, '16161136.jpeg', '2021-06-18 10:22:07', '«Una pareja de jóvenes apuestos, acuciados por pasiones urgentes como la vida, se mira a los ojos al bailar un tango aún no escrito, en el salón silencioso y desierto de un transatlántico que navega en la noche. Trazando sin saberlo, al moverse abrazados, la rúbrica de un mundo irreal cuyas luces fatigadas empiezan a apagarse para siempre.»\r\nUn extraño desafío entre dos músicos, que lleva a uno de ellos a Buenos Aires en 1928; un asunto de espionaje en la Riviera francesa durante la Guerra Civil española; una inquietante partida de ajedrez en el Sorrento de los años sesenta...\r\nEl tango de la Guardia Vieja narra con pulso admirable una turbia y apasionada historia de amor, traiciones e intrigas, que se prolonga durante cuatro décadas a través de un siglo convulso y fascinante, entre la luz crepuscular de una época que se extingue. '),
(467, 'Un Día de Colera', 394, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 25, 'daclera_grande.jpeg', '2021-06-18 10:33:26', 'Este relato no es ficción ni libro de Historia. Tampoco tiene un protagonista concreto, pues fueron innumerables los hombres y mujeres envueltos en los sucesos del 2 de mayo de 1808 en Madrid. Héroes y cobardes, víctimas y verdugos, la Historia retuvo los nombres de buena parte de ellos: las relaciones de muertos y heridos, los informes militares, las memorias escritas por actores principales o secundarios de la tragedia, aportan datos rigurosos para el historiador y ponen límites a la imaginación del novelista. Cuantas personas y lugares aparecen aquí son auténticos, así como los sucesos narrados y muchas de las palabras que se pronuncian. En Un día de cólera, Arturo Pérez-Reverte convierte en historia colectiva las pequeñas y oscuras historias particulares registradas en archivos y libros. Lo imaginado, por tanto, se reduce a la argamasa narrativa que une las piezas. Con las licencias mínimas que la palabra novela justifica, estas páginas pretenden devolver la vida a quienes durante doscientos años sólo han sido personajes anónimos en grabados y lienzos contemporáneos, o escueta relación de nombres en los documentos oficiales.'),
(468, 'El Pintor de Batallas', 301, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 25, 'pintorbata_grande1.jpeg', '2021-06-18 10:34:44', 'En una torre junto al Mediterráneo, en busca de la foto que nunca pudo hacer, un antiguo fotógrafo pinta un gran fresco circular en la pared: el paisaje intemporal de una batalla. Lo acompañan en la tarea un rostro que regresa del pasado para cobrar una deuda mortal, y la sombra de una mujer desaparecida diez años atrás. En torno a esos tres personajes, Arturo Pérez-Reverte ha escrito la más intensa y turbadora historia de su larga carrera de novelista. Deslumbrante de principio a fin, El pintor de batallas arrastra al lector, subyugado, a través de la compleja geometría del caos del siglo XXI: el arte, la ciencia, la guerra, el amor, la lucidez y la soledad, se combinan en el vasto mural de un mundo que agoniza.'),
(469, 'El Consejero', 133, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 25, '23486528.jpeg', '2021-06-18 10:37:45', 'Un exitoso pero ingenuo abogado que trabaja principalmente en Texas decide, pensando que el riesgo puede permanecer controlado, involucrarse en un negocio que uno de sus clientes le ha propuesto. Supone que la cercanía de su ciudad respecto a la frontera mexicana significa que un transporte de cocaína no puede representar una operación demasiado complicada y que, si lo hace una sola vez, lo único que puede ocurrir es que ganará millones de dólares. Después, tiene la intención de regresar a su vida normal junto a su novia, a la que acaba de prometerse. Poco advierte que ha metido sus piés en un mundo despiadado y maquiavélico dominado por vertiginosas luchas de poder');
INSERT INTO `libro` (`id`, `titulo`, `paginas`, `idioma`, `leido`, `coleccion`, `saga`, `ubicacion`, `estanteria`, `balda`, `portada`, `fecha`, `sinopsis`) VALUES
(470, 'Diario de un Skin - un topo en el movimiento neonazi español', 358, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 25, '1691191.jpeg', '2021-06-18 10:39:20', 'Un año camuflado bajo la piel de un skinhead. De este modo cabe resumir la experiencia de Antonio Salas, pseudónimo detrás del cual se esconde un conocido periodista de investigación, cuenta sin escrúpulos en este libro.\r\n</p><p>\r\nDiario de un skin es la confesión auténtica de quien ha logrado, por primera vez, infiltrarse sin levantar sospechas en un grupo tan peligroso que no perdona los errores. Armado de una cámara oculta y parapetado tras una falsa identidad, construyó un personaje lo suficientemente convincente como para ganarse la confianza de sus «iguales» y vivir desde dentro la terrible realidad de los cabezas rapadas.\r\n</p><p>\r\nEl orgullo y los sentimientos de odio de los ultra, los actos violentos en los que participan, su implicación en las peñas futbolísticas y sus alianzas con grupos internacionales afines a través de internet son, entre otros muchos aspectos, los que se desarrollan en estas páginas sin precedentes.'),
(471, 'Cuentos de Terror y Misterio', 334, 1, 0, NULL, NULL, 'Habitación Pablo', 'D', 25, '33245387.jpeg', '2021-06-18 10:41:34', 'Arthur Conan Doyle logra a través de sus extraordinarias creaciones mantener la atención del asombrado lector en todo momento, y no sólo con las famosas aventuras de su héroe, el excéntrico gentleman poseedor de la inteligencia más sofisticada y brillante de toda la literatura, el incisivo y perspicaz detective Sherlock Holmes, sino también con relatos cortos de terror y misterio, algunos sobre los temas sobrenaturales que tanto le apasionaban, en los que nos demuestra también su excelsa maestría para contarnos historias en las que se entremezclan la intriga, el miedo y lo insólito y sorprendente, con un estilo narrativo directo, rico y conciso, que hicieron del autor escocés uno de los mejores y más insignes especialistas de la narrativa corta de todos los tiempos. Seleccionamos aquí sus cuentos más destacados. En El gato del Brasil, El anillo de Thoth, La catacumba nueva, El caso de lady Sannox, y en dos de las obras maestras en las que participan Holmes y Watson: Un escándalo en Bohemia y El carbunclo azul, el lector podrá disfrutar de la maestría literaria que le ha encumbrado hasta el Olimpo literario.'),
(472, 'After Dark', 248, 1, 0, NULL, NULL, 'Habitación Pablo', 'D', 25, '8117265.jpeg', '2021-06-18 10:44:32', 'Cerca ya de medianoche, en esas horas en que todo se vuelve dolorosamente nítido o angustiosamente desdibujado, Mari, sentada sola a la mesa de un bar-restaurante, se toma un café mientras lee. La interrumpe un joven músico, Takahashi, al que Mari ha visto una única vez, en una cita de su hermana Eri, modelo profesional. Ésta, mientras tanto, duerme en su habitación, sumida en un sueño «demasiado perfecto, demasiado puro». Mari ha perdido el último tren de vuelta a casa y piensa pasarse la noche leyendo en el restaurante; Takahashi se va a ensayar con su grupo, pero promete regresar antes del alba. Mari sufre una segunda interrupción: Kaoru, la encargada de un «hotel por horas», pide que le ayude con una prostituta china agredida por un cliente. Dan las doce. En la habitación donde Eri sigue sumida en una dulce inconsciencia, el televisor cobra vida y poco a poco empieza a distinguirse en la pantalla una imagen turbadora... pese a que el televisor no está  enchufado.'),
(473, 'Tokio Blues. Norwegian Wood', 381, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 25, '3421809.jpeg', '2021-06-18 10:45:47', 'Mientras aterriza en un aeropuerto europeo, Toru Watanabe escucha una vieja canción de los Beatles que le hace retroceder a su juventud, al turbulento Tokio de los años sesenta. Recuerda entonces con melancolía a la misteriosa Naoko, la novia de su mejor amigo de la adolescencia. El suicidio de éste les distanció durante un año, hasta que se reencontraron e iniciaron una relación íntima. Sin embargo, la aparición de otra mujer en su vida lleva a Toru a experimentar el deslumbramiento y el desengaño allí donde todo debería cobrar sentido: el sexo, el amor y la muerte.'),
(474, 'El Cuento del Grial', 257, 1, 1, NULL, NULL, 'Habitación Pablo', 'D', 25, '3985842.jpeg', '2021-06-18 10:51:28', 'Última novela escrita por CHRÉTIEN DE TROYES, a quien debemos la llegada del Santo Cáliz a la literatura y su transformación en elemento misterioso dotado de enorme potencial narrativo, EL CUENTO DEL GRIAL debió ser comenzado hacia 1180, pero quedó inconcluso en fecha desconocida debido acaso a la muerte de su autor. Dividida en dos partes -una dedicada a la formación caballeresca, moral y religiosa de Perceval, y la otra a Galván, como contrapunto mundano del protagonista inicial del relato- y desarrollada en sendos castillos -el del Grial y el de las Reinas-, la obra abre el camino hacia reinos completamente diferentes pero fantásticos por igual. La introducción, traducción y anotación del texto para la presente edición ha corrido a cargo de Carlos Alvar'),
(475, 'Relatos Cómicos', 163, 1, 0, NULL, NULL, 'Habitación Pablo', 'D', 25, '2525.jpg', '2021-06-18 10:53:18', 'Los lectores tomaran un gran placer en descubrir los clasicos con estas bellas y economicas ediciones de literatura famosa y universal. Esta seleccion editorial cuenta con titulos que abarcan todos los generos literarios, desde teatro, narrativa, poesia y el ensayo.'),
(477, 'El Caballero de los Siete Reinos', 280, 1, 1, 71, 20, 'Habitación Pablo', 'D', 25, '26182010.jpg', '2021-06-18 11:01:05', 'Muchas son las historias que se cuentan sobre Aegon V el Improbable y ser Duncan el Alto, su leal comandante de la Guardia Real. Pero la magia y la épica de la leyenda esconden la verdadera naturaleza de los héroes: la determinación de un huérfano de Lecho de Pulgas que llegó a caballero, el arrojo de un príncipe uqe cambió la corte por los caminos y una mistad inquebrantable capaz de vencer intrigas, traiciones...y revueltas.\r\n</p><p>\r\nDurante los reinados de Daeron II y Aerys I, cuando las heridas de la rebelión de Fuegoscuro todavía estaban abiertas, tienen lugar las primeras aventuras de un caballero fornido y bonachón y de su escudero, un infante real, fiel y de fuerte temperamento. A medio camino entre la fantasía heroica y la novela de caballerías, El Caballero de los Siete Reinos narra las peripecias de dos héroes bondadosos en una tierra despiadada.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_autor`
--

CREATE TABLE `libro_autor` (
  `id` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro_autor`
--

INSERT INTO `libro_autor` (`id`, `id_autor`, `id_libro`) VALUES
(97, 65, 111),
(98, 30, 112),
(99, 27, 113),
(100, 28, 114),
(101, 29, 115),
(102, 31, 116),
(103, 35, 117),
(104, 34, 118),
(105, 33, 119),
(106, 32, 120),
(107, 21, 121),
(108, 37, 122),
(109, 39, 123),
(110, 39, 124),
(111, 21, 125),
(112, 38, 126),
(113, 36, 127),
(114, 40, 128),
(115, 41, 129),
(116, 29, 130),
(117, 32, 131),
(118, 34, 132),
(119, 43, 133),
(120, 42, 134),
(121, 30, 135),
(122, 27, 136),
(123, 36, 137),
(124, 36, 138),
(125, 21, 139),
(126, 30, 140),
(127, 44, 141),
(128, 42, 142),
(129, 45, 143),
(130, 45, 144),
(131, 45, 145),
(132, 45, 146),
(133, 45, 147),
(134, 45, 148),
(135, 45, 149),
(136, 45, 150),
(137, 45, 151),
(138, 45, 152),
(139, 46, 153),
(140, 46, 154),
(141, 65, 155),
(142, 65, 156),
(143, 65, 157),
(144, 65, 158),
(145, 65, 159),
(146, 65, 160),
(147, 65, 161),
(148, 65, 162),
(149, 65, 163),
(150, 65, 164),
(151, 65, 165),
(152, 65, 166),
(153, 65, 167),
(154, 65, 168),
(155, 66, 170),
(156, 66, 171),
(157, 65, 172),
(158, 65, 173),
(159, 65, 174),
(160, 65, 175),
(161, 65, 176),
(162, 65, 177),
(163, 65, 178),
(164, 65, 179),
(165, 65, 180),
(166, 65, 181),
(167, 65, 182),
(168, 65, 183),
(169, 65, 184),
(170, 65, 185),
(171, 65, 186),
(172, 65, 187),
(173, 65, 188),
(174, 65, 189),
(175, 69, 190),
(176, 69, 191),
(177, 69, 192),
(178, 69, 193),
(179, 69, 194),
(180, 69, 195),
(181, 70, 196),
(182, 69, 197),
(183, 69, 198),
(184, 27, 199),
(185, 65, 200),
(186, 65, 201),
(187, 65, 202),
(188, 65, 203),
(189, 70, 204),
(190, 65, 205),
(191, 65, 206),
(192, 65, 207),
(193, 69, 208),
(194, 69, 209),
(195, 69, 210),
(196, 69, 211),
(197, 72, 212),
(198, 74, 213),
(199, 71, 214),
(200, 71, 215),
(201, 73, 216),
(202, 75, 217),
(203, 71, 218),
(204, 71, 219),
(205, 71, 220),
(206, 71, 221),
(207, 71, 222),
(208, 71, 223),
(209, 76, 224),
(210, 77, 224),
(211, 78, 225),
(212, 79, 226),
(213, 80, 227),
(214, 81, 228),
(215, 82, 229),
(216, 83, 230),
(217, 83, 231),
(218, 83, 232),
(219, 84, 233),
(220, 74, 234),
(221, 74, 235),
(222, 74, 236),
(223, 71, 237),
(224, 71, 238),
(225, 85, 239),
(226, 71, 240),
(227, 86, 241),
(228, 87, 242),
(229, 62, 243),
(230, 58, 244),
(231, 57, 245),
(232, 60, 246),
(233, 51, 247),
(234, 58, 248),
(235, 58, 249),
(236, 58, 250),
(237, 57, 251),
(238, 57, 252),
(239, 59, 253),
(240, 61, 254),
(241, 61, 255),
(242, 61, 256),
(243, 68, 170),
(244, 68, 171),
(245, 65, 190),
(246, 65, 191),
(247, 65, 192),
(248, 65, 193),
(249, 65, 194),
(250, 65, 195),
(251, 65, 196),
(252, 65, 197),
(253, 65, 198),
(254, 65, 199),
(255, 65, 204),
(256, 65, 208),
(257, 65, 209),
(258, 65, 210),
(259, 65, 211),
(260, 71, 257),
(261, 88, 258),
(262, 61, 259),
(263, 61, 260),
(264, 61, 261),
(265, 89, 262),
(266, 90, 263),
(267, 71, 264),
(268, 91, 265),
(269, 92, 266),
(270, 93, 267),
(271, 94, 268),
(272, 95, 269),
(273, 96, 270),
(274, 97, 271),
(275, 98, 272),
(276, 57, 273),
(277, 99, 274),
(278, 80, 275),
(279, 80, 276),
(280, 100, 277),
(281, 101, 278),
(282, 61, 279),
(283, 102, 280),
(284, 103, 281),
(285, 104, 282),
(286, 24, 283),
(287, 24, 284),
(288, 105, 285),
(289, 106, 286),
(290, 107, 287),
(291, 107, 288),
(292, 108, 289),
(293, 109, 290),
(294, 24, 291),
(295, 110, 292),
(296, 71, 293),
(297, 111, 294),
(298, 58, 295),
(299, 111, 296),
(300, 112, 297),
(301, 113, 298),
(302, 71, 299),
(303, 114, 300),
(304, 114, 301),
(305, 115, 302),
(306, 116, 303),
(307, 57, 304),
(308, 117, 305),
(309, 117, 306),
(310, 109, 307),
(311, 109, 308),
(312, 71, 309),
(313, 71, 310),
(314, 71, 311),
(315, 71, 312),
(316, 118, 313),
(317, 119, 314),
(318, 120, 315),
(319, 121, 316),
(320, 122, 317),
(321, 51, 318),
(322, 126, 319),
(323, 123, 320),
(324, 124, 321),
(325, 121, 322),
(326, 125, 323),
(327, 127, 324),
(328, 36, 325),
(329, 128, 326),
(330, 71, 327),
(331, 129, 328),
(332, 130, 329),
(333, 131, 330),
(334, 71, 331),
(335, 132, 332),
(336, 71, 333),
(337, 107, 334),
(338, 133, 335),
(339, 71, 336),
(340, 23, 337),
(341, 23, 338),
(343, 23, 340),
(344, 23, 341),
(345, 71, 342),
(346, 23, 343),
(347, 23, 344),
(348, 76, 345),
(349, 77, 345),
(350, 76, 346),
(351, 77, 346),
(352, 76, 347),
(353, 77, 347),
(354, 76, 348),
(355, 77, 348),
(356, 23, 349),
(357, 23, 350),
(358, 23, 351),
(359, 134, 352),
(360, 71, 353),
(361, 71, 354),
(362, 71, 355),
(363, 71, 356),
(364, 71, 357),
(365, 71, 358),
(366, 71, 359),
(367, 71, 360),
(368, 71, 361),
(369, 71, 362),
(370, 71, 363),
(371, 76, 364),
(372, 77, 364),
(373, 76, 365),
(374, 77, 365),
(375, 76, 366),
(376, 77, 366),
(377, 76, 367),
(378, 77, 367),
(379, 76, 368),
(380, 77, 368),
(381, 76, 369),
(382, 77, 369),
(383, 71, 370),
(384, 71, 371),
(385, 76, 372),
(386, 77, 372),
(387, 71, 373),
(388, 71, 374),
(389, 71, 375),
(390, 71, 376),
(391, 71, 377),
(392, 71, 378),
(393, 71, 379),
(394, 26, 380),
(395, 26, 381),
(396, 26, 382),
(397, 22, 383),
(398, 22, 384),
(399, 22, 385),
(400, 22, 386),
(401, 22, 387),
(402, 22, 388),
(403, 105, 389),
(404, 105, 390),
(405, 135, 391),
(406, 135, 392),
(407, 105, 393),
(408, 105, 394),
(409, 105, 395),
(410, 105, 396),
(411, 136, 397),
(412, 29, 398),
(413, 37, 399),
(414, 29, 400),
(415, 30, 401),
(416, 137, 402),
(417, 27, 403),
(418, 30, 404),
(419, 138, 405),
(420, 139, 406),
(421, 140, 407),
(422, 35, 408),
(423, 40, 409),
(424, 141, 410),
(425, 36, 411),
(426, 36, 412),
(427, 142, 413),
(428, 71, 414),
(429, 71, 415),
(430, 37, 416),
(431, 44, 417),
(432, 71, 418),
(433, 71, 419),
(434, 71, 420),
(435, 71, 421),
(436, 134, 422),
(437, 134, 423),
(438, 134, 424),
(439, 134, 425),
(440, 88, 426),
(441, 143, 427),
(442, 71, 428),
(443, 144, 429),
(444, 145, 430),
(445, 71, 431),
(446, 71, 432),
(447, 146, 433),
(448, 146, 434),
(449, 71, 435),
(450, 71, 436),
(451, 71, 437),
(452, 71, 438),
(453, 71, 439),
(454, 71, 440),
(455, 66, 451),
(456, 68, 451),
(457, 71, 452),
(458, 71, 453),
(459, 71, 454),
(460, 71, 455),
(461, 71, 456),
(462, 147, 457),
(463, 71, 458),
(464, 148, 459),
(465, 71, 460),
(466, 149, 461),
(467, 149, 462),
(468, 149, 463),
(469, 149, 464),
(470, 149, 465),
(471, 149, 466),
(472, 149, 467),
(473, 149, 468),
(474, 117, 469),
(475, 71, 470),
(476, 37, 471),
(477, 150, 472),
(478, 150, 473),
(479, 151, 474),
(480, 32, 475),
(482, 134, 477);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_balda`
--

CREATE TABLE `libro_balda` (
  `id` int(11) NOT NULL,
  `balda` int(11) DEFAULT NULL,
  `libro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro_balda`
--

INSERT INTO `libro_balda` (`id`, `balda`, `libro`) VALUES
(92, 19, 'La Balada del Mar Salado - 1ª parte'),
(93, 15, 'La Vuelta al Mundo en 80 Días'),
(94, 15, 'La Isla del Tesoro'),
(95, 15, 'Robinson Crusoe'),
(96, 15, 'Las Aventuras de Tom Sawyer'),
(97, 15, 'Los Viajes de Gulliver'),
(98, 15, 'El Libro de la Selva'),
(99, 15, 'El Hombre Invisible'),
(100, 15, 'Las Alegres Aventuras de Robin Hood'),
(101, 15, 'El Gato Negro y otros cuentos'),
(102, 15, 'Colmillo Blanco'),
(103, 15, 'El Sabueso de los Baskerville'),
(104, 15, 'Moby Dick I'),
(105, 15, 'Moby Dick II'),
(106, 15, 'La Quimera del Oro'),
(107, 15, 'Frankenstein o el moderno prometeo'),
(108, 15, 'El Tulipán Negro'),
(109, 15, 'El Corsario Negro'),
(110, 15, 'Ivanhoe'),
(111, 15, 'Las Aventuras de Huckleberry Finn'),
(112, 15, 'El Escarabajo de Oro y otros cuentos'),
(113, 15, 'La Maquina del Tiempo'),
(114, 15, 'Las Minas del Rey Salomón'),
(115, 15, 'Las Aventuras de Oliver Twist'),
(116, 15, 'Veinte Mil Leguas de Viaje Submarino'),
(117, 15, 'El Extraño Caso del Dr.Jekyll y Mr.Hyde'),
(118, 15, 'Los Tres Mosqueteros I'),
(119, 15, 'Los Tres Mosqueteros II'),
(120, 15, 'La Llamada de lo Salvaje'),
(121, 15, 'Miguel Strogoff'),
(122, 15, 'El Fantasma de la Ópera'),
(123, 15, 'Historia de Dos Ciudades'),
(124, 18, 'La Noche en que Frankenstein leyó el Quijote, la vida secreta de los libros'),
(125, 18, 'Yo, Julia'),
(126, 18, 'Y Julia Retó a los Dioses'),
(127, 18, 'Los Asesinos del Emperador'),
(128, 18, 'Circo Máximo'),
(129, 18, 'La Legión Perdida'),
(130, 18, 'Africanus, el hijo del cónsul'),
(131, 18, 'Las Legiones Malditas'),
(132, 18, 'La Traición de Roma'),
(133, 18, 'La Sangre de los Libros'),
(134, 18, 'Los Pilares de la Tierra'),
(135, 18, 'Un Mundo Sin Fin'),
(136, 19, 'La Balada del Mar Salado - 2ª parte'),
(137, 19, 'Suite Caribeña'),
(138, 19, 'El Mar de Oro'),
(139, 19, 'Las Lejanas Islas del Viento'),
(140, 19, 'La Laguna de los Misterios'),
(141, 19, 'Las Célticas'),
(142, 19, 'Las Etiópicas'),
(143, 19, 'Corto Maltés en Siberia - 1ª Parte'),
(144, 19, 'Corto Maltés en Siberia - 2ª Parte'),
(145, 19, 'Fábula de Venecia'),
(146, 19, 'La Casa Dorada de Samarkanda - 1ª parte'),
(147, 19, 'La Casa Dorada de Samarkanda - 2ª parte'),
(148, 19, 'La Juventud'),
(149, 19, 'Tango'),
(150, 19, 'Equatoria'),
(151, 19, 'Bajo el Sol de Medianoche'),
(152, 19, 'Las Helvéticas'),
(153, 19, 'Mû, La Ciudad Perdida - 1ª Parte'),
(154, 19, 'Mû, La Ciudad Perdida - 2ª Parte'),
(155, 19, 'Fort Wheeling 1'),
(156, 19, 'Fort Wheeling 2'),
(157, 19, 'Fort Wheeling 3'),
(158, 19, 'Fort Wheeling 4'),
(159, 19, 'Los Escorpiones del Desierto 1'),
(160, 19, 'Los Escorpiones del Desierto 2'),
(161, 19, 'Brise de Mer 1'),
(162, 19, 'Brise de Mer 2'),
(163, 19, 'El Hombre del Caribe / El Hombre de Somalia'),
(164, 19, 'El Hombre del Sertón / El Hombre del Gran Norte'),
(165, 19, 'Ausencias Justificadas / 41º Latitud Norte / El Amuleto'),
(166, 19, 'Baldwin 622 / Un Pálido Sol Primaveral'),
(167, 19, 'El Piloto Australiano / El Gafe / Noche Diabólica'),
(168, 19, 'Wambo ha muerto... Wambo Vuelve / La Ciudad Perdida de Amón-Ra'),
(169, 19, 'El Hechicero de Ujiji / El Cementerio de Elefantes'),
(170, 19, 'Ernie Pike 1'),
(171, 19, 'Ernie Pike 2'),
(172, 19, 'Ernie Pike 3'),
(173, 19, 'Ernie Pike 4'),
(174, 19, 'Ernie Pike 4'),
(175, 19, 'Ernie Pike 5'),
(176, 19, 'La Sombra'),
(177, 19, 'Ticonderoga 1'),
(178, 19, 'Ticonderoga 2'),
(179, 19, 'La Isla  / Secuestrado de Robert Louis Stevenson (adpt. Mino Milani)'),
(180, 19, 'Puño de Hierro / Una Valiosa Carga'),
(181, 19, '¡Adelante, Marines!'),
(182, 19, 'Sospechosos en la Oscuridad'),
(183, 19, 'Venganza Explosiva / A Sangre Fría'),
(184, 19, 'Capitán Cormorant y otras historias'),
(185, 19, 'Morgan'),
(186, 19, 'Cato Zulú: El Fin de un Príncipe / La Caravana de los Bóeres'),
(187, 19, 'En un Cielo Lejano'),
(188, 19, 'Sargento Kirk 1'),
(189, 19, 'Sargento Kirk 2'),
(190, 19, 'Sargento Kirk 3'),
(191, 19, 'Sargento Kirk 4'),
(192, 17, 'Los Celtas'),
(193, 17, 'Diccionario Biográfico del Mundo Antiguo - Egipto y Próximo Oriente'),
(194, 17, 'Atlas de Historia Clásica (del 1700 a.C. al 565 d.C.)'),
(195, 17, 'El Sonido en el Cine'),
(196, 17, 'El Uno y los Múltiples - concepciones egipcias de la divinidad'),
(197, 17, 'Historia del Antiguo Egipcio'),
(198, 17, 'La Crisis del Siglo III y el Fin del Mundo Antiguo'),
(199, 17, 'La Especie Elegida - la larga marcha de la evolución humana'),
(200, 17, 'Prehistoria UNED Tomo I'),
(201, 17, 'Prehistoria UNED Tomo II'),
(202, 17, 'Historia de la Grecia Antigua'),
(203, 17, 'Historia de Roma'),
(204, 20, 'Crónicas de la Dragonlance'),
(205, 17, 'Historia de la Guerra del Peloponeso'),
(206, 17, 'Tragedias Completas'),
(207, 17, 'Iliada'),
(208, 17, 'El Asno de Oro'),
(209, 17, 'Fábulas'),
(210, 17, 'La Guerra de las Galias - libro I-II-III'),
(211, 17, 'La Guerra de las Galias - libro IV-V-VI'),
(212, 17, 'La Guerra de las Galias - libro VII'),
(213, 17, 'Historias Libro I - IV'),
(214, 17, 'Himnos Sumerios'),
(215, 17, 'Poema de Gilgamesh'),
(216, 17, 'Ebla - una nueva historia. una nueva cultura'),
(217, 17, 'Tercios de España - la infanteria legendaria'),
(218, 17, 'La Casta -  el increible chollo de ser político en españa'),
(219, 17, 'Amor, Rebeldía, Libertad y Sangre'),
(220, 17, 'El Mundo Clásico - la epopeya de Grecia y Roma'),
(221, 16, 'Pasajes de la Historia'),
(222, 16, 'Los Peces de la Amargura'),
(223, 16, 'Chistes para Desorientar a la Poesía'),
(224, 16, 'Arder en el Agua / Ahogarse en el Fuego'),
(225, 16, 'Habitaciones Separadas'),
(226, 16, 'Sonetos, Odas y otros Poemas'),
(227, 16, 'Ciento Volando de Catorce'),
(228, 16, 'Madrigales de la Pensión'),
(229, 16, 'Guerra sin Cesar - Poemas 1981-1984'),
(230, 16, 'Escrutaba la Locura en busca de la Palabra, el Verso, la Ruta'),
(231, 16, 'Completamente Viernes'),
(232, 16, 'Vista Cansada'),
(233, 16, 'Memorias de un Mujeriego'),
(234, 16, 'Defensa Propia - 60 poemas y 85 bagatelas'),
(235, 16, 'Existir Todavía'),
(236, 16, 'El Olvido está Lleno de Memoria'),
(237, 16, '¡Indignaos1'),
(238, 16, 'El Clan del Oso Cavernario'),
(239, 16, 'Inventario Uno (parte primera) - 1950-1975'),
(240, 16, 'Inventario Uno (parte segunda) - 1976-1985'),
(241, 16, 'Inventario Dos - 1986-1991'),
(242, 16, 'Obras Jocosas'),
(243, 16, 'Luces de Bohemia'),
(244, 16, 'La Sirena Varada / Los Árboles Mueren de Pié'),
(245, 16, 'Bodas de Sangre'),
(246, 16, 'Cuentos'),
(247, 16, 'Manifiesto Romántico - escritos de batalla'),
(248, 16, 'Desobediencia Civil y otros escritos'),
(249, 16, 'Canciones de Inocencia y de Experiencia'),
(250, 16, 'Antología Poética'),
(251, 16, 'Antología Poética'),
(252, 16, 'Bajarse al Moro'),
(253, 16, 'Ropa de Calle - antología poética (1980-2008)'),
(254, 16, 'Eneida'),
(255, 16, 'La Odisea'),
(256, 16, 'La Iliada'),
(257, 16, 'Política de Hechos Consumados (relatos, monólogos y poemas)'),
(258, 16, 'Poesías Completas'),
(259, 16, 'Cuentos'),
(260, 16, 'El Puente de Alcántara'),
(261, 16, 'Ensayo sobre la Lucidez'),
(262, 16, 'Esfera'),
(263, 14, 'Cuentos Completos I'),
(264, 14, 'Cuentos Completos II'),
(265, 14, 'Venganza en Sevilla'),
(266, 14, '1984'),
(267, 14, 'Hyperion'),
(268, 14, 'La Caída de Hyperion'),
(269, 14, 'La Reina de los Condenados'),
(270, 14, 'La Espuma de los Días'),
(271, 14, 'Yo, Robot'),
(272, 14, 'Hacia Rutas Salvajes'),
(273, 14, 'Deseo de Ser Punk'),
(274, 14, 'Un Día Más con Vida'),
(275, 14, 'Peleando a la Contra'),
(276, 14, 'El Imperio'),
(277, 14, 'En el Camino'),
(278, 14, 'Club de la Lucha'),
(279, 14, 'Storm Front'),
(280, 14, 'El Corazón de las Tinieblas'),
(281, 14, 'Nostromo'),
(282, 14, 'Soldados de Salamina'),
(283, 14, 'La Montaña es mi Reino'),
(284, 14, 'Una Forma de Resistencia'),
(285, 14, 'No es País para Viejos'),
(286, 14, 'La Carretera'),
(287, 14, 'Escupiré Sobre vuestra Tumba'),
(288, 14, 'El Arrancacorazones'),
(289, 14, 'Leyendas de Galicia y Asturias'),
(290, 14, 'Leyendas Nórdicas'),
(291, 14, 'Leyendas de Castilla'),
(292, 14, 'Leyendas Celtas'),
(293, 14, 'Trainspotting'),
(294, 14, 'Piratas'),
(295, 13, 'Vida'),
(296, 13, 'Lo Demás es Silencio'),
(297, 13, 'Un Alto en el Camino - conversaciones con Loquillo'),
(298, 13, 'Yo También sé Jugarme la Boca - En Carne Viva'),
(299, 13, 'Una Historia que se Escribe en los Portales'),
(300, 13, 'Cultura de Bar - conversaciones con Fito Cabrales'),
(301, 13, 'La Sana Intención - conversaciones con Rosendo'),
(302, 13, 'Diván - conversaciones con Enrique Bunbury'),
(303, 13, 'Tremendo Delirio - conversaciones con Julián Hernández'),
(304, 13, 'Hannibal'),
(305, 13, 'Los Tres Mosqueteros'),
(306, 13, 'El Manuscrito Carmesí'),
(307, 13, 'Mar Brava - historias de corsarios, piratas y negreros españoles'),
(308, 13, 'Más Allá de los Sueños'),
(309, 13, 'Gomorra'),
(310, 13, 'La Forja de un Rebelde'),
(311, 13, 'Piratas en Guerra'),
(312, 13, 'Sin Novedad en el Frente'),
(313, 13, 'Aquellos Hombres Grises'),
(314, 13, 'Ilión II: La Rebelión'),
(315, 13, 'El Sueño del Celta'),
(316, 13, 'Por Donde el Viento nos Lleve - antología de relatos españoles de piratas'),
(317, 20, 'La Comunidad del Anillo'),
(318, 20, 'Las Dos Torres'),
(320, 20, 'Apéndices'),
(321, 20, 'El Retorno del Rey'),
(322, 20, 'Guía Completa de la Tierra Media'),
(323, 20, 'El Hobbit'),
(324, 20, 'El Silmarillion'),
(325, 20, 'Los Caballeros de Neraka'),
(326, 20, 'El Río de los Muertos'),
(327, 20, 'El Nombre del Único'),
(328, 20, 'El Ocaso de los Dragones'),
(329, 20, 'El Retorno de la Sombra'),
(330, 20, 'El Libro de los Cuentos Perdidos 1'),
(331, 20, 'El Libro de los Cuentos Perdidos 2'),
(332, 20, 'Fuego y Sangre'),
(333, 21, 'El Reino de Istar'),
(334, 21, 'La Guerra de la Lanza'),
(335, 21, 'El Cataclismo'),
(336, 21, 'La Magia de Krynm'),
(337, 21, 'Kenders, enanos y gnomos'),
(338, 21, 'Historias de Ansalon'),
(339, 21, 'La Misión de Riverwind'),
(340, 21, 'Flint, Rey de los Gullys'),
(341, 21, 'Tanis, el Semielfo'),
(342, 21, 'La Leyenda de Huma'),
(343, 21, 'Espada de Reyes'),
(344, 21, 'El Retorno de los Dragones'),
(345, 21, 'La Tumba de Huma'),
(346, 21, 'La Reina de la Oscuridad'),
(347, 21, 'El Templo de Istar'),
(348, 21, 'La Guerra de los Enanos'),
(349, 21, 'El Umbral del Poder'),
(350, 21, 'Los Hijos de Sargas'),
(351, 21, 'Mithas y Karthay'),
(352, 21, 'La Segunda Generación'),
(353, 21, 'Verminaard, Señor de Nidus'),
(354, 21, 'Lord Soth'),
(355, 21, 'Vinas Solamnus, El Primer Caballero'),
(356, 21, 'Los Enanos Gullys'),
(357, 21, 'Gilthas, Orador de los Soles'),
(358, 21, 'El Último Thane'),
(359, 21, 'Los Dragones'),
(360, 24, 'El Guardián Invisible'),
(361, 24, 'Legado en los Huesos'),
(362, 24, 'Ofrenda a la Tormenta'),
(363, 24, 'Corrupción Policial'),
(364, 24, 'El Cártel'),
(365, 24, 'La Frontera'),
(366, 24, 'Los Reyes de lo Cool'),
(367, 24, 'Rotos'),
(368, 24, 'El Poder del Perro'),
(369, 24, 'Tierra Firme'),
(370, 24, 'La Conjura de Cortés'),
(371, 24, 'Imprimatur'),
(372, 24, 'Veritas'),
(373, 24, 'Peregrinatio'),
(374, 24, 'Iacobus'),
(375, 24, 'Todo Bajo el Cielo'),
(376, 24, 'El Último Catón'),
(377, 22, 'Tarzán de los Monos'),
(378, 22, 'El Príncipe y el Méndigo'),
(379, 22, 'Estudio en Escarlata'),
(380, 22, 'Un Yanqui en la Corte del Rey Arturo'),
(381, 22, 'Viaje al Centro de la Tierra'),
(382, 22, 'El Fantasmde Canterville'),
(383, 22, 'La Flecha Negra'),
(384, 22, 'De la Tierra a la Luna'),
(385, 22, 'El Prisionero de Zenda'),
(386, 22, 'E Mago de Oz'),
(387, 22, 'Scaramouche'),
(388, 22, 'Capitanes Intrépidos'),
(389, 22, 'Sandokan'),
(390, 22, 'El Último Mohicano'),
(391, 22, 'El Conde de Montecristo (I)'),
(392, 22, 'El Conde de Montecristo (II)'),
(393, 22, 'El Rojo Emblema del Valor'),
(394, 22, 'Adiós. Muñeca'),
(395, 22, 'El Tercer Homber'),
(396, 22, 'El Signo de los Cuatro'),
(397, 22, 'El Misterio del Cuarto Amarillo'),
(398, 22, 'El Caso del Canario Asesinado'),
(399, 22, 'El Martillo Azul'),
(400, 22, 'El Secuestro de Miss Blandish'),
(401, 22, 'Por el Pasado Llorarás'),
(402, 22, 'Juego de Tronos (I)'),
(403, 22, 'Danza de Dragones (I)'),
(404, 22, 'Danza de Dragones (II)'),
(405, 22, 'Danza de Dragones (III)'),
(406, 23, 'El Clan del Oso Cavernario'),
(407, 23, 'León el Africano'),
(408, 23, 'De Parte de la Princesa Muerta'),
(409, 23, 'Juliano el Apóstata'),
(410, 23, 'El Nombre de la Rosa'),
(411, 23, 'La Plata de Britania'),
(412, 23, 'La Dama del Nilo'),
(413, 23, 'Yo, Claudio'),
(414, 23, 'Claudio el Dios y su Esposa Mesalina'),
(415, 23, 'Aníbal'),
(416, 23, 'Los Hijos del Grial (I)'),
(417, 23, 'Los Hijos del Grial (II)'),
(418, 23, 'Ben-Hur'),
(419, 23, 'Capitán de Mar y Guerra'),
(420, 23, 'Quo Vadis?'),
(422, 23, 'Sinuhé, el Egipcio'),
(423, 23, 'Espartaco'),
(424, 23, 'Viriato, Iberia contra Roma'),
(425, 23, 'El Galeote de Argel'),
(426, 23, 'Troya'),
(427, 23, 'Algo Va Mal'),
(428, 25, 'La Taberna Errante'),
(429, 25, 'El Hijo del Sueño'),
(430, 25, 'Mi Casco por Almohada - memorias de un marine en la guerra del pacífico'),
(431, 25, 'La Tabla de Flandes'),
(432, 25, 'El Asedio'),
(433, 25, 'Patente de Corso (1993-1998)'),
(434, 25, 'No me Cogeréis Vivo (2001-2005)'),
(435, 25, 'Con Ánimo de Ofender (1998-2001)'),
(436, 25, 'El Tango de la Guardia Vieja'),
(437, 25, 'Un Día de Colera'),
(438, 25, 'El Pintor de Batallas'),
(439, 25, 'El Consejero'),
(440, 25, 'Diario de un Skin - un topo en el movimiento neonazi español'),
(441, 25, 'Cuentos de Terror y Misterio'),
(442, 25, 'After Dark'),
(443, 25, 'Tokio Blues. Norwegian Wood'),
(444, 25, 'El Cuento del Grial'),
(445, 25, 'Relatos Cómicos'),
(447, 25, 'El Caballero de los Siete Reinos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_generos`
--

CREATE TABLE `libro_generos` (
  `id` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro_generos`
--

INSERT INTO `libro_generos` (`id`, `id_libro`, `id_genero`) VALUES
(1, 120, 18),
(2, 120, 6),
(3, 122, 18),
(4, 122, 6),
(5, 126, 6),
(6, 126, 16),
(7, 132, 6),
(8, 132, 7),
(9, 135, 6),
(11, 136, 6),
(13, 227, 19),
(14, 227, 13),
(15, 235, 13),
(16, 235, 19),
(17, 111, 17),
(18, 112, 6),
(19, 113, 6),
(20, 114, 6),
(21, 115, 6),
(22, 116, 6),
(23, 117, 6),
(24, 118, 6),
(25, 119, 6),
(26, 121, 6),
(27, 123, 6),
(28, 124, 6),
(29, 125, 6),
(30, 127, 6),
(31, 128, 6),
(32, 129, 6),
(33, 130, 6),
(34, 131, 6),
(35, 133, 6),
(36, 134, 6),
(37, 137, 6),
(38, 138, 6),
(39, 139, 6),
(40, 140, 6),
(41, 141, 6),
(42, 142, 6),
(43, 143, 12),
(44, 144, 5),
(45, 145, 5),
(46, 146, 5),
(47, 147, 5),
(48, 148, 5),
(49, 149, 5),
(50, 150, 5),
(51, 151, 5),
(52, 152, 12),
(53, 153, 5),
(54, 154, 5),
(127, 155, 17),
(128, 156, 17),
(129, 157, 17),
(130, 158, 17),
(131, 159, 17),
(132, 160, 17),
(133, 161, 17),
(134, 162, 17),
(135, 163, 17),
(136, 164, 17),
(137, 165, 17),
(138, 166, 17),
(139, 167, 17),
(140, 168, 17),
(157, 170, 17),
(158, 171, 17),
(159, 172, 17),
(160, 173, 17),
(161, 174, 17),
(162, 175, 17),
(163, 176, 17),
(164, 177, 17),
(165, 178, 17),
(166, 179, 17),
(167, 180, 17),
(168, 181, 17),
(169, 182, 17),
(170, 183, 17),
(171, 184, 17),
(172, 185, 17),
(173, 186, 17),
(174, 187, 17),
(175, 188, 17),
(176, 189, 17),
(177, 190, 17),
(178, 191, 17),
(179, 192, 17),
(180, 193, 17),
(181, 194, 17),
(182, 195, 17),
(183, 196, 17),
(184, 197, 17),
(185, 198, 17),
(186, 199, 17),
(187, 200, 17),
(188, 201, 17),
(189, 202, 17),
(190, 203, 17),
(191, 204, 17),
(192, 205, 17),
(193, 206, 17),
(194, 207, 17),
(195, 208, 17),
(196, 209, 17),
(197, 210, 17),
(198, 211, 17),
(199, 212, 11),
(200, 213, 11),
(201, 214, 11),
(202, 215, 11),
(203, 216, 11),
(204, 217, 11),
(205, 218, 11),
(206, 219, 11),
(207, 220, 11),
(208, 221, 11),
(209, 222, 11),
(210, 223, 11),
(211, 224, 2),
(212, 225, 13),
(213, 226, 13),
(215, 228, 13),
(216, 229, 13),
(217, 230, 13),
(218, 231, 13),
(219, 232, 13),
(220, 233, 13),
(221, 234, 13),
(223, 236, 13),
(224, 237, 14),
(226, 238, 9),
(227, 239, 10),
(228, 240, 14),
(229, 241, 14),
(230, 241, 15),
(231, 242, 21),
(232, 243, 10),
(233, 244, 10),
(234, 245, 10),
(235, 246, 10),
(236, 247, 10),
(237, 248, 10),
(238, 249, 10),
(239, 250, 10),
(240, 251, 10),
(241, 252, 10),
(242, 253, 10),
(243, 253, 12),
(244, 254, 10),
(245, 255, 10),
(246, 256, 10),
(247, 257, 9),
(248, 258, 5),
(249, 259, 10),
(250, 260, 10),
(251, 261, 10),
(252, 262, 13),
(253, 263, 10),
(254, 264, 10),
(255, 265, 10),
(256, 266, 12),
(257, 267, 15),
(258, 268, 15),
(259, 268, 8),
(260, 268, 9),
(261, 269, 10),
(262, 270, 10),
(263, 271, 10),
(264, 272, 10),
(265, 273, 10),
(266, 274, 13),
(267, 274, 19),
(268, 275, 13),
(269, 275, 19),
(270, 276, 13),
(271, 276, 19),
(272, 277, 12),
(273, 277, 10),
(274, 278, 10),
(275, 279, 12),
(276, 280, 5),
(277, 281, 21),
(278, 282, 7),
(279, 283, 7),
(280, 283, 12),
(281, 284, 7),
(282, 284, 12),
(283, 285, 5),
(284, 285, 6),
(285, 286, 7),
(286, 286, 22),
(287, 287, 7),
(288, 287, 6),
(289, 288, 7),
(290, 288, 6),
(291, 289, 16),
(292, 290, 21),
(293, 291, 7),
(294, 291, 12),
(295, 292, 23),
(296, 293, 21),
(297, 294, 23),
(298, 295, 10),
(299, 295, 12),
(300, 296, 23),
(301, 296, 14),
(302, 296, 8),
(303, 297, 23),
(304, 297, 24),
(305, 298, 21),
(306, 298, 22),
(307, 299, 7),
(308, 299, 18),
(309, 300, 22),
(310, 300, 25),
(311, 300, 5),
(312, 301, 6),
(313, 301, 22),
(314, 301, 5),
(315, 302, 23),
(316, 302, 21),
(317, 303, 15),
(318, 303, 24),
(319, 304, 12),
(320, 305, 21),
(321, 305, 22),
(322, 305, 1),
(323, 306, 25),
(324, 306, 22),
(325, 306, 7),
(326, 307, 1),
(327, 308, 25),
(328, 309, 20),
(329, 310, 20),
(330, 311, 20),
(331, 312, 20),
(332, 313, 21),
(333, 313, 25),
(334, 314, 6),
(335, 282, 16),
(336, 315, 24),
(337, 316, 24),
(338, 317, 24),
(339, 318, 24),
(340, 319, 24),
(341, 320, 24),
(342, 321, 24),
(343, 322, 24),
(344, 323, 24),
(345, 324, 22),
(346, 325, 6),
(347, 326, 25),
(348, 326, 5),
(349, 327, 12),
(350, 328, 7),
(351, 328, 25),
(352, 329, 23),
(353, 330, 25),
(354, 330, 21),
(355, 331, 14),
(356, 332, 26),
(357, 333, 14),
(358, 333, 26),
(359, 334, 7),
(360, 334, 6),
(361, 335, 5),
(362, 336, 12),
(363, 337, 2),
(364, 338, 2),
(366, 340, 2),
(367, 341, 2),
(368, 342, 11),
(369, 342, 2),
(370, 343, 2),
(371, 344, 2),
(372, 345, 2),
(373, 346, 2),
(374, 347, 2),
(375, 348, 2),
(376, 349, 2),
(377, 350, 2),
(378, 350, 12),
(379, 351, 2),
(380, 351, 12),
(381, 352, 2),
(382, 352, 12),
(383, 353, 2),
(384, 353, 12),
(385, 354, 2),
(386, 354, 12),
(387, 355, 2),
(388, 355, 12),
(389, 356, 2),
(390, 356, 12),
(391, 357, 2),
(392, 357, 12),
(393, 358, 2),
(394, 358, 12),
(395, 359, 2),
(396, 360, 2),
(397, 361, 2),
(398, 362, 2),
(399, 363, 2),
(400, 364, 2),
(401, 365, 2),
(402, 366, 2),
(403, 367, 2),
(404, 368, 2),
(405, 369, 2),
(406, 370, 2),
(407, 371, 2),
(408, 372, 2),
(409, 373, 2),
(410, 374, 2),
(411, 375, 2),
(412, 376, 2),
(413, 377, 2),
(414, 378, 2),
(415, 379, 2),
(416, 380, 22),
(417, 380, 1),
(418, 381, 22),
(419, 381, 1),
(420, 382, 22),
(421, 382, 1),
(422, 383, 22),
(423, 383, 1),
(424, 384, 22),
(425, 384, 1),
(426, 385, 22),
(427, 385, 1),
(428, 386, 22),
(429, 386, 1),
(430, 387, 12),
(431, 387, 22),
(432, 387, 1),
(433, 388, 22),
(434, 388, 1),
(435, 389, 5),
(436, 389, 6),
(437, 390, 6),
(438, 390, 5),
(439, 391, 5),
(440, 391, 22),
(441, 392, 5),
(442, 392, 22),
(443, 393, 5),
(444, 394, 5),
(445, 394, 6),
(446, 394, 22),
(447, 395, 5),
(448, 396, 5),
(449, 396, 6),
(450, 397, 6),
(451, 398, 6),
(452, 399, 6),
(453, 400, 6),
(454, 401, 6),
(455, 402, 6),
(456, 403, 6),
(457, 403, 5),
(458, 404, 6),
(459, 405, 6),
(460, 406, 6),
(461, 407, 6),
(462, 407, 5),
(463, 408, 6),
(464, 409, 6),
(465, 410, 6),
(466, 411, 6),
(467, 412, 6),
(468, 413, 6),
(469, 414, 1),
(470, 415, 1),
(471, 416, 1),
(472, 417, 1),
(473, 418, 1),
(474, 419, 1),
(475, 420, 1),
(476, 421, 1),
(477, 422, 2),
(478, 423, 2),
(479, 424, 2),
(480, 425, 2),
(481, 426, 5),
(482, 427, 5),
(483, 428, 5),
(484, 429, 5),
(485, 430, 5),
(486, 431, 5),
(487, 432, 5),
(488, 433, 5),
(489, 434, 5),
(490, 435, 5),
(491, 436, 5),
(492, 437, 5),
(493, 438, 5),
(494, 439, 5),
(495, 440, 5),
(496, 451, 17),
(497, 452, 5),
(498, 453, 5),
(499, 454, 5),
(500, 455, 5),
(501, 456, 5),
(502, 457, 8),
(503, 458, 27),
(504, 459, 5),
(505, 460, 24),
(506, 460, 26),
(507, 461, 22),
(508, 462, 5),
(509, 462, 22),
(510, 463, 15),
(511, 464, 15),
(512, 465, 15),
(513, 466, 21),
(514, 467, 5),
(515, 468, 26),
(516, 468, 21),
(517, 469, 1),
(518, 469, 22),
(519, 470, 24),
(520, 470, 23),
(521, 471, 12),
(522, 471, 16),
(523, 472, 16),
(524, 472, 22),
(525, 473, 21),
(526, 474, 28),
(527, 474, 13),
(528, 475, 12),
(529, 475, 27),
(531, 477, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saga`
--

CREATE TABLE `saga` (
  `id_saga` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `coleccion` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `saga`
--

INSERT INTO `saga` (`id_saga`, `nombre`, `coleccion`, `imagen`) VALUES
(2, 'El Señor de los Anillos', 43, 'lotr.png'),
(5, 'Corto Maltés', 55, 'corto-maltes.png'),
(6, 'Fort Wheeling', 55, 'fortwheeling.png'),
(7, 'Los Escorpiones del Desierto', 55, 'escorpiones.png'),
(8, 'Ernie Pike', 55, 'ernie_pike.png'),
(9, 'Ana de la Jungla', 55, 'ana-de-la-jungla.png'),
(10, 'Koinsky relata...', 55, 'koinsky.png'),
(11, 'Un Hombre, Una Aventura', 55, 'un_hombre_aven_10.png'),
(12, 'Ticonderoga', 55, 'Ticonderoga001.png'),
(13, 'Historias de Guerra', 55, 'PrattWWIIsito01.png'),
(14, 'Sgt. Kirk', 55, 'sgt._kirk.png'),
(15, 'Crónicas de la Dragonlance', 58, 'cronicas.png'),
(16, 'La Guerra de los Espíritus', 58, 'los-caballeros-de-neraka-2.png'),
(17, 'La Historia de la Tierra-Media', 43, 'middle-earth.png'),
(18, 'La Historia de El Señor de los Anillos', 43, 'historyThe_Lord_Of_The_Rings_The_Lord_Of_The_Rings_The_Fellowship_Of_The_Ring-658308.png'),
(19, 'Canción de Hielo y Fuego', 71, 'hielo y fuego.png'),
(20, 'Los Cuentos de Dunk y Egg', 71, 'original-un-caballero-de-los-siete-reinos.png'),
(21, 'Targaryen', 71, 'targayen.png'),
(22, 'Cuentos de la DragonLance 1', 58, 'Dragonlance - Cuentos De La Dragonlance1.png'),
(23, 'Cuentos de la DragonLance 2', 58, 'Dragonlance - Cuentos De La Dragonlance2.png'),
(24, 'Preludios de la DragonLance 2', 58, 'prelu.png'),
(25, 'Héroes de la DragonLance', 58, 'heroes.png'),
(26, 'Leyendas de la DragonLance', 58, 'lye_libro.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tomoCol`
--

CREATE TABLE `tomoCol` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `id_coleccion` int(11) DEFAULT NULL,
  `libro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tomoCol`
--

INSERT INTO `tomoCol` (`id`, `numero`, `id_coleccion`, `libro`) VALUES
(69, 1, 55, 'La Balada del Mar Salado - 1ª parte'),
(70, 4, 49, 'La Vuelta al Mundo en 80 Días'),
(71, 1, 49, 'La Isla del Tesoro'),
(72, 2, 49, 'Robinson Crusoe'),
(73, 3, 49, 'Las Aventuras de Tom Sawyer'),
(74, 5, 49, 'Los Viajes de Gulliver'),
(75, 6, 49, 'El Libro de la Selva'),
(76, 7, 49, 'El Hombre Invisible'),
(77, 8, 49, 'Las Alegres Aventuras de Robin Hood'),
(78, 9, 49, 'El Gato Negro y otros cuentos'),
(79, 15, 49, 'Colmillo Blanco'),
(80, 10, 49, 'El Sabueso de los Baskerville'),
(81, 11, 49, 'Moby Dick I'),
(82, 12, 49, 'Moby Dick II'),
(83, 13, 49, 'La Quimera del Oro'),
(84, 14, 49, 'Frankenstein o el moderno prometeo'),
(85, 16, 49, 'El Tulipán Negro'),
(86, 17, 49, 'El Corsario Negro'),
(87, 18, 49, 'Ivanhoe'),
(88, 19, 49, 'Las Aventuras de Huckleberry Finn'),
(89, 20, 49, 'El Escarabajo de Oro y otros cuentos'),
(90, 21, 49, 'La Maquina del Tiempo'),
(91, 22, 49, 'Las Minas del Rey Salomón'),
(92, 23, 49, 'Las Aventuras de Oliver Twist'),
(93, 24, 49, 'Veinte Mil Leguas de Viaje Submarino'),
(94, 25, 49, 'El Extraño Caso del Dr.Jekyll y Mr.Hyde'),
(95, 26, 49, 'Los Tres Mosqueteros I'),
(96, 27, 49, 'Los Tres Mosqueteros II'),
(97, 28, 49, 'La Llamada de lo Salvaje'),
(98, 29, 49, 'Miguel Strogoff'),
(99, 30, 49, 'El Fantasma de la Ópera'),
(100, 31, 49, 'Historia de Dos Ciudades'),
(101, 1, 52, 'Yo, Julia'),
(102, 2, 52, 'Y Julia Retó a los Dioses'),
(103, 1, 46, 'Los Asesinos del Emperador'),
(104, 2, 46, 'Circo Máximo'),
(105, 3, 46, 'La Legión Perdida'),
(106, 1, 48, 'Africanus, el hijo del cónsul'),
(107, 2, 48, 'Las Legiones Malditas'),
(108, 3, 48, 'La Traición de Roma'),
(109, 1, 51, 'Los Pilares de la Tierra'),
(110, 2, 51, 'Un Mundo Sin Fin'),
(111, 2, 55, 'La Balada del Mar Salado - 2ª parte'),
(112, 3, 55, 'Suite Caribeña'),
(113, 4, 55, 'El Mar de Oro'),
(114, 5, 55, 'Las Lejanas Islas del Viento'),
(115, 6, 55, 'La Laguna de los Misterios'),
(116, 7, 55, 'Las Célticas'),
(117, 8, 55, 'Las Etiópicas'),
(118, 9, 55, 'Corto Maltés en Siberia - 1ª Parte'),
(119, 10, 55, 'Corto Maltés en Siberia - 2ª Parte'),
(120, 11, 55, 'Fábula de Venecia'),
(121, 12, 55, 'La Casa Dorada de Samarkanda - 1ª parte'),
(122, 13, 55, 'La Casa Dorada de Samarkanda - 2ª parte'),
(123, 14, 55, 'La Juventud'),
(124, 15, 55, 'Tango'),
(125, 16, 55, 'Las Helvéticas'),
(126, 17, 55, 'Mû, La Ciudad Perdida - 1ª Parte'),
(127, 18, 55, 'Mû, La Ciudad Perdida - 2ª Parte'),
(128, 19, 55, 'Fort Wheeling 1'),
(129, 20, 55, 'Fort Wheeling 2'),
(130, 21, 55, 'Fort Wheeling 3'),
(131, 22, 55, 'Fort Wheeling 4'),
(132, 23, 55, 'Los Escorpiones del Desierto 1'),
(133, 24, 55, 'Los Escorpiones del Desierto 2'),
(134, 25, 55, 'Brise de Mer 1'),
(135, 26, 55, 'Brise de Mer 2'),
(136, 27, 55, 'El Hombre del Caribe / El Hombre de Somalia'),
(137, 28, 55, 'El Hombre del Sertón / El Hombre del Gran Norte'),
(138, 29, 55, 'Ausencias Justificadas / 41º Latitud Norte / El Amuleto'),
(139, 30, 55, 'Baldwin 622 / Un Pálido Sol Primaveral'),
(140, 31, 55, 'El Piloto Australiano / El Gafe / Noche Diabólica'),
(141, 32, 55, 'Wambo ha muerto... Wambo Vuelve / La Ciudad Perdida de Amón-Ra'),
(142, 33, 55, 'El Hechicero de Ujiji / El Cementerio de Elefantes'),
(143, 34, 55, 'Ernie Pike 1'),
(144, 35, 55, 'Ernie Pike 2'),
(145, 36, 55, 'Ernie Pike 3'),
(146, 37, 55, 'Ernie Pike 4'),
(147, 37, 55, 'Ernie Pike 4'),
(148, 38, 55, 'Ernie Pike 5'),
(149, 39, 55, 'La Sombra'),
(150, 40, 55, 'Ticonderoga 1'),
(151, 41, 55, 'Ticonderoga 2'),
(152, 42, 55, 'La Isla  / Secuestrado de Robert Louis Stevenson (adpt. Mino Milani)'),
(153, 43, 55, 'Puño de Hierro / Una Valiosa Carga'),
(154, 44, 55, '¡Adelante, Marines!'),
(155, 45, 55, 'Sospechosos en la Oscuridad'),
(156, 46, 55, 'Venganza Explosiva / A Sangre Fría'),
(157, 47, 55, 'Capitán Cormorant y otras historias'),
(158, 48, 55, 'Morgan'),
(159, 49, 55, 'Cato Zulú: El Fin de un Príncipe / La Caravana de los Bóeres'),
(160, 50, 55, 'En un Cielo Lejano'),
(161, 51, 55, 'Sargento Kirk 1'),
(162, 52, 55, 'Sargento Kirk 2'),
(163, 53, 55, 'Sargento Kirk 3'),
(164, 54, 55, 'Sargento Kirk 4'),
(165, 97, 59, 'Historia de la Guerra del Peloponeso'),
(166, 1, 59, 'Tragedias Completas'),
(167, 101, 59, 'Iliada'),
(168, 316, 54, 'Habitaciones Separadas'),
(169, 134, 54, 'Sonetos, Odas y otros Poemas'),
(170, 476, 54, 'Ciento Volando de Catorce'),
(171, 417, 54, 'Madrigales de la Pensión'),
(172, 670, 54, 'Guerra sin Cesar - Poemas 1981-1984'),
(173, 586, 54, 'Escrutaba la Locura en busca de la Palabra, el Verso, la Ruta'),
(174, 788, 54, 'Vista Cansada'),
(175, 135, 54, 'Memorias de un Mujeriego'),
(176, 578, 54, 'Defensa Propia - 60 poemas y 85 bagatelas'),
(177, 549, 54, 'Existir Todavía'),
(178, 332, 54, 'El Olvido está Lleno de Memoria'),
(179, 1, 60, 'El Clan del Oso Cavernario'),
(180, 19, 59, 'Antología Poética'),
(181, 289, 59, 'Bajarse al Moro'),
(182, 684, 59, 'Ropa de Calle - antología poética (1980-2008)'),
(183, 2, 63, 'Venganza en Sevilla'),
(184, 1, 64, 'Hyperion'),
(185, 2, 64, 'La Caída de Hyperion'),
(186, 3, 65, 'La Reina de los Condenados'),
(187, 1, 66, 'Yo, Robot'),
(188, 2, 67, 'Hannibal'),
(189, 1, 68, 'Mar Brava - historias de corsarios, piratas y negreros españoles'),
(190, 0, 68, 'Piratas en Guerra'),
(191, 2, 70, 'Ilión II: La Rebelión'),
(192, 2, 68, 'Por Donde el Viento nos Lleve - antología de relatos españoles de piratas'),
(193, 1, 45, 'El Guardián Invisible'),
(194, 2, 45, 'Legado en los Huesos'),
(195, 3, 45, 'Ofrenda a la Tormenta'),
(196, 2, 44, 'El Cártel'),
(197, 3, 44, 'La Frontera'),
(198, 0, 47, 'Los Reyes de lo Cool'),
(199, 1, 44, 'El Poder del Perro'),
(200, 1, 63, 'Tierra Firme'),
(201, 3, 63, 'La Conjura de Cortés'),
(202, 1, 72, 'Imprimatur'),
(203, 2, 72, 'Veritas'),
(204, 0, 73, 'Peregrinatio'),
(205, 1, 73, 'Iacobus'),
(206, 32, 49, 'Tarzán de los Monos'),
(207, 33, 49, 'El Príncipe y el Méndigo'),
(208, 34, 49, 'Estudio en Escarlata'),
(209, 35, 49, 'Un Yanqui en la Corte del Rey Arturo'),
(210, 36, 49, 'Viaje al Centro de la Tierra'),
(211, 38, 49, 'El Fantasmde Canterville'),
(212, 39, 49, 'La Flecha Negra'),
(213, 40, 49, 'De la Tierra a la Luna'),
(214, 41, 49, 'El Prisionero de Zenda'),
(215, 42, 49, 'E Mago de Oz'),
(216, 43, 49, 'Scaramouche'),
(217, 44, 49, 'Capitanes Intrépidos'),
(218, 45, 49, 'Sandokan'),
(219, 47, 49, 'El Último Mohicano'),
(220, 48, 49, 'El Conde de Montecristo (I)'),
(221, 49, 49, 'El Conde de Montecristo (II)'),
(222, 50, 49, 'El Rojo Emblema del Valor'),
(223, 2, 74, 'Adiós. Muñeca'),
(224, 4, 74, 'El Tercer Homber'),
(225, 5, 74, 'El Signo de los Cuatro'),
(226, 6, 74, 'El Misterio del Cuarto Amarillo'),
(227, 9, 74, 'El Caso del Canario Asesinado'),
(228, 7, 74, 'El Martillo Azul'),
(229, 11, 74, 'El Secuestro de Miss Blandish'),
(230, 32, 74, 'Por el Pasado Llorarás'),
(231, 1, 50, 'El Clan del Oso Cavernario'),
(232, 2, 50, 'León el Africano'),
(233, 3, 50, 'De Parte de la Princesa Muerta'),
(234, 4, 50, 'Juliano el Apóstata'),
(235, 5, 50, 'El Nombre de la Rosa'),
(236, 6, 50, 'La Plata de Britania'),
(237, 7, 50, 'La Dama del Nilo'),
(238, 8, 50, 'Yo, Claudio'),
(239, 9, 50, 'Claudio el Dios y su Esposa Mesalina'),
(240, 10, 50, 'Aníbal'),
(241, 11, 50, 'Los Hijos del Grial (I)'),
(242, 12, 50, 'Los Hijos del Grial (II)'),
(243, 13, 50, 'Ben-Hur'),
(244, 14, 50, 'Capitán de Mar y Guerra'),
(245, 15, 50, 'Quo Vadis?'),
(246, 16, 50, 'Sinuhé, el Egipcio'),
(247, 17, 50, 'Espartaco'),
(248, 20, 50, 'Viriato, Iberia contra Roma'),
(249, 21, 50, 'El Galeote de Argel'),
(250, 22, 50, 'Troya'),
(251, 1, 75, 'El Hijo del Sueño');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tomoSag`
--

CREATE TABLE `tomoSag` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `id_saga` int(11) DEFAULT NULL,
  `libro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tomoSag`
--

INSERT INTO `tomoSag` (`id`, `numero`, `id_saga`, `libro`) VALUES
(12, 1, 5, 'La Balada del Mar Salado - 1ª parte'),
(13, 2, 5, 'La Balada del Mar Salado - 2ª parte'),
(14, 3, 5, 'Suite Caribeña'),
(15, 4, 5, 'El Mar de Oro'),
(16, 5, 5, 'Las Lejanas Islas del Viento'),
(17, 6, 5, 'La Laguna de los Misterios'),
(18, 7, 5, 'Las Célticas'),
(19, 8, 5, 'Las Etiópicas'),
(20, 9, 5, 'Corto Maltés en Siberia - 1ª Parte'),
(21, 10, 5, 'Corto Maltés en Siberia - 2ª Parte'),
(22, 11, 5, 'Fábula de Venecia'),
(23, 12, 5, 'La Casa Dorada de Samarkanda - 1ª parte'),
(24, 13, 5, 'La Casa Dorada de Samarkanda - 2ª parte'),
(25, 14, 5, 'La Juventud'),
(26, 15, 5, 'Tango'),
(27, 16, 5, 'Las Helvéticas'),
(28, 17, 5, 'Mû, La Ciudad Perdida - 1ª Parte'),
(29, 18, 5, 'Mû, La Ciudad Perdida - 2ª Parte'),
(30, 1, 6, 'Fort Wheeling 1'),
(31, 2, 6, 'Fort Wheeling 2'),
(32, 3, 6, 'Fort Wheeling 3'),
(33, 4, 6, 'Fort Wheeling 4'),
(34, 1, 7, 'Los Escorpiones del Desierto 1'),
(35, 2, 7, 'Los Escorpiones del Desierto 2'),
(36, 3, 7, 'Brise de Mer 1'),
(37, 4, 7, 'Brise de Mer 2'),
(38, 1, 11, 'El Hombre del Caribe / El Hombre de Somalia'),
(39, 2, 11, 'El Hombre del Sertón / El Hombre del Gran Norte'),
(40, 1, 10, 'Ausencias Justificadas / 41º Latitud Norte / El Amuleto'),
(41, 2, 10, 'Baldwin 622 / Un Pálido Sol Primaveral'),
(42, 3, 10, 'El Piloto Australiano / El Gafe / Noche Diabólica'),
(43, 1, 9, 'Wambo ha muerto... Wambo Vuelve / La Ciudad Perdida de Amón-Ra'),
(44, 2, 9, 'El Hechicero de Ujiji / El Cementerio de Elefantes'),
(45, 1, 8, 'Ernie Pike 1'),
(46, 2, 8, 'Ernie Pike 2'),
(47, 3, 8, 'Ernie Pike 3'),
(48, 4, 8, 'Ernie Pike 4'),
(49, 4, 8, 'Ernie Pike 4'),
(50, 5, 8, 'Ernie Pike 5'),
(51, 1, 12, 'Ticonderoga 1'),
(52, 2, 12, 'Ticonderoga 2'),
(53, 1, 13, 'Puño de Hierro / Una Valiosa Carga'),
(54, 2, 13, '¡Adelante, Marines!'),
(55, 3, 13, 'Sospechosos en la Oscuridad'),
(56, 4, 13, 'Venganza Explosiva / A Sangre Fría'),
(57, 1, 14, 'Sargento Kirk 1'),
(58, 2, 14, 'Sargento Kirk 2'),
(59, 3, 14, 'Sargento Kirk 3'),
(60, 4, 14, 'Sargento Kirk 4'),
(61, 1, 2, 'La Comunidad del Anillo'),
(62, 2, 2, 'Las Dos Torres'),
(63, 4, 2, 'Apéndices'),
(64, 3, 2, 'El Retorno del Rey'),
(65, 1, 16, 'Los Caballeros de Neraka'),
(66, 2, 16, 'El Río de los Muertos'),
(67, 3, 16, 'El Nombre del Único'),
(68, 1, 18, 'El Retorno de la Sombra'),
(69, 1, 17, 'El Libro de los Cuentos Perdidos 1'),
(70, 2, 17, 'El Libro de los Cuentos Perdidos 2'),
(71, 1, 21, 'Fuego y Sangre'),
(72, 1, 23, 'El Reino de Istar'),
(73, 3, 23, 'La Guerra de la Lanza'),
(74, 2, 23, 'El Cataclismo'),
(75, 1, 22, 'La Magia de Krynm'),
(76, 2, 22, 'Kenders, enanos y gnomos'),
(77, 3, 22, 'Historias de Ansalon'),
(78, 1, 24, 'La Misión de Riverwind'),
(79, 2, 24, 'Flint, Rey de los Gullys'),
(80, 3, 24, 'Tanis, el Semielfo'),
(81, 1, 25, 'La Leyenda de Huma'),
(82, 2, 25, 'Espada de Reyes'),
(83, 1, 15, 'El Retorno de los Dragones'),
(84, 2, 15, 'La Tumba de Huma'),
(85, 3, 15, 'La Reina de la Oscuridad'),
(86, 1, 26, 'El Templo de Istar'),
(87, 2, 26, 'La Guerra de los Enanos'),
(88, 3, 26, 'El Umbral del Poder'),
(89, 1, 19, 'Juego de Tronos (I)'),
(90, 5, 19, 'Danza de Dragones (I)'),
(91, 5, 19, 'Danza de Dragones (II)'),
(92, 5, 19, 'Danza de Dragones (III)'),
(93, 1, 20, 'El Caballero de los Siete Reinos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id` int(2) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id`, `nombre`) VALUES
(1, 'Habitación Pablo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `balda`
--
ALTER TABLE `balda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `numero` (`numero`),
  ADD KEY `bal_st_fk1j` (`estanteria`),
  ADD KEY `bal_ubic_fk2` (`ubicacion`);

--
-- Indices de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `estanteria`
--
ALTER TABLE `estanteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`),
  ADD KEY `st_ubic_fk1` (`ubicacion`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `leyendo`
--
ALTER TABLE `leyendo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_book_leyendo` (`id_book`),
  ADD KEY `paginas_leyendo` (`total`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ubic_libro_fk1` (`ubicacion`),
  ADD KEY `st_libro_fk2` (`estanteria`),
  ADD KEY `bal_libro_fk3` (`balda`),
  ADD KEY `titulo` (`titulo`),
  ADD KEY `lib_saga_fk4` (`saga`),
  ADD KEY `lib_col_fk5` (`coleccion`),
  ADD KEY `lib_idio_fk8` (`idioma`),
  ADD KEY `paginas` (`paginas`);

--
-- Indices de la tabla `libro_autor`
--
ALTER TABLE `libro_autor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lib_autor_fk1` (`id_autor`),
  ADD KEY `lib_libaut_fk2` (`id_libro`);

--
-- Indices de la tabla `libro_balda`
--
ALTER TABLE `libro_balda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lib_balda_fk1` (`balda`),
  ADD KEY `lib_balda_fk2` (`libro`);

--
-- Indices de la tabla `libro_generos`
--
ALTER TABLE `libro_generos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libGen_libro_fk1` (`id_libro`),
  ADD KEY `libGen_genero_fk2` (`id_genero`);

--
-- Indices de la tabla `saga`
--
ALTER TABLE `saga`
  ADD PRIMARY KEY (`id_saga`),
  ADD KEY `nombre` (`nombre`),
  ADD KEY `sag_col fk1` (`coleccion`);

--
-- Indices de la tabla `tomoCol`
--
ALTER TABLE `tomoCol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `numero` (`numero`),
  ADD KEY `tomoCol_col_fk1` (`id_coleccion`),
  ADD KEY `tomoCol_lib_fk2` (`libro`);

--
-- Indices de la tabla `tomoSag`
--
ALTER TABLE `tomoSag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `numero` (`numero`),
  ADD KEY `sag_id_fk1` (`id_saga`),
  ADD KEY `sag_lib_fk2` (`libro`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `balda`
--
ALTER TABLE `balda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `estanteria`
--
ALTER TABLE `estanteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `leyendo`
--
ALTER TABLE `leyendo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT de la tabla `libro_autor`
--
ALTER TABLE `libro_autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT de la tabla `libro_balda`
--
ALTER TABLE `libro_balda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT de la tabla `libro_generos`
--
ALTER TABLE `libro_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT de la tabla `saga`
--
ALTER TABLE `saga`
  MODIFY `id_saga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `tomoCol`
--
ALTER TABLE `tomoCol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT de la tabla `tomoSag`
--
ALTER TABLE `tomoSag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `balda`
--
ALTER TABLE `balda`
  ADD CONSTRAINT `bal_st_fk1j` FOREIGN KEY (`estanteria`) REFERENCES `estanteria` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bal_ubic_fk2` FOREIGN KEY (`ubicacion`) REFERENCES `ubicacion` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estanteria`
--
ALTER TABLE `estanteria`
  ADD CONSTRAINT `st_ubic_fk1` FOREIGN KEY (`ubicacion`) REFERENCES `ubicacion` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `leyendo`
--
ALTER TABLE `leyendo`
  ADD CONSTRAINT `id_book_leyendo` FOREIGN KEY (`id_book`) REFERENCES `libro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paginas_leyendo` FOREIGN KEY (`total`) REFERENCES `libro` (`paginas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `lib_balda_fk3` FOREIGN KEY (`balda`) REFERENCES `balda` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lib_col_fk5` FOREIGN KEY (`coleccion`) REFERENCES `coleccion` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lib_idio_fk8` FOREIGN KEY (`idioma`) REFERENCES `idioma` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lib_saga_fk4` FOREIGN KEY (`saga`) REFERENCES `saga` (`id_saga`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lib_st_fk2` FOREIGN KEY (`estanteria`) REFERENCES `estanteria` (`nombre`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lib_ubic_fk1` FOREIGN KEY (`ubicacion`) REFERENCES `ubicacion` (`nombre`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `libro_autor`
--
ALTER TABLE `libro_autor`
  ADD CONSTRAINT `lib_autor_fk1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lib_libaut_fk2` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `libro_balda`
--
ALTER TABLE `libro_balda`
  ADD CONSTRAINT `lib_balda_fk1` FOREIGN KEY (`balda`) REFERENCES `balda` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lib_balda_fk2` FOREIGN KEY (`libro`) REFERENCES `libro` (`titulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `libro_generos`
--
ALTER TABLE `libro_generos`
  ADD CONSTRAINT `libGen_genero_fk2` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `libGen_libro_fk1` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `saga`
--
ALTER TABLE `saga`
  ADD CONSTRAINT `sag_col fk1` FOREIGN KEY (`coleccion`) REFERENCES `coleccion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tomoCol`
--
ALTER TABLE `tomoCol`
  ADD CONSTRAINT `tomoCol_col_fk1` FOREIGN KEY (`id_coleccion`) REFERENCES `coleccion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tomoCol_lib_fk2` FOREIGN KEY (`libro`) REFERENCES `libro` (`titulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tomoSag`
--
ALTER TABLE `tomoSag`
  ADD CONSTRAINT `sag_id_fk1` FOREIGN KEY (`id_saga`) REFERENCES `saga` (`id_saga`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sag_lib_fk2` FOREIGN KEY (`libro`) REFERENCES `libro` (`titulo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
