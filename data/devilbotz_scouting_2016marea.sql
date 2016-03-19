-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Host: mysql-devilbotz.achievasoft.com
-- Generation Time: Mar 18, 2016 at 04:39 PM
-- Server version: 5.6.25-log
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devilbotz_scouting`
--

-- --------------------------------------------------------

--
-- Table structure for table `driverfeedback`
--

CREATE TABLE `driverfeedback` (
  `id` int(10) NOT NULL,
  `eventkey` varchar(11) NOT NULL,
  `teamnumber` int(5) NOT NULL,
  `comments` text COMMENT 'General comments',
  `scout` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driverfeedback`
--

INSERT INTO `driverfeedback` (`id`, `eventkey`, `teamnumber`, `comments`, `scout`) VALUES
(2, '2016marea', 2084, 'was quick to agree on strategy, managed to work with the alliance to make everything work', 'ianc'),
(3, '2016marea', 2084, 'was quick to agree on strategy, managed to work with the alliance to make everything work', 'ianc'),
(4, '2016marea', 2084, 'was quick to agree on strategy, managed to work with the alliance to make everything work', 'ianc'),
(5, '2016marea', 4905, 'they were reliable and smart during strategy making, communicated very well during the match', 'ianc'),
(6, '2016marea', 4909, 'Awesome- I (Anusha) am good friends with their coach so that always helps. They were very honest and cooperative. ', 'anushad'),
(7, '2016marea', 4909, 'Seemed decent but they accomplished very little compared to what we did.', 'claytond'),
(8, '2016marea', 4909, 'Seemed decent but they accomplished very little compared to what we did.', 'claytond'),
(9, '2016marea', 4909, 'Seemed decent but they accomplished very little compared to what we did.', 'claytond'),
(10, '2016marea', 1761, 'Total mess without their lead driver. Unsure and didn\'t know what they were doing; queued when they weren\'t expected and refused to leave when we explained why they had to. Didn\'t end up playing. ', 'anushad'),
(11, '2016marea', 2876, 'Unparalleled in bad-assery', 'claytond'),
(12, '2016marea', 1761, 'Missed match due to reinspection.', 'claytond'),
(13, '2016marea', 5163, 'showed up latw to set up and threw a wrench in our plans, told us they could go through the moat but failed to and had to be helped.', 'ianc'),
(14, '2016marea', 4929, 'was cooperative before the match, wasnt able to make decisions based off the situation.', 'ianc'),
(15, '2016marea', 5969, 'Really tough to communicate with- had no idea what they were doing, were disabled early on, and spoke predominantly in Spanish so that was interesting', 'anushad'),
(16, '2016marea', 4169, 'Friendly and all that but aggressively exaggerated what their robot could do... They tried their best and were very clear though', 'anushad'),
(17, '2016marea', 1474, 'worked well with us and were willing to listen and follow our strategy', 'ianc'),
(18, '2016marea', 2423, 'listened to our instructions but was kind of annoying when they showed up late after we had established a strategy without them', 'ianc'),
(19, '2016marea', 1058, 'Oversold their robot a lot and had time management issues; but very nice and cooperative ', 'anushad'),
(20, '2016marea', 151, 'Their robot gave up, but they told us right away and let us push them so that was good I guess ', 'anushad'),
(21, '2016marea', 5459, 'worked well with us, gave good defense without getting fouls. ', 'ianc'),
(22, '2016marea', 2713, 'showed up kind of late and got stuck on the batter, helpful during strategy', 'ianc'),
(23, '2016marea', 319, 'good with strategy before the match,was able to make tough decisions duribg the match, good drivers', 'ianc'),
(24, '2016marea', 6161, 'communicated well about when their robot broke', 'ianc');

-- --------------------------------------------------------

--
-- Table structure for table `eventstatus`
--

CREATE TABLE `eventstatus` (
  `id` int(11) UNSIGNED NOT NULL,
  `eventkey` varchar(11) NOT NULL,
  `eventName` varchar(100) DEFAULT NULL,
  `eventShortName` varchar(30) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `currentMatchNumber` int(11) NOT NULL,
  `active` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventstatus`
--

INSERT INTO `eventstatus` (`id`, `eventkey`, `eventName`, `eventShortName`, `startDate`, `endDate`, `currentMatchNumber`, `active`) VALUES
(1, '2015marea', 'NE District - Reading Event 2015', 'Reading', '2015-03-06', '2015-03-08', 56, 'false'),
(2, '2015nhnas', 'NE District - Granite State Event 2015', 'Granite State', '2015-02-26', '2015-02-28', 80, 'false'),
(3, '2015necmp', 'NE District - Championship Event 2015', 'NE Championships', '2015-04-08', '2015-04-12', 120, 'false'),
(4, '2015carv', 'FRC Championship - Carver Division 2015', 'Carver', '2015-04-23', '2015-04-25', 4, 'false'),
(5, '2016marea', 'NE District - Reading Event 2015', 'Reading', '2016-03-11', '2016-03-13', 54, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(11) UNSIGNED NOT NULL,
  `matchnumber` int(11) NOT NULL,
  `eventkey` varchar(11) NOT NULL,
  `redteam1` int(11) NOT NULL,
  `redteam2` int(11) NOT NULL,
  `redteam3` int(11) NOT NULL,
  `blueteam1` int(11) NOT NULL,
  `blueteam2` int(11) NOT NULL,
  `blueteam3` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `matchnumber`, `eventkey`, `redteam1`, `redteam2`, `redteam3`, `blueteam1`, `blueteam2`, `blueteam3`) VALUES
(1, 1, '2016marea', 2713, 97, 5347, 5962, 58, 5969),
(2, 10, '2016marea', 4311, 1474, 133, 3930, 1965, 4474),
(3, 11, '2016marea', 5563, 4151, 4929, 246, 1699, 5163),
(4, 12, '2016marea', 2713, 2423, 4176, 1761, 2876, 4909),
(5, 13, '2016marea', 58, 501, 6161, 4905, 1073, 5347),
(6, 14, '2016marea', 3930, 5962, 4761, 246, 2084, 5563),
(7, 15, '2016marea', 4311, 2423, 1289, 97, 1474, 1058),
(8, 16, '2016marea', 5556, 1073, 4169, 4909, 5347, 4151),
(9, 17, '2016marea', 4474, 3566, 501, 4176, 319, 5752),
(10, 18, '2016marea', 4905, 1699, 133, 151, 2713, 1761),
(11, 19, '2016marea', 5969, 6161, 5459, 2876, 5163, 4929),
(12, 2, '2016marea', 1289, 5556, 319, 246, 2423, 151),
(13, 20, '2016marea', 58, 1965, 4761, 6201, 319, 1058),
(14, 21, '2016marea', 501, 246, 5347, 5752, 2423, 2084),
(15, 22, '2016marea', 6161, 4929, 1289, 3566, 4311, 5563),
(16, 23, '2016marea', 4176, 58, 97, 4909, 5459, 1073),
(17, 24, '2016marea', 4169, 5969, 2876, 4905, 151, 3930),
(18, 25, '2016marea', 2713, 1699, 5556, 5163, 133, 1965),
(19, 26, '2016marea', 6201, 5962, 4151, 1474, 1761, 4474),
(20, 27, '2016marea', 151, 5347, 5459, 3566, 4176, 3930),
(21, 28, '2016marea', 4909, 4311, 4929, 319, 4905, 4761),
(22, 29, '2016marea', 2084, 6161, 1699, 97, 4169, 4474),
(23, 3, '2016marea', 4169, 1058, 5752, 4311, 1699, 4176),
(24, 30, '2016marea', 58, 4151, 5163, 2876, 2423, 1474),
(25, 31, '2016marea', 5556, 1965, 246, 1761, 5969, 501),
(26, 32, '2016marea', 2713, 133, 6201, 5752, 1289, 5962),
(27, 33, '2016marea', 5563, 1073, 58, 1058, 2084, 3566),
(28, 34, '2016marea', 5556, 5347, 4474, 4929, 1699, 5459),
(29, 35, '2016marea', 4909, 4176, 246, 2713, 4311, 1965),
(30, 36, '2016marea', 5563, 319, 1761, 1289, 97, 3930),
(31, 37, '2016marea', 2423, 5163, 6161, 4169, 6201, 4761),
(32, 38, '2016marea', 4905, 4151, 501, 151, 1058, 2876),
(33, 39, '2016marea', 5962, 133, 1073, 5752, 5969, 1474),
(34, 4, '2016marea', 5459, 5563, 3930, 4909, 501, 1474),
(35, 40, '2016marea', 4311, 246, 4169, 4474, 6201, 58),
(36, 41, '2016marea', 151, 5563, 1699, 4761, 2713, 501),
(37, 42, '2016marea', 4176, 5556, 1474, 4905, 97, 4929),
(38, 43, '2016marea', 1073, 2876, 3930, 3566, 5962, 319),
(39, 44, '2016marea', 1058, 5459, 5163, 2084, 4909, 1289),
(40, 45, '2016marea', 4151, 1761, 5752, 5347, 1965, 5969),
(41, 46, '2016marea', 6161, 133, 3930, 2423, 58, 5556),
(42, 47, '2016marea', 1058, 4474, 4905, 5459, 5962, 246),
(43, 48, '2016marea', 1699, 319, 4169, 5563, 2876, 4176),
(44, 49, '2016marea', 2423, 1761, 97, 4929, 5347, 3566),
(45, 5, '2016marea', 4761, 5163, 4474, 3566, 1073, 1761),
(46, 50, '2016marea', 6201, 1289, 5969, 4909, 133, 4761),
(47, 51, '2016marea', 151, 1965, 501, 1073, 5163, 4311),
(48, 52, '2016marea', 1474, 2084, 4151, 6161, 5752, 2713),
(49, 53, '2016marea', 4176, 4474, 4929, 1699, 3930, 5969),
(50, 54, '2016marea', 3566, 4761, 2423, 4905, 5556, 5962),
(51, 55, '2016marea', 501, 97, 6201, 4151, 1965, 4169),
(52, 56, '2016marea', 1289, 1474, 1073, 5459, 2876, 2713),
(53, 57, '2016marea', 2084, 1761, 5163, 58, 319, 4311),
(54, 58, '2016marea', 151, 5752, 4909, 6161, 5347, 5563),
(55, 59, '2016marea', 246, 1058, 5969, 133, 4169, 3566),
(56, 6, '2016marea', 2084, 4905, 2876, 1965, 6161, 6201),
(57, 60, '2016marea', 4929, 2084, 1073, 6201, 5556, 1761),
(58, 61, '2016marea', 5752, 501, 3930, 1289, 4905, 58),
(59, 62, '2016marea', 4761, 5459, 4176, 6161, 4151, 246),
(60, 63, '2016marea', 319, 2423, 4909, 1699, 1474, 1965),
(61, 64, '2016marea', 5347, 2876, 4311, 133, 5563, 1058),
(62, 65, '2016marea', 2713, 5962, 4474, 97, 5163, 151),
(63, 66, '2016marea', 4929, 5752, 6201, 5459, 4169, 1761),
(64, 67, '2016marea', 246, 4761, 1474, 5347, 1699, 1289),
(65, 68, '2016marea', 4176, 5163, 4905, 2084, 97, 133),
(66, 69, '2016marea', 319, 6161, 2876, 4311, 5556, 501),
(67, 7, '2016marea', 4151, 133, 1289, 4929, 4169, 5962),
(68, 70, '2016marea', 5962, 5563, 1965, 1073, 5969, 2423),
(69, 71, '2016marea', 4909, 3566, 58, 151, 4474, 4151),
(70, 72, '2016marea', 3930, 1058, 5347, 2713, 319, 5163),
(71, 73, '2016marea', 97, 1699, 2876, 246, 1073, 5752),
(72, 74, '2016marea', 5459, 4905, 1965, 4474, 1289, 5563),
(73, 75, '2016marea', 58, 4169, 2713, 151, 4761, 4929),
(74, 76, '2016marea', 6201, 3566, 1474, 133, 501, 4176),
(75, 77, '2016marea', 5969, 4311, 2084, 3930, 2423, 4151),
(76, 78, '2016marea', 5962, 1761, 1058, 4909, 5556, 6161),
(77, 8, '2016marea', 3566, 97, 5752, 4761, 1058, 5556),
(78, 9, '2016marea', 151, 5969, 319, 5459, 2084, 6201);

-- --------------------------------------------------------

--
-- Table structure for table `matchresults`
--

CREATE TABLE `matchresults` (
  `id` int(11) UNSIGNED NOT NULL,
  `matchnumber` int(11) NOT NULL,
  `eventkey` varchar(11) NOT NULL,
  `redteam1` int(11) NOT NULL,
  `redteam2` int(11) NOT NULL,
  `redteam3` int(11) NOT NULL,
  `blueteam1` int(11) NOT NULL,
  `blueteam2` int(11) NOT NULL,
  `blueteam3` int(11) NOT NULL,
  `redscoreAuto` int(11) DEFAULT NULL,
  `redscoreTote` int(11) DEFAULT NULL,
  `redscoreContainer` int(11) DEFAULT NULL,
  `redscoreLitter` int(11) DEFAULT NULL,
  `redscoreFoul` int(11) DEFAULT NULL,
  `redscoreTotal` int(11) DEFAULT NULL,
  `bluescoreAuto` int(11) DEFAULT NULL,
  `bluescoreTote` int(11) DEFAULT NULL,
  `bluescoreContainer` int(11) DEFAULT NULL,
  `bluescoreLitter` int(11) DEFAULT NULL,
  `bluescoreFoul` int(11) DEFAULT NULL,
  `bluescoreTotal` int(11) DEFAULT NULL,
  `coopscore` int(11) DEFAULT NULL COMMENT 'co-op score'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `performances`
--

CREATE TABLE `performances` (
  `id` int(10) NOT NULL,
  `matchnumber` int(11) NOT NULL,
  `eventkey` varchar(11) NOT NULL,
  `teamnumber` int(5) NOT NULL,
  `isFunctional` varchar(5) NOT NULL,
  `auto_reach` tinyint(4) DEFAULT NULL,
  `auto_defense_crossed` varchar(16) DEFAULT NULL,
  `auto_shot_low_attempt` int(5) DEFAULT NULL,
  `auto_shot_low_success` int(5) DEFAULT NULL,
  `auto_shot_high_attempt` int(5) DEFAULT NULL,
  `auto_shot_high_success` int(5) DEFAULT NULL,
  `tele_def_cross_lowbar` int(5) DEFAULT NULL,
  `tele_def_cross_a_pc` int(5) DEFAULT NULL,
  `tele_def_cross_a_cdf` int(5) DEFAULT NULL,
  `tele_def_cross_b_moat` int(5) DEFAULT NULL,
  `tele_def_cross_b_ramp` int(5) DEFAULT NULL,
  `tele_def_cross_c_db` int(5) DEFAULT NULL,
  `tele_def_cross_c_sp` int(5) DEFAULT NULL,
  `tele_def_cross_d_rw` int(5) DEFAULT NULL,
  `tele_def_cross_d_rt` int(5) DEFAULT NULL,
  `tele_shot_low_attempt` int(5) DEFAULT NULL,
  `tele_shot_low_success` int(5) DEFAULT NULL,
  `tele_shot_high_attempt` int(5) DEFAULT NULL,
  `tele_shot_high_success` int(5) DEFAULT NULL,
  `tele_challenged` tinyint(4) DEFAULT NULL,
  `tele_scaled` tinyint(4) DEFAULT NULL,
  `comment` text,
  `scout` varchar(24) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performances`
--

INSERT INTO `performances` (`id`, `matchnumber`, `eventkey`, `teamnumber`, `isFunctional`, `auto_reach`, `auto_defense_crossed`, `auto_shot_low_attempt`, `auto_shot_low_success`, `auto_shot_high_attempt`, `auto_shot_high_success`, `tele_def_cross_lowbar`, `tele_def_cross_a_pc`, `tele_def_cross_a_cdf`, `tele_def_cross_b_moat`, `tele_def_cross_b_ramp`, `tele_def_cross_c_db`, `tele_def_cross_c_sp`, `tele_def_cross_d_rw`, `tele_def_cross_d_rt`, `tele_shot_low_attempt`, `tele_shot_low_success`, `tele_shot_high_attempt`, `tele_shot_high_success`, `tele_challenged`, `tele_scaled`, `comment`, `scout`) VALUES
(1, 1, '2016marea', 2713, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', 'adamk'),
(2, 1, '2016marea', 97, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'johnl'),
(3, 1, '2016marea', 58, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 3, 2, 1, 0, 0, 0, '', 'micaelad'),
(4, 1, '2016marea', 58, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 'Pretty reliable ', 'jordank'),
(5, 1, '2016marea', 5969, 'yes', 0, 'None', 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'It got stuck on a defense I can\'t see what it is though', 'ayshaa'),
(6, 1, '2016marea', 5962, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 1, -1, 0, 0, '', 'noel'),
(7, 1, '2016marea', 5347, 'yes', 0, 'Cheval de Frise', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jakhu'),
(8, 1, '2016marea', 5969, 'yes', 0, 'None', 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'It got stuck on a defense I can\'t see what it is though', 'ayshaa'),
(9, 2, '2016marea', 1289, 'yes', 0, 'Sally Port', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'adamk'),
(10, 2, '2016marea', 246, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 'noel'),
(11, 2, '2016marea', 5556, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'johnl'),
(12, 2, '2016marea', 319, 'yes', 0, 'None', 0, 0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, '', 'ayshaa'),
(13, 2, '2016marea', 151, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(14, 2, '2016marea', 2423, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '', 'jakhu'),
(15, 3, '2016marea', 4176, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(16, 3, '2016marea', 4169, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'adamk'),
(17, 3, '2016marea', 5752, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They moved for a second and I think they lost connection after that', 'ayshaa'),
(18, 3, '2016marea', 4311, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'noel'),
(19, 3, '2016marea', 1058, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'johnl'),
(20, 3, '2016marea', 1699, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2, 0, 2, 0, 0, 0, 'Tipping over a lot. ', 'jakhu'),
(21, 4, '2016marea', 5459, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'It got stuck on the moat.', 'adamk'),
(22, 4, '2016marea', 1474, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(23, 4, '2016marea', 501, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 2, 0, 0, 0, 0, 0, 0, 'Hw', 'jakhu'),
(24, 4, '2016marea', 3930, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 2, 2, 0, 0, 1, 0, 0, 0, 0, '', 'ayshaa'),
(25, 4, '2016marea', 4909, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Got stuck in draw bridge ', 'noel'),
(26, 4, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'johnl'),
(27, 5, '2016marea', 4761, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'Went over a ball.', 'adamk'),
(28, 5, '2016marea', 5163, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They were a no show', 'johnl'),
(29, 5, '2016marea', 3566, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Got stuck', 'noel'),
(30, 5, '2016marea', 1761, '', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(31, 5, '2016marea', 1073, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jakhu'),
(32, 5, '2016marea', 4474, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'The drivers had trouble on the rock wall though', 'ayshaa'),
(33, 6, '2016marea', 1965, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 'noel'),
(34, 6, '2016marea', 6201, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(35, 6, '2016marea', 6201, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(36, 6, '2016marea', 4905, 'yes', 0, 'Moat', 0, 0, 0, 0, 1, 0, 2, 0, 0, 2, 0, 0, 2, 0, 1, 0, 0, 0, 0, '', 'johnl'),
(37, 6, '2016marea', 6161, 'no', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', 'jakhu'),
(38, 6, '2016marea', 2084, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 'Have trouble getting hold of the ball. Take a while to shoot low goal lol', 'ayshaa'),
(39, 6, '2016marea', 2876, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Assists with breaking through defenses and help other boys break on through', 'adamk'),
(40, 7, '2016marea', 4929, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jakhu'),
(41, 7, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, '', 'noel'),
(42, 7, '2016marea', 4169, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(43, 7, '2016marea', 4151, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'johnl'),
(44, 7, '2016marea', 1289, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 'They have trouble getting a hold of the ball ', 'ayshaa'),
(45, 7, '2016marea', 1289, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 'They have trouble getting a hold of the ball Wasted tim', 'ayshaa'),
(46, 8, '2016marea', 5752, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 'johnl'),
(47, 8, '2016marea', 97, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'johnl'),
(48, 8, '2016marea', 3566, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'attempted to cross rock wall entirr match and failed', 'ianc'),
(49, 8, '2016marea', 1058, '', 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'data might be off', 'shivanip'),
(50, 8, '2016marea', 4761, '', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Data might be off', 'ayshaa'),
(51, 8, '2016marea', 5556, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Data might be off', 'micaelad'),
(52, 9, '2016marea', 319, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 2, 0, 0, 0, 1, 1, 0, 2, 0, 3, 0, 3, 0, 0, 0, '', 'shivanip'),
(53, 9, '2016marea', 5459, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'johnl'),
(54, 9, '2016marea', 5969, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ianc'),
(55, 9, '2016marea', 6201, 'yes', 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'Don trust this data for rn', 'micaelad'),
(56, 9, '2016marea', 2084, 'yes', 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 'Poor strategy on the part of the driver', 'ayshaa'),
(57, 10, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 1, 0, 0, '', 'johnl'),
(58, 10, '2016marea', 1474, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No show', 'johnl'),
(59, 10, '2016marea', 4311, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ianc'),
(60, 10, '2016marea', 1965, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tried to play defense much of the match', 'ricko'),
(61, 10, '2016marea', 3930, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 1, 0, 5, 5, 0, 0, 0, 0, 'Overall great performance. Really good low shooter', 'ayshaa'),
(62, 10, '2016marea', 4474, 'yes', 0, 'None', 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Struggle on rock wall; you can trust thus data', 'micaelad'),
(63, 11, '2016marea', 4929, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stopped moving during the middle of the game lol', 'ayshaa'),
(64, 11, '2016marea', 246, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Got stuck on ball', 'noel'),
(65, 11, '2016marea', 4151, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ianc'),
(66, 11, '2016marea', 1699, 'yes', 0, 'Rock Wall', 0, 0, 1, 0, 0, 0, 0, 2, 0, 1, 1, 2, 0, 0, 0, 1, 1, 0, 0, '', 'jakhu'),
(67, 11, '2016marea', 5163, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They were not on the field ', 'micaelad'),
(68, 11, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'johnl'),
(69, 12, '2016marea', 1761, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No in course', 'noel'),
(70, 12, '2016marea', 2713, 'yes', 0, 'None', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 'johnl'),
(71, 12, '2016marea', 4176, 'yes', 0, 'None', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Good at keeping hold of the ball', 'ayshaa'),
(72, 12, '2016marea', 2423, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ianc'),
(73, 12, '2016marea', 4909, '', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, '', 'micaelad'),
(74, 12, '2016marea', 2876, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 2, 0, 0, 2, 0, 2, 0, 1, 4, 0, 0, 0, 0, 0, 0, '', 'jakhu'),
(75, 13, '2016marea', 6161, 'yes', 0, 'None', 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 'ayshaa'),
(76, 13, '2016marea', 501, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'Lost connection early in the match. Remained disabled ', 'micaelad'),
(77, 13, '2016marea', 58, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'johnl'),
(78, 13, '2016marea', 1073, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'stephenl'),
(79, 13, '2016marea', 4905, 'yes', 0, 'Moat', 0, 0, 0, 0, 3, 0, 2, 1, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 'Very active, could likely be a solo breacher', 'ricko'),
(80, 14, '2016marea', 3930, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 0, 0, 0, 'Great robot ', 'micaelad'),
(81, 14, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They were wasting so much time??? ', 'ayshaa'),
(82, 14, '2016marea', 4761, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', 'johnl'),
(83, 14, '2016marea', 246, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 'chrisco'),
(84, 14, '2016marea', 2084, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'Driver wasted a lot of time', 'ricko'),
(85, 14, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'stephenl'),
(86, 15, '2016marea', 4311, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wasn\'t on the field', 'jacksont'),
(87, 15, '2016marea', 1474, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Carried ball whole match,  got stuck sideways on rough terrain then knocked over by pvc  pirates who were trying to help', 'ricko'),
(88, 15, '2016marea', 1058, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'Struggled on chival; made a team member tip over ', 'ayshaa'),
(89, 15, '2016marea', 97, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(90, 15, '2016marea', 1289, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 'Got trapped on a ball briefly', 'laurens'),
(91, 15, '2016marea', 2423, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seemed to have trouble steering. Tried low goal but kept going in backwards. Got stuck on moat at end of match.', 'adamk'),
(92, 16, '2016marea', 4151, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Isn\'t on the field', 'mentor'),
(93, 16, '2016marea', 5347, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They fell overâ€¦ like completely ', 'annat'),
(94, 16, '2016marea', 4909, 'yes', 0, 'Moat', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Got stuck in the moat for a while', 'laurens'),
(95, 16, '2016marea', 1073, 'yes', 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Got stuck in moat early in teleop. Didn\'t do anything after that.', 'jacksont'),
(96, 16, '2016marea', 4169, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'Overall good control though maybe some trouble seeing the robot over obstacles', 'michaelp'),
(97, 16, '2016marea', 5556, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Helped teammate through draw bridge, no shots attempted', 'ricko'),
(98, 17, '2016marea', 4176, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'It stood still a lot', 'jasonr'),
(99, 17, '2016marea', 319, 'yes', 0, 'None', 0, 0, 0, 0, 5, 1, 0, 2, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, '', 'mentor'),
(100, 17, '2016marea', 5752, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, '', 'laurens'),
(101, 17, '2016marea', 4474, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stuck in moat at very end.', 'jacksont'),
(102, 17, '2016marea', 3566, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A lot of steering trouble and difficulty with arm stuck down.', 'michaelp'),
(103, 17, '2016marea', 501, 'yes', 0, 'None', 0, -1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'Attempted to scale, but did not succeed. Took 25+ seconds to get low goal. ', 'annat'),
(104, 18, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 1, 1, 8, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 5, 3, 0, 0, '', 'mentor'),
(105, 18, '2016marea', 151, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They had trouble with the cheval de fries ', 'jasonr'),
(106, 18, '2016marea', 4905, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'They might\'ve gotten another low goal, but I couldn\'t see because there were people in the way.', 'jacksont'),
(107, 18, '2016marea', 1699, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 2, 1, 0, 0, 'Good shooter/drivers, but unstable robot.', 'michaelp'),
(108, 18, '2016marea', 2713, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 'Disconnected on tower base for a while', 'laurens'),
(109, 18, '2016marea', 1761, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Drove over other robot that was holding down drawbridge to come back; off balance with the arm; took a while to align to get over defenses', 'annat'),
(110, 19, '2016marea', 5163, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No show', 'laurens'),
(111, 19, '2016marea', 5163, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Actually, showed up late. Got stuck in moat. We helped them out', 'laurens'),
(112, 19, '2016marea', 5459, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'mentor'),
(113, 19, '2016marea', 2876, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'We were pretty awesome this match', 'jasonr'),
(114, 19, '2016marea', 4929, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Basically just got in the way the whole time....', 'anushad'),
(115, 19, '2016marea', 5969, 'yes', 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stuck under low bar', 'jacksont'),
(116, 19, '2016marea', 6161, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'Good driving bulky robot', 'michaelp'),
(117, 19, '2016marea', 4929, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Basically just got in the way the whole time....', 'anushad'),
(118, 20, '2016marea', 319, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'Totally looks like plowy, did a lot of ball collecting and passing', 'ricko'),
(119, 20, '2016marea', 58, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 'michaelp'),
(120, 20, '2016marea', 1965, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 1, 0, 0, 0, 0, '', 'chrisce'),
(121, 20, '2016marea', 4761, 'no', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They werent functional but someone pushed them through the low bar', 'claytond'),
(122, 20, '2016marea', 6201, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 0, '', 'ricko'),
(123, 20, '2016marea', 1058, 'yes', 0, '', 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 4, 0, 0, 0, 0, 'Fail to scale', 'michaelp'),
(124, 21, '2016marea', 5347, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No show. 2 c00l 5 school', 'chrisce'),
(125, 21, '2016marea', 2423, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'Repeatedly drove onto boulder', 'ricko'),
(126, 21, '2016marea', 501, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Very dangerous when going full speed. Has a hidden gripper and line for scaling the tower.', 'michaelp'),
(127, 21, '2016marea', 2084, 'yes', 0, 'Rough Terrain', 0, 0, 1, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ricko'),
(128, 21, '2016marea', 246, '', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 2, 2, 2, 0, 0, 0, 0, '', 'claytond'),
(129, 21, '2016marea', 5752, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 6, 3, 0, 0, 0, 0, 'Missed alot of lowork goal shots, but quickly recovered and reshot', 'Mikem'),
(130, 22, '2016marea', 4311, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ricko'),
(131, 22, '2016marea', 4929, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stood around for awhile', 'chrisce'),
(132, 22, '2016marea', 3566, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spent 30 sec trying to cross portacullus...failed.  didn\'t do anything else ', 'Mikem'),
(133, 22, '2016marea', 5563, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'michaelp'),
(134, 22, '2016marea', 6161, 'yes', 0, 'Moat', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'Helped with sally port', 'claytond'),
(135, 22, '2016marea', 1289, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 1, 0, 0, 0, 0, 'Stuck in moat, teammate unstuck them', 'ricko'),
(136, 19, '2016marea', 2876, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 3, 0, 0, 0, 0, 0, 0, 'We were pretty awesome this match', ''),
(137, 23, '2016marea', 4909, 'yes', 0, 'Cheval de Frise', 0, 0, 0, 0, 2, 0, 2, 3, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, '', 'jasonr'),
(138, 23, '2016marea', 4176, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 0, 0, 0, 0, '', 'willw'),
(139, 23, '2016marea', 58, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Helped with sally port', 'claytond'),
(140, 23, '2016marea', 1073, 'yes', 0, 'Sally Port', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '', 'michaelp'),
(141, 23, '2016marea', 1073, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 'No discernable strategy', 'ricko'),
(142, 23, '2016marea', 97, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Didn\'t do much. Stood around a lot. Got stuck on a ball much longer than it should have', 'chrisce'),
(143, 23, '2016marea', 5459, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Played defensively the entire match', 'ricko'),
(144, 24, '2016marea', 3930, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 3, 0, 0, 0, 2, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, '', 'michaelp'),
(145, 24, '2016marea', 2876, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 2, 0, 2, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 'Dank showing, much wow, go devils', 'willw'),
(146, 24, '2016marea', 5969, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fricking cost us the match (this is matt). Garbage tier robot', 'claytond'),
(147, 24, '2016marea', 4169, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 'got stuck on moat and had to get helped by 2876', 'ianc'),
(148, 24, '2016marea', 4905, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 'I may have missed a crossing or two, 2876 was playing. .this team is awesome,  nuff said', 'ricko'),
(149, 24, '2016marea', 151, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ricko'),
(150, 25, '2016marea', 2713, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Died', 'claytond'),
(151, 25, '2016marea', 5163, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 'michaelp'),
(152, 25, '2016marea', 5556, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Stopped for a long time in the middle', 'stephenl '),
(153, 25, '2016marea', 1699, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, '', 'michaelp'),
(154, 26, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 'michaelp'),
(155, 26, '2016marea', 6201, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', 'jordank'),
(156, 26, '2016marea', 4151, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'claytond'),
(157, 26, '2016marea', 4474, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Solid breacher bot; slow and clumsy but should get better in time. ', 'anushad'),
(158, 0, '2016marea', 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jordank'),
(159, 26, '2016marea', 6201, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', 'jordank'),
(160, 26, '2016marea', 1761, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Broke their arm running into the wall. ', 'anushad'),
(161, 27, '2016marea', 151, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stuck on the moat took a while to get out; spend too much time on the moat', 'michaelp'),
(162, 27, '2016marea', 3566, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jordank'),
(163, 27, '2016marea', 5459, 'no', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'After crossing the low bar 2 times, it completwly stopped in place', 'claytond'),
(164, 27, '2016marea', 3930, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, '', 'anushad'),
(165, 27, '2016marea', 4176, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 0, 0, 0, 'Obsessed over high goal that never happened.  ', 'anushad'),
(166, 27, '2016marea', 5347, 'no', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stuck in moat', 'anushad'),
(167, 28, '2016marea', 4909, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, '', 'jordank'),
(168, 28, '2016marea', 319, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 7, 6, 0, 0, 0, 0, 'Only went through low bar, low goal oriented', 'claytond'),
(169, 28, '2016marea', 4929, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, '', 'michaelp'),
(170, 28, '2016marea', 4761, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '', 'anushad'),
(171, 28, '2016marea', 4311, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'anushad'),
(172, 28, '2016marea', 4905, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, '', 'anushad'),
(173, 29, '2016marea', 2084, '', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 1, 1, 0, 0, 0, 'Helped another robot pass', 'anushad'),
(174, 29, '2016marea', 4474, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 1, 0, 0, 0, 0, 0, 0, 'Really good at teamwork', 'michaelp'),
(175, 29, '2016marea', 4169, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Helped another team get on the drawbridge', 'jordank'),
(176, 29, '2016marea', 97, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Seems to barely have control pf their robot. Fast robot but they only move at a cripples pace. Cant accurately lower the arm when they want', 'claytond'),
(177, 29, '2016marea', 6161, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'anushad'),
(178, 0, '2016marea', 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jordank'),
(179, 29, '2016marea', 1699, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They tipped over... Twice.:. Don\'t let them near the moat', 'anushad'),
(180, 30, '2016marea', 58, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', 'claytond'),
(181, 30, '2016marea', 2423, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 'ayshaa'),
(182, 30, '2016marea', 1474, 'yes', 0, 'Ramparts', 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jordank'),
(183, 30, '2016marea', 2876, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jake you suck', 'michaelp'),
(184, 30, '2016marea', 5163, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stuck in moat not going through stuck in ', 'michaelp'),
(185, 30, '2016marea', 5163, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stuck in moat not going through stuck on two boulders', 'michaelp'),
(186, 31, '2016marea', 1965, 'yes', 0, 'None', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, '', 'michaelp'),
(187, 31, '2016marea', 501, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, '', 'claytond'),
(188, 31, '2016marea', 1761, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'Broke', 'claytond'),
(189, 31, '2016marea', 5556, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Got stuck on the ramparts halfway through,', 'michellep'),
(190, 31, '2016marea', 5969, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No show', 'claytond'),
(191, 31, '2016marea', 246, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 2, 0, 0, 0, 0, 'Flipped over', 'willw'),
(192, 32, '2016marea', 2713, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lay dead in field for awhile; got stuck on low bar', 'michellep'),
(193, 32, '2016marea', 6201, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 'Tried rock walk in auto but could not cross, general difficulty controlling robot precisely', 'michaelp'),
(194, 32, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, '', 'willw'),
(195, 32, '2016marea', 5752, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'michellep'),
(196, 32, '2016marea', 1289, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'michellep'),
(197, 32, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 'michellep'),
(198, 33, '2016marea', 58, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, '', 'willw'),
(199, 33, '2016marea', 1058, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 4, 4, 0, 0, 0, 0, 'Efficient low goal scorer, failed to hang but challenged', 'ricko'),
(200, 33, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Drove around looking confused for a time; went through sallyport with help; not good alliance partner ', 'michellep'),
(201, 33, '2016marea', 3566, 'yes', 0, 'None', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'michellep'),
(202, 33, '2016marea', 2084, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 'michellep'),
(203, 33, '2016marea', 1073, 'yes', 0, 'None', 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Seem like good team didn\'t do much in middle of match but picked it up at the end', 'michaelp'),
(204, 33, '2016marea', 2084, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 'michellep'),
(205, 33, '2016marea', 1073, 'yes', 0, 'None', 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Seem like good team didn\'t do much in middle of match but picked it up at the end', 'michaelp'),
(206, 33, '2016marea', 1073, 'yes', 0, 'None', 0, 0, 0, 0, 4, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Seem like good team didn\'t do much in middle of match but picked it up at the end', 'michaelp'),
(207, 34, '2016marea', 4474, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wasted alot of time trying to open Sally port with no success ', 'Mikem'),
(208, 34, '2016marea', 5459, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Did not move', 'willw'),
(209, 34, '2016marea', 4929, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Had a lot of trouble with ramparts', 'ricko'),
(210, 34, '2016marea', 1699, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 2, 0, 0, 0, 'Clumsy robot design, potential for good shooter but never seems to make a goal.', 'michaelp'),
(211, 34, '2016marea', 5556, 'yes', 0, 'None', 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Focused on crossing low bar; hesitant with rock wall; did final breach needed to win ranking point instead of challenging tower', 'michellep'),
(212, 35, '2016marea', 4909, 'no', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stopped working after auto ', 'Mikem'),
(213, 35, '2016marea', 246, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Helped teammate through drawbridge; almost tipped over many times ', 'michellep'),
(214, 35, '2016marea', 4176, 'yes', 0, 'None', 0, 0, 0, 0, 3, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 'ricko'),
(215, 35, '2016marea', 4311, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 5, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Potentially a good breaching robot, ran out of things to do halfway and just challenged the tower.', 'michaelp'),
(216, 35, '2016marea', 2713, '', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lost connection? Had a ball, challenged, but didn\'t shoot', 'willw'),
(217, 36, '2016marea', 97, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Non operational ', 'Mikem'),
(218, 36, '2016marea', 1289, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spent long time on sallyport and after they finished they just hung out on the tower ramp', 'michellep'),
(219, 36, '2016marea', 1761, 'yes', 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No discernable strategy', 'ricko'),
(220, 36, '2016marea', 319, 'yes', 0, 'Low Bar', 0, 0, 1, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 5, 2, 0, 0, 0, 'Fast', 'willw'),
(221, 36, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Simplistic and effective. Some difficulty staying on tower to challenge but made it.', 'michaelp'),
(222, 37, '2016marea', 5163, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Did not appear on the field', 'ricko'),
(223, 37, '2016marea', 6201, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 'Can go under low bar; roamed around field for awhile', 'michellep'),
(224, 37, '2016marea', 6161, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(225, 37, '2016marea', 4169, 'yes', 0, 'Moat', 0, 0, 0, 0, 1, 0, 0, 2, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 'Attempted to grab balls but kept running over them all; no grab was successful', 'annat'),
(226, 37, '2016marea', 2423, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Maneuvering difficulty when picking up ball and getting over moat', 'michaelp'),
(227, 38, '2016marea', 151, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sat still for most of match', 'michellep'),
(228, 38, '2016marea', 1058, 'yes', 0, 'None', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, '', 'ricko'),
(229, 38, '2016marea', 4905, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 3, 2, 0, 0, 3, 2, 0, 2, 0, 2, 2, 0, 0, 0, 0, 'AWESOME BREACHING ROBOT AND LOW GOAL!!! (also 1st right now)', 'michaelp'),
(230, 38, '2016marea', 4151, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Very slow. Shakes. Spins around in circles a lot', 'willw'),
(231, 39, '2016marea', 5752, 'yes', 0, 'Low Bar', 3, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'michaelp'),
(232, 39, '2016marea', 5969, 'yes', 0, 'Moat', 0, 0, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Got stuck on a boulder', 'jasonr'),
(233, 39, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Slowish. Only crossed ramparts and rock wall', 'willw'),
(234, 39, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 5, 0, 0, 'Consistent high goal shooter from variable locations', 'ricko'),
(235, 39, '2016marea', 1474, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, '', 'jordank'),
(236, 40, '2016marea', 6201, 'yes', 0, 'Low Bar', 2, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, '', 'michaelp'),
(237, 40, '2016marea', 4311, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They kept driving into a wall, and got stuck on low bar ', 'jasonr'),
(238, 40, '2016marea', 4474, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'ricko'),
(239, 40, '2016marea', 246, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Crossed rock wall with difficulty. Helped hold down drawbridge for teammate. Stopped working.', 'willw'),
(240, 41, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They got stuck in the moat....', 'anushad'),
(241, 41, '2016marea', 4761, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 0, 0, '', 'ricko'),
(242, 41, '2016marea', 501, 'yes', 0, 'Moat', 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'Almost scaled very sturdy ', 'jordank'),
(243, 41, '2016marea', 2713, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 'jordank'),
(244, 41, '2016marea', 1699, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kept trying to come back over rock wall. Kept getting stuck 7 times. Finally flipped over.', 'willw'),
(245, 42, '2016marea', 1474, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No show', 'ricko'),
(246, 42, '2016marea', 4905, '', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, '', 'jordank'),
(247, 42, '2016marea', 5556, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Froze for a while, then worked again ', 'willw'),
(248, 42, '2016marea', 4176, 'yes', 0, 'None', 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 2, 0, 0, 0, '', 'michaelp'),
(249, 41, '2016marea', 151, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'THEY DONT KNOW THE RULES', 'michaelp'),
(250, 43, '2016marea', 5962, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 1, 1, 0, 0, 0, 0, '', 'jordank'),
(251, 43, '2016marea', 1073, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'REALLY GOOD AT DEFENSE', 'michaelp'),
(252, 43, '2016marea', 3566, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Did very little, struggled for a long time on port cullis', 'ricko'),
(253, 43, '2016marea', 3930, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 1, 0, 0, 0, 5, 0, 0, 0, 0, 'Went through sallyport when we held it', 'willw'),
(254, 44, '2016marea', 5163, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No show', 'ricko'),
(255, 44, '2016marea', 2084, 'yes', 0, 'Rock Wall', 0, 0, 1, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jordank'),
(256, 44, '2016marea', 5459, 'yes', 0, 'None', 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop moving for period of time 2x', 'willw'),
(257, 45, '2016marea', 4151, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jordank'),
(258, 45, '2016marea', 5347, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'No discernable strategy', 'ricko'),
(259, 45, '2016marea', 1965, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'amandaod'),
(260, 45, '2016marea', 5752, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 'Easy to score low goal', 'willw'),
(261, 47, '2016marea', 5962, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Didnt show up ', 'jordank'),
(262, 46, '2016marea', 2423, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'sent a human player, but didn\'t send a robot', 'amandaod'),
(263, 46, '2016marea', 3930, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 7, 6, 0, 0, 0, 0, 'Efficient pickup, good low goal scorer', 'ricko'),
(264, 46, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 2, 2, 0, 0, 'Very good at picking up ball and shooting high goal', 'willw'),
(265, 47, '2016marea', 246, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Helped another team get on the drawbridge twice', 'jordank'),
(266, 47, '2016marea', 4905, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 4, 3, 0, 0, 0, 0, '', 'ricko'),
(267, 47, '2016marea', 4474, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tried going backwards through the Sally port but had difficulty ', 'willw'),
(268, 47, '2016marea', 5459, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'played defense kind of', 'amandaod'),
(269, 48, '2016marea', 4169, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, '', 'ricko'),
(270, 48, '2016marea', 319, '', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 3, 0, 0, 0, 0, 'Brought over many balls. Then came back and shot them all.', 'willw'),
(271, 48, '2016marea', 4176, 'yes', 0, '', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'Incompetent , utterly useless', 'jordank'),
(272, 48, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'kind of played defense, was supposed to come through the sally port when we held it open, got a 5 point foul for possessing two boulders', 'amandaod'),
(273, 49, '2016marea', 1761, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 'Stopped moving', 'willw'),
(274, 49, '2016marea', 5347, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jordank'),
(275, 49, '2016marea', 4929, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'held open the sally port door, hung out to dry by team', 'amandaod'),
(276, 49, '2016marea', 97, '', 0, '', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Held door open twice: once good, once left hanging', 'ricko'),
(277, 50, '2016marea', 4909, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Played defense most of match', 'ricko'),
(278, 50, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 1, 1, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 'Unreal they are so sick', 'jordank'),
(279, 50, '2016marea', 1289, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(280, 50, '2016marea', 5969, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'held open sally port door for teammate to cross', 'amandaod'),
(281, 51, '2016marea', 5163, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Were not on the field ', 'ricko'),
(282, 51, '2016marea', 501, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'I missed a lot of the crossing things', 'jordank'),
(283, 51, '2016marea', 151, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Got stuck on moat. Something may have fallen off of it when it helped teammate cross sallyport ', 'willw'),
(284, 51, '2016marea', 1073, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'held drawbridge open twice for teammates', 'amandaod'),
(285, 52, '2016marea', 4151, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stops moving for periods of time', 'willw'),
(286, 52, '2016marea', 5752, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, '', 'jordank'),
(287, 52, '2016marea', 1474, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, '', 'ricko'),
(288, 52, '2016marea', 6161, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'being defensive', 'amandaod'),
(289, 0, '2016marea', 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ricko'),
(290, 53, '2016marea', 4474, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stopped half way through ', 'ricko'),
(291, 53, '2016marea', 4474, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'lost a wheel mid match (~50 left) and sat not functional for rest of it', 'amandaod'),
(292, 54, '2016marea', 2423, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jordank'),
(293, 54, '2016marea', 4905, 'yes', 0, 'Moat', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 'Spent a long time working on  the 2ND low goal', 'ricko'),
(294, 54, '2016marea', 4761, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'technical foul for going in and out of the neutral zone using the secret passage', 'amandaod'),
(295, 54, '2016marea', 4905, 'yes', 0, 'Moat', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 'Spent a long time working on  the 2ND low goal', 'ricko'),
(296, 0, '2016marea', 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(297, 54, '2016marea', 3566, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'It was disabled sometime during the match ', 'ayshaa'),
(298, 53, '2016marea', 4176, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, '', 'ayshaa'),
(299, 52, '2016marea', 2084, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, '', 'ayshaa'),
(300, 51, '2016marea', 1965, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, '', 'ayshaa'),
(301, 50, '2016marea', 6201, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', 'ayshaa'),
(302, 49, '2016marea', 2423, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Were not present', 'ayshaa'),
(303, 48, '2016marea', 1699, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, '', 'ayshaa'),
(304, 0, '2016marea', 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'amandaod'),
(305, 32, '2016marea', 5752, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', 'willw'),
(306, 32, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(307, 32, '2016marea', 1289, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(308, 33, '2016marea', 3566, 'yes', 0, 'None', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(309, 33, '2016marea', 2084, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 'willw'),
(310, 34, '2016marea', 5347, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'breached really hard, got stuck in challenge position, chellenge was a happy accident', 'willw'),
(311, 36, '2016marea', 3930, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, '', 'willw'),
(312, 37, '2016marea', 4761, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, '', 'willw'),
(313, 38, '2016marea', 501, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, '', 'willw'),
(314, 39, '2016marea', 1474, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 1, 1, 0, 0, 0, 0, '', 'willw'),
(315, 40, '2016marea', 58, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(316, 41, '2016marea', 2713, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(317, 41, '2016marea', 501, 'yes', 0, 'Moat', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', 'willw'),
(318, 42, '2016marea', 97, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'utterly useless, didnt work 99% of the match', 'willw'),
(319, 42, '2016marea', 4929, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, '', 'willw'),
(320, 43, '2016marea', 319, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, '', 'willw'),
(321, 44, '2016marea', 1289, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(322, 44, '2016marea', 4909, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(323, 45, '2016marea', 5969, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(324, 46, '2016marea', 5556, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(325, 47, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(326, 48, '2016marea', 4176, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'Should we use them? NO', 'willw'),
(327, 49, '2016marea', 3566, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(328, 50, '2016marea', 4761, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(329, 51, '2016marea', 4311, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(330, 52, '2016marea', 2713, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'got stuck headin back to middle through door, bumper broke off. Too fat, could damage field and get penalty, liability', 'willw'),
(331, 53, '2016marea', 5969, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 2, 2, 0, 0, 0, 0, '', 'willw'),
(332, 54, '2016marea', 5556, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(333, 54, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 0, 0, 0, 0, 0, '', 'willw'),
(334, 54, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 0, 0, 0, 0, 0, '', 'willw'),
(335, 54, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, 0, 0, 0, 0, 0, '', 'willw'),
(336, 55, '2016marea', 6201, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(337, 55, '2016marea', 97, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'The driver kept running into things', 'jasonr'),
(338, 55, '2016marea', 4169, 'yes', 0, 'None', 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Stuck on portcullis ', 'ayshaa'),
(339, 55, '2016marea', 4151, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Died going through the low bar a third time, could not open portcullis and could barely get through the drawbridge', 'willw'),
(340, 0, '2016marea', 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'anushad'),
(341, 55, '2016marea', 1965, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 'Attempt to scale. Has a tape measure to scale. Foul for reaching 15 in out of frame perimeter ', 'laurens'),
(342, 56, '2016marea', 1289, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, '', 'jasonr'),
(343, 56, '2016marea', 2713, 'yes', 0, 'Rock Wall', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 'jakhu'),
(344, 56, '2016marea', 1474, '', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 'laurens'),
(345, 56, '2016marea', 1073, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They didn\'t do that much and their drivers were struggling to maneuver ', 'ayshaa'),
(346, 56, '2016marea', 5459, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spent a lot of time blocking in red yard', 'willw');
INSERT INTO `performances` (`id`, `matchnumber`, `eventkey`, `teamnumber`, `isFunctional`, `auto_reach`, `auto_defense_crossed`, `auto_shot_low_attempt`, `auto_shot_low_success`, `auto_shot_high_attempt`, `auto_shot_high_success`, `tele_def_cross_lowbar`, `tele_def_cross_a_pc`, `tele_def_cross_a_cdf`, `tele_def_cross_b_moat`, `tele_def_cross_b_ramp`, `tele_def_cross_c_db`, `tele_def_cross_c_sp`, `tele_def_cross_d_rw`, `tele_def_cross_d_rt`, `tele_shot_low_attempt`, `tele_shot_low_success`, `tele_shot_high_attempt`, `tele_shot_high_success`, `tele_challenged`, `tele_scaled`, `comment`, `scout`) VALUES
(347, 56, '2016marea', 2876, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(348, 57, '2016marea', 4311, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Robot tends to get on top of the boulders', 'ayshaa'),
(349, 57, '2016marea', 1761, 'yes', 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jasonr'),
(350, 57, '2016marea', 5163, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(351, 57, '2016marea', 2084, 'yes', 0, 'Rock Wall', 0, 0, 1, 1, 0, 0, 1, 0, 2, 0, 2, 1, 0, 1, 1, 0, 0, 0, 0, '', 'jakhu'),
(352, 57, '2016marea', 58, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 2, 2, 1, 0, 0, 0, 'Spent a lot of time trying to make a failed high shot', 'willw'),
(353, 58, '2016marea', 151, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, '', 'noel'),
(354, 58, '2016marea', 4909, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 3, 2, 0, 0, '', 'micaelad'),
(355, 58, '2016marea', 5752, 'yes', 0, '', 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', 'jakhu'),
(356, 58, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Defensive--can do anything about high goal shots', 'ayshaa'),
(357, 58, '2016marea', 6161, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Got accross the field to challenge veeeery fast, held door open for another team', 'willw'),
(358, 58, '2016marea', 5347, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'they seemed very confused and were not efficient when driving', 'shivanip'),
(359, 57, '2016marea', 319, 'yes', 0, 'Low Bar', 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 2, 0, 0, 0, 'they did not encounter any defenses, sorry', 'shivanip'),
(360, 59, '2016marea', 246, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, '', 'noel'),
(361, 59, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 1, 1, 3, 1, 0, 0, '', 'micaelad'),
(362, 59, '2016marea', 4169, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 2, 1, 0, 0, 0, 0, 'Very fast but can handle many defenses and spent a lot of time getting balls for mediocre shooting', 'willw'),
(363, 59, '2016marea', 5969, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 'they got stuck under the low bar and did not score once', 'shivanip'),
(364, 59, '2016marea', 1058, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 3, 0, 2, 0, 2, 0, 0, 3, 0, 1, 1, 0, 0, 0, 0, '', 'jakhu'),
(365, 59, '2016marea', 3566, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spent most of its time in neutral zone trying to obtain a boulder but they couldn\'t do it', 'ayshaa'),
(366, 60, '2016marea', 1761, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Opened drawbridge for another team ', 'ayshaa'),
(367, 60, '2016marea', 2084, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, '', 'noel'),
(368, 60, '2016marea', 4929, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 4, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Used teamwork to get through drawbridge ', 'jakhu'),
(369, 60, '2016marea', 5556, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Spent a lot of time not doing anything, limited by lack of arm', 'willw'),
(370, 60, '2016marea', 1073, 'yes', 0, 'None', 0, 0, 0, 0, 1, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'they were very clumsy drivers and could have drove better', 'shivanip'),
(371, 60, '2016marea', 6201, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(372, 61, '2016marea', 1289, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(373, 61, '2016marea', 501, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2, 2, 0, 0, 0, 0, '', 'noel'),
(374, 61, '2016marea', 58, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ayshaa'),
(375, 61, '2016marea', 4905, 'yes', 0, 'Moat', 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(376, 61, '2016marea', 5752, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'Stayed in courtyard a defended after breaching low bar ', 'jakhu'),
(377, 61, '2016marea', 3930, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 'they did the see saw defence really well man. they were good at low goal shooting and crossed many defenses easily- did not see them with defence c', 'shivanip'),
(378, 62, '2016marea', 4761, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4, 0, 1, 1, 1, 1, 0, 0, '', 'noel'),
(379, 62, '2016marea', 5459, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defended in courtyard', 'jakhu'),
(380, 62, '2016marea', 4151, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stuck in door', 'willw'),
(381, 62, '2016marea', 4176, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 'they were very slow in terms of intake and shooting but they were reliable in terms of defences', 'shivanip'),
(382, 62, '2016marea', 246, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 4, 0, 0, 0, 0, '', 'ayshaa'),
(383, 62, '2016marea', 6161, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lost chain during match', 'micaelad'),
(384, 63, '2016marea', 2423, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 'noel'),
(385, 63, '2016marea', 1474, '', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 'Stuck on the moat a little', 'jakhu'),
(386, 63, '2016marea', 1965, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 'ayshaa'),
(387, 63, '2016marea', 4909, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 1, 3, 1, 0, 0, '', 'micaelad'),
(388, 63, '2016marea', 1699, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, '', 'willw'),
(389, 63, '2016marea', 319, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 4, 2, 0, 0, 'might have been knocked out of challenging position by 4909. they did fine in terms of dealing woth defense, but they mostly manuvered.to avoid while they carroed balls tonthe other side', 'shivanip'),
(390, 64, '2016marea', 2876, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 2, 0, 2, 2, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '', 'noel'),
(391, 64, '2016marea', 1058, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 'Attempted to scale', 'ayshaa'),
(392, 64, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 'Trying scaling', 'micaelad'),
(393, 64, '2016marea', 4311, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lost a part of their bumper.', 'jakhu'),
(394, 64, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(395, 0, '2016marea', 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(396, 64, '2016marea', 5347, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'they had a lot.of trouble with the rock wall and did nkt cross it once. they helped us woth the sally port', 'shivanip'),
(397, 65, '2016marea', 97, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Didn\'t move once ', 'jakhu'),
(398, 65, '2016marea', 2713, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'It kinda just stopped near the end of the match ', 'jasonr'),
(399, 65, '2016marea', 5163, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Broke very early in ', 'willw'),
(400, 65, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 3, 0, 2, 0, 0, 0, 0, 0, 0, '', 'noel'),
(401, 65, '2016marea', 151, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ayshaa'),
(402, 65, '2016marea', 4474, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 'they helped a few bots fet through the sally port', 'shivanip'),
(403, 65, '2016marea', 2713, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'It kinda just stopped near the end of the match ', ''),
(404, 66, '2016marea', 6201, 'yes', 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, '', 'jasonr'),
(405, 66, '2016marea', 4169, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Held open the Sally di', 'jakhu'),
(406, 66, '2016marea', 5459, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Did a lot of blocking, could not decide where to challenge and caused problems', 'willw'),
(407, 66, '2016marea', 4929, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 1, 0, 0, 0, 0, '', 'micaelad'),
(408, 66, '2016marea', 1761, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ayshaa'),
(409, 66, '2016marea', 5752, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 'they cant seem to cross many defenses. their intake is spotty and requires a wall to leep the ball in place and theor.low goal.shooting is less than adequate ', 'shivanip'),
(410, 67, '2016marea', 1474, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wasn\'t on the field ', 'jakhu'),
(411, 67, '2016marea', 5347, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(412, 67, '2016marea', 1699, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Didn\'t really do much. Kinda just drove around', 'ashleyd'),
(413, 67, '2016marea', 4761, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(414, 67, '2016marea', 1289, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Held the Sally port open for another team for a good portion of the time', 'ayshaa'),
(415, 67, '2016marea', 246, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 4, 4, 0, 0, 0, 0, 'they were quick, but they were reckless drivers. they got stuck on the moat foe a bit because of that. their intake it fast and they shoot low consistantly', 'shivanip'),
(416, 68, '2016marea', 4905, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 2, 0, 0, 0, 5, 2, 0, 0, 3, 0, 0, 0, 0, 0, 0, '', 'jakhu'),
(417, 68, '2016marea', 5163, 'no', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They were disabled the whole game ', 'micaelad'),
(418, 68, '2016marea', 97, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'shirinb'),
(419, 68, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, '', 'ayshaa'),
(420, 68, '2016marea', 4176, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'defended the tower well but bert managed to score on them more than twice. they also got stuxk on two balls like how', 'shivanip'),
(421, 68, '2016marea', 2084, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, '', 'willw'),
(422, 68, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, '', 'ayshaa'),
(423, 69, '2016marea', 5556, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(424, 69, '2016marea', 2876, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, '', 'shirinb'),
(425, 69, '2016marea', 501, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'Had a scaling mechanism but it fails ', 'ayshaa'),
(426, 69, '2016marea', 4311, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Didn\'t move most of the time ', 'jakhu'),
(427, 69, '2016marea', 319, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 2, 2, 2, 0, 0, 0, '', 'willw'),
(428, 69, '2016marea', 6161, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'they stopped working very early in the game.and got.in our way >:(', 'shivanip'),
(429, 70, '2016marea', 2423, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'I think they were disabled because it stopped moving sometime during teleop ', 'ayshaa'),
(430, 70, '2016marea', 5969, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'They move, but it looks like only one side of their wheels work', 'jakhu'),
(431, 70, '2016marea', 5962, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'clumsy driving spotty intake and no where near efficient', 'shivanip'),
(432, 70, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Stuck in the rough terrain like an idiot for 3/4 of the match', 'willw'),
(433, 70, '2016marea', 1073, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(434, 70, '2016marea', 1965, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 'were slow; gave up helping their teammate; looked indecisive ', 'michellep'),
(435, 71, '2016marea', 4151, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ayshaa'),
(436, 71, '2016marea', 4909, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, '', 'willw'),
(437, 71, '2016marea', 3566, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 'gotnin position to score and got past the portcullis door but did nkt breech it', 'shivanip'),
(438, 71, '2016marea', 151, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Helped teammate through sallyport; took their time getting to tower in the end', 'michellep'),
(439, 71, '2016marea', 58, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'jakhu'),
(440, 71, '2016marea', 4474, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 3, 0, 0, 1, 0, 0, 3, 0, 2, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(441, 72, '2016marea', 1058, 'yes', 0, 'Rough Terrain', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, '', 'willw'),
(442, 72, '2016marea', 319, 'yes', 0, 'Sally Port', 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 4, 0, 0, 0, 0, 'Jake scouting in wills account', 'willw'),
(443, 72, '2016marea', 5163, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Couldn\'t move for most of the time;idk if they lost connection when they were on the tower platform or if they were disabled ', 'ayshaa'),
(444, 72, '2016marea', 5347, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(445, 72, '2016marea', 3930, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 'they were fast but they could have had better strategy and not gome over already breeched defenses butnthey were fast so i guess it was alright', 'shivanip'),
(446, 72, '2016marea', 2713, 'yes', 0, 'Moat', 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 3, 0, 2, 2, 0, 0, 0, 0, '', 'annat'),
(447, 73, '2016marea', 246, 'no', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No show (jake scouting)', 'willw'),
(448, 72, '2016marea', 5163, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Not present ', 'ayshaa'),
(449, 73, '2016marea', 1699, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 1, 0, 0, '', 'annat'),
(450, 73, '2016marea', 2876, 'yes', 0, 'Ramparts', 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, '', 'willw'),
(451, 73, '2016marea', 97, 'yes', 0, '', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'i dont eve knkw man they were so boring that i pretry luch looked at.our team and.tjey cost usnsome.points bynchilling and not challenging', 'shivanip'),
(452, 74, '2016marea', 5563, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ayshaa'),
(453, 74, '2016marea', 4905, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(454, 74, '2016marea', 1289, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'After their first crossing, just sat at the base of the tower. Not sure what their plan was. Tried to scale.', 'jakhu'),
(455, 74, '2016marea', 4474, 'yes', 0, 'Moat', 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(456, 74, '2016marea', 5459, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'they literally spent half of the match being useless and thenother half being useless in terms of defense', 'shivanip'),
(457, 74, '2016marea', 1965, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 'Helped Andromeda one with sally, got caught with them. (Jake)', 'willw'),
(458, 75, '2016marea', 2713, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 2, 0, 0, 0, 0, 0, 'Died trying to shoot during the second defensd', 'willw'),
(459, 75, '2016marea', 151, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Helped with the door ', 'willw'),
(460, 75, '2016marea', 4929, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, '', 'ayshaa'),
(461, 75, '2016marea', 4169, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 'Slammed into wall after auto, didn\'t move for a while, had similar issue later in match', 'jakhu'),
(462, 75, '2016marea', 58, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 'they had trouble with high goal and they drove too cautiously ', 'shivanip'),
(463, 75, '2016marea', 4761, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 1, 0, 0, 0, 2, 2, 0, 0, '', 'micaelad'),
(464, 76, '2016marea', 3566, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'willw'),
(465, 76, '2016marea', 501, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Spend most of the time trying to cross port but fail', 'ayshaa'),
(466, 76, '2016marea', 1474, 'yes', 0, 'Moat', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 3, 4, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(467, 76, '2016marea', 6201, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'they were really thayr great at defences and challenged too early for my tastes', 'shivanip'),
(468, 76, '2016marea', 133, 'yes', 0, 'Low Bar', 0, 0, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, '', 'jakhu'),
(469, 77, '2016marea', 2423, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'Got stuck in moat, had to be helped out.', 'Shannonc'),
(470, 77, '2016marea', 5969, 'yes', 0, 'None', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'reckless driving and dealing wothndefensds. they took like tennseconds to score a low goal after getting in position', 'shivanip'),
(471, 77, '2016marea', 4311, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Died for awhile, but was still functional. No clue what happened', 'willw'),
(472, 77, '2016marea', 4151, 'yes', 0, 'None', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'ayshaa'),
(473, 77, '2016marea', 2084, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 2, 0, 3, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, '', 'micaelad'),
(474, 77, '2016marea', 3930, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 5, 5, 0, 0, 0, 0, '', 'jakhu'),
(475, 78, '2016marea', 1058, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'Broke and gave up with at least 45 seconds left', 'willw'),
(476, 78, '2016marea', 4909, 'yes', 0, 'Rock Wall', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 3, 1, 0, 0, '', 'ianc'),
(477, 78, '2016marea', 6161, 'yes', 0, 'Low Bar', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plays defense majority of time ', 'ayshaa'),
(478, 78, '2016marea', 1761, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tried the moat, had trouble, couldn\'t do it.', 'Shannonc'),
(479, 78, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 'they didbalrught, they dont sfand out very kuch and they could have driven a litnbetter and woth more control', 'shivanip'),
(480, 78, '2016marea', 5962, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 'they didbalrught, they dont sfand out very kuch and they could have driven a litnbetter and woth more control', 'shivanip'),
(481, 78, '2016marea', 5556, 'yes', 0, 'None', 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Damaged two defences, pretty eh though. (Jake)', 'willw');

-- --------------------------------------------------------

--
-- Table structure for table `pitdata`
--

CREATE TABLE `pitdata` (
  `id` int(10) NOT NULL,
  `eventkey` varchar(11) NOT NULL,
  `teamnumber` int(5) NOT NULL,
  `robotPicture` tinytext,
  `driverPicture` tinytext,
  `scout` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scrapedrankings`
--

CREATE TABLE `scrapedrankings` (
  `id` int(11) UNSIGNED NOT NULL,
  `eventkey` varchar(11) NOT NULL,
  `rank` int(5) NOT NULL,
  `teamNumber` int(5) NOT NULL,
  `qualAvg` decimal(5,2) NOT NULL,
  `coopPts` int(5) NOT NULL,
  `autoPts` int(5) NOT NULL,
  `contPts` int(5) NOT NULL,
  `totePts` int(5) NOT NULL,
  `littPts` int(5) NOT NULL,
  `dq` int(5) NOT NULL,
  `matchesPlayed` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) UNSIGNED NOT NULL,
  `eventkey` varchar(11) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `eventkey`, `number`, `name`, `location`, `url`) VALUES
(1, '2016marea', 1058, 'PVC Pirates', 'Londonderry, New Hampshire, USA', 'http://team1058.com/'),
(2, '2016marea', 1073, 'The Force Team', 'Hollis, New Hampshire, USA', 'http://www.theforceteam.com'),
(3, '2016marea', 1289, 'Gearheadz', 'Lawrence, Massachusetts, USA', 'http://www.lhsgearheadz.org/'),
(4, '2016marea', 133, 'B.E.R.T', 'Standish, Maine, USA', 'http://www.bert133.org'),
(5, '2016marea', 1474, 'Master Link Militia', 'Tewksbury, Massachusetts, USA', 'http:///www.tewksburyrobotics.org'),
(6, '2016marea', 151, 'Tough Techs', 'Nashua, New Hampshire, USA', 'http://www.nashua151.org'),
(7, '2016marea', 1699, 'Robocats', 'Colchester, Connecticut, USA', 'http://robocats.wix.com/team1699robocats'),
(8, '2016marea', 1761, 'STEAMpunk Tigers', 'Lynn, Massachusetts, USA', 'http:///www.Team1761.com'),
(9, '2016marea', 1965, 'Firebirds', 'Boston, Massachusetts, USA', 'http://1965firebirds.org/home/'),
(10, '2016marea', 2084, 'Robots by the C', 'Manchester, Massachusetts, USA', 'http:///www.robotsbythec.com'),
(11, '2016marea', 2423, 'The KwarQs', 'Watertown, Massachusetts, USA', 'http://www.team2423.org'),
(12, '2016marea', 246, 'Overclocked', 'Boston, Massachusetts, USA', 'http://www.bu.edu/bufirst/'),
(13, '2016marea', 2713, 'iRaiders', 'Melrose, Massachusetts, USA', 'http:///www.iraiders.org'),
(14, '2016marea', 2876, 'Devilbotz', 'Burlington, Massachusetts, USA', 'http://www.bhsrobotix.com/'),
(15, '2016marea', 319, 'Big Bad Bob', 'Alton, New Hampshire, USA', 'http://www.frc319.com'),
(16, '2016marea', 3566, 'Gone Fishin\'', 'Southborough, Massachusetts, USA', 'http://www.team3566.org/'),
(17, '2016marea', 3930, 'SMART  Spruce Mountain Area Robotics Team', '', 'https://SMART3930.com'),
(18, '2016marea', 4034, 'Pelham Ï€thons Team 4034', 'Pelham, New Hampshire, USA', 'http://www.firstinspires.org/'),
(19, '2016marea', 4151, 'SCRAP', 'Weymouth, Massachusetts, USA', 'http://www.firstinspires.org/'),
(20, '2016marea', 4169, 'Warrior Robotics', 'Sudbury, Massachusetts, USA', 'http://www.firstinspires.org/'),
(21, '2016marea', 4176, 'Iron Tigers', 'North Easton, Massachusetts, USA', 'http:///eastonrobotics.org'),
(22, '2016marea', 4311, 'Swampscott Currents', 'Swampscott, Massachusetts, USA', 'http://www.firstinspires.org/'),
(23, '2016marea', 4474, 'Silver Circuit', 'Kingston, Massachusetts, USA', 'http:///www.silverlakerobotics.com'),
(24, '2016marea', 4761, 'The Robockets', 'Reading, Massachusetts, USA', 'http://robockets.org'),
(25, '2016marea', 4905, 'Andromeda One', 'Ayer, Massachusetts, USA', 'http://andromedaone.wordpress.com'),
(26, '2016marea', 4909, 'Bionics', 'Billerica, Massachusetts, USA', 'http://team4909.org'),
(27, '2016marea', 4929, 'Maroon Monsoon', 'Haverhill, Massachusetts, USA', 'http://www.firstinspires.org/'),
(28, '2016marea', 501, 'The PowerKnights', 'Manchester, New Hampshire, USA', 'http://www.powerknights.com'),
(29, '2016marea', 5163, 'The Aluminum Warriors', 'Hopkinton, Massachusetts, USA', 'http://www.firstinspires.org/'),
(30, '2016marea', 5347, 'Gryphons', 'Weston, Massachusetts, USA', 'http://www.firstinspires.org/'),
(31, '2016marea', 5459, 'Ipswich TIGERS (Technologically Inclined Group of Engineering Robotics Students)', 'ipswich, Massachusetts, USA', 'http://ipswich5459.com'),
(32, '2016marea', 5556, 'Carriagetown Robotics', 'Amesbury, Massachusetts, USA', 'http://www.firstinspires.org/'),
(33, '2016marea', 5563, 'Phalanx', 'Lynn, Massachusetts, USA', 'http://stmaryslynn.com/FIRST'),
(34, '2016marea', 5752, 'Beverly Panthers', 'Beverly, Massachusetts, USA', 'http://www.firstinspires.org/'),
(35, '2016marea', 58, 'The Riot Crew', 'South Portland, Maine, USA', 'http://www.riotcrew.org'),
(36, '2016marea', 5962, 'perSEVERE', 'Lowell, Massachusetts, USA', 'http:///www.mvrobotics.net'),
(37, '2016marea', 5969, 'English Skunkworks', 'Jamaica Plain, Massachusetts, USA', 'http:///www.team5969.com'),
(38, '2016marea', 6161, 'Patriots', 'Gray, Maine, USA', 'http://www.firstinspires.org/'),
(39, '2016marea', 6201, 'The Highlanders', 'Somerville, Massachusetts, USA', 'http://www.somerville.k12.ma.us/education/components/scrapbook/default.php?sectionid=96'),
(40, '2016marea', 97, 'Bionic Beef', 'Cambridge, Massachusetts, USA', 'http://www.crlsteam97.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `realname` varchar(35) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `realname`, `role`) VALUES
(1, 'soule', 'souleben', 'Souleiman Benhida', 'admin'),
(58, 'mikem', 'mikem', 'Mike Malec', 'drive'),
(4, 'ricko', 'ricko', 'Rick ODonnell', 'admin'),
(5, 'mentor', 'mentor', 'Generic Mentor', 'drive'),
(6, 'adamk', 'adamk', 'Adam Krupp', 'scout'),
(7, 'akashk', 'akashk', 'Akash Kunchum', 'scout'),
(8, 'alih', 'alih', 'Ali Haider', 'scout'),
(9, 'amandaod', 'amandaod', 'Amanda ODonnell', 'scout'),
(10, 'annat', 'annat', 'Anna Tamura', 'scout'),
(11, 'antonior', 'antonior', 'Antonio Ramirez', 'scout'),
(12, 'anushad', 'anushad', 'Anusha Datar', 'admin'),
(69, 'jordank', 'jordank', 'Jordan Kalatchev', 'scout'),
(14, 'ashleyd', 'ashleyd', 'Ashley DeFrancesco', 'scout'),
(68, 'nickk', 'nickk', 'Nick Karwan', 'scout'),
(16, 'claytond', 'claytond', 'Clayton Davison', 'drive'),
(17, 'ianc', 'ianc', 'Ian Casciola', 'drive'),
(18, 'jacksont', 'jacksont', 'Jackson Towle', 'scout'),
(19, 'jakeod', 'jakeod', 'Jake ODonnell', 'drive'),
(21, 'johnl', 'johnl', 'John Lumenllo', 'scout'),
(70, 'jasonb', 'jasonb', 'Jason Bowen', 'jasonb'),
(67, 'stephenl ', 'stephenl ', 'Stephen Li', 'scout'),
(24, 'laurens', 'laurens', 'Lauren Schissler', 'scout'),
(25, 'lukei', 'lukei', 'Luke Iler', 'drive'),
(26, 'melissac', 'melissac', 'Melissa Costello', 'scout'),
(27, 'michaelp', 'michaelp', 'Michael Pascale', 'scout'),
(28, 'michellep', 'michellep', 'Michelle Pothier', 'scout'),
(29, 'muhammadh', 'muhammadh', 'Muhammad Hashim', 'scout'),
(30, 'owenj', 'owenj', 'Owen Johnson', 'drive'),
(31, 'robertc', 'robertc', 'Robert Centoni', 'scout'),
(33, 'shivanip', 'shivanip', 'Shivani Patel', 'scout'),
(34, 'vivekp', 'vivekp', 'Vivek Patel', 'scout'),
(35, 'willw', 'willw', 'Will Wen', 'scout'),
(66, 'micaelad', 'micaelad', 'Micaela Demrancesco', 'scout'),
(37, 'chrisce', 'chrisce', 'Chris Centoni', 'scout'),
(38, 'chrisco', 'chrisco', 'Chris Costello', 'drive'),
(39, 'crystalc', 'crystalc', 'Crystal Curran', 'scout'),
(40, 'ericn', 'ericn', 'Eric Napolitano', 'scout'),
(41, 'justinv', 'justinv', 'Justin Varghese', 'scout'),
(42, 'kiranc', 'kiranc', 'Kiran Churchill', 'scout'),
(43, 'parthp', 'parthp', 'Parth Patel', 'scout'),
(44, 'rachelm', 'rachelm', 'Rachel McNeil', 'scout'),
(45, 'shannonc', 'shannonc', 'Shannon Carey', 'drive'),
(46, 'ayshaa', 'ayshaa', 'Aysha Afzal', 'scout'),
(65, 'noel', 'noel', 'Noel Goulette ', 'scout'),
(54, 'joanneod', 'joanneod', 'Joanne ODonnell', 'scout'),
(57, 'meredithp', 'meredithp', 'Meredith Palmer', 'scout'),
(56, ' melissac', ' melissac', 'Melissa Costello', 'scout'),
(59, 'peterm', 'peterm', 'Peter Marek', 'scout'),
(60, 'mrkhan', 'mrkhan', 'Arshad Khan', 'scout'),
(64, 'jakhu', 'jakhu', 'Simran Jakhu', 'scout'),
(71, 'jasonb', 'jasonb', 'Jason Bowen', 'scout'),
(72, 'mattc', 'mattc', 'Matt Chellali', 'scout'),
(73, 'antonior', 'antonior', 'Antonio Ramirez', 'scout'),
(74, 'kiranc', 'kiranc', 'Kiran Churchill', 'scout'),
(75, 'shirinb', 'shirinb', 'Shirin Bakre', 'scout'),
(76, 'jasonr', 'jasonr', 'Jason R', 'scout'),
(77, 'antonior', 'antonior', 'Antonio Ramirez ', 'scout');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driverfeedback`
--
ALTER TABLE `driverfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventstatus`
--
ALTER TABLE `eventstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matchresults`
--
ALTER TABLE `matchresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performances`
--
ALTER TABLE `performances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pitdata`
--
ALTER TABLE `pitdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scrapedrankings`
--
ALTER TABLE `scrapedrankings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driverfeedback`
--
ALTER TABLE `driverfeedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `eventstatus`
--
ALTER TABLE `eventstatus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `matchresults`
--
ALTER TABLE `matchresults`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `performances`
--
ALTER TABLE `performances`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;
--
-- AUTO_INCREMENT for table `pitdata`
--
ALTER TABLE `pitdata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `scrapedrankings`
--
ALTER TABLE `scrapedrankings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
