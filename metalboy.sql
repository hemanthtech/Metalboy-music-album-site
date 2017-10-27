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
-- Table structure for table `bands`
--

CREATE TABLE `bands` (
  `id` int(11) NOT NULL,
  `band_name` varchar(400) NOT NULL,
  `photo` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `band_descri` (
  `id` int(11) NOT NULL,
  `band_name` int(11) NOT NULL,
  `band_described` longtext NOT NULL,
  `website` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bands`
--
ALTER TABLE `bands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `band_descri`
--
ALTER TABLE `band_descri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bands`
--
ALTER TABLE `bands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `band_descri`
--
ALTER TABLE `band_descri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
