-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2017 at 11:43 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metalboy`
--
CREATE DATABASE `metalboy`;
USE `metalboy`;
-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `band_name` int(11) NOT NULL,
  `band_album` varchar(700) NOT NULL,
  `photo` varchar(700) NOT NULL,
  `album_link` varchar(700) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `band_name`, `band_album`, `photo`, `album_link`) VALUES
(1, 1, 'Reign in the blood', 'slayer-1', 'link...'),
(2, 1, 'God hates us', 'slayer-god-hates-us', 'link...'),
(3, 1, 'No mercy', 'slayer-no-mercy', 'link'),
(4, 1, 'Repentless', 'slayer-repentless', 'link'),
(5, 2, 'Meteora', 'linkin-park-meteora', 'link'),
(6, 2, 'Hunting park', 'linkin-park-hunting-park', 'link'),
(7, 2, 'Hybrid theory', 'linkin-park-hybrid-theory', 'link'),
(8, 2, 'Minutes to midnight', 'linkin-park-minutes-to-midnight', 'link'),
(9, 3, 'Reinventing the Steel', 'Pantera Reinventing the Steel', 'c'),
(10, 3, 'The Great Southern Trendkill', 'Pantera The Great Southern Trendkill', 'c'),
(11, 3, 'Far Beyond Driven', 'Pantera-Far-Beyond-Driven', 'c'),
(12, 3, 'Vulgar display of power', 'pantera-vulgar-display-of-power', 'c'),
(13, 4, 'Fear of the Dark', 'Iron Maiden Fear of the Dark', 'c'),
(14, 4, 'Killers', 'Iron Maiden Killers', 'c'),
(15, 4, 'Powerslave', 'Iron Maiden Powerslave', 'c'),
(16, 4, 'The Book of Souls', 'Iron Maiden The Book of Souls', 'The Book of Souls'),
(17, 5, 'Peace Sells.....But who is buying?', 'Megadeth Peace Sells', 'Peace Sells'),
(18, 5, 'Rust in Peace', 'Megadeth Rust in Peace', 'Rust in Peace'),
(19, 5, 'Youthanasia', 'Megadeth Youthanasia', 'Youthanasia'),
(20, 5, 'Countdown to Extinction', 'Megadeth Countdown to Extinction', 'Countdown to Extinction'),
(21, 6, 'Avenged Sevenfold', 'Avenged Sevenfold Avenged Sevenfold', ''),
(22, 6, 'City of Evil', 'Avenged Sevenfold City of Evil', 'City of Evil'),
(23, 6, 'Hail to the King', 'Avenged Sevenfold Hail to the King', 'Hail to the King'),
(24, 6, 'Nightmare', 'Avenged Sevenfold Nightmare', 'Nightmare'),
(25, 7, 'Human', 'Three Days Grace Human', 'Human'),
(26, 7, 'Life Starts Now', 'Three Days Grace Life Starts Now', 'Life Starts Now'),
(27, 7, 'one-x', 'three days grace one-x', 'one-x'),
(28, 7, 'Transit of Venus', 'Three Days Grace Transit of Venus', ''),
(29, 8, 'All Hope Is Gone', 'Slipknot All Hope Is Gone', 'All Hope Is Gone'),
(30, 8, 'iowa', 'slipknot iowa', 'iowa'),
(31, 8, '.5:The Gray Chapter', 'Slipknot The Gray Chapter', ''),
(32, 8, 'vol. 3', 'slipknot vol. 3', 'vol. 3'),
(33, 9, 'Antichrist Superstar', 'Marilyn Manson Antichrist Superstar', 'Antichrist Superstar'),
(34, 9, 'Eat Me, Drink Me', 'Marilyn Manson Eat Me, Drink Me', 'Eat Me, Drink Me'),
(35, 9, 'Heaven Upside Down', 'Marilyn Manson Heaven Upside Down', 'Heaven Upside Down'),
(36, 9, 'The Pale Emperor', 'Marilyn Manson The Pale Emperor', 'The Pale Emperor'),
(37, 10, 'Audio Secrecy', 'Stone Sour Audio Secrecy', 'Audio Secrecy'),
(38, 10, 'Come What(ever) May', 'Stone Sour Come What(ever) May', 'Come What(ever) May'),
(39, 10, 'Hydrograd', 'Stone Sour Hydrograd', 'Hydrograd'),
(40, 10, 'Stone Sour', 'Stone Sour Stone Sour', 'Stone Sour'),
(41, 11, 'Demigod', 'Behemoth Demigod', 'Demigod'),
(42, 11, 'evangelion', 'behemoth evangelion', 'evangelion'),
(43, 11, 'The Apostasy', 'Behemoth The Apostasy', 'The Apostasy'),
(44, 11, 'The Satanist', 'Behemoth The Satanist', 'The Satanist'),
(45, 12, 'From Death to Destiny', 'Asking Alexandria From Death to Destiny', 'From Death to Destiny'),
(46, 12, 'Life Gone Wild', 'Asking Alexandria Life Gone Wild', 'Life Gone Wild'),
(47, 12, 'Stand Up and Scream', 'Asking Alexandria Stand Up and Scream', 'Stand Up and Scream'),
(48, 12, 'The Black', 'asking alexandria the black', 'the black'),
(49, 13, '30 Seconds to Mars', 'Thirty Seconds to Mars 30 Seconds to Mars', '30 Seconds to Mars'),
(50, 13, 'A Beautiful Lie', 'Thirty Seconds to Mars A Beautiful Lie', 'A Beautiful Lie'),
(51, 13, 'This Is War', 'Thirty Seconds to Mars This Is War', 'This Is War'),
(52, 13, 'To the Edge of the Earth', 'Thirty Seconds to Mars To the Edge of the Earth', 'Thirty Seconds to Mars To the Edge of the Earth'),
(53, 14, 'As the Stages Burn', 'Arch Enemy As the Stages Burn', 'As the Stages Burn'),
(54, 14, 'Doomsday Machine', 'Arch Enemy Doomsday Machine', 'Doomsday Machine'),
(55, 14, 'Khaos Legions', 'Arch Enemy Khaos Legions', 'Khaos Legions'),
(56, 14, 'Will to Power', 'Arch Enemy Will to Power', 'Will to Power'),
(57, 15, 'Follow the Leader', 'Korn Follow the Leader', 'Follow the Leader'),
(58, 15, 'Issues', 'Korn Issues', 'Issues'),
(59, 15, 'The Serenity of Suffering', 'Korn The Serenity of Suffering', 'The Serenity of Suffering'),
(60, 15, 'Untouchables', 'Korn Untouchables', 'Untouchables');

-- --------------------------------------------------------

--
-- Table structure for table `bands`
--


CREATE TABLE IF NOT EXISTS `bands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `band_name` varchar(400) NOT NULL,
  `photo` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bands`
--

INSERT INTO `bands` (`id`, `band_name`, `photo`) VALUES
(1, 'slayer', 'slayer.JPG'),
(2, 'linkin park', 'linkin_park.JPG'),
(3, 'pantera', 'pantera.JPG'),
(4, 'iron maiden', 'iron_maiden.JPG'),
(5, 'megadeath', 'megadeth.JPG'),
(6, 'avenged sevenfold', 'a7x.JPG'),
(7, '3 days to grace', '3days.JPEG'),
(8, 'slipknot', 'slipknot.JPG'),
(9, 'marilyn mansion', 'marilyn-manson.JPG'),
(10, 'stone sour', 'stone_sour.JPG'),
(11, 'behemoth', 'behemoth.JPG'),
(12, 'asking alexandria', 'asking.JPG'),
(13, '30 sec to mars', '30sec.JPG'),
(14, 'arch enemy', 'arch_enemy.JPEG'),
(15, 'Korn', 'korn.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `band_descri`
--


CREATE TABLE IF NOT EXISTS `band_descri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `band_name` int(11) NOT NULL,
  `band_described` longtext NOT NULL,
  `website` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `band_descri`
--

INSERT INTO `band_descri` (`id`, `band_name`, `band_described`, `website`) VALUES
(1, 1, 'Slayer is an American heavy metal band from Huntington Park, California, formed in 1981 by guitarists Kerry King and Jeff Hanneman. Slayer rose to fame with its 1986 release Reign in Blood, and is credited as one of the \"Big Four\" thrash metal bands, along with Metallica, Megadeth and Anthrax.[1] Since its debut album in 1983, the band has released twelve studio albums, two live albums, a box set, six music videos, two extended plays and a cover album. Four of the band\'s studio albums have received gold certification in the United States. The band has received five Grammy Award nominations, winning one in 2007 for the song \"Eyes of the Insane\" and one in 2008 for the song \"Final Six\" (both from 2006\'s Christ Illusion).', 'www.slayer.net'),
(2, 2, 'Linkin Park is an American rock band from Agoura Hills, California. Formed in 1996, the band rose to international fame with their debut album Hybrid Theory (2000), which was certified Diamond by the RIAA in 2005 and multi-Platinum in several other countries.[1] Their following studio album Meteora continued the band\'s success, topping the Billboard 200 album chart in 2003, and was followed by extensive touring and charity work.[2]', 'linkinpark.com'),
(3, 3, 'Pantera was an American heavy metal band from Arlington, Texas. The group was formed in 1981 by the Abbott brothers – drummer Vinnie Paul and guitarist Dimebag Darrell – along with lead vocalist Terry Glaze. Bassist Rex Brown joined the band the following year, replacing Tommy D. Bradford, who was the unofficial original. Having started as a glam metal band, Pantera released four albums during the 1980s. Looking for a new and heavier sound, Pantera replaced Glaze with Phil Anselmo in late 1986 and released Power Metal in 1988. With its fifth album, 1990\'s Cowboys from Hell, Pantera introduced a groove metal sound. Pantera\'s sixth album, 1992\'s Vulgar Display of Power, exhibited an even heavier sound. Far Beyond Driven (1994) debuted at number one on the Billboard 200.', 'pantera.com'),
(4, 4, 'Iron Maiden are an English heavy metal band formed in Leyton, East London, in 1975 by bassist and primary songwriter Steve Harris. The band\'s discography has grown to thirty-eight albums, including sixteen studio albums, eleven live albums, four EPs, and seven compilations.', 'ironmaiden.com'),
(5, 5, 'Megadeth is an American heavy metal band from Los Angeles, California. Guitarist Dave Mustaine and bassist David Ellefson formed the band in 1983 shortly after Mustaine\'s dismissal from Metallica. A pioneer of the American thrash metal scene, the band is credited as one of the genre\'s \"big four\" with Anthrax, Metallica and Slayer, responsible for thrash metal\'s development and popularization. Megadeth plays in a technical style, featuring fast rhythm sections and complex arrangements. Themes of death, war, politics and religion are prominent in the song lyrics.', 'www.megadeth.com'),
(6, 6, 'Avenged Sevenfold (sometimes abbreviated as A7X) is an American heavy metal band from Huntington Beach, California, formed in 1999. The band\'s current lineup consists of lead vocalist M. Shadows, rhythm guitarist and backing vocalist Zacky Vengeance, lead guitarist and backing vocalist Synyster Gates, bassist and backing vocalist Johnny Christ, and drummer Brooks Wackerman.', 'avengedsevenfold.com'),
(7, 7, 'Three Days Grace is a Canadian rock band formed in Norwood, Ontario in 1997. Based in Toronto, the band\'s original line-up consisted of guitarist and lead vocalist Adam Gontier, drummer and backing vocalist Neil Sanderson, and bassist Brad Walst. In 2003, Barry Stock was recruited as the band\'s lead guitarist.', 'threedaysgrace.com'),
(8, 8, 'Slipknot is an American heavy metal band from Des Moines, Iowa. The band was founded in September 1995 by percussionist Shawn Crahan and drummer Joey Jordison. After several lineup changes in its early years, the band settled on nine members for more than a decade: Corey Taylor, Mick Thomson, Jim Root, Paul Gray, Craig Jones, Sid Wilson, Shawn Crahan, Chris Fehn and Joey Jordison. Gray died on May 24, 2010, and was replaced from 2011–2014 by former guitarist Donnie Steele. Jordison left the band on December 12, 2013. Steele left during the recording sessions for .5: The Gray Chapter.', 'slipknot1.com'),
(9, 9, 'Marilyn Manson, is an American singer, songwriter, musician, composer, actor, painter, author and former music journalist. He is known for his controversial stage personality and image as the lead singer of the band Marilyn Manson, which he co-founded with guitarist Daisy Berkowitz and of which he remains the only constant member. His stage name was formed by combining and juxtaposing the names of two American pop cultural icons: actress Marilyn Monroe and cult leader Charles Manson.', 'www.marilynmanson.com'),
(10, 10, 'Stone Sour is an American heavy metal band formed in Des Moines, Iowa in 1992, performing for five years, before disbanding in 1997. They reunited in 2000 and since 2006, the group has consisted of Corey Taylor (lead vocals, guitar), Josh Rand (guitar) and Roy Mayorga (drums). Longtime members Joel Ekman (drums, percussion), Shawn Economaki (bass guitar), and Jim Root (guitar) left the group in 2006, 2011, and 2014 respectively.', 'www.stonesour.com'),
(11, 11, 'Behemoth is a Polish extreme metal band from Gda?sk, formed in 1991. They are considered to have played an important role in establishing the Polish extreme metal underground', 'behemoth.pl'),
(12, 12, 'Asking Alexandria are an English rock band from York, North Yorkshire, consisting of lead vocalist Danny Worsnop, guitarists Ben Bruce and Cameron Liddell, drummer James Cassells and bassist Sam Bettley.', 'www.askingalexandria.com/'),
(13, 13, 'Thirty Seconds to Mars (commonly stylized as 30 Seconds to Mars) is an American rock band from Los Angeles, California, formed in 1998. The band consists of Jared Leto (lead vocals, guitar, bass, keyboards), Shannon Leto (drums, percussion) and Tomo Mili?evi? (lead guitar, bass, violin, keyboards, other instruments).', 'www.thirtysecondstomars.com/'),
(14, 14, 'Arch Enemy is a Swedish melodic death metal band, originally a supergroup, from Halmstad, formed in 1995. Its members were in bands such as Carcass, Armageddon, Carnage, Mercyful Fate, Spiritual Beggars, Nevermore, and Eucharist. It was founded by Carcass guitarist Michael Amott along with Johan Liiva, who were both originally from the influential death metal band Carnage. The band has released ten studio albums, three live albums, three video albums and four EPs. The band was originally fronted by Johan Liiva, who was replaced by German Angela Gossow as lead vocalist in 2000. Gossow left the band in March 2014 and was replaced by Canadian Alissa White-Gluz, while remaining as the group\'s manager.', 'www.archenemy.net/en/'),
(15, 15, 'Korn (stylized as Ko?n) is a nu metal band from Bakersfield, California, U.S.A., formed in 1993.[3][4][5] The band\'s current lineup includes founding members James \"Munky\" Shaffer (rhythm guitar), Reginald \"Fieldy\" Arvizu (bass), Brian \"Head\" Welch (lead guitar, backing vocals), and Jonathan Davis (lead vocals, bagpipes), with the addition of Ray Luzier (drums), who replaced the band\'s original member, David Silveria in 2007. Korn was originally formed by three of the members of the band L.A.P.D.', 'www.korn.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
