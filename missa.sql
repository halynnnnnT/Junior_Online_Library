-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 06:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `missa`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `language` varchar(50) NOT NULL,
  `edition` varchar(15) NOT NULL,
  `dateIssued` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `title`, `author`, `publisher`, `language`, `edition`, `dateIssued`, `image`, `description`, `rating`, `quantity`, `available`, `categoryId`) VALUES
(1, 'Name of Wind', 'Patrick Rothfuss', 'DAW Books', 'English', '1', '2007-03-27 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/5/56/TheNameoftheWind_cover.jpg', 'he Name of the Wind, also referred to as The Kingkiller Chronicle: Day One, is a heroic fantasy novel written by American author Patrick Rothfuss. It is the first book in the ongoing fantasy trilogy The Kingkiller Chronicle, followed by The Wise Man\'s Fea', 4.7, 10, 10, 1),
(2, 'The Way of Kings', 'Brandon Sanderson', 'Michael Whelan', 'English', '1', '2010-08-31 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/8/8b/TheWayOfKings.png', 'The story rotates between the points of view of Kaladin, Shallan Davar, Szeth-son-son-Vallano, Dalinar Kholin, Adolin Kholin, and several other minor characters, who lead seemingly unconnected lives. Szeth, a Shin man cast out by his people and condemned ', 4.2, 5, 5, 1),
(3, 'The Fifth Season', 'N. K. Jemisin', 'Lauren Panepinto', 'English', '1', '2015-08-04 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/0/01/The_Fifth_Season_%28novel%29.jpg', 'The Fifth Season takes place on a planet with a single supercontinent called the Stillness. Every few centuries, its inhabitants endure what they call a \"Fifth Season\" of catastrophic climate change.', 4.5, 15, 15, 1),
(4, 'Game of Throne', 'George R. R. Martin', 'Tom Hallman', 'English', '7', '1996-08-01 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/9/93/AGameOfThrones.jpg', 'In the novel, recounting events from various points of view, Martin introduces the plot-lines of the noble houses of Westeros, the Wall, and the Targaryens. The novel has inspired several spin-off works, including several games. It is also the namesake an', 3.8, 5, 5, 1),
(5, 'Lord of the Ring', 'J. R. R. Tolkien', 'Allen & Unwin', 'English', '5', '2000-10-17 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/e/e9/First_Single_Volume_Edition_of_The_Lord_of_the_Rings.gif', 'The title refers to the story\'s main antagonist, the Dark Lord Sauron, who in an earlier age created the One Ring to rule the other Rings of Power given to Men, Dwarves, and Elves, in his campaign to conquer all of Middle-earth.', 3.3, 5, 5, 1),
(6, 'Wizard Earthsea', 'Ursula K. Le Guin', 'Parnassus Press', 'English', '1', '2004-06-14 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/5/59/AWizardOfEarthsea%281stEd%29.jpg', 'A Wizard of Earthsea is a fantasy novel written by American author Ursula K. Le Guin and first published by the small press Parnassus in 1968. It is regarded as a classic of children\'s literature and of fantasy, within which it is widely influential. ', 4.9, 20, 20, 1),
(7, 'Eye of World', 'Robert Jordan', 'Darrell K. Sweet', 'English', '3', '2007-06-03 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/0/00/WoT01_TheEyeOfTheWorld.jpg', 'The Eye of the World is a high fantasy novel by American writer Robert Jordan, the first book of The Wheel of Time series. It was published by Tor Books and released on 15 January 1990. ', 2.4, 5, 5, 1),
(8, 'Dune', 'Frank Herbert', 'John Schoenherr', 'English', '1', '1994-01-11 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/d/de/Dune-Frank_Herbert_%281965%29_First_edition.jpg', 'Herbert wrote five sequels: Dune Messiah, Children of Dune, God Emperor of Dune, Heretics of Dune, and Chapterhouse: Dune. Following Herbert\'s death in 1986, his son Brian Herbert and author Kevin J. Anderson continued the series in over a dozen additiona', 1.3, 5, 5, 1),
(9, 'Once Future King', 'T. H. White', 'Collins', 'English', '10', '1997-11-23 00:00:00', 'https://upload.wikimedia.org/wikipedia/commons/a/a6/Once-and-Future-King-FC.jpg', 'Most of the book takes place in \"Gramarye\", the name that White gives to Britain, and chronicles the youth and education of King Arthur, his rule as a king, and the romance between Sir Lancelot and Queen Guinevere.', 1.6, 25, 25, 1),
(10, 'American Gods', 'Neil Gaiman', 'William Morrow', 'English', '1', '2003-03-04 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/4/49/American_gods.jpg', 'American Gods (2001) is a fantasy novel by British author Neil Gaiman. The novel is a blend of Americana, fantasy, and various strands of ancient and modern mythology, all centering on the mysterious and taciturn Shadow.', 2.7, 5, 5, 1),
(11, 'Snow Crash', 'Neal Stephenson', 'Jean-François Podevin', 'English', '1', '2011-02-18 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/d/d5/Snowcrash.jpg', 'Snow Crash is a science fiction novel by the American writer Neal Stephenson, published in 1992. Like many of Stephenson\'s novels, it covers history, linguistics, anthropology, archaeology, religion, computer science, politics, cryptography, memetics, and', 4.8, 30, 30, 2),
(12, 'The Martian', 'Andy Weir', 'Eric White', 'English', '9', '2001-01-22 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/7/71/The_Martian_%28Weir_novel%29.jpg', 'Surviving a rover rollover on his descent into Schiaparelli, Watney reaches the MAV and reestablishes contact with NASA. He receives instructions on the radical modifications necessary to reduce the MAV\'s weight to enable it to intercept Hermes during its', 3.6, 10, 10, 2),
(13, 'Klara and Sun', 'Faber and Faber', 'Kazuo Ishiguro', 'Japanese', '1', '2001-01-22 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/2/26/Klara_and_the_Sun_%28Kazuo_Ishiguro%29.png', 'Klara and the Sun is the eighth novel by the Nobel Prize-winning British writer Kazuo Ishiguro, published on 2 March 2021. It is a dystopian science fiction story.  Set in the U.S. in an unspecified future, the book is told from the point of view of Klara', 3.9, 15, 15, 2),
(14, 'Wrinkle in Time', 'Madeleine L\'Engle', 'Ariel Books', 'English', '4', '2004-10-22 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/0/0b/WrinkleInTimePBA1.jpg', 'Upon completion in 1960, the novel was rejected by at least 26 publishers, because it was, in L\'Engle\'s words, \"too different,\" and \"because it deals overtly with the problem of evil, and it was really difficult for children, and was it a children\'s or an', 4.2, 5, 5, 2),
(15, 'Exhalation ', 'Ted Chiang', 'Ted Chiang', 'English', '1', '2014-02-20 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/f/fc/TheDispossed%281stEdHardcover%29.jpg', 'The story is epistolary in nature, taking the form of a scientist\'s journal entry. The scientist is a member of a race of air-driven mechanical beings. The race obtains air from swappable lungs filled with pressurized air (argon) from underground. When it', 2.1, 10, 10, 2),
(16, 'Red Rising', 'Pierce Brown', 'Tim Gerard Reynolds', 'English', '13', '2009-02-10 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/9/9b/Red_Rising_%282014%29.jpg', ' has been seven hundred years since mankind colonized other planets. The powerful ruling class of humans has installed a rigid, color-based social hierarchy where the physically superior Golds at the top rule with an iron fist. Sixteen-year-old Darrow is ', 3.9, 20, 20, 2),
(17, 'Station Eleven', 'Emily St. John Mandel', ' Elgin Theatre', 'English', '1', '2012-09-17 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/2/22/Station_Eleven_Cover.jpg', 'During a production of King Lear at the Elgin Theatre in Toronto, Jeevan watches as the actor playing Lear, Arthur Leander, has a heart attack. Since he has begun training as a paramedic, Jeevan tries to resuscitate Arthur, but is unsuccessful. Instead, J', 2.2, 5, 5, 3),
(18, 'Life of Pi', 'Yann Martel', 'Knopf Canada', 'English', '2', '2009-02-10 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/4/45/Life_of_Pi_cover.png', 'The book begins with a note from the author, which is an integral part of the novel. Unusually, the note describes mostly fictional events. It serves to establish and enforce one of the book\'s main themes: the relativity of truth.', 1.4, 10, 10, 3),
(19, 'Kim', 'Rudyard Kipling', 'H. R. Millar', 'English', '1', '2006-01-17 00:00:00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Kim_Kipling_0011.png/330px-Kim_Kipling_0011.png', 'Kim is a novel by Nobel Prize-winning English author Rudyard Kipling. It was first published serially in McClure\'s Magazine from December 1900 to October 1901 as well as in Cassell\'s Magazine from January to November 1901, and first published in book form', 3.8, 5, 5, 3),
(20, 'Tarzan', 'Edgar Rice Burroughs', 'Fred J. Arting', 'English', '4', '2010-07-14 00:00:00', 'https://upload.wikimedia.org/wikipedia/commons/4/48/Tarzan_of_the_Apes_in_color.jpg', 'arzan of the Apes is a 1912 story by American writer Edgar Rice Burroughs. It was first serialized in the pulp magazine The All-Story beginning October 1912 before being released as a novel in June 1914.', 4.7, 10, 10, 3),
(22, 'LIfe of Pi 5', 'ASSAasas', 'ASSA', 'INGGRIS', '25', '2022-01-20 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/4/45/Life_of_Pi_cover.png', 'bsds', 4.3, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dvds`
--

CREATE TABLE `dvds` (
  `dvdId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `director` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `releaseDate` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `genreId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dvds`
--

INSERT INTO `dvds` (`dvdId`, `title`, `director`, `publisher`, `releaseDate`, `image`, `description`, `rating`, `quantity`, `available`, `genreId`) VALUES
(1, 'Frozen II', 'Chris Buck', 'Pixar Animation', '2018-10-25 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/4/4f/Frozen_2_poster.jpg', 'King Agnarr of Arendelle tells his daughters Elsa and Anna that their grandfather, King Runeard, forged a treaty with the neighboring tribe of Northuldra by building a dam in the Enchanted Forest (their homeland). A fight occurs, however, resulting in Run', 4, 15, 15, 1),
(2, 'Toy Story 4', 'Josh Cooley', 'Pixar Animation', '2020-07-07 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/4/4c/Toy_Story_4_poster.jpg', 'Between the events of Toy Story 2 and Toy Story 3, Woody and Bo Peep rescue Andy\'s remote control car, RC, from being washed away in a storm. Moments later, Bo Peep and her lamp are donated to a new owner. A distraught Woody considers coming with her, but', 4.7, 10, 10, 1),
(3, 'Frozen ', 'Jennifer Lee', 'Pixar Animation', '2013-12-25 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/0/05/Frozen_%282013_film%29_poster.jpg', 'Princess Elsa of Arendelle possesses magical powers that allow her to control and create ice and snow, often using them to play with her younger sister, Anna. After Elsa accidentally injures Anna with her magic, their parents, the King and Queen, take bot', 3.2, 15, 15, 1),
(4, 'Nemo', 'Andrew Stanton', 'Disney', '2008-06-10 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/2/29/Finding_Nemo.jpg', 'Years later, Marlin is overprotective of Nemo. On Nemo\'s first day of school, Marlin embarrasses Nemo, and the two fight. While Marlin is talking to Nemo\'s teacher, Nemo defiantly approaches a nearby speedboat, where he is captured by a pair of scuba dive', 3.8, 20, 20, 1),
(5, 'The Grinch', 'Scott Mosier', 'Disney', '2010-10-19 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/4/4f/The_Grinch%2C_final_poster.jpg', 'In the town of Whoville, the human-like people called Whos are filled with excitement about celebrating Christmas. However, the only one who is not amused is the cantankerous and green-furred Grinch, born with a heart being \"two sizes too small\". He lives', 4.1, 5, 5, 1),
(6, 'Cars', 'John Lasseter', 'Disney', '2006-02-13 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/3/34/Cars_2006.jpg', 'In a world populated by anthropomorphic talking vehicles, the final race of the Piston Cup season begins a rivalry between retiring veteran Strip \"The King\" Weathers, frequent runner-up Chick Hicks, and brash rookie sensation Lightning McQueen. McQueen, a', 4.9, 25, 25, 1),
(7, 'Bolt', 'Chris Williams', 'Disney', '2012-06-19 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/4/44/Bolt_ver2.jpg', 'Bolt is a 2008 American computer animated comedy-adventure film produced by Walt Disney Animation Studios and released by Walt Disney Pictures. It is the 48th Disney animated feature film. Directed by Chris Williams and Byron Howard, the film stars the vo', 2.1, 10, 10, 1),
(8, 'F9', 'Justin Lin', 'Universal Studio', '2020-10-19 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/2/2b/F9_film_poster.jpg', 'In 1989, Jack Toretto — father of Dom, Jakob and Mia — participates in a late model race, with his sons working in the pit crew. Dom argues with rival racer Kenny Linder about his dirty tactics. During the race, Linder\'s car clips Jack\'s bumper, causing h', 1.2, 15, 15, 2),
(9, 'Black Widow', 'Cate Shortland', 'Marvel Studio', '2021-06-15 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/e/e9/Black_Widow_%282021_film%29_poster.jpg', 'Black Widow premiered at events around the world on June 29, 2021, and was released in the United States on July 9, simultaneously in theaters and through Disney+ with Premier Access. It is the first film in Phase Four of the MCU, and was delayed three ti', 3.1, 20, 20, 2),
(10, 'Red Notice ', 'Rawson Marshall Thurber', 'Netflix', '2022-01-03 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/0/0c/Red_Notice_-_film_promotional_image.jpg', 'Two thousand years ago, Marcus Antonius gifts Cleopatra three bejeweled eggs as a wedding gift symbolizing his devotion. The eggs are lost to time until two are found by a farmer in 1907, but the last one remains lost.', 4.3, 5, 5, 2),
(11, 'Birds of Prey', 'Cathy Yan', 'Warner Bros', '2021-06-24 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/1/1c/Birds_of_Prey_%282020_film%29_poster.jpg', 'Birds of Prey was the first DCEU film and the second DC Films production to be rated R by the Motion Picture Association of America, following Joker (2019). The film had its world premiere in Mexico City on January 25, 2020, and was released in the United', 1.2, 10, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `numtelp` varchar(10) DEFAULT NULL,
  `statusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`, `lastupdate`, `numtelp`, `statusid`) VALUES
(1, 'Welbey Prasadirta', 'pwelbey@gmail.com', 'A12345678', '2022-01-13 17:27:17', '0978358015', 0),
(3, 'Johannes Alexander', 'johannesalexander@yahoo.com', 'A12345678', '2022-01-13 17:30:57', '0924788056', 1),
(4, 'Kevin Cheung', 'kevincheung@yahoo.com', 'A12345678', '2022-01-13 17:31:32', '0967678987', 1),
(5, 'Leonardo Huang', 'leonardohuang@gmail.com', 'A12345678', '2022-01-13 17:33:12', '0968526383', 1),
(6, 'Michelle Zheng', 'michellezheng@gmail.com', 'A12345678', '2022-01-13 17:33:38', '0962839623', 1),
(8, 'Haskel Ariel', 'haskelariel@gmail.com', 'A12345678', '2022-01-13 19:51:40', '0938465494', 2),
(9, 'Jonathan Alexander', 'jonathan@yahoo.com', 'A12345678', '2022-01-13 19:52:09', '0953684932', 2),
(10, 'Devin Lautan', 'devinlautan@yahoo.com', 'A12345678', '2022-01-13 19:52:31', '0936475843', 2),
(11, 'Valentine Tannea', 'valentinetannea@yahoo.com', 'A12345678', '2022-01-13 19:53:27', '0963748563', 2),
(12, 'David Beckham', 'davidbeckham23@yahoo.com', 'A12345678', '2022-01-13 19:53:55', '0996473827', 2),
(13, 'Shellen Young', 'shellenyoung29@yahoo.com', 'A12345678', '2022-01-13 19:54:15', '0929739279', 2),
(14, 'Astrid Citra', 'astridcitra@yahoo.com', 'A12345678', '2022-01-13 19:54:32', '0937383836', 2),
(15, 'Felicia Setiawan', 'feliciasetiawan@yahoo.com', 'A12345678', '2022-01-13 19:55:21', '0937383883', 2),
(16, 'Frederick Wijaya', 'frederickwijaya@yahoo.com', 'A12345678', '2022-01-13 19:55:44', '0936383837', 2),
(17, 'Mikhael Jonathan', 'mikhaeljonathan@gmail.com', 'A12345678', '2022-01-13 19:56:43', '0935363839', 2),
(18, 'Denise Daniella', 'denisedaniella@gmail.com', 'A12345678', '2022-01-13 19:57:06', '0973784738', 2),
(19, 'Eric Harjanto', 'ericharjanto@gmail.com', 'A12345678', '2022-01-13 19:57:26', '0973747584', 3),
(20, 'Vania Seliny Wijaya', 'vaniaselinywijaya@gmail.com', 'A12345678', '2022-01-13 19:57:48', '0963736373', 3),
(21, 'Marcellino Christian', 'marcellinochrist@gmail.com', 'A12345678', '2022-01-13 19:58:15', '0942739247', 3),
(22, 'Karen Michaela', 'karenmichaela@gmail.com', 'A12345678', '2022-01-13 19:58:37', '0936468392', 3),
(23, 'Shierlyn Sutanto', 'shierlynsutanto@gmail.com', 'A12345678', '2022-01-13 19:59:39', '0963788493', 3),
(24, 'Raffi Ahmad', 'raffiahmad@gmail.com', 'A12345678', '2022-01-13 19:59:58', '0937373883', 3),
(25, 'Rachel Zheng', 'rachelzheng@gmail.com', 'A12345678', '2022-01-13 20:00:14', '0936384788', 3),
(26, 'Florence Zheng', 'florencezheng@gmail.com', 'A12345678', '2022-01-13 20:00:28', '0937373773', 3),
(27, 'Bruno Fernandes', 'brunofernandes@gmail.com', 'A12345678', '2022-01-13 20:00:50', '0936373838', 3),
(28, 'Michael Carrick', 'michaelcarrick@gmail.com', 'A12345678', '2022-01-13 20:02:04', '0937373435', 3),
(29, 'Arief Muhammad', 'ariefmuhammad@yahoo.com', 'A12345678', '2022-01-13 20:03:03', '0948342973', 3),
(30, 'Bambang Setiawan', 'bambangsetiawan@yahoo.com', 'A12345678', '2022-01-13 20:03:35', '0983637838', 3),
(32, 'Alexan', 'asdgs@gmail.com', 'A12345678', '2022-01-14 06:13:24', '0912617621', 2),
(33, 'Sam', 'sma@gmail.com', 'A12345678', '2022-01-14 06:21:07', '0986212112', 1),
(34, 'Alexandria', 'a@gmail.com', 'A12345678', '2022-01-14 07:20:40', '0926252622', 2),
(35, 'Alexandria', 'Alex@gmail.com', 'A123456789', '2022-01-14 07:27:36', '0971212121', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `first_name` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bookDelivery` varchar(225) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `create` datetime DEFAULT NULL,
  `modify` datetime DEFAULT NULL,
  `returnDate` datetime DEFAULT NULL,
  `lateReturnFine` int(11) DEFAULT NULL,
  `numofLateDay` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `last_name`, `first_name`, `email`, `bookDelivery`, `address`, `phone`, `create`, `modify`, `returnDate`, `lateReturnFine`, `numofLateDay`) VALUES
(1, 'Setiawan', 'Felicia', 'feliciasetiawan@yahoo.com', 'delivery', 'No. 300, Zhongda Rd, Zhongli District, Taoyuan City, 320', '0937383883', '2022-01-13 21:19:58', '2022-01-20 21:19:58', NULL, NULL, NULL),
(2, 'Beckham', 'David', 'davidbeckham23@gmail.com', 'delivery', 'No. 300, Zhongda Rd, Zhongli District, Taoyuan City, 320', '0996473827', '2022-01-13 21:21:10', '2022-01-20 21:21:10', NULL, NULL, NULL),
(3, 'Jonathan', 'Mikhael', 'mikhaeljonathan@gmail.com', 'delivery', 'No. 300, Zhongda Rd, Zhongli District, Taoyuan City, 320', '0928282993', '2022-01-13 21:22:09', '2022-01-20 21:22:09', NULL, NULL, NULL),
(4, 'Ariel', 'Haskel', 'haskelariel@gmail.com', 'delivery', 'No. 300, Zhongda Rd, Zhongli District, Taoyuan City, 320', '0927378389', '2022-01-13 21:22:55', '2022-01-20 21:22:55', NULL, NULL, NULL),
(5, 'Alexander', 'Jonathan', 'jonathanalexander@gmail.com', 'personal', 'No. 300, Zhongda Rd, Zhongli District, Taoyuan City, 320', '0972828288', '2022-01-13 21:23:40', '2022-01-20 21:23:40', NULL, NULL, NULL),
(6, 'Young', 'Shellen', 'shellenyoung@yahoo.com', 'delivery', 'No. 300, Zhongda Rd, Zhongli District, Taoyuan City, 320', '0927282728', '2022-01-13 21:24:17', '2022-01-20 21:24:17', NULL, NULL, NULL),
(7, 'Tannea', 'Valentine', 'valentinetannea@gmail.com', 'personal', 'No. 300, Zhongda Rd, Zhongli District, Taoyuan City, 320', '0927378388', '2022-01-13 21:25:05', '2022-01-20 21:25:05', NULL, NULL, NULL),
(8, 'Hugo', 'Christian', 'christianhugo@gmail.com', 'personal', 'No. 300, Zhongda Rd, Zhongli District, Taoyuan City, 320', '0972727272', '2022-01-13 21:26:13', '2022-01-20 21:26:13', NULL, NULL, NULL),
(9, 'Ivander', 'Mikha', 'mikhaivander@gmail.com', 'personal', 'No. 300, Zhongda Rd, Zhongli District, Taoyuan City, 320', '0927377377', '2022-01-13 21:26:52', '2022-01-20 21:26:52', NULL, NULL, NULL),
(10, 'Zheng', 'Florence', 'florencezheng@yahoo.com', 'delivery', 'No. 300, Zhongda Rd, Zhongli District, Taoyuan City, 320', '0937273917', '2022-01-13 21:27:29', '2022-01-20 21:27:29', '2022-01-19 00:00:00', 0, 0),
(11, 'Setiawan', 'Felicia', 'feliciasetiawan@yahoo.com', 'delivery', ' National Central University', '0987293234', '2022-01-14 03:35:02', '2022-01-21 03:35:02', '2022-01-22 00:00:00', 10, 1),
(12, 'ASSA', 'ASAS', 'A@gmail.com', 'delivery', 'asfsa', '0981221821', '2022-01-14 05:50:31', '2022-01-21 05:50:31', '2022-01-23 00:00:00', 20, 2),
(13, 'Sam', 'W', 's@gmail.com', 'delivery', 'NCU', '0987272222', '2022-01-14 06:16:04', '2022-01-21 06:16:04', '2022-01-20 00:00:00', 0, 0),
(14, 'A', 'A', 'feliciasetiawan@yahoo.com', 'delivery', '11', '0973014376', '2022-01-14 06:28:22', '2022-01-21 06:28:22', NULL, NULL, NULL),
(15, 'Alex', 'aa', 'a@gmail.com', 'personal', 'National Central University', '0972612612', '2022-01-14 07:23:20', '2022-01-21 07:23:20', '2022-01-20 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `subtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `price`, `quantity`, `subtotal`) VALUES
(1, 1, 1, NULL, 1, NULL),
(2, 1, 3, NULL, 1, NULL),
(3, 1, 5, NULL, 1, NULL),
(4, 2, 4, NULL, 1, NULL),
(5, 2, 9, NULL, 1, NULL),
(6, 2, 8, NULL, 1, NULL),
(7, 2, 11, NULL, 1, NULL),
(8, 2, 12, NULL, 1, NULL),
(9, 3, 1, NULL, 1, NULL),
(10, 3, 3, NULL, 1, NULL),
(11, 3, 20, NULL, 1, NULL),
(12, 3, 19, NULL, 1, NULL),
(13, 3, 14, NULL, 1, NULL),
(14, 3, 15, NULL, 1, NULL),
(15, 4, 2, NULL, 1, NULL),
(16, 4, 1, NULL, 1, NULL),
(17, 4, 3, NULL, 1, NULL),
(18, 5, 1, NULL, 1, NULL),
(19, 6, 2, NULL, 1, NULL),
(20, 6, 3, NULL, 1, NULL),
(21, 7, 9, NULL, 1, NULL),
(22, 7, 8, NULL, 1, NULL),
(23, 7, 7, NULL, 1, NULL),
(24, 8, 1, NULL, 1, NULL),
(25, 8, 5, NULL, 1, NULL),
(26, 8, 7, NULL, 1, NULL),
(27, 8, 9, NULL, 1, NULL),
(28, 9, 2, NULL, 1, NULL),
(29, 9, 3, NULL, 1, NULL),
(30, 9, 1, NULL, 1, NULL),
(31, 10, 5, NULL, 1, NULL),
(32, 11, 20, NULL, 1, NULL),
(33, 11, 17, NULL, 1, NULL),
(34, 12, 1, NULL, 1, NULL),
(35, 12, 2, NULL, 1, NULL),
(36, 12, 3, NULL, 1, NULL),
(37, 13, 7, NULL, 1, NULL),
(38, 13, 9, NULL, 1, NULL),
(39, 13, 3, NULL, 1, NULL),
(40, 14, 1, NULL, 1, NULL),
(41, 15, 1, NULL, 1, NULL),
(42, 15, 2, NULL, 1, NULL),
(43, 15, 3, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thesises`
--

CREATE TABLE `thesises` (
  `thesisId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `university` varchar(100) NOT NULL,
  `author` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `professor` varchar(100) NOT NULL,
  `dateFinished` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `finalScore` float NOT NULL,
  `availableStatus` int(11) NOT NULL,
  `majorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thesises`
--

INSERT INTO `thesises` (`thesisId`, `title`, `university`, `author`, `professor`, `dateFinished`, `image`, `description`, `finalScore`, `availableStatus`, `majorId`) VALUES
(1, 'My Daily Info', 'National Central University', 'Welbey Prasadirta', 'Samuel William', '2021-02-14 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/b/b2/The_BFG_%28Dahl_novel_-_cover_art%29.jpg', 'This liberal art thesis is very important for my graduation ', 87, 1, 1),
(2, 'Art is Everything', 'National Central University', 'Florence Zheng', 'Belinda Riyaldi', '2023-06-14 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/4/46/Into_Thin_Air.jpg', 'This liberal art thesis is very important for my graduation ', 90, 1, 1),
(3, 'Love is Important', 'National Central University', 'Johannes Alexander', 'Kevin Cheung', '2020-02-11 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/3/33/Jurassicpark.jpg', 'This liberal art thesis is very important for my graduation ', 52, 1, 1),
(4, 'My Homework', 'National Central University', 'Haskel Ariel', 'Leonardo Huang', '2020-02-18 00:00:00', 'https://upload.wikimedia.org/wikipedia/en/e/e9/Jaws_novel_cover.jpg', 'This liberal art thesis is very important for my graduation ', 79, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `dvds`
--
ALTER TABLE `dvds`
  ADD PRIMARY KEY (`dvdId`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thesises`
--
ALTER TABLE `thesises`
  ADD PRIMARY KEY (`thesisId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dvds`
--
ALTER TABLE `dvds`
  MODIFY `dvdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `thesises`
--
ALTER TABLE `thesises`
  MODIFY `thesisId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
