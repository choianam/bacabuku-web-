-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2020 at 08:43 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses`
--

CREATE TABLE `akses` (
  `id_akses` varchar(4) NOT NULL,
  `keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akses`
--

INSERT INTO `akses` (`id_akses`, `keterangan`) VALUES
('1', 'admin'),
('2', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_buku`
--

CREATE TABLE `daftar_buku` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.jpg',
  `file_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.pdf',
  `kategori_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengarang_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_halaman` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daftar_buku`
--

INSERT INTO `daftar_buku` (`id`, `kode_buku`, `judul_buku`, `gambar_buku`, `file_buku`, `kategori_buku`, `pengarang_buku`, `penerbit_buku`, `jumlah_halaman`) VALUES
(67, '9798846046856', 'Budget Analyst', '.jpg', '.pdf', 'optio', 'Prof. Abelardo Lehner', 'Wiegand-Wiza', 6),
(68, '9796005141398', 'Installation and Repair Technician', '.jpg', '.pdf', 'quam', 'Ms. Breana Mills IV', 'Crona Group', 3),
(69, '9792438447656', 'Welding Machine Tender', '.jpg', '.pdf', 'assumenda', 'Neha Hintz', 'Thompson Ltd', 2),
(70, '9780794010744', 'Pewter Caster', '.jpg', '.pdf', 'et', 'Lue Flatley', 'Koss, Goldner and Torp', 4),
(72, '9782576640736', 'Photographic Processing Machine Operator', '.jpg', '.pdf', 'vel', 'May Nicolas', 'Nicolas, Buckridge and Bins', 5),
(78, '9788284098135', 'Boiler Operator', '.jpg', '.pdf', 'quo', 'Buck Doyle', 'Witting-Dach', 1),
(79, '9799363052986', 'Food Batchmaker', '.jpg', '.pdf', 'quos', 'Layla Wyman', 'Murphy, Hirthe and Satterfield', 3),
(80, '9794015423657', 'Drycleaning Machine Operator', '.jpg', '.pdf', 'velit', 'Nigel Bailey', 'Paucek, Kutch and Stamm', 4),
(81, '9785196905889', 'Bill and Account Collector', '.jpg', '.pdf', 'autem', 'Isai Mante', 'Muller, Hilll and Willms', 7),
(82, '9785052160896', 'Captain', '.jpg', '.pdf', 'explicabo', 'Ila Wintheiser', 'Swaniawski Inc', 6),
(83, '9796942486897', 'Mold Maker', '.jpg', '.pdf', 'et', 'Jailyn Krajcik', 'Huels-Stracke', 4),
(84, '9789207404033', 'Power Plant Operator', '.jpg', '.pdf', 'quia', 'Dr. Domenico Kshlerin PhD', 'Harris, Mitchell and Mitchell', 4),
(85, '9797024778794', 'Heavy Equipment Mechanic', '.jpg', '.pdf', 'natus', 'Genoveva Moen', 'Crooks, Berge and Hyatt', 5),
(86, '9792322376925', 'Construction Carpenter', '.jpg', '.pdf', 'assumenda', 'Myrl Lang', 'Okuneva, Lesch and Lebsack', 3),
(87, '9791099142443', 'Radiation Therapist', '.jpg', '.pdf', 'sunt', 'Nicolas Kerluke', 'Parker, Armstrong and Paucek', 8),
(88, '9797826814195', 'Tire Builder', '.jpg', '.pdf', 'exercitationem', 'Sandy Moen', 'Langworth, Mitchell and Leuschke', 9),
(89, '9787591839561', 'Business Development Manager', '.jpg', '.pdf', 'quisquam', 'Cortney Stamm', 'Kovacek-Baumbach', 7),
(90, '9789255396724', 'Elevator Installer and Repairer', '.jpg', '.pdf', 'alias', 'Athena O\'Kon', 'Rogahn, Cummerata and Sawayn', 5),
(91, '9790342496487', 'Screen Printing Machine Operator', '.jpg', '.pdf', 'laborum', 'Harold Emmerich I', 'Moen, Weimann and Gislason', 1),
(92, '9787869254423', 'Calibration Technician OR Instrumentation Technician', '.jpg', '.pdf', 'rem', 'Ms. Susie Brakus PhD', 'Quitzon and Sons', 6),
(93, '9785696889078', 'Textile Dyeing Machine Operator', '.jpg', '.pdf', 'vel', 'Federico Becker', 'Connelly LLC', 8),
(94, '9784327287566', 'Psychologist', '.jpg', '.pdf', 'dolore', 'Karine Schuster', 'Rice-Rowe', 9),
(95, '9785603756394', 'Portable Power Tool Repairer', '.jpg', '.pdf', 'ut', 'Miss Effie Hayes', 'Hansen Group', 3),
(96, '9796281953104', 'Telephone Operator', '.jpg', '.pdf', 'enim', 'Russ Hessel', 'Nitzsche, Ankunding and King', 5),
(97, '9783891850657', 'Woodworking Machine Operator', '.jpg', '.pdf', 'expedita', 'Mr. Noe O\'Kon', 'Hane-Torphy', 1),
(98, '9792219217805', 'Precision Dyer', '.jpg', '.pdf', 'dignissimos', 'Miss Alba Trantow IV', 'Goodwin PLC', 4),
(99, '9787153509727', 'Teacher Assistant', '.jpg', '.pdf', 'earum', 'Bulah Deckow', 'Block LLC', 2),
(100, '9791249420520', 'Food Service Manager', '.jpg', '.pdf', 'minima', 'Rudolph Wilderman', 'Breitenberg, Stoltenberg and Monahan', 6),
(101, '9789774455742', 'Cashier', '.jpg', '.pdf', 'voluptatum', 'Tyree Steuber', 'Kozey Ltd', 4),
(102, '9780639577852', 'Proofreaders and Copy Marker', '.jpg', '.pdf', 'dolore', 'Mr. Oscar McDermott MD', 'Mayer-Brekke', 6),
(103, '9790110170847', 'Production Inspector', '.jpg', '.pdf', 'laboriosam', 'Joseph Ward', 'Heathcote-Murray', 7),
(104, '9788764200478', 'Electronics Engineer', '.jpg', '.pdf', 'fugiat', 'Miss Fabiola O\'Keefe', 'D\'Amore LLC', 5),
(105, '9788668287315', 'Marking Machine Operator', '.jpg', '.pdf', 'sunt', 'Mr. Dorian Ledner DDS', 'Schmitt-Conn', 4),
(106, '9788710987330', 'Protective Service Worker', '.jpg', '.pdf', 'ut', 'Maximillian O\'Conner', 'Marks, Mosciski and Hamill', 2),
(107, '9781229805515', 'Machinist', '.jpg', '.pdf', 'ipsa', 'Ms. Burdette Weber', 'Howe and Sons', 3),
(108, '9795338557319', 'Grips', '.jpg', '.pdf', 'quos', 'Orval Stokes', 'Klein-Senger', 2),
(109, '9799785431482', 'House Cleaner', '.jpg', '.pdf', 'veniam', 'Maurice Rohan PhD', 'O\'Reilly Group', 6),
(110, '9782261242986', 'Database Administrator', '.jpg', '.pdf', 'quos', 'Nigel Carter', 'Roberts PLC', 7),
(111, '9795926780976', 'Etcher', '.jpg', '.pdf', 'magnam', 'Gene Williamson', 'Schultz LLC', 4),
(112, '9785546565022', 'Personnel Recruiter', '.jpg', '.pdf', 'ipsa', 'Prof. Vicente Morissette IV', 'Cummings and Sons', 7),
(113, '9797225640074', 'Counselor', '.jpg', '.pdf', 'suscipit', 'Johnathan Schneider III', 'Thompson, Trantow and Bode', 7),
(114, '9785349190353', 'Embossing Machine Operator', '.jpg', '.pdf', 'autem', 'Mr. Aric Eichmann', 'Morissette-Boehm', 8),
(115, '9798225709846', 'Communications Equipment Operator', '.jpg', '.pdf', 'ut', 'Orrin West III', 'Streich-West', 2),
(116, '9788735411377', 'Bus Driver', '.jpg', '.pdf', 'autem', 'Miss Leila Kulas', 'Lebsack-Hoppe', 2),
(117, '9784629627176', 'Roof Bolters Mining', '.jpg', '.pdf', 'omnis', 'Beryl Hackett', 'Crist-Hettinger', 1),
(118, '9781264626533', 'Underground Mining', '.jpg', '.pdf', 'in', 'Coleman McDermott', 'Kuvalis, Rau and Daugherty', 7),
(119, '9784701200914', 'Librarian', '.jpg', '.pdf', 'aut', 'Reta Kohler', 'Schumm, Dickinson and Jones', 8),
(120, '9784217112411', 'Mechanical Drafter', '.jpg', '.pdf', 'aut', 'Hans Fadel', 'Haag, Nolan and Howe', 7),
(121, '9780808597124', 'Amusement Attendant', '.jpg', '.pdf', 'quae', 'Miss Renee Pouros III', 'Runolfsdottir-Bartell', 2),
(122, '9789188645654', 'Market Research Analyst', '.jpg', '.pdf', 'dolor', 'Lorenza Kuhn', 'Davis, Crooks and Mueller', 5),
(123, '9782924834497', 'Stonemason', '.jpg', '.pdf', 'aliquid', 'Oda Konopelski', 'O\'Connell-Bauch', 7),
(124, '9787001620352', 'Electronic Equipment Assembler', '.jpg', '.pdf', 'tenetur', 'Halle Morar IV', 'Upton, Wunsch and O\'Kon', 7),
(125, '9787578288955', 'Private Detective and Investigator', '.jpg', '.pdf', 'minus', 'Mckayla Pollich', 'Kunze PLC', 8),
(126, '9798036783288', 'Computer Science Teacher', '.jpg', '.pdf', 'consequatur', 'Mrs. Delphine Fahey', 'Moore-Wolff', 9),
(127, '9797483024241', 'Logging Supervisor', '.jpg', '.pdf', 'ut', 'Dr. Scotty Schinner III', 'Franecki-Mills', 8),
(128, '9795919945702', 'Plumber', '.jpg', '.pdf', 'est', 'Verner Dach', 'Dooley, Ratke and Considine', 7),
(129, '9784865636338', 'Travel Guide', '.jpg', '.pdf', 'consequatur', 'Tanner Leuschke', 'Green-Buckridge', 2),
(130, '9782815656849', 'Manager of Air Crew', '.jpg', '.pdf', 'dolorum', 'Jimmy Jerde PhD', 'Smith Inc', 2),
(131, '9786940859328', 'Separating Machine Operators', '.jpg', '.pdf', 'in', 'Keon Runte', 'Herzog Group', 2),
(132, '9797395930111', 'Construction Carpenter', '.jpg', '.pdf', 'sunt', 'Lelah Volkman', 'Mraz and Sons', 6),
(133, '9780072389470', 'Cutting Machine Operator34', '.jpg', '.pdf', 'eum44', 'Sydney Orn MDsad', 'Lang and Sonsasd', 2),
(134, '9789677063136', 'Mathematical Science Teacher', '.jpg', '.pdf', 'veritatis', 'Mrs. Jessica Jacobi I', 'Zemlak and Sons', 9),
(135, '9790610976321', 'Computer Scientist', '.jpg', '.pdf', 'culpa', 'Grayson Gislason', 'Jones-Deckow', 9),
(136, '9791662729781', 'Communication Equipment Repairer', '.jpg', '.pdf', 'dolor', 'Jadon Turcotte', 'Stoltenberg, O\'Reilly and Spinka', 4),
(137, '9789423127808', 'Engineering Manager', '.jpg', '.pdf', 'id', 'Prof. Raymond Kilback', 'Collins, Lakin and Heller', 1),
(138, '9793221753077', 'Psychiatric Aide', '.jpg', '.pdf', 'maiores', 'Ardella Veum', 'Graham Ltd', 1),
(139, '9782676173424', 'Construction Carpenter', '.jpg', '.pdf', 'a', 'Jonas Hartmann', 'Sauer, Witting and Treutel', 9),
(140, '9785788647005', 'Bus Driver', '.jpg', '.pdf', 'voluptatibus', 'Dahlia O\'Connell Sr.', 'Cormier-Abernathy', 3),
(141, '9796711649553', 'Medical Appliance Technician', '.jpg', '.pdf', 'qui', 'Lenna Anderson', 'Kerluke Group', 4),
(142, '9789562008440', 'Ambulance Driver', '.jpg', '.pdf', 'aut', 'Walton Deckow', 'Balistreri, Pfeffer and Veum', 9),
(143, '9796446853003', 'Railroad Conductors', '.jpg', '.pdf', 'doloribus', 'Shaun Green', 'Feest-Cassin', 9),
(144, '9798694788281', 'Engraver', '.jpg', '.pdf', 'vel', 'Camryn McGlynn', 'Zboncak-Prohaska', 3),
(145, '9780759297814', 'Economist', '.jpg', '.pdf', 'corrupti', 'Mr. Jordon White PhD', 'Kub, Bahringer and Rohan', 7),
(146, '9798793373265', 'Production Helper', '.jpg', '.pdf', 'id', 'Bulah Schimmel', 'Mraz-Wiza', 2),
(147, '9796639678109', 'Logging Supervisor', '.jpg', '.pdf', 'labore', 'Dr. Garret Graham DDS', 'Kuvalis, Cruickshank and Howell', 2),
(148, '9795909697253', 'Event Planner', '.jpg', '.pdf', 'nobis', 'Mr. Javon Douglas V', 'Altenwerth-Hammes', 5),
(149, '9799136243016', 'Lay-Out Worker', '.jpg', '.pdf', 'qui', 'Winifred Paucek', 'Hand-Zboncak', 7),
(150, '9793319823385', 'Electrical Drafter', '.jpg', '.pdf', 'eligendi', 'Chesley Hermann', 'Rowe and Sons', 6),
(151, '9796526959991', 'Materials Scientist', '.jpg', '.pdf', 'est', 'Mortimer Beatty', 'Corwin, Heathcote and Bartell', 8),
(152, '9782419991988', 'Motorboat Operator', '.jpg', '.pdf', 'aut', 'Prof. Agustin Haley', 'Haley-Feest', 8),
(153, '9781553336532', 'Telemarketer', '.jpg', '.pdf', 'totam', 'Christian Leffler MD', 'Reilly, Tremblay and Watsica', 6),
(154, '9787877424795', 'Film Laboratory Technician', '.jpg', '.pdf', 'ut', 'Jalen Deckow', 'Nader Ltd', 3),
(155, '9781925269536', 'Fabric Pressers', '.jpg', '.pdf', 'nihil', 'Darion Sawayn', 'Jacobson, Wiza and Ankunding', 6),
(156, '9785806499586', 'Upholsterer', '.jpg', '.pdf', 'doloribus', 'Maxie Runolfsdottir', 'Langosh LLC', 3),
(157, '9793653027890', 'Poet OR Lyricist', '.jpg', '.pdf', 'quasi', 'Mrs. Marquise Hartmann V', 'Smith-Nienow', 9),
(158, '9797887709355', 'Vice President Of Human Resources', '.jpg', '.pdf', 'sint', 'Eli Runolfsson III', 'Kessler Group', 4),
(159, '9789266363616', 'Travel Guide', '.jpg', '.pdf', 'rem', 'Corine Fritsch', 'Schulist-Prohaska', 5),
(160, '9794744242215', 'Rigger', '.jpg', '.pdf', 'accusamus', 'Nedra Ondricka', 'Monahan, Bartell and Durgan', 4),
(161, '9792518086737', 'Locksmith', '.jpg', '.pdf', 'ut', 'Aliyah Nienow', 'Weimann, Hilll and Towne', 7),
(162, '9795991711240', 'Special Force', '.jpg', '.pdf', 'vel', 'Prof. Guy Schiller', 'Mertz, Mosciski and Okuneva', 8),
(163, '9791095208624', 'Horticultural Worker', '.jpg', '.pdf', 'minima', 'Stephen Shanahan', 'Jakubowski, Zboncak and Weimann', 9),
(164, '9788053022019', 'Hydrologist', '.jpg', '.pdf', 'necessitatibus', 'Alex Willms DDS', 'Mann-D\'Amore', 2),
(165, '9796910882362', 'Sawing Machine Tool Setter', '.jpg', '.pdf', 'doloribus', 'Dr. Brittany Kub III', 'Bogan-Hudson', 2),
(166, '9789593983990', 'Housekeeping Supervisor', '.jpg', '.pdf', 'iure', 'Brendon Greenfelder Jr.', 'Huel-Stiedemann', 2),
(167, '9789768928214', 'Fast Food Cook', '.jpg', '.pdf', 'voluptatum', 'Belle Gerlach', 'Harber, Harris and Bashirian', 3),
(168, '9784546056387', 'Automotive Master Mechanic', '.jpg', '.pdf', 'repellendus', 'Filomena Crooks', 'Corwin, Mertz and Mayer', 6),
(169, '9781107346390', 'Command Control Center Officer', '.jpg', '.pdf', 'unde', 'Evie Sipes', 'Maggio-Walsh', 8),
(170, '9780916618957', 'Computer Programmer', '.jpg', '.pdf', 'qui', 'Felicity Rodriguez', 'Nitzsche, Bode and Mraz', 2),
(171, '9783479493597', 'Installation and Repair Technician', '.jpg', '.pdf', 'pariatur', 'Mr. Tobin Daugherty Jr.', 'Walker, Block and D\'Amore', 5),
(172, '9793865890688', 'Insulation Installer', '.jpg', '.pdf', 'minima', 'Prof. Quinten Upton DDS', 'Schultz Inc', 2),
(173, '9799077811367', 'Claims Taker', '.jpg', '.pdf', 'ipsam', 'Austyn McClure', 'Larson-O\'Connell', 6),
(174, '9795387969958', 'Animal Control Worker', '.jpg', '.pdf', 'minus', 'Joey Breitenberg I', 'Morissette PLC', 1),
(175, '9798128660510', 'Music Arranger and Orchestrator', '.jpg', '.pdf', 'vitae', 'Brain Moen DDS', 'Schultz LLC', 6),
(176, '9790342583965', 'Carpenter Assembler and Repairer', '.jpg', '.pdf', 'voluptatum', 'Jeanne Collier', 'Haley-Rath', 6),
(177, '9781171002611', 'Furnace Operator', '.jpg', '.pdf', 'esse', 'Jennings Runte', 'Trantow-Armstrong', 4),
(178, '9799575605352', 'Dot Etcher', '.jpg', '.pdf', 'quia', 'Davonte Dickinson II', 'Franecki, Ortiz and Connelly', 8),
(179, '9782891466547', 'Industrial-Organizational Psychologist', '.jpg', '.pdf', 'ut', 'Aletha Harris', 'Walsh and Sons', 3),
(180, '9785455035845', 'Network Admin OR Computer Systems Administrator', '.jpg', '.pdf', 'ut', 'Eldora Gulgowski', 'Mante and Sons', 1),
(181, '9790814230656', 'Postal Service Mail Carrier', '.jpg', '.pdf', 'rem', 'Maximus Grant Sr.', 'Lemke, Balistreri and Olson', 1),
(182, '9788177920345', 'Head Nurse', '.jpg', '.pdf', 'soluta', 'Hudson Kunde', 'Hickle and Sons', 7),
(183, '9785120495219', 'Funeral Director', '.jpg', '.pdf', 'minus', 'Lizeth Emmerich', 'Grimes, Turner and Weber', 1),
(184, '9786517524277', 'Musician OR Singer', '.jpg', '.pdf', 'minus', 'Jerald Schamberger', 'Parker, Langworth and Kertzmann', 3),
(185, '9789598434602', 'Ship Pilot', '.jpg', '.pdf', 'rem', 'Golden Cassin', 'Berge-Olson', 1),
(186, '9782370415554', 'Librarian', '.jpg', '.pdf', 'praesentium', 'Dr. Dana Dietrich I', 'Beahan, Pouros and Rippin', 2),
(187, '9786670341360', 'Housekeeping Supervisor', '.jpg', '.pdf', 'nulla', 'Prof. Gaylord Miller II', 'Heaney PLC', 3),
(188, '9787248379914', 'Chemical Equipment Controller', '.jpg', '.pdf', 'deleniti', 'Prof. Jeffrey Kunde', 'Cole LLC', 9),
(189, '9780427815371', 'Materials Inspector', '.jpg', '.pdf', 'vero', 'Ricardo Collier V', 'Bruen-Beahan', 6),
(190, '9791255233930', 'Shipping and Receiving Clerk', '.jpg', '.pdf', 'consectetur', 'Dax Kozey', 'Collins-O\'Conner', 1),
(191, '9785835276653', 'Nuclear Power Reactor Operator', '.jpg', '.pdf', 'architecto', 'Sincere Walter', 'Hoppe-O\'Hara', 6),
(192, '9783874133616', 'Mathematician', '.jpg', '.pdf', 'iure', 'Liliana Cronin', 'Batz-Ratke', 6),
(193, '9784361081489', 'Elementary and Secondary School Administrators', '.jpg', '.pdf', 'natus', 'Dr. Geovanny Parker', 'Daniel, Kuhn and Grimes', 1),
(194, '9795847620979', 'Customer Service Representative', '.jpg', '.pdf', 'maiores', 'Prof. Johathan Frami', 'Kohler Inc', 7),
(195, '9797210695041', 'Conveyor Operator', '.jpg', '.pdf', 'iusto', 'Delores Cole V', 'Lind-Kub', 8),
(196, '9799004267786', 'Gaming Manager', '.jpg', '.pdf', 'consequatur', 'Trevor Pouros', 'Moen Group', 6),
(197, '9784936457756', 'Career Counselor', '.jpg', '.pdf', 'corporis', 'Delmer Roberts', 'Lehner-Torphy', 9),
(199, '9786835209665', 'Creative Writer', '.jpg', '.pdf', 'quae', 'Dr. Dale Nolan', 'Hand LLC', 9),
(200, '9797388642236', 'Microbiologist', '.jpg', '.pdf', 'sunt', 'Thurman Satterfield', 'Toy-Koepp', 7),
(201, '9783819187780', 'Plate Finisher', '.jpg', '.pdf', 'minus', 'Margie Walter Jr.', 'West LLC', 5),
(202, '9797144563553', 'Visual Designer', '.jpg', '.pdf', 'vero', 'Mariana Lang', 'Swift-Weimann', 7),
(203, '9790222365261', 'Chemical Engineer', '.jpg', '.pdf', 'molestiae', 'Pauline Ritchie', 'Schaefer-Schimmel', 5),
(204, '9789328423425', 'Telecommunications Equipment Installer', '.jpg', '.pdf', 'perferendis', 'Leslie Nikolaus', 'Bradtke-Larkin', 3),
(205, '9798296572653', 'CSI', '.jpg', '.pdf', 'dicta', 'Felicity Nienow', 'Lind Ltd', 4),
(206, '9789679184754', 'Fitter', '.jpg', '.pdf', 'expedita', 'Mrs. Juliet Ebert', 'Berge, Kovacek and Kuhlman', 8),
(207, '9797661719013', 'Kindergarten Teacher', '.jpg', '.pdf', 'cumque', 'Miss Elyssa Effertz', 'Pouros PLC', 7),
(208, '9797895914222', 'Gas Appliance Repairer', '.jpg', '.pdf', 'et', 'Jorge Bergnaum', 'Prohaska, Schowalter and Lesch', 7),
(209, '9789650847654', 'Shampooer', '.jpg', '.pdf', 'pariatur', 'Murray Grant PhD', 'Schmitt PLC', 3),
(210, '9786133077379', 'Economist', '.jpg', '.pdf', 'non', 'Dr. Vanessa Sporer II', 'Upton-Lang', 6),
(211, '9792953343938', 'Food Tobacco Roasting', '.jpg', '.pdf', 'aut', 'Arturo Welch', 'Jacobi LLC', 6),
(212, '9780120097975', 'Graduate Teaching Assistant', '.jpg', '.pdf', 'facilis', 'Anibal Muller', 'Feest, Schmitt and Ratke', 4),
(213, '9796805986960', 'Flight Attendant', '.jpg', '.pdf', 'ut', 'Arjun Beahan', 'Cummings-Corkery', 6),
(214, '9791949010267', 'Transportation Equipment Maintenance', '.jpg', '.pdf', 'iusto', 'Monserrate O\'Keefe', 'West, Rippin and Raynor', 1),
(215, '9791562738616', 'Historian', '.jpg', '.pdf', 'autem', 'Velda Kertzmann', 'Little and Sons', 2),
(216, '9794864884708', 'Secondary School Teacher', '.jpg', '.pdf', 'sunt', 'Britney Schamberger', 'Cole, Mayer and Spinka', 6),
(217, '9785065619121', 'Precision Devices Inspector', '.jpg', '.pdf', 'odit', 'Gunnar Gaylord', 'Kiehn-Orn', 1),
(218, '9789529942138', 'Flight Attendant', '.jpg', '.pdf', 'officiis', 'Khalil Schmeler', 'Skiles LLC', 3),
(219, '9781573043809', 'Board Of Directors', '.jpg', '.pdf', 'eius', 'Prof. Tyrese Mayert DVM', 'Kiehn and Sons', 5),
(220, '9792330072956', 'Industrial-Organizational Psychologist', '.jpg', '.pdf', 'fugit', 'Emmy Ratke', 'Kovacek-Bayer', 7),
(221, '9789378390289', 'Lawyer', '.jpg', '.pdf', 'animi', 'Prof. Cielo Cruickshank', 'Lakin, Hand and Goyette', 2),
(222, '9785411272758', 'Government', '.jpg', '.pdf', 'ut', 'Monserrate Eichmann', 'Yundt PLC', 2),
(223, '9796588904809', 'Audio-Visual Collections Specialist', '.jpg', '.pdf', 'non', 'Mr. Elijah Nikolaus', 'Haley-Farrell', 7),
(224, '9782367516332', 'Letterpress Setters Operator', '.jpg', '.pdf', 'maxime', 'Domenick Farrell', 'Berge, Kiehn and Hilll', 2),
(225, '9796504163945', 'Scientific Photographer', '.jpg', '.pdf', 'animi', 'Mr. Cleveland Mills IV', 'Kling-Carroll', 9),
(226, '9787156263268', 'Entertainer and Performer', '.jpg', '.pdf', 'quae', 'Prof. Ashleigh VonRueden DDS', 'Hilpert-Jast', 3),
(227, '9790585698440', 'Clinical Laboratory Technician', '.jpg', '.pdf', 'eligendi', 'Cloyd Abshire', 'Gerlach and Sons', 4),
(228, '9784654131334', 'Animal Control Worker', '.jpg', '.pdf', 'eligendi', 'Delmer Rempel PhD', 'O\'Hara Ltd', 3),
(229, '9785499779132', 'Illustrator', '.jpg', '.pdf', 'maxime', 'Sienna Labadie', 'Champlin-Heidenreich', 9),
(230, '9784294042649', 'Press Machine Setter, Operator', '.jpg', '.pdf', 'consequatur', 'Linnie Ankunding', 'Strosin-Koss', 1),
(231, '9791858478912', 'Materials Engineer', '.jpg', '.pdf', 'laudantium', 'Mrs. Ethyl Kuvalis DDS', 'Hills, Muller and Prosacco', 8),
(232, '9795039600079', 'Building Cleaning Worker', '.jpg', '.pdf', 'rerum', 'Mr. Ken Wintheiser II', 'Corwin Ltd', 5),
(233, '9795131802067', 'Foundry Mold and Coremaker', '.jpg', '.pdf', 'est', 'Dr. Van Schroeder II', 'Rath, Quitzon and Kautzer', 1),
(234, '9793392997713', 'Insurance Policy Processing Clerk', '.jpg', '.pdf', 'perspiciatis', 'Mr. Art Metz I', 'VonRueden and Sons', 4),
(235, '9789835023552', 'Sales Engineer', '.jpg', '.pdf', 'qui', 'Prof. Edwin Pfeffer', 'Rutherford and Sons', 8),
(236, '9783587953310', 'Editor', '.jpg', '.pdf', 'cum', 'Ciara Skiles V', 'Schultz PLC', 3),
(237, '9798758831793', 'Recordkeeping Clerk', '.jpg', '.pdf', 'accusantium', 'Mr. Linwood Schmitt', 'Thiel-Volkman', 6),
(238, '9782223107476', 'Railroad Conductors', '.jpg', '.pdf', 'minima', 'Dr. Gust Zboncak DDS', 'Hermiston, Mann and Gleason', 9),
(239, '9785929329395', 'Commercial Pilot', '.jpg', '.pdf', 'repudiandae', 'Mitchel O\'Conner', 'Rau, Abernathy and Schamberger', 3),
(240, '9788385903369', 'Telephone Station Installer and Repairer', '.jpg', '.pdf', 'sit', 'Evans Daugherty', 'Leannon-Roob', 2),
(241, '9784923359551', 'Washing Equipment Operator', '.jpg', '.pdf', 'optio', 'Maybelle Trantow', 'Green Ltd', 1),
(242, '9791541401623', 'Coremaking Machine Operator', '.jpg', '.pdf', 'rem', 'Prof. Westley Bradtke MD', 'Kemmer PLC', 4),
(243, '9795610212271', 'Poet OR Lyricist', '.jpg', '.pdf', 'eum', 'Athena Ernser', 'Crist-Auer', 6),
(244, '9780597796883', 'Adjustment Clerk ANDRO', '.jpg', '.pdf', 'inventore TEST', 'Owen McLaughlintest', 'Terry Incasd', 12),
(245, '9787823824372', 'Forming Machine Operator', '.jpg', '.pdf', 'quo', 'Carlo Heaney', 'Zieme-Dicki', 2),
(246, '9790657162077', 'Computer Specialist', '.jpg', '.pdf', 'odit', 'Ed Durgan', 'Little LLC', 6),
(247, '9799560326071', 'Benefits Specialist', '.jpg', '.pdf', 'porro', 'Mrs. Ocie Upton DDS', 'Jaskolski, Lebsack and Romaguera', 5),
(248, '9784714606949', 'Molder', '.jpg', '.pdf', 'laborum', 'Mr. Nasir Leannon', 'Feeney-Metz', 4),
(249, '9788660829230', 'Refractory Materials Repairer', '.jpg', '.pdf', 'voluptatem', 'Berniece Schultz', 'Tremblay-Howe', 3),
(250, '9788435792080', 'Battery Repairer', '.jpg', '.pdf', 'provident', 'Stephania Kuhic', 'Kiehn Ltd', 6),
(251, '9782175100105', 'RN', '.jpg', '.pdf', 'deserunt', 'Walton Runolfsdottir', 'Schultz, Rath and Kihn', 8);

-- --------------------------------------------------------

--
-- Table structure for table `daftar_user`
--

CREATE TABLE `daftar_user` (
  `user_id` int(10) NOT NULL,
  `id_akses` varchar(10) NOT NULL COMMENT '1:admin, 2:siswa',
  `Nama_lengkap` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_user`
--

INSERT INTO `daftar_user` (`user_id`, `id_akses`, `Nama_lengkap`, `Username`, `Password`) VALUES
(1, '1', 'Imelia rosita ', 'imelia', '123'),
(4, '2', 'ely sagita', 'ely', '1234'),
(6, '1', 'nizelia', 'seli', '12345'),
(7, '2', 'viqih zamzami', 'viqih', '123');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_01_01_035648_create_buku_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `nomor_kartu` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dari_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sampai_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pengembalian` int(11) NOT NULL,
  `id` int(9) NOT NULL,
  `kode_buku` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`nomor_kartu`, `dari_tanggal`, `sampai_tanggal`, `status_pengembalian`, `id`, `kode_buku`) VALUES
('test22', '05-01-2018', '15-01-2018', 1, 1, 'test1'),
('dfsdf', '05-01-2018', '19-01-2018', 1, 2, '324'),
('12', '06-01-2018', '18-01-2018', 1, 3, '12'),
('sadsa', '07-01-2018', '16-01-2018', 0, 4, 'sadsad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indexes for table `daftar_buku`
--
ALTER TABLE `daftar_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_user`
--
ALTER TABLE `daftar_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_buku`
--
ALTER TABLE `daftar_buku`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `daftar_user`
--
ALTER TABLE `daftar_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peminjam`
--
ALTER TABLE `peminjam`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
