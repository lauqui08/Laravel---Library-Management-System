-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 09:03 PM
-- Server version: 11.1.2-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `first_name` varchar(300) DEFAULT NULL,
  `last_name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `first_name`, `last_name`) VALUES
(1, 'Thatch', 'Meek'),
(2, 'Abdel', 'Higgonet'),
(3, 'Janet', 'Rigler'),
(4, 'Lombard', 'Hurlin'),
(5, 'Annice', 'Jupe'),
(6, 'Guss', 'Brahan'),
(7, 'Edvard', 'Monckton'),
(8, 'Marion', 'Mayoh'),
(9, 'Marian', 'Deinhard'),
(10, 'Ximenez', 'Beneix'),
(11, 'Ezekiel', 'Cheatle'),
(12, 'Armin', 'Toolin'),
(13, 'Magnum', 'Greir'),
(14, 'Minny', 'Kleinpeltz'),
(15, 'Valdemar', 'Valler'),
(16, 'Ingram', 'Tonry'),
(17, 'Gerome', 'Valentinetti'),
(18, 'Frasco', 'Bredee'),
(19, 'Anya', 'Medcalf'),
(20, 'Jobey', 'Aidler');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `isbn` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `book_description` varchar(1000) DEFAULT NULL,
  `copies_owned` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `isbn`, `title`, `category_id`, `publication_date`, `book_description`, `copies_owned`) VALUES
(1, '771683026-0', 'Magic Sword, The', 7, '2023-08-01', 'orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a', 100),
(2, '870747873-9', '1001 Nights', 1, '0000-00-00', 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', NULL),
(3, '905298142-6', 'Tea with Mussolini', 1, '2023-08-01', 'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', 99),
(4, '555695203-5', 'Slasher House', 1, '0000-00-00', 'nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', NULL),
(5, '653107463-9', 'Last Hard Men, The', 1, '0000-00-00', 'condimentum curabitur in libero ut massa volutpat convallis morbi odio', NULL),
(6, '528934071-8', 'Captain Thunder (Capitán Trueno y el Santo Grial, El) (Prince Killian and the Holy Grail)', 1, '0000-00-00', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus', NULL),
(7, '267818527-3', 'Stooge, The', 1, '0000-00-00', 'nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', NULL),
(8, '927615365-9', 'October Sky', 3, '2023-08-29', 'consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis', 45),
(9, '685959416-0', 'Crow, The: Wicked Prayer', 1, '0000-00-00', 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', NULL),
(10, '521431702-6', 'The Big Sleep', 1, '0000-00-00', 'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', NULL),
(11, '989068811-5', 'Turtle\'s Tale 2: Sammy\'s Escape from Paradise, A (Sammy\'s avonturen 2) (Sammy\'s Adventures 2)', 1, '0000-00-00', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero', NULL),
(12, '182518558-1', 'Gate of Hell (Jigokumon)', 1, '0000-00-00', 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', NULL),
(13, '162972447-5', 'The Siege of Firebase Gloria', 1, '2023-08-04', 'posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', 45),
(14, '934205574-5', 'Last Days, The (Últimos días, Los)', 1, '0000-00-00', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', NULL),
(15, '155983015-8', 'Black Girl (La noire de...)', 1, '2023-08-24', 'nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam', 99),
(16, '761490153-3', 'White Fang (Zanna Bianca)', 1, '0000-00-00', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', NULL),
(17, '918024061-5', 'Stowaway', 1, '0000-00-00', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh', NULL),
(18, '662204840-1', 'Pola X', 1, '0000-00-00', 'in felis eu sapien cursus vestibulum proin eu mi nulla ac', NULL),
(19, '384899030-X', 'Recipe for Love', 1, '0000-00-00', 'at velit eu est congue elementum in hac habitasse platea dictumst morbi', NULL),
(20, '583076979-4', 'Grapes of Wrath, The', 1, '0000-00-00', 'turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit', NULL),
(21, '067471104-1', 'Extremely Loud and Incredibly Close', 1, '0000-00-00', 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac', NULL),
(22, '189331230-5', 'Best of Youth, The (La meglio gioventù)', 1, '0000-00-00', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus', NULL),
(23, '651793604-1', 'Corn Is Green, The', 1, '0000-00-00', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat', NULL),
(24, '872910784-9', 'Cat Run', 1, '0000-00-00', 'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in', NULL),
(25, '166185663-2', 'Love Is News', 1, '0000-00-00', 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', NULL),
(26, '874676572-7', 'Last Resort (National Lampoon\'s Last Resort)', 1, '0000-00-00', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', NULL),
(27, '882940347-4', 'Pups', 1, '0000-00-00', 'at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae', NULL),
(28, '601272291-5', 'Fubar II (Fubar: Balls to the Wall)', 1, '0000-00-00', 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed', NULL),
(29, '504205579-7', 'Man in the White Suit, The', 1, '0000-00-00', 'quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut', NULL),
(30, '556581754-4', 'Face of Another, The (Tanin no kao)', 1, '0000-00-00', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum', NULL),
(31, '893547820-2', 'The Fat Spy', 1, '0000-00-00', 'integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis', NULL),
(32, '262498286-8', 'Friends and Family', 1, '0000-00-00', 'dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis', NULL),
(33, '570280064-8', 'Goodbye, South, Goodbye (Nan guo zai jian, nan guo)', 1, '0000-00-00', 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit', NULL),
(34, '469321605-4', 'The Kiss of Her Flesh', 1, '0000-00-00', 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla', NULL),
(35, '135973175-X', 'Bluebeard', 1, '0000-00-00', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', NULL),
(36, '068054847-5', 'Lone Ranger, The', 1, '0000-00-00', 'nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', NULL),
(37, '482845167-6', 'Gaudi Afternoon', 1, '0000-00-00', 'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse', NULL),
(38, '539537249-0', 'Perils of Gwendoline in the Land of the Yik Yak, The', 1, '0000-00-00', 'nam congue risus semper porta volutpat quam pede lobortis ligula sit', NULL),
(39, '393649721-4', 'Udaan', 1, '0000-00-00', 'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', NULL),
(40, '541532893-9', 'Familia', 1, '0000-00-00', 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante', NULL),
(41, '055008241-7', 'Captain America: The Winter Soldier', 1, '0000-00-00', 'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', NULL),
(42, '762335288-1', 'Sleepless Night (Nuit blanche)', 1, '0000-00-00', 'phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', NULL),
(43, '245712198-1', 'Vie en Rose, La (Môme, La)', 1, '0000-00-00', 'nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia', NULL),
(44, '335205206-9', 'Mambo Kings, The', 1, '0000-00-00', 'pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', NULL),
(45, '474531000-5', 'Next', 1, '0000-00-00', 'ipsum aliquam non mauris morbi non lectus aliquam sit amet', NULL),
(46, '612984424-7', 'Raven, The', 1, '0000-00-00', 'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit', NULL),
(47, '833404781-9', 'In Vanda\'s Room (No Quarto da Vanda)', 1, '0000-00-00', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu', NULL),
(48, '997363999-5', 'Interstate 60', 1, '0000-00-00', 'congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', NULL),
(49, '429521601-1', 'Malone', 1, '0000-00-00', 'volutpat eleifend donec ut dolor morbi vel lectus in quam', NULL),
(50, '292038333-7', 'Zach Galifianakis: Live at the Purple Onion', 1, '0000-00-00', 'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi', NULL),
(51, '977532985-X', 'Her Master\'s Voice', 1, '0000-00-00', 'aliquam non mauris morbi non lectus aliquam sit amet diam in magna', NULL),
(52, '643325214-1', 'End of Watch', 1, '0000-00-00', 'ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', NULL),
(53, '793334383-X', 'Branded to Kill (Koroshi no rakuin)', 1, '0000-00-00', 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum', NULL),
(54, '803252738-9', 'LEGO DC Comics Super Heroes: Justice League vs. Bizarro League', 1, '0000-00-00', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus', NULL),
(55, '938187975-3', 'Letter, The (La lettre)', 1, '0000-00-00', 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat', NULL),
(56, '647769289-9', 'White, Red and Verdone', 1, '0000-00-00', 'duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce', NULL),
(57, '172960477-3', 'Cobb', 1, '0000-00-00', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra', NULL),
(58, '701089874-X', 'My Geisha', 1, '0000-00-00', 'id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', NULL),
(59, '692777956-6', 'Thing, The', 1, '0000-00-00', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique', NULL),
(60, '642908637-2', 'At Land', 1, '0000-00-00', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien', NULL),
(61, '576478610-X', 'White Mischief', 1, '0000-00-00', 'curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in', NULL),
(62, '799837495-0', 'American Rhapsody, An', 1, '0000-00-00', 'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi', NULL),
(63, '686193123-3', 'Uncle Buck', 1, '0000-00-00', 'sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', NULL),
(64, '880405047-0', 'Raiders of Atlantis, The', 1, '0000-00-00', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', NULL),
(65, '680278840-3', 'Man-Thing', 1, '0000-00-00', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', NULL),
(66, '625138778-5', 'Bad Milo (Bad Milo!)', 1, '0000-00-00', 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus', NULL),
(67, '756704489-7', 'When Darkness Falls (När mörkret faller)', 1, '0000-00-00', 'non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed', NULL),
(68, '568110042-1', 'Feast at Midnight, A', 1, '0000-00-00', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', NULL),
(69, '096273562-0', 'Salvador', 1, '0000-00-00', 'non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi', NULL),
(70, '008572702-4', 'Nightmare on Elm Street 5: The Dream Child, A', 1, '0000-00-00', 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', NULL),
(71, '889319425-2', 'Village of the Damned', 1, '0000-00-00', 'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec', NULL),
(72, '335044357-5', 'Town Called Hell, A', 1, '0000-00-00', 'nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', NULL),
(73, '820442833-2', 'Hidden Face, The (La cara oculta)', 1, '0000-00-00', 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit', NULL),
(74, '677292889-X', 'Reckoning, The', 1, '0000-00-00', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque', NULL),
(75, '502345955-1', 'Long Voyage Home, The', 1, '0000-00-00', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', NULL),
(76, '897733497-7', 'Mayerling', 1, '0000-00-00', 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis', NULL),
(77, '802615991-8', 'Apostle Peter and The Last Supper', 1, '0000-00-00', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula', NULL),
(78, '374772151-6', 'Miss Farkku-Suomi', 1, '0000-00-00', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non', NULL),
(79, '238077741-1', 'Band Called Death, A', 1, '0000-00-00', 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', NULL),
(80, '005398037-9', '99 and 44/100% Dead', 1, '0000-00-00', 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', NULL),
(81, '982955743-X', 'Paper Birds (Pájaros de papel)', 1, '0000-00-00', 'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu', NULL),
(82, '621633487-5', 'How to Succeed in Business Without Really Trying', 1, '0000-00-00', 'in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', NULL),
(83, '852495587-2', 'The Reunion', 1, '0000-00-00', 'amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus', NULL),
(84, '746719393-9', 'Goon', 1, '0000-00-00', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', NULL),
(85, '500746869-X', 'St. Vincent', 1, '0000-00-00', 'integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis', NULL),
(86, '250845762-0', 'Carmen', 1, '0000-00-00', 'metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus', NULL),
(87, '226404381-4', 'Vincent & Theo', 1, '0000-00-00', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel', NULL),
(88, '335944631-3', 'Hercules', 1, '0000-00-00', 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut', NULL),
(89, '797643374-1', 'Redline', 1, '0000-00-00', 'ac diam cras pellentesque volutpat dui maecenas tristique est et tempus', NULL),
(90, '545057870-9', 'Kiler', 1, '0000-00-00', 'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', NULL),
(91, '415543874-7', 'Ace Ventura: When Nature Calls', 1, '0000-00-00', 'donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', NULL),
(92, '573400775-7', 'Craig\'s Wife', 1, '0000-00-00', 'tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non', NULL),
(93, '421261373-5', 'Animal', 1, '0000-00-00', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur', NULL),
(94, '247021953-1', 'Dog Pound', 1, '0000-00-00', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis', NULL),
(95, '977176083-1', 'Japanese Girls at the Harbor (Minato no nihon musume)', 1, '0000-00-00', 'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', NULL),
(96, '468942748-8', 'B.N.B. (Bunty Aur Babli)', 1, '0000-00-00', 'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl', NULL),
(97, '895307098-8', 'Avalon', 1, '0000-00-00', 'mi sit amet lobortis sapien sapien non mi integer ac neque', NULL),
(98, '016106751-4', 'Hanging Garden, The', 1, '0000-00-00', 'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi', NULL),
(99, '192681868-7', 'Saw', 1, '0000-00-00', 'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', NULL),
(100, '417919887-8', 'Lucky Luke: The Ballad of the Daltons', 1, '0000-00-00', 'nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', NULL),
(101, '930265850-3', 'Foxy Brown', 1, '0000-00-00', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in', NULL),
(102, '848952706-7', 'Nana', 1, '0000-00-00', 'ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed', NULL),
(103, '828991952-2', 'Event Horizon', 1, '0000-00-00', 'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', NULL),
(104, '111842992-3', 'Letzte schöne Herbsttag, Der', 1, '0000-00-00', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', NULL),
(105, '026479137-1', 'Dance Party, USA', 1, '0000-00-00', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', NULL),
(106, '395866016-9', 'In Passing', 1, '0000-00-00', 'nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam', NULL),
(107, '538060921-X', 'Instructions Not Included (No se Aceptan Devoluciones)', 1, '0000-00-00', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', NULL),
(108, '675029506-1', 'Sex Drive', 1, '0000-00-00', 'suspendisse potenti in eleifend quam a odio in hac habitasse', NULL),
(109, '283927549-X', 'Barbershop 2: Back in Business', 1, '0000-00-00', 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', NULL),
(110, '023489876-3', 'Felix the Cat: The Movie', 1, '0000-00-00', 'donec odio justo sollicitudin ut suscipit a feugiat et eros', NULL),
(111, '638035715-7', 'Ballet Shoes', 1, '0000-00-00', 'justo morbi ut odio cras mi pede malesuada in imperdiet et', NULL),
(112, '112234785-5', 'Addiction, The', 1, '0000-00-00', 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', NULL),
(113, '425895071-8', 'American Heart', 1, '0000-00-00', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros', NULL),
(114, '989263488-8', 'Bridegroom', 1, '0000-00-00', 'eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper', NULL),
(115, '796399741-2', 'Ninjas vs. Zombies', 1, '0000-00-00', 'mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', NULL),
(116, '114699499-0', 'Michael', 1, '0000-00-00', 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', NULL),
(117, '519288538-8', 'Call of the Wild, The', 1, '0000-00-00', 'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', NULL),
(118, '563281625-7', 'Bert - Den siste oskulden', 1, '0000-00-00', 'nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', NULL),
(119, '125201844-4', 'The Wind in the Willows', 1, '0000-00-00', 'amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', NULL),
(120, '715855115-6', 'Let\'s Make Love', 1, '0000-00-00', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', NULL),
(121, '281515596-6', 'Pieces of April', 1, '0000-00-00', 'id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi', NULL),
(122, '499596538-6', 'Favor, The', 1, '0000-00-00', 'magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', NULL),
(123, '524150271-8', 'City for Conquest', 1, '0000-00-00', 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', NULL),
(124, '847604283-3', 'Snow Queen', 1, '0000-00-00', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', NULL),
(125, '344163620-1', 'That Certain Summer', 1, '0000-00-00', 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque', NULL),
(126, '634629587-X', 'Spiral', 1, '0000-00-00', 'accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae', NULL),
(127, '739160649-9', 'Aashiqui 2', 1, '0000-00-00', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', NULL),
(128, '539521498-4', 'Voodoo Tiger', 1, '0000-00-00', 'eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa', NULL),
(129, '846188674-7', 'Killers, The', 1, '0000-00-00', 'mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt', NULL),
(130, '292360068-1', 'Agnosia', 1, '0000-00-00', 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis', NULL),
(131, '054101240-1', 'Jane Austen in Manhattan', 1, '0000-00-00', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in', NULL),
(132, '259781272-3', 'Abelar: Tales of an Ancient Empire (Tales of an Ancient Empire)', 1, '0000-00-00', 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices', NULL),
(133, '562161542-5', 'La dama boba', 1, '0000-00-00', 'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero', NULL),
(134, '787768151-8', 'SOS - en segelsällskapsresa', 1, '0000-00-00', 'proin eu mi nulla ac enim in tempor turpis nec euismod', NULL),
(135, '091840393-6', 'Two-Lane Blacktop', 1, '0000-00-00', 'non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', NULL),
(136, '812064913-3', 'Motel, The', 1, '0000-00-00', 'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus', NULL),
(137, '453204643-2', 'Duchess of Langeais, The (a.k.a. Don\'t Touch the Axe) (Ne touchez pas la hache)', 1, '0000-00-00', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque', NULL),
(138, '294641424-8', 'Saludos Amigos', 1, '0000-00-00', 'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in', NULL),
(139, '251803724-1', 'Stones in Exile', 1, '0000-00-00', 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer', NULL),
(140, '587089303-8', 'Babylon 5: The Lost Tales - Voices in the Dark', 1, '0000-00-00', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo', NULL),
(141, '312133962-1', 'Rocky VI ', 1, '0000-00-00', 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum', NULL),
(142, '721552043-9', 'Koumiko Mystery, The (Mystère Koumiko, Le)', 1, '0000-00-00', 'semper est quam pharetra magna ac consequat metus sapien ut', NULL),
(143, '187364211-3', 'River, The', 1, '0000-00-00', 'ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio', NULL),
(144, '027321024-6', 'Piece of the Action, A', 1, '0000-00-00', 'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices', NULL),
(145, '443731092-6', 'Good Evening, Mr. Wallenberg (God afton, Herr Wallenberg)', 1, '0000-00-00', 'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi', NULL),
(146, '568350518-6', 'Who Is Cletis Tout?', 1, '0000-00-00', 'molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci', NULL),
(147, '611468875-9', 'Shadows (Cienie)', 1, '0000-00-00', 'luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum', NULL),
(148, '042710258-8', 'Vlad Tepes (Vlad &#354;epe&#351;)', 1, '0000-00-00', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed', NULL),
(149, '027778830-7', 'Horror Hotel (a.k.a. City of the Dead, The)', 1, '0000-00-00', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', NULL),
(150, '318343605-1', 'You Again', 1, '0000-00-00', 'risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum', NULL),
(151, '017072073-X', 'Forever, Darling', 1, '0000-00-00', 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor', NULL),
(152, '855581719-6', 'Remo Williams: The Adventure Begins', 1, '0000-00-00', 'dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed', NULL),
(153, '812901856-X', 'Yes Or No', 1, '0000-00-00', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', NULL),
(154, '360353830-7', 'Diary of a Wimpy Kid: Rodrick Rules', 1, '0000-00-00', 'amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', NULL),
(155, '574857524-8', 'Dead Fish', 1, '0000-00-00', 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in', NULL),
(156, '665692944-3', 'Peach Thief, The (Kradetzat na praskovi)', 1, '0000-00-00', 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', NULL),
(157, '926793562-3', 'Justice League: Doom ', 1, '0000-00-00', 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', NULL),
(158, '384854598-5', 'Scarlet Letter, The (Der scharlachrote Buchstabe)', 1, '0000-00-00', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra', NULL),
(159, '534771758-0', 'Highway to Hell', 1, '0000-00-00', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue', NULL),
(160, '172118638-7', 'Carnages (a.k.a. Carnage)', 1, '0000-00-00', 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', NULL),
(161, '656678344-X', 'Now Where Did the Seventh Company Get to? (Mais où est donc passée la 7ème compagnie)', 1, '0000-00-00', 'morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed', NULL),
(162, '618214125-5', 'My House in Umbria', 1, '0000-00-00', 'congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', NULL),
(163, '618115790-5', 'Movie Crazy', 1, '0000-00-00', 'est risus auctor sed tristique in tempus sit amet sem fusce consequat', NULL),
(164, '403165065-5', 'Werewolf of London', 1, '0000-00-00', 'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', NULL),
(165, '440706797-7', 'Tony Arzenta (No Way Out) (Big Guns)', 1, '0000-00-00', 'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', NULL),
(166, '842381534-X', 'Election (Hak se wui)', 1, '0000-00-00', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede', NULL),
(167, '635254480-0', 'Possible Loves (Amores Possíveis)', 1, '0000-00-00', 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis', NULL),
(168, '845326240-3', 'Teen Witch', 1, '0000-00-00', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam', NULL),
(169, '932484338-9', 'Waterdance, The', 1, '0000-00-00', 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in', NULL),
(170, '859051811-6', '14 Blades (Jin yi wei)', 1, '0000-00-00', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere', NULL),
(171, '758791674-1', 'Adrift (À Deriva)', 1, '0000-00-00', 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend', NULL),
(172, '016715245-9', 'Million Dollar Mystery', 1, '0000-00-00', 'vel nisl duis ac nibh fusce lacus purus aliquet at', NULL),
(173, '710944548-8', 'Eye for an Eye', 1, '0000-00-00', 'amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', NULL),
(174, '828582955-3', 'Gentlemen of Fortune (Dzhentlmeny udachi)', 1, '0000-00-00', 'nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', NULL),
(175, '467811414-9', 'Evil Bong', 1, '0000-00-00', 'curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo', NULL),
(176, '402166674-5', 'Promise, The (Versprechen, Das)', 1, '0000-00-00', 'aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate', NULL),
(177, '700366420-8', 'Legend of Sleepy Hollow, The', 1, '0000-00-00', 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', NULL),
(178, '998888206-8', 'Hell\'s Highway: The True Story of Highway Safety Films', 1, '0000-00-00', 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel', NULL),
(179, '346303795-5', 'Carry on Cruising', 1, '0000-00-00', 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', NULL),
(180, '712693250-2', '1½ Knights - In Search of the Ravishing Princess Herzelinde', 1, '0000-00-00', 'lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id', NULL),
(181, '199736530-8', 'Informant', 1, '0000-00-00', 'venenatis turpis enim blandit mi in porttitor pede justo eu massa', NULL),
(182, '820653363-X', 'Accidental Tourist, The', 1, '0000-00-00', 'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', NULL),
(183, '683212848-7', 'Kiss Me Goodbye', 1, '0000-00-00', 'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum', NULL),
(184, '935561740-2', 'Casanova', 1, '0000-00-00', 'suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum', NULL),
(185, '996911008-X', 'Clouds of Sils Maria', 1, '0000-00-00', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc', NULL),
(186, '375318041-6', 'Skokie ', 1, '0000-00-00', 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', NULL),
(187, '198431177-8', 'It Conquered the World', 1, '0000-00-00', 'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam', NULL),
(188, '826780978-3', 'Busher, The', 1, '0000-00-00', 'sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi', NULL),
(189, '003473355-8', 'Good Luck. And Take Care of Each Other', 1, '0000-00-00', 'pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi', NULL),
(190, '415108417-7', 'Eden', 1, '0000-00-00', 'nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit', NULL),
(191, '244298292-7', 'Snails, The (Escargots, Les)', 1, '0000-00-00', 'duis bibendum felis sed interdum venenatis turpis enim blandit mi in', NULL),
(192, '488288749-5', 'Student Bodies', 1, '0000-00-00', 'velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo', NULL),
(193, '355868133-9', 'Around the World in 80 Days', 1, '0000-00-00', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', NULL),
(194, '766330675-9', 'Stroszek', 1, '0000-00-00', 'hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate', NULL),
(195, '596884316-0', 'Giorgino', 1, '0000-00-00', 'in imperdiet et commodo vulputate justo in blandit ultrices enim', NULL),
(196, '149352724-X', 'King and the Mockingbird, The (Le roi et l\'oiseau)', 1, '0000-00-00', 'vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur', NULL),
(197, '528077835-4', 'Evolver', 1, '0000-00-00', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante', NULL),
(198, '037890071-4', 'Land of the Lost', 1, '0000-00-00', 'a odio in hac habitasse platea dictumst maecenas ut massa', NULL),
(199, '687587872-0', 'Hoffa', 1, '0000-00-00', 'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', NULL),
(200, '574048581-9', 'Once Upon a Time in China and America (Wong Fei Hung: Chi sai wik hung see) ', 1, '0000-00-00', 'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi', NULL),
(201, '751124769-5', 'Werckmeister Harmonies (Werckmeister harmóniák)', 1, '0000-00-00', 'orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', NULL),
(202, '346497028-0', 'Very Brady Sequel, A', 1, '0000-00-00', 'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse', NULL),
(203, '951813106-6', 'Shades of Fern (Stín kapradiny)', 1, '0000-00-00', 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue', NULL),
(204, '822236638-6', 'Close to Leo (Tout contre Léo)', 1, '0000-00-00', 'bibendum morbi non quam nec dui luctus rutrum nulla tellus', NULL),
(205, '268713439-2', 'My Neighbor Totoro (Tonari no Totoro)', 1, '0000-00-00', 'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus', NULL),
(206, '717531097-8', 'I Hate But Love (Nikui an-chikushô)', 1, '0000-00-00', 'fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet', NULL),
(207, '298890606-8', 'Dacii', 1, '0000-00-00', 'volutpat dui maecenas tristique est et tempus semper est quam', NULL),
(208, '918232495-6', 'Tully', 1, '0000-00-00', 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis', NULL),
(209, '425695017-6', 'Damien: Omen II', 1, '0000-00-00', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique', NULL),
(210, '328554819-3', 'Bikini Summer', 1, '0000-00-00', 'curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit', NULL),
(211, '783003275-0', 'Sex & Drugs & Rock & Roll', 1, '0000-00-00', 'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat', NULL),
(212, '207076056-1', 'Die Fischerin', 1, '0000-00-00', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', NULL),
(213, '473072353-8', 'Red Angel (Akai tenshi)', 1, '0000-00-00', 'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', NULL),
(214, '248292039-6', 'Saw VI', 1, '0000-00-00', 'rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui', NULL),
(215, '414367768-7', 'Transit', 1, '0000-00-00', 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', NULL),
(216, '936288223-X', 'Actress, The', 1, '0000-00-00', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur', NULL),
(217, '051008649-7', 'Roman Holiday', 1, '0000-00-00', 'leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio', NULL),
(218, '111382139-6', 'Monkey\'s Paw, The', 1, '0000-00-00', 'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet', NULL),
(219, '073411682-9', 'Celeste and Jesse Forever (Celeste & Jesse Forever)', 1, '0000-00-00', 'morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo', NULL),
(220, '184786326-4', 'Manitou, The', 1, '0000-00-00', 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in', NULL),
(221, '141655811-X', 'Raiders of the Lost Ark (Indiana Jones and the Raiders of the Lost Ark)', 1, '0000-00-00', 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit', NULL),
(222, '675025904-9', 'Hustle & Flow', 1, '0000-00-00', 'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi', NULL),
(223, '767083364-5', 'Favor, The', 1, '0000-00-00', 'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam', NULL),
(224, '071524406-X', 'Ivul', 1, '0000-00-00', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', NULL),
(225, '735440215-X', 'Man Called Sledge, A', 1, '0000-00-00', 'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo', NULL),
(226, '322490520-4', 'Knack ...and How to Get It, The', 1, '0000-00-00', 'nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', NULL),
(227, '917503979-6', 'Benny Goodman Story, The', 1, '0000-00-00', 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', NULL),
(228, '257152011-3', 'Hell Is Sold Out', 1, '0000-00-00', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis', NULL),
(229, '525199589-X', 'Prata Palomares', 1, '0000-00-00', 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', NULL),
(230, '572334549-4', 'Original Gangstas', 1, '0000-00-00', 'velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', NULL),
(231, '982136339-3', 'Sh! The Octopus', 1, '0000-00-00', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida', NULL),
(232, '310878731-4', 'Pleasure Seekers, The', 1, '0000-00-00', 'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia', NULL),
(233, '125523704-X', 'Tale of Two Cities, A', 1, '0000-00-00', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien', NULL),
(234, '635201754-1', 'Westbound', 1, '0000-00-00', 'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', NULL),
(235, '937683019-9', 'The Do-Deca-Pentathlon', 1, '0000-00-00', 'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum', NULL),
(236, '790738317-X', 'Speedway', 1, '0000-00-00', 'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi', NULL),
(237, '797080086-6', 'Somewhere in Time', 1, '0000-00-00', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id', NULL),
(238, '592761317-9', 'Mona Lisa', 1, '0000-00-00', 'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam', NULL),
(239, '311559765-7', 'Empire of the Sun', 1, '0000-00-00', 'in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', NULL),
(240, '962869241-0', 'Bathory', 1, '0000-00-00', 'a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', NULL),
(241, '689523965-0', 'Just One of the Girls', 1, '0000-00-00', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', NULL),
(242, '125748088-X', 'Steam Experiment, The', 1, '0000-00-00', 'fusce lacus purus aliquet at feugiat non pretium quis lectus', NULL),
(243, '333243087-4', 'Car 54, Where Are You?', 1, '0000-00-00', 'pede malesuada in imperdiet et commodo vulputate justo in blandit', NULL),
(244, '333960460-6', 'Slasher House', 1, '0000-00-00', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', NULL),
(245, '373739836-4', 'Firepower', 1, '0000-00-00', 'cursus urna ut tellus nulla ut erat id mauris vulputate', NULL),
(246, '735746665-5', 'Baron of Arizona, The', 1, '0000-00-00', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit', NULL),
(247, '573979078-6', 'Those Magnificent Men in Their Flying Machines', 1, '0000-00-00', 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', NULL),
(248, '420632895-1', 'Begone Dull Care', 1, '0000-00-00', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in', NULL),
(249, '428550468-5', 'Fly Away', 1, '0000-00-00', 'volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', NULL),
(250, '754688728-3', 'Heist', 1, '0000-00-00', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue', NULL),
(251, '099084707-1', 'Three Came Home', 1, '0000-00-00', 'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', NULL),
(252, '261262273-X', 'Parisienne, La (Une parisienne)', 1, '0000-00-00', 'proin at turpis a pede posuere nonummy integer non velit donec diam neque', NULL),
(253, '095591009-9', 'Ricky Gervais Live 2: Politics', 1, '0000-00-00', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', NULL),
(254, '628254464-5', 'Where the Wild Things Are', 1, '0000-00-00', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', NULL),
(255, '969256075-9', 'Mr. Jealousy', 1, '0000-00-00', 'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque', NULL),
(256, '478479628-2', 'Woodstock', 1, '0000-00-00', 'pellentesque volutpat dui maecenas tristique est et tempus semper est', NULL),
(257, '077685070-9', 'Night at the Opera, A', 1, '0000-00-00', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien', NULL),
(258, '658538355-9', 'Hitcher, The', 1, '0000-00-00', 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi', NULL),
(259, '630155235-0', 'Gun Shy', 1, '0000-00-00', 'donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in', NULL),
(260, '031056098-5', 'Tupac: Resurrection', 1, '0000-00-00', 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare', NULL),
(261, '958575191-7', 'Painting Sellers, The (Taulukauppiaat)', 1, '0000-00-00', 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et', NULL),
(262, '078080651-4', 'Werner - Volles Rooäää', 1, '0000-00-00', 'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', NULL),
(263, '726590510-5', 'God\'s Not Dead', 1, '0000-00-00', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at', NULL),
(264, '790828303-9', 'Boogeyman, The', 1, '0000-00-00', 'potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis', NULL),
(265, '195768308-2', 'Edge of Love, The', 1, '0000-00-00', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed', NULL),
(266, '896716039-9', 'Reach the Rock', 1, '0000-00-00', 'mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', NULL),
(267, '762254321-7', 'Inn of Evil (Inochi bô ni furô)', 1, '0000-00-00', 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum', NULL),
(268, '000369892-0', 'Chasing Christmas', 1, '0000-00-00', 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis', NULL),
(269, '395376750-X', 'Return to Salem\'s Lot, A', 1, '0000-00-00', 'at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat', NULL),
(270, '792843444-X', 'Sex and Lucia (Lucía y el sexo)', 1, '0000-00-00', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum', NULL),
(271, '875367105-8', 'Elevator to the Gallows (a.k.a. Frantic) (Ascenseur pour l\'échafaud)', 1, '0000-00-00', 'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat', NULL),
(272, '090170850-X', '...All the Marbles (California Dolls, The)', 1, '0000-00-00', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit', NULL),
(273, '549396466-X', 'The Divine Move', 1, '0000-00-00', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', NULL),
(274, '522830747-8', 'Robber, The (Der Räuber)', 1, '0000-00-00', 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae', NULL),
(275, '352781578-3', 'Screamers', 1, '0000-00-00', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis', NULL),
(276, '692306547-X', 'Left-Hand Side of the Fridge, The (Moitié gauche du frigo, La)', 1, '0000-00-00', 'primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra', NULL),
(277, '410475999-6', 'Crazies, The', 1, '0000-00-00', 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', NULL),
(278, '337214392-2', 'Axed', 1, '0000-00-00', 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio', NULL),
(279, '047241872-6', 'Modify ', 1, '0000-00-00', 'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis', NULL),
(280, '538370441-8', 'Call Me Savage', 1, '0000-00-00', 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci', NULL),
(281, '468306026-4', 'Jungleground', 1, '0000-00-00', 'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet', NULL),
(282, '354730919-0', 'Wanda', 1, '0000-00-00', 'eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim', NULL),
(283, '587299331-5', 'Death Race 3: Inferno', 1, '0000-00-00', 'aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id', NULL),
(284, '591424703-9', 'Bad Boy (Dawg)', 1, '0000-00-00', 'vel augue vestibulum ante ipsum primis in faucibus orci luctus', NULL),
(285, '137896094-7', 'Downloaded', 1, '0000-00-00', 'sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes', NULL),
(286, '829683700-5', 'Jack and Jill', 1, '0000-00-00', 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci', NULL),
(287, '347069591-1', 'Tokyo Drifter (Tôkyô nagaremono)', 1, '0000-00-00', 'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim', NULL),
(288, '191848684-0', 'Skylab, Le', 1, '0000-00-00', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', NULL),
(289, '255463876-4', 'Top of the Food Chain (a.k.a. Invasion!)', 1, '0000-00-00', 'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque', NULL),
(290, '827267501-3', 'O\'Horten', 1, '0000-00-00', 'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et', NULL),
(291, '938920926-9', 'My Son the Fanatic', 1, '0000-00-00', 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum', NULL),
(292, '323716737-1', 'All the Rage (It\'s the Rage)', 1, '0000-00-00', 'porttitor pede justo eu massa donec dapibus duis at velit eu est congue', NULL),
(293, '652988325-8', 'Doctor, The', 1, '0000-00-00', 'orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', NULL),
(294, '002813834-1', 'Beautiful Thing', 1, '0000-00-00', 'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', NULL),
(295, '858888454-2', 'Gods of the Plague (Götter der Pest)', 1, '0000-00-00', 'tellus nisi eu orci mauris lacinia sapien quis libero nullam', NULL),
(296, '453814313-8', 'Don Quixote (Don Quijote de Orson Welles)', 1, '0000-00-00', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', NULL),
(297, '190036157-4', 'Li\'l Abner', 1, '0000-00-00', 'urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi', NULL),
(298, '500130310-9', 'Ghost in the Shell 2: Innocence (a.k.a. Innocence) (Inosensu)', 1, '0000-00-00', 'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et', NULL),
(299, '780246191-X', 'Repeaters ', 1, '0000-00-00', 'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit', NULL);
INSERT INTO `book` (`id`, `isbn`, `title`, `category_id`, `publication_date`, `book_description`, `copies_owned`) VALUES
(300, '244948065-X', 'North West Frontier', 1, '0000-00-00', 'ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', NULL),
(301, '936994103-7', 'Circle of Eight', 1, '0000-00-00', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est', NULL),
(302, '861337217-1', 'Children of the Corn', 1, '0000-00-00', 'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi', NULL),
(303, '330006144-X', 'Lt. Robin Crusoe, U.S.N.', 1, '0000-00-00', 'erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit', NULL),
(304, '986000767-5', 'Young Einstein', 1, '0000-00-00', 'venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at', NULL),
(305, '392081265-4', 'Buffalo Girls', 1, '0000-00-00', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra', NULL),
(306, '208133362-7', 'Devil\'s Trap, The (Dáblova past)', 1, '0000-00-00', 'aliquam convallis nunc proin at turpis a pede posuere nonummy', NULL),
(307, '633738796-1', 'Kenny', 1, '0000-00-00', 'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum', NULL),
(308, '109724600-0', 'Idiocracy', 1, '0000-00-00', 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus', NULL),
(309, '907216998-0', 'Off and Running ', 1, '0000-00-00', 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', NULL),
(310, '041741984-8', 'Control (Kontroll)', 1, '0000-00-00', 'pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla', NULL),
(311, '744519220-4', 'How to Be', 1, '0000-00-00', 'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices', NULL),
(312, '675810246-7', 'Inkheart', 1, '0000-00-00', 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id', NULL),
(313, '494245074-8', 'Pollyanna', 1, '0000-00-00', 'in purus eu magna vulputate luctus cum sociis natoque penatibus et', NULL),
(314, '331800055-8', 'Jennifer\'s Body', 1, '0000-00-00', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo', NULL),
(315, '671719604-1', 'Phantom Tollbooth, The', 1, '0000-00-00', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque', NULL),
(316, '551911705-5', 'Green Street Hooligans (a.k.a. Hooligans)', 1, '0000-00-00', 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae', NULL),
(317, '509801698-3', 'Religulous', 1, '0000-00-00', 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend', NULL),
(318, '906481561-5', 'I Accuse', 1, '0000-00-00', 'ut erat id mauris vulputate elementum nullam varius nulla facilisi', NULL),
(319, '289649086-8', 'Allegheny Uprising', 1, '0000-00-00', 'vel nisl duis ac nibh fusce lacus purus aliquet at', NULL),
(320, '810819799-6', 'Evil Bong', 1, '0000-00-00', 'magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus', NULL),
(321, '549403716-9', 'Newton Boys, The', 1, '0000-00-00', 'id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', NULL),
(322, '743111207-6', 'Moll Flanders', 1, '0000-00-00', 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis', NULL),
(323, '400966787-7', 'Wuthering Heights', 1, '0000-00-00', 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', NULL),
(324, '892981546-4', 'Encounters at the End of the World', 1, '0000-00-00', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', NULL),
(325, '686937897-5', 'Death Hunt', 1, '0000-00-00', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium', NULL),
(326, '743971737-6', 'Darkman II: Return of Durant, The', 1, '0000-00-00', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse', NULL),
(327, '934410772-6', 'Defendor', 1, '0000-00-00', 'pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut', NULL),
(328, '603054766-6', 'Bloodsport 2 (a.k.a. Bloodsport II: The Next Kumite)', 1, '0000-00-00', 'volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam', NULL),
(329, '253183610-1', 'No Retreat, No Surrender 2: Raging Thunder', 1, '0000-00-00', 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', NULL),
(330, '808632313-7', 'Tibet: Cry of the Snow Lion', 1, '0000-00-00', 'consequat lectus in est risus auctor sed tristique in tempus sit', NULL),
(331, '107665054-6', 'I, Frankenstein', 1, '0000-00-00', 'amet justo morbi ut odio cras mi pede malesuada in', NULL),
(332, '196859327-6', 'Alamo, The', 1, '0000-00-00', 'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit', NULL),
(333, '672290175-0', 'Wasteland', 1, '0000-00-00', 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in', NULL),
(334, '657443308-8', 'Adventure in Baltimore', 1, '0000-00-00', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', NULL),
(335, '685857811-0', 'Morning Glory', 1, '0000-00-00', 'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit', NULL),
(336, '964578374-7', 'Everyday People', 1, '0000-00-00', 'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec', NULL),
(337, '304864004-5', 'Yesterday\'s Enemy', 1, '0000-00-00', 'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis', NULL),
(338, '755538135-4', 'X: The Unknown', 1, '0000-00-00', 'tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula', NULL),
(339, '497959035-7', 'Girls on the Road (a.k.a. Hot Summer Week)', 1, '0000-00-00', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium', NULL),
(340, '524688790-1', 'Thousand Clowns, A', 1, '0000-00-00', 'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean', NULL),
(341, '276477939-9', 'Catwalk', 1, '0000-00-00', 'odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet', NULL),
(342, '188863501-0', 'Boys\' Night Out', 1, '0000-00-00', 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus', NULL),
(343, '372892050-9', 'Destination Tokyo', 1, '0000-00-00', 'pellentesque volutpat dui maecenas tristique est et tempus semper est quam', NULL),
(344, '091392882-8', 'Creepshow 2', 1, '0000-00-00', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in', NULL),
(345, '507484664-1', 'Harakiri (Seppuku)', 1, '0000-00-00', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices', NULL),
(346, '198091189-4', 'Emperor', 1, '0000-00-00', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique', NULL),
(347, '054617790-5', 'Wild Thornberrys Movie, The', 1, '0000-00-00', 'luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', NULL),
(348, '826006267-4', 'Bright Lights, Big City', 1, '0000-00-00', 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', NULL),
(349, '465098579-X', 'Drive Thru', 1, '0000-00-00', 'vel accumsan tellus nisi eu orci mauris lacinia sapien quis', NULL),
(350, '651603518-0', 'High Heels (Tacones lejanos)', 1, '0000-00-00', 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', NULL),
(351, '299793502-4', 'Don\'t Go Near the Water', 1, '0000-00-00', 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', NULL),
(352, '733869093-6', 'Kivski Freski', 1, '0000-00-00', 'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', NULL),
(353, '699789068-7', 'Breaking the Rules', 1, '0000-00-00', 'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet', NULL),
(354, '783412748-9', 'Grease 2', 1, '0000-00-00', 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', NULL),
(355, '832042295-7', 'Zeitgeist: Addendum', 1, '0000-00-00', 'duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam', NULL),
(356, '564802120-8', 'Hotel Reserve', 1, '0000-00-00', 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate', NULL),
(357, '822880829-1', 'Last Chance', 1, '0000-00-00', 'vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient', NULL),
(358, '746610235-2', 'Kagi (Odd Obsession)', 1, '0000-00-00', 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor', NULL),
(359, '118041003-3', 'Springfield Rifle', 1, '0000-00-00', 'morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus', NULL),
(360, '356841877-0', 'Happiest Girl in the World, The (Cea mai fericita fata din lume)', 1, '0000-00-00', 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis', NULL),
(361, '620484808-9', 'Way... Way Out', 1, '0000-00-00', 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae', NULL),
(362, '363751457-5', 'Tokyo Godfathers', 1, '0000-00-00', 'habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla', NULL),
(363, '341837832-3', 'Funeral, The', 1, '0000-00-00', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula', NULL),
(364, '321695888-4', 'Right Kind of Wrong, The', 1, '0000-00-00', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', NULL),
(365, '860927707-0', 'Dragon Hunters (Chasseurs de dragons)', 1, '0000-00-00', 'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed', NULL),
(366, '814535457-9', 'Chang: A Drama of the Wilderness', 1, '0000-00-00', 'ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae', NULL),
(367, '253975588-7', 'Shaggy Dog, The', 1, '0000-00-00', 'in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', NULL),
(368, '259262212-8', 'Riff-Raff', 1, '0000-00-00', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', NULL),
(369, '232536336-8', 'The Child and the Policeman', 1, '0000-00-00', 'in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', NULL),
(370, '042571022-X', 'Rio Bravo', 1, '0000-00-00', 'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in', NULL),
(371, '422292786-4', 'Kumail Nanjiani: Beta Male ', 1, '0000-00-00', 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', NULL),
(372, '316873667-8', 'Ideal Husband, An', 1, '0000-00-00', 'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', NULL),
(373, '059891269-X', 'Spring Breakdown', 1, '0000-00-00', 'nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', NULL),
(374, '604640814-8', 'Jaws', 1, '0000-00-00', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', NULL),
(375, '129383181-6', 'In Your Dreams (Dans tes rêves)', 1, '0000-00-00', 'rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', NULL),
(376, '281536779-3', 'Cantinflas', 1, '0000-00-00', 'proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices', NULL),
(377, '853509887-9', 'StarStruck', 1, '0000-00-00', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus', NULL),
(378, '371916844-1', 'Fitzgerald Family Christmas, The', 1, '0000-00-00', 'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut', NULL),
(379, '791618325-0', 'Cold Creek Manor', 1, '0000-00-00', 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat', NULL),
(380, '658240119-X', 'Beast from Haunted Cave', 1, '0000-00-00', 'in felis donec semper sapien a libero nam dui proin leo odio', NULL),
(381, '251789781-6', 'Missionary', 1, '0000-00-00', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', NULL),
(382, '424124015-1', 'The Cat\'s Out', 1, '0000-00-00', 'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', NULL),
(383, '050954152-6', 'First Comes Love', 1, '0000-00-00', 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', NULL),
(384, '726679085-9', 'Sauna', 1, '0000-00-00', 'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', NULL),
(385, '228832020-6', 'Ambushers, The', 1, '0000-00-00', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', NULL),
(386, '947976813-5', 'Plastic Paradise: The Great Pacific Garbage Patch', 1, '0000-00-00', 'augue vestibulum ante ipsum primis in faucibus orci luctus et', NULL),
(387, '575065360-9', 'Zodiac', 1, '0000-00-00', 'amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', NULL),
(388, '513465802-1', 'Destruction Force', 1, '0000-00-00', 'congue risus semper porta volutpat quam pede lobortis ligula sit amet', NULL),
(389, '147687060-8', 'Stepford Wives, The', 1, '0000-00-00', 'pretium quis lectus suspendisse potenti in eleifend quam a odio', NULL),
(390, '792120592-5', 'Kevin & Perry Go Large', 1, '0000-00-00', 'at velit eu est congue elementum in hac habitasse platea dictumst morbi', NULL),
(391, '972917592-6', 'Tomb, The', 1, '0000-00-00', 'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', NULL),
(392, '841612911-8', 'Paid', 1, '0000-00-00', 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis', NULL),
(393, '574664611-3', 'Extremely Loud and Incredibly Close', 1, '0000-00-00', 'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio', NULL),
(394, '200196857-4', 'Jam', 1, '0000-00-00', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', NULL),
(395, '133655699-4', 'Paranoia Agent', 1, '0000-00-00', 'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem', NULL),
(396, '715764602-1', 'Winter of Discontent', 1, '0000-00-00', 'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue', NULL),
(397, '185180168-5', 'Alan Smithee Film: Burn Hollywood Burn, An', 1, '0000-00-00', 'ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', NULL),
(398, '725602691-9', 'Becoming Chaz', 1, '0000-00-00', 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis', NULL),
(399, '640114940-X', 'Life of a King', 1, '0000-00-00', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', NULL),
(400, '789106569-1', 'Hyenas (Hyènes)', 1, '0000-00-00', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', NULL),
(401, '185968675-3', 'Back to the Future Part III', 1, '0000-00-00', 'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in', NULL),
(402, '447021654-2', 'House of Strangers', 1, '0000-00-00', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', NULL),
(403, '204611639-9', 'National Gallery', 1, '0000-00-00', 'eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', NULL),
(404, '127156601-X', 'My Little Chickadee', 1, '0000-00-00', 'lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in', NULL),
(405, '821455449-7', 'Hitchhiker\'s Guide to the Galaxy, The', 1, '0000-00-00', 'vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', NULL),
(406, '300149308-9', 'Idiot\'s Delight', 1, '0000-00-00', 'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', NULL),
(407, '349212479-8', 'Two Loves', 1, '0000-00-00', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget', NULL),
(408, '649519678-4', 'Simon Birch', 1, '0000-00-00', 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla', NULL),
(409, '884542491-X', 'It Runs in the Family (My Summer Story)', 1, '0000-00-00', 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', NULL),
(410, '393217445-3', 'Unforgiven', 1, '0000-00-00', 'nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', NULL),
(411, '905095203-8', 'Nenette and Boni (Nénette et Boni)', 1, '0000-00-00', 'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie', NULL),
(412, '674160452-9', 'Il fiore dai petali d\'acciaio', 1, '0000-00-00', 'lacinia aenean sit amet justo morbi ut odio cras mi pede', NULL),
(413, '834164697-8', 'Same Same But Different', 1, '0000-00-00', 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque', NULL),
(414, '449389508-X', 'Shame (Skammen)', 1, '0000-00-00', 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst', NULL),
(415, '445975002-3', 'Winged Creatures (Fragments)', 1, '0000-00-00', 'nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer', NULL),
(416, '285589459-X', 'Love Exposure (Ai No Mukidashi)', 1, '0000-00-00', 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices', NULL),
(417, '541570648-8', 'Waking Up in Reno', 1, '0000-00-00', 'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede', NULL),
(418, '557596738-7', 'Inbetween Worlds', 1, '0000-00-00', 'sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel', NULL),
(419, '657995386-1', 'Fat Man and Little Boy', 1, '0000-00-00', 'nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', NULL),
(420, '570215160-7', 'ChubbChubbs!, The', 1, '0000-00-00', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel', NULL),
(421, '979816018-5', 'Just Go with It', 1, '0000-00-00', 'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec', NULL),
(422, '025608495-5', 'Horse Rebellion, The (Pulakapina)', 1, '0000-00-00', 'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', NULL),
(423, '224294928-4', 'Saga of Gosta Berling, The (Gösta Berlings saga)', 1, '0000-00-00', 'tempus semper est quam pharetra magna ac consequat metus sapien', NULL),
(424, '718875218-4', 'Brick Mansions', 1, '0000-00-00', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis', NULL),
(425, '357895891-3', 'Object of Beauty, The', 1, '0000-00-00', 'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', NULL),
(426, '072289264-0', 'Alexander\'s Ragtime Band', 1, '0000-00-00', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor', NULL),
(427, '655853161-5', 'Algiers', 1, '0000-00-00', 'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi', NULL),
(428, '732050285-2', 'Divine Horsemen: The Living Gods of Haiti', 1, '0000-00-00', 'odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', NULL),
(429, '493269013-4', 'To Hell and Back', 1, '0000-00-00', 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est', NULL),
(430, '522176406-7', 'Léon: The Professional (a.k.a. The Professional) (Léon)', 1, '0000-00-00', 'magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', NULL),
(431, '556438422-9', 'Return to Horror High', 1, '0000-00-00', 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', NULL),
(432, '521815393-1', 'Why Does Herr R. Run Amok? (Warum läuft Herr R. Amok?)', 1, '0000-00-00', 'quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in', NULL),
(433, '784683577-7', 'Mist, The', 1, '0000-00-00', 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis', NULL),
(434, '076249138-8', 'Black Tar Heroin: The Dark End of the Street', 1, '0000-00-00', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis', NULL),
(435, '344370769-6', 'Venus Beauty Institute (Vénus beauté)', 1, '0000-00-00', 'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', NULL),
(436, '947531721-X', 'Promised Land (Ziemia Obiecana)', 1, '0000-00-00', 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam', NULL),
(437, '627808409-0', 'Real McCoy, The', 1, '0000-00-00', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi', NULL),
(438, '815274016-0', 'Intimidation', 1, '0000-00-00', 'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', NULL),
(439, '979503050-7', 'Foreign Affair, A', 1, '0000-00-00', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra', NULL),
(440, '647125790-2', 'Man Vanishes, A (Ningen Johatsu)', 1, '0000-00-00', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', NULL),
(441, '158826213-8', 'Yonkers Joe', 1, '0000-00-00', 'eu sapien cursus vestibulum proin eu mi nulla ac enim', NULL),
(442, '423665253-6', 'Dying Breed', 1, '0000-00-00', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare', NULL),
(443, '825175138-1', 'Four Horsemen', 1, '0000-00-00', 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus', NULL),
(444, '417674254-2', 'Entrapment', 1, '0000-00-00', 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', NULL),
(445, '367217482-3', 'Shoot on Sight', 1, '0000-00-00', 'phasellus sit amet erat nulla tempus vivamus in felis eu', NULL),
(446, '590620539-X', 'Seven Chances', 1, '0000-00-00', 'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla', NULL),
(447, '013904593-7', 'Hellion', 1, '0000-00-00', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', NULL),
(448, '291065296-3', 'Rebirth of Mothra II', 1, '0000-00-00', 'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas', NULL),
(449, '948894865-5', 'The Pirates', 1, '0000-00-00', 'sapien non mi integer ac neque duis bibendum morbi non quam nec dui', NULL),
(450, '228377600-7', 'The Valley of Gwangi', 1, '0000-00-00', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', NULL),
(451, '013255926-9', 'Crazy/Beautiful', 1, '0000-00-00', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas', NULL),
(452, '483778672-3', 'Last Mistress, The (vieille maîtresse, Une)', 1, '0000-00-00', 'sagittis nam congue risus semper porta volutpat quam pede lobortis ligula', NULL),
(453, '552696939-8', 'Incredible Petrified World, The', 1, '0000-00-00', 'interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', NULL),
(454, '628721200-4', 'Harry and the Hendersons', 1, '0000-00-00', 'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', NULL),
(455, '343615067-3', 'Blood of Heroes, The (Salute of the Jugger, The)', 1, '0000-00-00', 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', NULL),
(456, '573423039-1', 'Rest Stop', 1, '0000-00-00', 'nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', NULL),
(457, '426717704-X', 'Letters from a Killer', 1, '0000-00-00', 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend', NULL),
(458, '243655820-5', 'Snow White and the Huntsman', 1, '0000-00-00', 'ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio', NULL),
(459, '991930443-3', 'Miss Austen Regrets', 1, '0000-00-00', 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales', NULL),
(460, '992691074-2', 'Little Monsters', 1, '0000-00-00', 'eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum', NULL),
(461, '875508145-2', 'Donos de Portugal', 1, '0000-00-00', 'luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', NULL),
(462, '310062828-4', 'Open Heart', 1, '0000-00-00', 'sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus', NULL),
(463, '654062312-7', 'National Lampoon\'s Cattle Call (Cattle Call)', 1, '0000-00-00', 'sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices', NULL),
(464, '558900701-1', 'Winning of Barbara Worth, The', 1, '0000-00-00', 'feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac', NULL),
(465, '844874414-4', 'Human Condition III, The (Ningen no joken III)', 1, '0000-00-00', 'nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida', NULL),
(466, '591444324-5', 'Hitcher, The', 1, '0000-00-00', 'varius integer ac leo pellentesque ultrices mattis odio donec vitae', NULL),
(467, '420324085-9', 'Intact (Intacto)', 1, '0000-00-00', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', NULL),
(468, '227770756-2', 'Race with the Devil', 1, '0000-00-00', 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', NULL),
(469, '664408340-4', 'Three (a.k.a. 3)', 1, '0000-00-00', 'nunc purus phasellus in felis donec semper sapien a libero nam', NULL),
(470, '484945662-6', 'Powaqqatsi', 1, '0000-00-00', 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis', NULL),
(471, '616303209-8', 'Infection (Kansen)', 1, '0000-00-00', 'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', NULL),
(472, '089278314-1', 'Stevie', 1, '0000-00-00', 'vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum', NULL),
(473, '337025033-0', 'Inheritors, The (Siebtelbauern, Die)', 1, '0000-00-00', 'bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', NULL),
(474, '913465065-2', 'Secret Life of Walter Mitty, The', 1, '0000-00-00', 'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in', NULL),
(475, '778048154-9', 'Yuva', 1, '0000-00-00', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus', NULL),
(476, '489732952-3', 'Clifford', 1, '0000-00-00', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', NULL),
(477, '201303547-0', 'Chapter Two', 1, '0000-00-00', 'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque', NULL),
(478, '540860474-8', 'Adopted', 1, '0000-00-00', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes', NULL),
(479, '710611570-3', 'Meu Passado Me Condena: O Filme', 1, '0000-00-00', 'ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in', NULL),
(480, '621976743-8', 'Leo the Last', 1, '0000-00-00', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non', NULL),
(481, '056168686-6', 'Chinoise, La', 1, '0000-00-00', 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet', NULL),
(482, '355996724-4', 'Truth in 24', 1, '0000-00-00', 'massa id nisl venenatis lacinia aenean sit amet justo morbi', NULL),
(483, '368337918-9', 'Topper', 1, '0000-00-00', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere', NULL),
(484, '410802203-3', 'C.R.A.Z.Y.', 1, '0000-00-00', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet', NULL),
(485, '553105151-4', 'C.H.U.D. II - Bud the Chud', 1, '0000-00-00', 'vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', NULL),
(486, '525656518-4', 'Great Caruso, The', 1, '0000-00-00', 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', NULL),
(487, '074508467-2', 'Babysitter, The', 1, '0000-00-00', 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh', NULL),
(488, '188660287-5', 'Something of Value', 1, '0000-00-00', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae', NULL),
(489, '951551665-X', 'Bajo la Sal (Under the Salt)', 1, '0000-00-00', 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', NULL),
(490, '388500321-X', 'Little Man Tate', 1, '0000-00-00', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', NULL),
(491, '986684198-7', 'Satan\'s Blood (Escalofrío)', 1, '0000-00-00', 'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices', NULL),
(492, '982390383-2', 'Sister Helen ', 1, '0000-00-00', 'duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl', NULL),
(493, '528071224-8', 'Scene at the Sea, A (Ano natsu, ichiban shizukana umi)', 1, '0000-00-00', 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis', NULL),
(494, '658537255-7', 'Vincent & Theo', 1, '0000-00-00', 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', NULL),
(495, '252535537-7', 'Conflagration (Enjô)', 1, '0000-00-00', 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat', NULL),
(496, '648246374-6', 'Fetching Cody', 1, '0000-00-00', 'amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', NULL),
(497, '919764226-6', 'Cruel Story of Youth (Seishun zankoku monogatari)', 1, '0000-00-00', 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis', NULL),
(498, '520594098-0', 'I Want Someone to Eat Cheese With', 1, '0000-00-00', 'id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan', NULL),
(499, '082220824-5', 'Fail-Safe', 1, '0000-00-00', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat', NULL),
(500, '737699968-X', 'Devil Rides Out, The', 1, '0000-00-00', 'venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et', NULL),
(501, '589062850-X', 'The Wild World of Lydia Lunch', 1, '0000-00-00', 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum', NULL),
(502, '632972662-0', 'Favor, The', 1, '0000-00-00', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis', NULL),
(503, '795102063-X', 'Remember Me', 1, '0000-00-00', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', NULL),
(504, '674608186-9', 'Extraordinary Stories (Historias extraordinarias)', 1, '0000-00-00', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna', NULL),
(505, '227809541-2', 'Paradise Lost 2: Revelations', 1, '0000-00-00', 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', NULL),
(506, '260188403-7', 'High Tech, Low Life', 1, '0000-00-00', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum', NULL),
(507, '880908185-4', 'Torrid Zone', 1, '0000-00-00', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus', NULL),
(508, '888342413-1', 'Submarino', 1, '0000-00-00', 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia', NULL),
(509, '261755366-3', 'Helicopter String Quartet', 1, '0000-00-00', 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra', NULL),
(510, '095182211-X', 'Good, the Bad and the Ugly, The (Buono, il brutto, il cattivo, Il)', 1, '0000-00-00', 'ligula in lacus curabitur at ipsum ac tellus semper interdum', NULL),
(511, '595867610-5', 'Blood Runs Cold', 1, '0000-00-00', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus', NULL),
(512, '245340708-2', 'American Roulette', 1, '0000-00-00', 'amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', NULL),
(513, '596545408-2', 'Trouble in Mind', 1, '0000-00-00', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed', NULL),
(514, '077659384-6', 'They All Lie', 1, '0000-00-00', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', NULL),
(515, '233374772-2', 'Dragon Age: Blood mage no seisen (a.k.a. Dragon Age: Dawn of the Seeker)', 1, '0000-00-00', 'lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere', NULL),
(516, '519822611-4', 'Charlotte\'s Web', 1, '0000-00-00', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', NULL),
(517, '420684902-1', 'American Rhapsody, An', 1, '0000-00-00', 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh', NULL),
(518, '846159813-X', 'Toy Story Toons: Partysaurus Rex', 1, '0000-00-00', 'molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci', NULL),
(519, '505707584-5', 'Summer Place, A', 1, '0000-00-00', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', NULL),
(520, '583044821-1', 'Touchback', 1, '0000-00-00', 'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur', NULL),
(521, '871791531-7', 'Dead Man\'s Bluff', 1, '0000-00-00', 'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a', NULL),
(522, '554041705-4', 'Buck', 1, '0000-00-00', 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', NULL),
(523, '559363021-6', 'RFK Must Die: The Assassination of Bobby Kennedy', 1, '0000-00-00', 'nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et', NULL),
(524, '101877789-X', 'Strangers When We Meet', 1, '0000-00-00', 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus', NULL),
(525, '366884120-9', 'Four Sons', 1, '0000-00-00', 'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', NULL),
(526, '495555790-2', 'Lucky Break (a.k.a. Paperback Romance)', 1, '0000-00-00', 'amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', NULL),
(527, '705464316-X', 'Island of the Burning Damned (Night of the Big Heat)', 1, '0000-00-00', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', NULL),
(528, '110938932-9', 'Jay And Silent Bob\'s Super Groovy Cartoon Movie', 1, '0000-00-00', 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', NULL),
(529, '924186657-8', 'Felicity', 1, '0000-00-00', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum', NULL),
(530, '139379792-X', 'Jack and Jill', 1, '0000-00-00', 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel', NULL),
(531, '247220853-7', 'Absolute Aggression', 1, '0000-00-00', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus', NULL),
(532, '777324901-6', 'Thing About My Folks, The', 1, '0000-00-00', 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', NULL),
(533, '654348348-2', 'American Heist', 1, '0000-00-00', 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', NULL),
(534, '781734785-9', 'Pusher III: I\'m the Angel of Death', 1, '0000-00-00', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', NULL),
(535, '077526641-8', 'Kids for Cash', 1, '0000-00-00', 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', NULL),
(536, '732195588-5', 'Mother and the Whore, The (Maman et la putain, La)', 1, '0000-00-00', 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi', NULL),
(537, '417484131-4', 'Darkest Hour, The', 1, '0000-00-00', 'luctus ultricies eu nibh quisque id justo sit amet sapien', NULL),
(538, '746678294-9', 'Piano in a Factory, The (Gang de qin)', 1, '0000-00-00', 'luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis', NULL),
(539, '860426331-4', 'Psycho Beach Party', 1, '0000-00-00', 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis', NULL),
(540, '153041293-5', 'Darling', 1, '0000-00-00', 'rutrum nulla tellus in sagittis dui vel nisl duis ac', NULL),
(541, '908984553-4', 'Port of Call (Hamnstad)', 1, '0000-00-00', 'volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum', NULL),
(542, '075993052-X', 'Sam Peckinpah\'s West: Legacy of a Hollywood Renegade', 1, '0000-00-00', 'fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', NULL),
(543, '033153346-4', 'The Reunion', 1, '0000-00-00', 'pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', NULL),
(544, '403496144-9', 'Skokie ', 1, '0000-00-00', 'a libero nam dui proin leo odio porttitor id consequat', NULL),
(545, '291358858-1', 'Source, The', 1, '0000-00-00', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel', NULL),
(546, '696248660-X', 'Sgt. Kabukiman N.Y.P.D.', 1, '0000-00-00', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus', NULL),
(547, '950478736-3', 'Hawking', 1, '0000-00-00', 'mattis nibh ligula nec sem duis aliquam convallis nunc proin at', NULL),
(548, '000748475-5', 'Mutant Action (Acción Mutante)', 1, '0000-00-00', 'lectus vestibulum quam sapien varius ut blandit non interdum in ante', NULL),
(549, '740419679-5', 'Black Roses ', 1, '0000-00-00', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis', NULL),
(550, '639255331-2', 'Forgetting Sarah Marshall', 1, '0000-00-00', 'vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', NULL),
(551, '628467374-4', 'Reach the Rock', 1, '0000-00-00', 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', NULL),
(552, '399068257-1', 'The Magnificent Trio', 1, '0000-00-00', 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede', NULL),
(553, '516545805-9', 'Main Street', 1, '0000-00-00', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', NULL),
(554, '550714826-0', 'Hangover Part II, The', 1, '0000-00-00', 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', NULL),
(555, '969825386-6', 'The Referee', 1, '0000-00-00', 'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor', NULL),
(556, '896800223-1', 'Tall Blond Man with One Black Shoe, The (Le grand blond avec une chaussure noire)', 1, '0000-00-00', 'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus', NULL),
(557, '315236597-7', 'Final Inquiry, The (Inquiry, The) (inchiesta, L\')', 1, '0000-00-00', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis', NULL),
(558, '551500539-2', 'Doomsday Prophecy', 1, '0000-00-00', 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa', NULL),
(559, '419327990-1', 'Mistaken for Strangers', 1, '0000-00-00', 'condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu', NULL),
(560, '808324823-1', 'Go, Go Second Time Virgin (Yuke yuke nidome no shojo)', 1, '0000-00-00', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', NULL),
(561, '701390541-0', 'Lone Ranger and the Lost City of Gold, The', 1, '0000-00-00', 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', NULL),
(562, '698207627-X', 'Blast', 1, '0000-00-00', 'amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', NULL),
(563, '964489311-5', 'St. Vincent', 1, '0000-00-00', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus', NULL),
(564, '085472572-5', 'Man Who Knew Too Little, The', 1, '0000-00-00', 'pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum', NULL),
(565, '691801348-3', 'Soldier Blue', 1, '0000-00-00', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis', NULL),
(566, '072008104-1', 'Matchstick Men', 1, '0000-00-00', 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci', NULL),
(567, '593668071-1', 'Songs From the Second Floor (Sånger från andra våningen)', 1, '0000-00-00', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim', NULL),
(568, '571454973-2', 'Captain Blood', 1, '0000-00-00', 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum', NULL),
(569, '863994915-8', 'Steamboat Willie', 1, '0000-00-00', 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est', NULL),
(570, '501741602-1', 'Extraction', 1, '0000-00-00', 'rutrum rutrum neque aenean auctor gravida sem praesent id massa', NULL),
(571, '423037791-6', 'Urban Legends: Final Cut', 1, '0000-00-00', 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in', NULL),
(572, '229914219-3', 'Willow Creek', 1, '0000-00-00', 'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit', NULL),
(573, '408418086-6', 'Albino Farm', 1, '0000-00-00', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit', NULL),
(574, '615938203-9', '1', 1, '0000-00-00', 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', NULL),
(575, '289704653-8', 'Everybody\'s Famous! (Iedereen beroemd!)', 1, '0000-00-00', 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac', NULL),
(576, '806611067-7', 'Evening Star, The', 1, '0000-00-00', 'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', NULL),
(577, '963106964-8', 'Getaway, The', 1, '0000-00-00', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus', NULL),
(578, '588542124-2', 'Love at the Top', 1, '0000-00-00', 'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum', NULL),
(579, '369786846-2', 'Trees Lounge', 1, '0000-00-00', 'convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien', NULL),
(580, '388241948-2', 'Across the Tracks', 1, '0000-00-00', 'adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget', NULL),
(581, '564458508-5', 'Whip Hand, The', 1, '0000-00-00', 'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede', NULL),
(582, '916882325-8', 'Day for Night (La Nuit Américaine)', 1, '0000-00-00', 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', NULL),
(583, '150284526-1', 'Mission Congo', 1, '0000-00-00', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante', NULL),
(584, '888260115-3', 'Popeye', 1, '0000-00-00', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', NULL),
(585, '486931926-8', 'Eclipse, The', 1, '0000-00-00', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', NULL),
(586, '613495478-0', 'Fine Mess, A', 1, '0000-00-00', 'at ipsum ac tellus semper interdum mauris ullamcorper purus sit', NULL),
(587, '088465919-4', 'Body and Soul', 1, '0000-00-00', 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', NULL),
(588, '703600929-2', 'Madonna of the Seven Moons', 1, '0000-00-00', 'lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer', NULL),
(589, '224070980-4', 'A Run for Your Money', 1, '0000-00-00', 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus', NULL),
(590, '590943035-1', 'Truce, The (a.k.a. La Tregua)', 1, '0000-00-00', 'aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque', NULL),
(591, '613006756-9', 'Survive Style 5+', 1, '0000-00-00', 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', NULL),
(592, '009461603-5', 'Choppertown: The Sinners', 1, '0000-00-00', 'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae', NULL),
(593, '974407150-8', 'Aziz Ansari: Buried Alive', 1, '0000-00-00', 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', NULL),
(594, '612467237-5', 'Eight Below', 1, '0000-00-00', 'amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', NULL),
(595, '075494143-4', 'Last Sunset, The', 1, '0000-00-00', 'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor', NULL),
(596, '728323051-3', 'Bunraku', 1, '0000-00-00', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in', NULL);
INSERT INTO `book` (`id`, `isbn`, `title`, `category_id`, `publication_date`, `book_description`, `copies_owned`) VALUES
(597, '799884632-1', 'Joe Strummer: The Future Is Unwritten', 1, '0000-00-00', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', NULL),
(598, '812208796-5', 'Bloodfist', 1, '0000-00-00', 'ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in', NULL),
(599, '810794098-9', 'Turner & Hooch', 1, '0000-00-00', 'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', NULL),
(600, '799974384-4', 'Ted', 1, '0000-00-00', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', NULL),
(601, '652128172-0', 'Dr. Phibes Rises Again', 1, '0000-00-00', 'porttitor pede justo eu massa donec dapibus duis at velit', NULL),
(602, '739050759-4', 'White Water Summer', 1, '0000-00-00', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', NULL),
(603, '950787987-0', 'I Killed My Mother (J\'ai tué ma mère)', 1, '0000-00-00', 'sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', NULL),
(604, '936553584-0', 'I Live in Fear (Ikimono no kiroku)', 1, '0000-00-00', 'phasellus id sapien in sapien iaculis congue vivamus metus arcu', NULL),
(605, '079594649-X', 'Ernest Goes to Africa', 1, '0000-00-00', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', NULL),
(606, '379708226-6', 'Little Night Music, A', 1, '0000-00-00', 'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum', NULL),
(607, '922483968-1', 'All About the Feathers (Por Las Plumas)', 1, '0000-00-00', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non', NULL),
(608, '865207572-7', 'Woodsman and the Rain (Kitsutsuki to ame)', 1, '0000-00-00', 'sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel', NULL),
(609, '852152823-X', 'Bomb It', 1, '0000-00-00', 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis', NULL),
(610, '069709804-4', 'Harem suare', 1, '0000-00-00', 'eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum', NULL),
(611, '239608070-9', 'Super Hero Party Clown', 1, '0000-00-00', 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', NULL),
(612, '971968992-7', 'Living in Oblivion', 1, '0000-00-00', 'volutpat in congue etiam justo etiam pretium iaculis justo in hac', NULL),
(613, '927238401-X', 'Savage Messiah', 1, '0000-00-00', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id', NULL),
(614, '912757837-2', 'Unconscious (Inconscientes)', 1, '0000-00-00', 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus', NULL),
(615, '255384237-6', 'Enter Arsene Lupin', 1, '0000-00-00', 'in magna bibendum imperdiet nullam orci pede venenatis non sodales', NULL),
(616, '705544483-7', 'Star Trek: Generations', 1, '0000-00-00', 'proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', NULL),
(617, '285669908-1', 'The Iron Commissioner', 1, '0000-00-00', 'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus', NULL),
(618, '658426827-6', 'Bratz: The Movie', 1, '0000-00-00', 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', NULL),
(619, '891984621-9', 'Teenage Paparazzo', 1, '0000-00-00', 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id', NULL),
(620, '024734476-1', 'Nom de code : Rose', 1, '0000-00-00', 'urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec', NULL),
(621, '027889796-7', 'Family Secrets (Familjehemligheter)', 1, '0000-00-00', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros', NULL),
(622, '517558223-2', 'Cesar Chavez', 1, '0000-00-00', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc', NULL),
(623, '515646233-2', 'Blood Creek (a.k.a. Town Creek)', 1, '0000-00-00', 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', NULL),
(624, '644375149-3', 'Blue Spring (Aoi haru)', 1, '0000-00-00', 'luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', NULL),
(625, '117773316-1', 'Deception', 1, '0000-00-00', 'curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin', NULL),
(626, '376801480-0', 'Seitsemän veljestä', 1, '0000-00-00', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', NULL),
(627, '976951949-9', 'Africa: The Serengeti', 1, '0000-00-00', 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', NULL),
(628, '174986713-3', 'It\'s a Boy Girl Thing', 1, '0000-00-00', 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum', NULL),
(629, '041435387-0', 'When Evening Falls on Bucharest or Metabolism', 1, '0000-00-00', 'sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', NULL),
(630, '795085174-0', 'Last of the Mohicans, The', 1, '0000-00-00', 'rhoncus dui vel sem sed sagittis nam congue risus semper', NULL),
(631, '059116025-0', 'Shara (Sharasojyu)', 1, '0000-00-00', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', NULL),
(632, '235761518-4', 'City Zero', 1, '0000-00-00', 'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat', NULL),
(633, '624582323-4', 'Sun Wind (Aurinkotuuli)', 1, '0000-00-00', 'rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam', NULL),
(634, '908684639-4', 'Libre échange', 1, '0000-00-00', 'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', NULL),
(635, '125196620-9', 'Crimson Tide', 1, '0000-00-00', 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', NULL),
(636, '509302045-1', 'Sunnyside', 1, '0000-00-00', 'consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', NULL),
(637, '455207679-5', 'White Dog', 1, '0000-00-00', 'porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi', NULL),
(638, '044810357-5', 'Evening Star, The', 1, '0000-00-00', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque', NULL),
(639, '540815553-6', 'Colpo in canna', 1, '0000-00-00', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo', NULL),
(640, '504047589-6', 'Ring Two, The', 1, '0000-00-00', 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat', NULL),
(641, '977244979-X', 'Crow, The', 1, '0000-00-00', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', NULL),
(642, '734102265-5', 'Company Man', 1, '0000-00-00', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', NULL),
(643, '837713351-2', 'Chorus, The (Hamsarayan)', 1, '0000-00-00', 'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', NULL),
(644, '882450947-9', 'Lone Survivor', 1, '0000-00-00', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede', NULL),
(645, '371487831-9', 'Rape of Europa, The', 1, '0000-00-00', 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea', NULL),
(646, '106700861-6', 'Home for Christmas (Hjem til jul)', 1, '0000-00-00', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed', NULL),
(647, '967891008-X', 'Up in Arms', 1, '0000-00-00', 'quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum', NULL),
(648, '377421399-2', 'King Kong Lives', 1, '0000-00-00', 'interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', NULL),
(649, '292203760-6', 'She\'s the One', 1, '0000-00-00', 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam', NULL),
(650, '289938973-4', 'Tomorrow Night', 1, '0000-00-00', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem', NULL),
(651, '469349472-0', 'Evolver', 1, '0000-00-00', 'sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla', NULL),
(652, '509491305-0', 'Grumpier Old Men', 1, '0000-00-00', 'purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend', NULL),
(653, '271088859-9', 'Hangover Part III, The', 1, '0000-00-00', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum', NULL),
(654, '616168363-6', '700 Sundays', 1, '0000-00-00', 'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et', NULL),
(655, '081533685-3', 'Nurse Betty', 1, '0000-00-00', 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', NULL),
(656, '057857691-0', 'Miss Potter', 1, '0000-00-00', 'dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed', NULL),
(657, '109147984-4', 'Hope Floats', 1, '0000-00-00', 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', NULL),
(658, '597842379-2', 'Awakening, The', 1, '0000-00-00', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum', NULL),
(659, '885263680-3', 'Return of the Musketeers, The', 1, '0000-00-00', 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', NULL),
(660, '568738818-4', 'Our Man Flint', 1, '0000-00-00', 'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst', NULL),
(661, '702286496-9', 'Countess Dracula', 1, '0000-00-00', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', NULL),
(662, '775184594-5', 'Rhino Season (Fasle kargadan) ', 1, '0000-00-00', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', NULL),
(663, '041878513-9', 'Les Feux Arctiques (Arktiset tulet)', 1, '0000-00-00', 'donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus', NULL),
(664, '580050273-0', 'Intohimon vallassa', 1, '0000-00-00', 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', NULL),
(665, '220723298-0', 'Key of Life (Kagi-dorobô no mesoddo)', 1, '0000-00-00', 'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo', NULL),
(666, '030834497-9', 'Hancock', 1, '0000-00-00', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero', NULL),
(667, '915187559-4', 'Beyond Enemy Lines (Framom främsta linjen)', 1, '0000-00-00', 'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor', NULL),
(668, '187289980-3', 'Blessed Event', 1, '0000-00-00', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', NULL),
(669, '710695242-7', 'Fast & Furious 6 (Fast and the Furious 6, The)', 1, '0000-00-00', 'dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque', NULL),
(670, '597575337-6', 'Death by China ', 1, '0000-00-00', 'in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', NULL),
(671, '039515302-6', 'Legend No. 17', 1, '0000-00-00', 'amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit', NULL),
(672, '504454342-X', 'Springfield Rifle', 1, '0000-00-00', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', NULL),
(673, '958577031-8', 'Stake Land', 1, '0000-00-00', 'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed', NULL),
(674, '221666742-0', 'Haunted Strangler, The (Grip of the Strangler)', 1, '0000-00-00', 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus', NULL),
(675, '061488008-4', '12:08 East of Bucharest (A fost sau n-a fost?)', 1, '0000-00-00', 'mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam', NULL),
(676, '278500996-7', 'Born Reckless', 1, '0000-00-00', 'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', NULL),
(677, '062868428-2', 'Three Stooges in Orbit, The', 1, '0000-00-00', 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', NULL),
(678, '256182479-9', 'Freaks', 1, '0000-00-00', 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', NULL),
(679, '164969413-X', 'Hard Target', 1, '0000-00-00', 'suspendisse potenti cras in purus eu magna vulputate luctus cum', NULL),
(680, '180489257-2', 'More About the Children of Noisy Village (a.k.a. More About the Children of Bullerby Village) (Mer om oss barn i Bullerbyn)', 1, '0000-00-00', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam', NULL),
(681, '552282367-4', 'Oxford Murders, The', 1, '0000-00-00', 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', NULL),
(682, '803456229-7', 'Six Pack', 1, '0000-00-00', 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', NULL),
(683, '163236567-7', 'Winning Season, The', 1, '0000-00-00', 'quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea', NULL),
(684, '432158308-X', '20 Seconds of Joy', 1, '0000-00-00', 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', NULL),
(685, '505353922-7', 'Family Man, The', 1, '0000-00-00', 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', NULL),
(686, '199979703-5', 'Porco Rosso (Crimson Pig) (Kurenai no buta)', 1, '0000-00-00', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in', NULL),
(687, '091031912-X', 'Starflight: The Plane That Couldn\'t Land', 1, '0000-00-00', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam', NULL),
(688, '607823921-X', 'Only God Forgives', 1, '0000-00-00', 'in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie', NULL),
(689, '130473914-7', 'Amistad', 1, '0000-00-00', 'phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in', NULL),
(690, '059310660-1', 'Samsara', 1, '0000-00-00', 'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', NULL),
(691, '287263634-X', 'Kiss Them for Me', 1, '0000-00-00', 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum', NULL),
(692, '990295451-0', 'Elsa & Fred', 1, '0000-00-00', 'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut', NULL),
(693, '855234903-5', 'Heart of Glass (Herz aus Glas)', 1, '0000-00-00', 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', NULL),
(694, '332141962-9', 'He Got Game', 1, '0000-00-00', 'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas', NULL),
(695, '869858178-1', 'Colossal Youth (Juventude Em Marcha)', 1, '0000-00-00', 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', NULL),
(696, '020559388-7', 'Unbeatable (Ji zhan)', 1, '0000-00-00', 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', NULL),
(697, '470795214-3', 'Funny Bones', 1, '0000-00-00', 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', NULL),
(698, '444547797-4', 'Atomic Rulers of the World', 1, '0000-00-00', 'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet', NULL),
(699, '306383664-8', 'Sade', 1, '0000-00-00', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis', NULL),
(700, '635772101-8', 'Nine Months', 1, '0000-00-00', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus', NULL),
(701, '921057326-9', 'The Man They Could Not Hang', 1, '0000-00-00', 'in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum', NULL),
(702, '716137908-3', 'Disco Pigs', 1, '0000-00-00', 'molestie sed justo pellentesque viverra pede ac diam cras pellentesque', NULL),
(703, '012367270-8', 'Prince of the Sun: The Great Adventure of Horus (Taiyou no ouji Horusu no daibouken)', 1, '0000-00-00', 'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', NULL),
(704, '944232716-X', 'Dialogues with Solzhenitsyn (Uzel)', 1, '0000-00-00', 'accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae', NULL),
(705, '932013361-1', 'Sallah', 1, '0000-00-00', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', NULL),
(706, '940066081-2', 'Wild Strawberries (Smultronstället)', 1, '0000-00-00', 'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', NULL),
(707, '015719830-8', 'Thanks for Sharing', 1, '0000-00-00', 'nulla suscipit ligula in lacus curabitur at ipsum ac tellus', NULL),
(708, '685671023-2', 'Dark Star', 1, '0000-00-00', 'rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede', NULL),
(709, '554197623-5', 'Big Ass Spider!', 1, '0000-00-00', 'ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis', NULL),
(710, '322320544-6', 'Abominable Dr. Phibes, The', 1, '0000-00-00', 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede', NULL),
(711, '500615681-3', 'Garage', 1, '0000-00-00', 'nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel', NULL),
(712, '681675191-4', 'Sure Thing, The', 1, '0000-00-00', 'nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', NULL),
(713, '211614125-7', 'Autumn Spring (Babí léto)', 1, '0000-00-00', 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', NULL),
(714, '933874147-8', '7 Dollars on the Red (Sette dollari sul rosso)', 1, '0000-00-00', 'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh', NULL),
(715, '938705513-2', 'Walking with Monsters', 1, '0000-00-00', 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', NULL),
(716, '798165209-X', 'Joker', 1, '0000-00-00', 'amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', NULL),
(717, '150543250-2', 'Neil Young: Human Highway', 1, '0000-00-00', 'at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget', NULL),
(718, '497326866-6', 'John Q', 1, '0000-00-00', 'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit', NULL),
(719, '634544446-4', 'Curiosity of Chance, The', 1, '0000-00-00', 'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', NULL),
(720, '302341764-4', 'Aziz Ansari: Live at Madison Square Garden', 1, '0000-00-00', 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur', NULL),
(721, '285326893-4', 'My Bodyguard', 1, '0000-00-00', 'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam', NULL),
(722, '761263598-4', 'Beneath the Dark', 1, '0000-00-00', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis', NULL),
(723, '449211236-7', 'Prizefighter and the Lady, The', 1, '0000-00-00', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula', NULL),
(724, '695448747-3', 'Att stjäla en tjuv', 1, '0000-00-00', 'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis', NULL),
(725, '971430065-7', 'Mahabharata, The', 1, '0000-00-00', 'posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac', NULL),
(726, '764497482-2', 'Istanbul', 1, '0000-00-00', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros', NULL),
(727, '501988113-9', 'Breaker Morant', 1, '0000-00-00', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', NULL),
(728, '142007848-8', 'Fear of a Black Hat', 1, '0000-00-00', 'at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel', NULL),
(729, '215009557-2', 'Porco Rosso (Crimson Pig) (Kurenai no buta)', 1, '0000-00-00', 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus', NULL),
(730, '228128976-1', 'For Neda', 1, '0000-00-00', 'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', NULL),
(731, '311467039-3', 'Rude Awakening', 1, '0000-00-00', 'blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est', NULL),
(732, '544053190-4', 'Temple Grandin', 1, '0000-00-00', 'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac', NULL),
(733, '792367631-3', '42', 1, '0000-00-00', 'pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', NULL),
(734, '263773401-9', 'The Gold Spinners', 1, '0000-00-00', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin', NULL),
(735, '921644412-6', 'I Accuse', 1, '0000-00-00', 'diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', NULL),
(736, '645935465-0', 'If a Man Answers', 1, '0000-00-00', 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan', NULL),
(737, '075179322-1', 'Begotten', 1, '0000-00-00', 'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus', NULL),
(738, '642488169-7', 'Color of Pomegranates, The (Sayat Nova)', 1, '0000-00-00', 'tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas', NULL),
(739, '952178525-X', 'King David', 1, '0000-00-00', 'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat', NULL),
(740, '325837929-7', 'They Might Be Giants', 1, '0000-00-00', 'proin at turpis a pede posuere nonummy integer non velit donec', NULL),
(741, '845833903-X', 'Murder on a Sunday Morning (Un coupable idéal)', 1, '0000-00-00', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', NULL),
(742, '909469764-5', 'Countess, The', 1, '0000-00-00', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate', NULL),
(743, '685361990-0', 'Agnes Browne', 1, '0000-00-00', 'tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim', NULL),
(744, '377232004-X', 'Draft Day', 1, '0000-00-00', 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam', NULL),
(745, '686219386-4', 'Will It Snow For Christmas? (Y\'aura-t-il de la neige à Noël?)', 1, '0000-00-00', 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis', NULL),
(746, '164874945-3', 'Return Of The Ghostbusters', 1, '0000-00-00', 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', NULL),
(747, '355559752-3', 'Badman\'s Territory', 1, '0000-00-00', 'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', NULL),
(748, '550886786-4', 'Call Northside 777', 1, '0000-00-00', 'mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet', NULL),
(749, '951467504-5', 'Topper Takes a Trip', 1, '0000-00-00', 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', NULL),
(750, '062435438-5', 'Master of Disguise, The', 1, '0000-00-00', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum', NULL),
(751, '801937667-4', 'Guilty Hands', 1, '0000-00-00', 'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', NULL),
(752, '168760582-3', 'Soft Skin, The (La peau douce)', 1, '0000-00-00', 'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet', NULL),
(753, '116722806-5', 'Last of Sheila, The', 1, '0000-00-00', 'mattis egestas metus aenean fermentum donec ut mauris eget massa', NULL),
(754, '815243350-0', 'Two Mules for Sister Sara', 1, '0000-00-00', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus', NULL),
(755, '725278548-3', 'Cape Fear', 1, '0000-00-00', 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam', NULL),
(756, '166553922-4', 'Eggs', 1, '0000-00-00', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', NULL),
(757, '993871721-7', 'Borderland', 1, '0000-00-00', 'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla', NULL),
(758, '459490210-3', 'Fausto', 1, '0000-00-00', 'est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis', NULL),
(759, '958693570-1', 'Holy Motors', 1, '0000-00-00', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget', NULL),
(760, '698864842-9', 'Red Hill', 1, '0000-00-00', 'vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', NULL),
(761, '938813671-3', 'Legend of the Black Scorpion (a.k.a. The Banquet) (Ye yan)', 1, '0000-00-00', 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede', NULL),
(762, '855141633-2', 'Merry Jail, The (Das fidele Gefängnis)', 1, '0000-00-00', 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', NULL),
(763, '716958194-9', 'Silence of the Lambs, The', 1, '0000-00-00', 'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam', NULL),
(764, '187992077-8', 'Koyaanisqatsi (a.k.a. Koyaanisqatsi: Life Out of Balance)', 1, '0000-00-00', 'dui proin leo odio porttitor id consequat in consequat ut nulla sed', NULL),
(765, '491028487-7', 'Invitation, The (Zaproszenie)', 1, '0000-00-00', 'eget eros elementum pellentesque quisque porta volutpat erat quisque erat', NULL),
(766, '600880902-5', 'First Love, Last Rites', 1, '0000-00-00', 'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', NULL),
(767, '602865905-3', 'Heiter bis wolkig', 1, '0000-00-00', 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac', NULL),
(768, '452362718-5', 'Top Gun', 1, '0000-00-00', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra', NULL),
(769, '037856145-6', 'Red Balloon, The (Ballon rouge, Le)', 1, '0000-00-00', 'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', NULL),
(770, '646881178-3', 'Spy in Black, The', 1, '0000-00-00', 'molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', NULL),
(771, '769661974-8', 'Playing for Time', 1, '0000-00-00', 'orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', NULL),
(772, '734766446-2', 'Monterey Pop', 1, '0000-00-00', 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum', NULL),
(773, '741471915-4', 'Warrior, The', 1, '0000-00-00', 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', NULL),
(774, '379189468-4', 'Mortal Storm, The', 1, '0000-00-00', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at', NULL),
(775, '282255950-3', 'Two Mrs. Carrolls, The', 1, '0000-00-00', 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus', NULL),
(776, '285613105-0', 'Brain Dead', 1, '0000-00-00', 'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', NULL),
(777, '511323108-8', 'Gloria', 1, '0000-00-00', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet', NULL),
(778, '300359545-8', 'Instructions Not Included (No se Aceptan Devoluciones)', 1, '0000-00-00', 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi', NULL),
(779, '447652758-2', 'Girls on Top 2', 1, '0000-00-00', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', NULL),
(780, '460934137-9', 'Touching the Void', 1, '0000-00-00', 'est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum', NULL),
(781, '561419155-0', 'Girl from Monaco, The (fille de Monaco, La)', 1, '0000-00-00', 'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', NULL),
(782, '070147853-5', 'Harper Valley P.T.A.', 1, '0000-00-00', 'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas', NULL),
(783, '497284550-3', 'Kid Cannabis', 1, '0000-00-00', 'tristique fusce congue diam id ornare imperdiet sapien urna pretium', NULL),
(784, '559089072-1', 'Futurama: The Beast with a Billion Backs', 1, '0000-00-00', 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu', NULL),
(785, '789660020-X', 'Seven Swords (Chat gim)', 1, '0000-00-00', 'proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante', NULL),
(786, '913770995-X', 'Lila & Eve', 1, '0000-00-00', 'mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis', NULL),
(787, '214186997-8', 'Freedomfighters (Libertarias)', 1, '0000-00-00', 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', NULL),
(788, '605909258-6', 'I Like Killing Flies', 1, '0000-00-00', 'leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut', NULL),
(789, '907010047-9', 'Snowbeast', 1, '0000-00-00', 'blandit mi in porttitor pede justo eu massa donec dapibus', NULL),
(790, '883962287-X', 'Incredible Melting Man, The', 1, '0000-00-00', 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus', NULL),
(791, '573708641-0', 'Small Back Room, The', 1, '0000-00-00', 'id lobortis convallis tortor risus dapibus augue vel accumsan tellus', NULL),
(792, '083522034-6', 'Oath, The', 1, '0000-00-00', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum', NULL),
(793, '928442930-7', 'Tale of Cinema (Geuk jang jeon)', 1, '0000-00-00', 'curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus', NULL),
(794, '698398730-6', 'Royal Tenenbaums, The', 1, '0000-00-00', 'lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi', NULL),
(795, '704439936-3', 'Wife vs. Secretary', 1, '0000-00-00', 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', NULL),
(796, '048832091-7', 'Two Days in April', 1, '0000-00-00', 'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', NULL),
(797, '947730777-7', 'R', 1, '0000-00-00', 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer', NULL),
(798, '397379136-8', 'Titanic', 1, '0000-00-00', 'mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec', NULL),
(799, '116178016-5', 'BBOY for LIFE', 1, '0000-00-00', 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', NULL),
(800, '501646850-8', 'Card Player, The (Il cartaio)', 1, '0000-00-00', 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus', NULL),
(801, '628510943-5', 'Megan Is Missing', 1, '0000-00-00', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', NULL),
(802, '251833583-8', 'Indian in the Cupboard, The', 1, '0000-00-00', 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', NULL),
(803, '943762097-0', 'Stardust', 1, '0000-00-00', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', NULL),
(804, '369484129-6', 'Joe and Max', 1, '0000-00-00', 'in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut', NULL),
(805, '805018439-0', 'Tempest', 1, '0000-00-00', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in', NULL),
(806, '562203289-X', 'The Fat Spy', 1, '0000-00-00', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et', NULL),
(807, '750805354-0', 'Flying Deuces, The', 1, '0000-00-00', 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque', NULL),
(808, '653927964-7', 'October Sky', 1, '0000-00-00', 'at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi', NULL),
(809, '304086537-4', 'Karla', 1, '0000-00-00', 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam', NULL),
(810, '420026738-1', 'Ernest Scared Stupid', 1, '0000-00-00', 'nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam', NULL),
(811, '721317016-3', 'Free to Play', 1, '0000-00-00', 'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis', NULL),
(812, '358403805-7', 'Tombs of the Blind Dead (La noche del terror ciego)', 1, '0000-00-00', 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus', NULL),
(813, '226187073-6', 'Adjustment Bureau, The', 1, '0000-00-00', 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', NULL),
(814, '958060331-6', 'Me & Isaac Newton', 1, '0000-00-00', 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu', NULL),
(815, '530119147-0', 'Bikes vs Cars', 1, '0000-00-00', 'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', NULL),
(816, '311275323-2', 'Black Hole, The', 1, '0000-00-00', 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', NULL),
(817, '662211545-1', 'Kisses', 1, '0000-00-00', 'volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus', NULL),
(818, '973037765-0', 'Dream Land', 1, '0000-00-00', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', NULL),
(819, '985382870-7', 'Two Evil Eyes', 1, '0000-00-00', 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed', NULL),
(820, '531803953-7', 'Nine Queens (Nueve reinas)', 1, '0000-00-00', 'nunc rhoncus dui vel sem sed sagittis nam congue risus semper', NULL),
(821, '422995838-2', 'Citizen, The', 1, '0000-00-00', 'integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in', NULL),
(822, '633910904-7', 'Gymnast, The', 1, '0000-00-00', 'mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id', NULL),
(823, '749135176-X', 'The Four Feathers', 1, '0000-00-00', 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', NULL),
(824, '534327958-9', 'Our Dancing Daughters', 1, '0000-00-00', 'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci', NULL),
(825, '145169542-X', 'Leaning Tower, The (Kalteva torni)', 1, '0000-00-00', 'semper est quam pharetra magna ac consequat metus sapien ut nunc', NULL),
(826, '066584331-3', 'Trailer Park Jesus', 1, '0000-00-00', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et', NULL),
(827, '906531413-X', 'Jiminy Glick in La La Wood', 1, '0000-00-00', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim', NULL),
(828, '615978742-X', 'Sign of Leo, The (Signe du lion, Le)', 1, '0000-00-00', 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', NULL),
(829, '677667711-5', 'Jungle Man-Eaters', 1, '0000-00-00', 'ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus', NULL),
(830, '301484967-7', 'The Happy Road', 1, '0000-00-00', 'feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac', NULL),
(831, '473741045-4', 'Sex and Breakfast', 1, '0000-00-00', 'fusce lacus purus aliquet at feugiat non pretium quis lectus', NULL),
(832, '482234476-2', 'Black Sheep', 1, '0000-00-00', 'est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc', NULL),
(833, '516017440-0', 'Die Fischerin', 1, '0000-00-00', 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac', NULL),
(834, '387979040-X', 'Asylum', 1, '0000-00-00', 'in libero ut massa volutpat convallis morbi odio odio elementum eu', NULL),
(835, '533968668-X', 'Son of Kong, The', 1, '0000-00-00', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam', NULL),
(836, '711982503-8', 'Blackbird', 1, '0000-00-00', 'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit', NULL),
(837, '759910562-X', 'Fanfan la Tulipe (Fan-Fan the Tulip)', 1, '0000-00-00', 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', NULL),
(838, '209151982-0', 'Coriolanus', 1, '0000-00-00', 'est et tempus semper est quam pharetra magna ac consequat metus sapien ut', NULL),
(839, '499421015-2', 'Maximum Risk', 1, '0000-00-00', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien', NULL),
(840, '077972541-7', 'Daylight', 1, '0000-00-00', 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', NULL),
(841, '851811219-2', 'Plastic Paradise: The Great Pacific Garbage Patch', 1, '0000-00-00', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', NULL),
(842, '230567011-7', 'Georgia', 1, '0000-00-00', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', NULL),
(843, '261440168-4', 'Even Money', 1, '0000-00-00', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes', NULL),
(844, '469274163-5', 'Rio Lobo', 1, '0000-00-00', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', NULL),
(845, '996399985-9', 'Heights', 1, '0000-00-00', 'sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in', NULL),
(846, '801680036-X', 'FBI: Frikis buscan incordiar', 1, '0000-00-00', 'ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', NULL),
(847, '401773630-0', 'The Gruffalo\'s Child', 1, '0000-00-00', 'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce', NULL),
(848, '088911474-9', 'For Richer or Poorer', 1, '0000-00-00', 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor', NULL),
(849, '243547598-5', 'Look Who\'s Talking', 1, '0000-00-00', 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam', NULL),
(850, '257045819-8', 'Trench Road (Juoksuhaudantie)', 1, '0000-00-00', 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed', NULL),
(851, '974612334-3', 'Theory of Flight, The', 1, '0000-00-00', 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in', NULL),
(852, '565832040-2', 'Cashback', 1, '0000-00-00', 'orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit', NULL),
(853, '898695866-X', 'Plough and the Stars, The', 1, '0000-00-00', 'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', NULL),
(854, '134543228-3', 'Grace Unplugged', 1, '0000-00-00', 'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue', NULL),
(855, '311517697-X', 'Make Believe', 1, '0000-00-00', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', NULL),
(856, '103706198-5', 'Dr. Dolittle: Tail to the Chief', 1, '0000-00-00', 'vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', NULL),
(857, '598423331-2', 'Frankenstein Conquers the World', 1, '0000-00-00', 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper', NULL),
(858, '603068184-2', 'Actress, the Dollars and the Transylvanians, The (Artista, dolarii si Ardelenii)', 1, '0000-00-00', 'accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec', NULL),
(859, '873880839-0', 'Duplex', 1, '0000-00-00', 'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', NULL),
(860, '467844087-9', 'Full Moon High', 1, '0000-00-00', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', NULL),
(861, '813600520-6', 'Easy Money (Snabba Cash)', 1, '0000-00-00', 'massa id nisl venenatis lacinia aenean sit amet justo morbi ut', NULL),
(862, '125883865-6', 'Richard III', 1, '0000-00-00', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', NULL),
(863, '510000450-9', 'Working Girl', 1, '0000-00-00', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis', NULL),
(864, '345645825-8', 'The Mountain of the Cannibal God', 1, '0000-00-00', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo', NULL),
(865, '012985223-6', 'Herbie Rides Again', 1, '0000-00-00', 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', NULL),
(866, '886568436-4', 'Price of Milk, The', 1, '0000-00-00', 'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', NULL),
(867, '566869568-9', 'Project Grizzly', 1, '0000-00-00', 'ut at dolor quis odio consequat varius integer ac leo', NULL),
(868, '211205925-4', 'Sea Wolf, The', 1, '0000-00-00', 'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus', NULL),
(869, '109489720-5', 'Jerusalem Countdown', 1, '0000-00-00', 'morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', NULL),
(870, '164099959-0', 'My Girl 2', 1, '0000-00-00', 'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', NULL),
(871, '543862283-3', 'Train Ride to Hollywood', 1, '0000-00-00', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', NULL),
(872, '614424975-3', 'The Unexpected Love', 1, '0000-00-00', 'bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis', NULL),
(873, '351043804-3', 'Welcome to the Dollhouse', 1, '0000-00-00', 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', NULL),
(874, '186032681-1', 'Soul Assassin', 1, '0000-00-00', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id', NULL),
(875, '576185951-3', 'Don Quixote', 1, '0000-00-00', 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam', NULL),
(876, '131382763-0', 'Staten Island', 1, '0000-00-00', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', NULL),
(877, '447943221-3', 'Man Trouble', 1, '0000-00-00', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est', NULL),
(878, '355804413-4', 'Hollywoodland', 1, '0000-00-00', 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum', NULL),
(879, '814903751-9', 'What Is It?', 1, '0000-00-00', 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet', NULL),
(880, '024677246-8', 'Cutter, The', 1, '0000-00-00', 'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', NULL),
(881, '260800101-7', 'American Splendor', 1, '0000-00-00', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', NULL),
(882, '345169649-5', 'Life Is a Long Quiet River (La vie est un long fleuve tranquille)', 1, '0000-00-00', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit', NULL),
(883, '605735174-6', 'Cage aux Folles II, La', 1, '0000-00-00', 'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum', NULL),
(884, '561086936-6', 'Rumble on the Docks', 1, '0000-00-00', 'tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', NULL),
(885, '218349746-7', 'Disgrace', 1, '0000-00-00', 'ut nulla sed accumsan felis ut at dolor quis odio consequat varius', NULL),
(886, '640609700-9', 'Starship Troopers', 1, '0000-00-00', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non', NULL),
(887, '104416978-8', 'Calle 54', 1, '0000-00-00', 'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam', NULL),
(888, '718089999-2', 'Pokémon the Movie 2000', 1, '0000-00-00', 'dolor vel est donec odio justo sollicitudin ut suscipit a', NULL),
(889, '895595356-9', 'Purge: Anarchy, The', 1, '0000-00-00', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', NULL),
(890, '492362146-X', 'Wings of Courage', 1, '0000-00-00', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', NULL),
(891, '684369017-3', 'Details, The', 1, '0000-00-00', 'aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum', NULL),
(892, '883577164-1', 'Elephant in the Living Room, The', 1, '0000-00-00', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', NULL),
(893, '860368394-8', 'Velvet Vampire, The', 1, '0000-00-00', 'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', NULL);
INSERT INTO `book` (`id`, `isbn`, `title`, `category_id`, `publication_date`, `book_description`, `copies_owned`) VALUES
(894, '436192277-2', 'Workingman\'s Death', 1, '0000-00-00', 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor', NULL),
(895, '785658744-X', 'Monterey Pop', 1, '0000-00-00', 'quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt', NULL),
(896, '626066039-1', 'Resurrection, A', 1, '0000-00-00', 'at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', NULL),
(897, '992841011-9', 'Ruling Class, The', 1, '0000-00-00', 'quis orci nullam molestie nibh in lectus pellentesque at nulla', NULL),
(898, '410003421-0', 'On the Waterfront', 1, '0000-00-00', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus', NULL),
(899, '410176416-6', 'Infinity', 1, '0000-00-00', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis', NULL),
(900, '001573036-0', 'Shaun of the Dead', 1, '0000-00-00', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit', NULL),
(901, '527463624-1', 'Hoodoo Ann', 1, '0000-00-00', 'congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', NULL),
(902, '964793456-4', 'Double Take', 1, '0000-00-00', 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat', NULL),
(903, '558288841-1', 'Rosa Luxemburg', 1, '0000-00-00', 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis', NULL),
(904, '599889118-X', 'To Paint or Make Love (Peindre ou faire l\'amour)', 1, '0000-00-00', 'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', NULL),
(905, '304885456-8', 'Station, The (Blutgletscher)', 1, '0000-00-00', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam', NULL),
(906, '092534681-0', 'And When Did You Last See Your Father?', 1, '0000-00-00', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh', NULL),
(907, '572845720-7', 'Futurama: Bender\'s Game', 1, '0000-00-00', 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor', NULL),
(908, '696604881-X', 'WNUF Halloween Special', 1, '0000-00-00', 'lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue', NULL),
(909, '759384642-3', 'Rimini, Rimini: A Year Later', 1, '0000-00-00', 'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla', NULL),
(910, '416981692-7', 'Order, The', 1, '0000-00-00', 'morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue', NULL),
(911, '859896733-5', 'After School Special (a.k.a. Barely Legal)', 1, '0000-00-00', 'nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut', NULL),
(912, '078200206-4', 'Nanking', 1, '0000-00-00', 'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis', NULL),
(913, '861611819-5', 'Lone Wolf and Cub: Baby Cart at the River Styx (Kozure Ôkami: Sanzu no kawa no ubaguruma)', 1, '0000-00-00', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo', NULL),
(914, '739340199-1', 'Raven, The', 1, '0000-00-00', 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique', NULL),
(915, '868052352-6', 'Fade to Black', 1, '0000-00-00', 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio', NULL),
(916, '792619250-3', 'The Gallant Hours', 1, '0000-00-00', 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis', NULL),
(917, '751482907-5', 'Priest', 1, '0000-00-00', 'nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', NULL),
(918, '763547297-6', 'Primal Fear', 1, '0000-00-00', 'curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est', NULL),
(919, '520247568-3', 'Ultimate Accessory,The (100% cachemire)', 1, '0000-00-00', 'lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla', NULL),
(920, '484251513-9', 'I, Cesar (Moi César, 10 ans 1/2, 1m39)', 1, '0000-00-00', 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum', NULL),
(921, '235409998-3', '22 Jump Street', 1, '0000-00-00', 'sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue', NULL),
(922, '005258991-9', 'Sinbad: Legend of the Seven Seas', 1, '0000-00-00', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', NULL),
(923, '977742161-3', 'Don\'t Look Now', 1, '0000-00-00', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis', NULL),
(924, '405983319-3', 'Buying the Cow', 1, '0000-00-00', 'lectus suspendisse potenti in eleifend quam a odio in hac', NULL),
(925, '461441111-8', 'Superman III', 1, '0000-00-00', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', NULL),
(926, '478205995-7', 'Dark Side of the Sun, The', 1, '0000-00-00', 'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id', NULL),
(927, '844715252-9', 'Pee-wee\'s Big Adventure', 1, '0000-00-00', 'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet', NULL),
(928, '451674248-9', '5 Fingers', 1, '0000-00-00', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', NULL),
(929, '013104535-0', 'Bell for Adano, A (John Hersey\'s A Bell for Adano)', 1, '0000-00-00', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', NULL),
(930, '732362282-4', 'Jacket, The', 1, '0000-00-00', 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus', NULL),
(931, '111603615-0', 'Bloomington', 1, '0000-00-00', 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros', NULL),
(932, '791378242-0', 'Two Men Went to War', 1, '0000-00-00', 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum', NULL),
(933, '894438990-X', 'Emil i Lönneberga', 1, '0000-00-00', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit', NULL),
(934, '617086781-7', 'My Way', 1, '0000-00-00', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat', NULL),
(935, '500222392-3', 'Masti', 1, '0000-00-00', 'molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc', NULL),
(936, '555488153-X', 'Lady is Willing, The', 1, '0000-00-00', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat', NULL),
(937, '372456720-0', 'Yatterman (Yattâman)', 1, '0000-00-00', 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor', NULL),
(938, '844285723-0', 'Visit, The', 1, '0000-00-00', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', NULL),
(939, '792538886-2', 'Film About a Woman Who...', 1, '0000-00-00', 'etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', NULL),
(940, '091999332-X', 'Norman', 1, '0000-00-00', 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo', NULL),
(941, '159389027-3', 'Iron Lady, The', 1, '0000-00-00', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula', NULL),
(942, '893342564-0', 'Insanitarium', 1, '0000-00-00', 'at velit eu est congue elementum in hac habitasse platea', NULL),
(943, '019829651-7', 'Bad Medicine', 1, '0000-00-00', 'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', NULL),
(944, '684015159-X', 'Bitter Victory', 1, '0000-00-00', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', NULL),
(945, '630767120-3', '12 Angry Men', 1, '0000-00-00', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', NULL),
(946, '604348634-2', 'Jacob\'s Ladder', 1, '0000-00-00', 'suscipit nulla elit ac nulla sed vel enim sit amet nunc', NULL),
(947, '084911926-X', 'Brony Tale, A', 1, '0000-00-00', 'vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', NULL),
(948, '970120976-1', 'Caller, The', 1, '0000-00-00', 'quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', NULL),
(949, '866425256-4', 'Willow', 1, '0000-00-00', 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', NULL),
(950, '113786728-0', 'Sweepers', 1, '0000-00-00', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', NULL),
(951, '656387541-6', 'Kiss of the Dragon', 1, '0000-00-00', 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur', NULL),
(952, '696966861-4', 'Get on Up', 1, '0000-00-00', 'in felis donec semper sapien a libero nam dui proin', NULL),
(953, '461563303-3', 'Marfa Girl', 1, '0000-00-00', 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', NULL),
(954, '153088713-5', 'Free Birds', 1, '0000-00-00', 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus', NULL),
(955, '710738502-X', 'Blubberella', 1, '0000-00-00', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi', NULL),
(956, '587854185-8', 'Wild Geese, The', 1, '0000-00-00', 'quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', NULL),
(957, '713872369-5', 'Restoration', 1, '0000-00-00', 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel', NULL),
(958, '376407751-4', 'Plainsman, The', 1, '0000-00-00', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', NULL),
(959, '860579311-2', 'Gone Fishin\'', 1, '0000-00-00', 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis', NULL),
(960, '216767584-4', 'Human Capital (Il capitale umano)', 1, '0000-00-00', 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor', NULL),
(961, '885847628-X', 'Prison of the Dead', 1, '0000-00-00', 'bibendum morbi non quam nec dui luctus rutrum nulla tellus', NULL),
(962, '048148168-0', 'Jönssonligan & den svarta diamanten', 1, '0000-00-00', 'vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', NULL),
(963, '947710246-6', 'Gosford Park', 1, '0000-00-00', 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et', NULL),
(964, '370086795-6', '2012: Time for Change', 1, '0000-00-00', 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit a', NULL),
(965, '015015439-9', 'Hollow Triumph (a.k.a. The Scar)', 1, '0000-00-00', 'est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', NULL),
(966, '976627005-8', '3 Bad Men', 1, '0000-00-00', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', NULL),
(967, '659255147-X', 'Out-of-Towners, The', 1, '0000-00-00', 'mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in', NULL),
(968, '044449287-9', 'Tempest, The', 1, '0000-00-00', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at', NULL),
(969, '214050095-4', '16 Blocks', 1, '0000-00-00', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla', NULL),
(970, '754711883-6', 'Chimes at Midnight (Campanadas a medianoche)', 1, '0000-00-00', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis', NULL),
(971, '500484344-9', 'Love Comes Softly', 1, '0000-00-00', 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', NULL),
(972, '714092151-2', 'Flipper', 1, '0000-00-00', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat', NULL),
(973, '893144972-0', 'Make It Happen', 1, '0000-00-00', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus', NULL),
(974, '620809565-4', 'Captain from Castile', 1, '0000-00-00', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam', NULL),
(975, '067057567-4', 'Clifford', 1, '0000-00-00', 'lacinia sapien quis libero nullam sit amet turpis elementum ligula', NULL),
(976, '408110367-4', 'Nocturna Artificialia', 1, '0000-00-00', 'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id', NULL),
(977, '209798543-2', 'La Belle Verte', 1, '0000-00-00', 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', NULL),
(978, '788987298-4', 'Film About a Woman Who...', 1, '0000-00-00', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', NULL),
(979, '204147504-8', 'American Wedding (American Pie 3)', 1, '0000-00-00', 'ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', NULL),
(980, '972307894-5', 'Misérables, Les', 1, '0000-00-00', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum', NULL),
(981, '909151316-0', 'Becoming Jane', 1, '0000-00-00', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum', NULL),
(982, '818443219-4', 'Alone (Issiz adam)', 1, '0000-00-00', 'lectus vestibulum quam sapien varius ut blandit non interdum in', NULL),
(983, '578110090-3', 'Orgazmo', 1, '0000-00-00', 'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros', NULL),
(984, '529730704-X', 'Lovers of the Arctic Circle, The (Los Amantes del Círculo Polar)', 1, '0000-00-00', 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', NULL),
(985, '734903261-7', 'Legend of Drunken Master, The (Jui kuen II)', 1, '0000-00-00', 'proin at turpis a pede posuere nonummy integer non velit donec', NULL),
(986, '869937566-2', 'Other Shore, The', 1, '0000-00-00', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce', NULL),
(987, '868719919-8', 'Blood into Wine', 1, '0000-00-00', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem', NULL),
(988, '635499494-3', 'Butcher\'s Wife, The', 1, '0000-00-00', 'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum', NULL),
(989, '369645067-7', 'Any Which Way You Can', 1, '0000-00-00', 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus', NULL),
(990, '977478435-9', 'The Indifferent Beauty', 1, '0000-00-00', 'non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', NULL),
(991, '217285323-2', 'By the Sword', 1, '0000-00-00', 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci', NULL),
(992, '540028116-8', 'Flannel Pajamas', 1, '0000-00-00', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst', NULL),
(993, '752183206-X', 'Salomè', 1, '0000-00-00', 'ante ipsum primis in faucibus orci luctus et ultrices posuere', NULL),
(994, '585101803-8', 'Blue Jasmine', 1, '0000-00-00', 'nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi', NULL),
(995, '834328616-2', 'Kagerô-za', 1, '0000-00-00', 'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit', NULL),
(996, '565828504-6', 'Gauntlet, The', 1, '0000-00-00', 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit', NULL),
(997, '266902766-0', 'Happiest Millionaire, The', 1, '0000-00-00', 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', NULL),
(998, '804834134-4', 'Match King, The', 1, '0000-00-00', 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est', NULL),
(999, '599884817-9', 'Lady Vanishes, The', 1, '0000-00-00', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu', NULL),
(1000, '698382513-6', 'Aladdin', 1, '0000-00-00', 'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', NULL),
(5436, '45435435-5', 'qwertyuiop', 1, '2023-08-28', 'dsdasd a', 56),
(6987, '98745612-8', 'my title', 1, '2023-08-28', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis tenetur est architecto, blanditiis earum vitae nam inventore voluptate voluptatibus deserunt magni veniam alias corrupti ea sed culpa facilis dignissimos eum!', 10),
(9999, '345677896', 'title', 1, '2023-08-21', 'new new new', 78),
(65464, '12357889', 'laurence', 6, '2023-08-22', 'dsad sdsadas', 455),
(567890, '213545765', 'test', 1, '2023-08-28', NULL, NULL),
(654634, '3121321321', 'rqrqererq', 1, '2023-08-16', 'dsad sadsadas', 45),
(4332432, '43243243-5', 'dsadas dsadsa', 1, '2023-08-09', 'dsadsad dsaasdas', 56),
(8554342, '2222222', 'sadsadsadsa', 1, '2023-08-28', 'dsadsa dsadsadsa', 67),
(43324236, '2342432435435', 'adsadsad', 1, '2023-08-21', 'dsadsa dsadsa', 54),
(433243265, '43243243-5343', 'dsadas dsadsa', 1, '2023-08-09', 'dsadsad dsaasdas', 56);

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `book_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`book_id`, `author_id`) VALUES
(2, 7),
(2, NULL),
(2, NULL),
(2, 12),
(2, 1),
(12, 12),
(1, 3),
(15, 1),
(21, 15),
(24, 1),
(13, 2),
(13, 9),
(8, 15),
(8, 11),
(8, 2),
(65464, 4),
(65464, 8);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Finance'),
(2, 'Health Care'),
(3, 'Health Care'),
(4, 'Finance'),
(5, 'Health Care'),
(6, 'Basic Industries'),
(7, 'Consumer Services'),
(8, 'Finance'),
(9, 'Energy'),
(10, 'Public Utilities');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `fine_date` date DEFAULT NULL,
  `fine_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fine_payment`
--

CREATE TABLE `fine_payment` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `returned_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `first_name` varchar(300) DEFAULT NULL,
  `last_name` varchar(300) DEFAULT NULL,
  `gender` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `contact` varchar(300) DEFAULT NULL,
  `member_address` varchar(1000) DEFAULT NULL,
  `joined_date` date DEFAULT NULL,
  `active_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `first_name`, `last_name`, `gender`, `email`, `contact`, `member_address`, `joined_date`, `active_status_id`) VALUES
(1, 'Katuscha', 'Balcon', 'Female', 'kbalcon0@unc.edu', '4662250785', '12th Floor', '0000-00-00', 1),
(2, 'Nettie', 'Pettigree', 'Agender', 'npettigree1@webeden.co.uk', '4909629399', '16th Floor', '0000-00-00', 1),
(3, 'Malinde', 'McMichan', 'Female', 'mmcmichan2@blog.com', '4407975744', 'PO Box 84104', '0000-00-00', 1),
(4, 'Greer', 'Zannutti', 'Female', 'gzannutti3@techcrunch.com', '9075873048', '15th Floor', '0000-00-00', 1),
(5, 'Mair', 'Esseby', 'Female', 'messeby4@indiatimes.com', '2456560161', '10th Floor', '0000-00-00', 1),
(6, 'Dukie', 'Philippault', 'Male', 'dphilippault5@cisco.com', '6679578366', '17th Floor', '0000-00-00', 1),
(7, 'Gisele', 'Leger', 'Female', 'gleger6@zimbio.com', '2923938716', '16th Floor', '0000-00-00', 1),
(8, 'Laurella', 'Deakins', 'Female', 'ldeakins7@vk.com', '7794915828', 'PO Box 6393', '0000-00-00', 1),
(9, 'Jillane', 'Colliber', 'Female', 'jcolliber8@google.it', '8314998555', '16th Floor', '0000-00-00', 1),
(10, 'Prinz', 'Rodman', 'Genderqueer', 'prodman9@elegantthemes.com', '4441267138', '10th Floor', '0000-00-00', 1),
(11, 'Jorge', 'Rennard', 'Male', 'jrennarda@acquirethisname.com', '1192040157', 'Room 1893', '0000-00-00', 1),
(12, 'Mathian', 'Lain', 'Male', 'mlainb@springer.com', '9436537568', 'Room 1740', '0000-00-00', 1),
(13, 'Vincenty', 'Hapke', 'Male', 'vhapkec@shareasale.com', '2927152861', 'Suite 61', '0000-00-00', 1),
(14, 'Ilario', 'Cocher', 'Male', 'icocherd@squidoo.com', '2896190015', 'Room 1911', '0000-00-00', 1),
(15, 'Davy', 'Taffley', 'Male', 'dtaffleye@dion.ne.jp', '1981150783', 'Apt 1186', '0000-00-00', 1),
(16, 'Samuele', 'Sergean', 'Male', 'ssergeanf@nydailynews.com', '9222287706', 'Room 1407', '0000-00-00', 1),
(17, 'Gregorius', 'Kettley', 'Male', 'gkettleyg@google.es', '5741859493', '4th Floor', '0000-00-00', 1),
(18, 'Hanna', 'Sibbald', 'Female', 'hsibbaldh@cisco.com', '3564165338', 'Apt 1922', '0000-00-00', 1),
(19, 'Dickie', 'Jepperson', 'Male', 'djeppersoni@home.pl', '6724522002', 'Suite 82', '0000-00-00', 1),
(20, 'Claudius', 'Guihen', 'Male', 'cguihenj@usda.gov', '2252223907', 'Room 501', '0000-00-00', 1),
(21, 'Pierre', 'Colvine', 'Male', 'pcolvinek@angelfire.com', '8398000894', 'Apt 609', '0000-00-00', 1),
(22, 'Tabbie', 'Romagosa', 'Female', 'tromagosal@about.me', '8162179675', 'Suite 30', '0000-00-00', 1),
(23, 'Bradly', 'Veldstra', 'Bigender', 'bveldstram@ca.gov', '5613889507', 'Room 496', '0000-00-00', 1),
(24, 'Waring', 'Ashbridge', 'Male', 'washbridgen@tinypic.com', '4689353792', 'PO Box 92431', '0000-00-00', 1),
(25, 'Tait', 'Greathead', 'Male', 'tgreatheado@adobe.com', '3051865571', 'Suite 64', '0000-00-00', 1),
(26, 'Baily', 'Swalough', 'Male', 'bswaloughp@businesswire.com', '9838452292', 'PO Box 83559', '0000-00-00', 2),
(27, 'Maurise', 'Heater', 'Agender', 'mheaterq@photobucket.com', '5415740724', 'Suite 9', '0000-00-00', 2),
(28, 'Junie', 'O\'Fearguise', 'Female', 'jofearguiser@redcross.org', '5143257841', 'Room 859', '0000-00-00', 2),
(29, 'Borg', 'Scupham', 'Male', 'bscuphams@blogger.com', '7953897024', '19th Floor', '0000-00-00', 2),
(30, 'Talbot', 'Pilkington', 'Male', 'tpilkingtont@msu.edu', '4767650439', 'Apt 48', '0000-00-00', 2),
(31, 'Petronilla', 'Kilpatrick', 'Female', 'pkilpatricku@cpanel.net', '8586923941', 'Apt 513', '0000-00-00', 2),
(32, 'Ninnette', 'Choak', 'Bigender', 'nchoakv@harvard.edu', '5453837651', 'Apt 91', '0000-00-00', 2),
(33, 'Bee', 'Claringbold', 'Female', 'bclaringboldw@arizona.edu', '3226848798', 'PO Box 57446', '0000-00-00', 2),
(34, 'Allyn', 'Scholes', 'Female', 'ascholesx@irs.gov', '3295804439', 'Apt 1537', '0000-00-00', 2),
(35, 'Patsy', 'McPhelim', 'Female', 'pmcphelimy@nba.com', '6672835936', 'Suite 22', '0000-00-00', 2),
(36, 'Lynnelle', 'Bligh', 'Female', 'lblighz@aol.com', '6702820063', 'Room 838', '0000-00-00', 2),
(37, 'Rodolphe', 'Methuen', 'Male', 'rmethuen10@nasa.gov', '6564993323', 'Apt 979', '0000-00-00', 2),
(38, 'Ford', 'Rameaux', 'Male', 'frameaux11@senate.gov', '4584385531', 'PO Box 25423', '0000-00-00', 2),
(39, 'Klarrisa', 'Box', 'Female', 'kbox12@hao123.com', '6098406841', '18th Floor', '0000-00-00', 2),
(40, 'Bram', 'Oppy', 'Male', 'boppy13@purevolume.com', '8737135820', 'PO Box 32208', '0000-00-00', 2),
(41, 'Katharine', 'Bowdidge', 'Female', 'kbowdidge14@techcrunch.com', '1167368035', 'Room 276', '0000-00-00', 2),
(42, 'Nikolos', 'Seckington', 'Male', 'nseckington15@canalblog.com', '1334954225', 'Suite 9', '0000-00-00', 2),
(43, 'Maryjane', 'Briddock', 'Bigender', 'mbriddock16@salon.com', '8633093651', 'Suite 57', '0000-00-00', 2),
(44, 'Hercules', 'Elsegood', 'Polygender', 'helsegood17@unc.edu', '5693220372', 'Apt 1205', '0000-00-00', 2),
(45, 'Ailsun', 'Yansons', 'Female', 'ayansons18@soup.io', '5417061662', '15th Floor', '0000-00-00', 2),
(46, 'Cissiee', 'Gibling', 'Female', 'cgibling19@yale.edu', '8809273872', 'Apt 1252', '0000-00-00', 2),
(47, 'Tully', 'Zorzoni', 'Male', 'tzorzoni1a@sitemeter.com', '2423497668', 'Suite 62', '0000-00-00', 2),
(48, 'Steve', 'Pargiter', 'Male', 'spargiter1b@statcounter.com', '3563444941', 'Suite 99', '0000-00-00', 2),
(49, 'Cassandre', 'Verrill', 'Female', 'cverrill1c@surveymonkey.com', '7478395121', 'Suite 46', '0000-00-00', 2),
(50, 'Tommy', 'Shaughnessy', 'Male', 'tshaughnessy1d@joomla.org', '3651455643', 'Room 1447', '0000-00-00', 2),
(12345, 'Laurence', 'Quismorio Sr.', 'male', 'laurence@gmail.com', '78787878', 'Bangar', '2023-08-22', 1),
(272322, 'easdsad', 'sadsadasdas', 'male', 'dsadsaasda@gmail.com23s2', '23213', 'dsada', '2023-08-23', 2),
(2723222, 'dsadsadas', 'dsadas', 'male', 'dsadsaasda@gmail.com23s223', '21321321', 'dsadsa', '2023-08-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member_status`
--

CREATE TABLE `member_status` (
  `id` int(11) NOT NULL,
  `status_value` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_status`
--

INSERT INTO `member_status` (`id`, `status_value`) VALUES
(1, 'active'),
(2, 'in-active');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `reservation_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_status`
--

CREATE TABLE `reservation_status` (
  `id` int(11) NOT NULL,
  `status_value` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `fk_book_category` (`category_id`);

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD KEY `fk_bookauthor_book` (`book_id`),
  ADD KEY `fk_bookauthor_author` (`author_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fine`
--
ALTER TABLE `fine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fine_book` (`book_id`),
  ADD KEY `fk_fine_loan` (`loan_id`);

--
-- Indexes for table `fine_payment`
--
ALTER TABLE `fine_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_finepay_member` (`member_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_loan_book` (`book_id`),
  ADD KEY `fk_loan_member` (`member_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_member_status` (`active_status_id`);

--
-- Indexes for table `member_status`
--
ALTER TABLE `member_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_res_book` (`book_id`),
  ADD KEY `fk_res_member` (`member_id`);

--
-- Indexes for table `reservation_status`
--
ALTER TABLE `reservation_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `fk_book_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `fk_bookauthor_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `fk_bookauthor_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Constraints for table `fine`
--
ALTER TABLE `fine`
  ADD CONSTRAINT `fk_fine_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `fk_fine_loan` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`id`);

--
-- Constraints for table `fine_payment`
--
ALTER TABLE `fine_payment`
  ADD CONSTRAINT `fk_finepay_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `fk_loan_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `fk_loan_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `fk_member_status` FOREIGN KEY (`active_status_id`) REFERENCES `member_status` (`id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_res_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `fk_res_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
