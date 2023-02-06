-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2020 at 09:02 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`, `authentication_key`) VALUES
(1, 'Mr. Admin', 'admin@admin.com', 'admin', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `aggre`
--

CREATE TABLE `aggre` (
  `aggre_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mark_from` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mark_upto` longtext COLLATE utf8_unicode_ci NOT NULL,
  `division` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aggre`
--

INSERT INTO `aggre` (`aggre_id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `division`) VALUES
(1, '', 'o', '8', '31', '1'),
(2, 'o', 'o', '33', '45', '2'),
(3, '', 'o', '46', '55', '3'),
(4, '', 'o', '67', '56', '4'),
(5, '', 'o', '67', '50', '5'),
(6, '', 'o', '78', '90', 'ungraded'),
(7, '', 'a', '8,9', 'O', '1'),
(10, '', '', '2,2', 'A', '6'),
(12, '', 'a', '4,6,9', 'A', '6'),
(13, '', 'a', '2,2', 'A', '6'),
(16, '', 'a', '2,3,4', 'y', '8');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 undefined , 1 present , 2  absent',
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `class_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `status`, `student_id`, `date`, `class_id`) VALUES
(1, 2, 1, '2017-12-11', 2),
(8, 1, 2, '2017-12-14', 3),
(9, 2, 2, '2017-12-14', 3),
(10, 1, 2, '2017-12-14', 3),
(11, 1, 1, '2017-12-19', 2),
(12, 1, 1, '2017-12-19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `avrage_postion`
--

CREATE TABLE `avrage_postion` (
  `id` int(11) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `exam_id` varchar(10) NOT NULL,
  `average` double NOT NULL,
  `postion` int(10) NOT NULL,
  `class_id` varchar(10) NOT NULL,
  `term` varchar(100) NOT NULL,
  `years` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `avrage_postion`
--

INSERT INTO `avrage_postion` (`id`, `student_id`, `exam_id`, `average`, `postion`, `class_id`, `term`, `years`) VALUES
(3, '1', '1', 80, 0, '2', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `a_level_points`
--

CREATE TABLE `a_level_points` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT '0',
  `exam_id` int(11) DEFAULT '0',
  `subject_name` longtext COLLATE utf8_bin,
  `point_grade` varchar(100) COLLATE utf8_bin DEFAULT '0',
  `term` varchar(100) COLLATE utf8_bin NOT NULL,
  `years` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `a_level_points`
--

INSERT INTO `a_level_points` (`id`, `student_id`, `exam_id`, `subject_name`, `point_grade`, `term`, `years`) VALUES
(13, 1, 1, 'BIOLOGY', NULL, '', ''),
(14, 1, 1, 'chemistry', NULL, '', ''),
(15, 1, NULL, 'BIOLOGY', NULL, '', ''),
(16, 1, NULL, 'chemistry', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `description`, `author`, `class_id`, `status`, `price`) VALUES
(1, 'English poems', 'All school peoms', 'bamwine', '1', 'available', '100');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('00e926b1beef8a516b5dd627dc8f645702918ac3', '::1', 1577690779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373639303736393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('015441a187f7788130fd512cc8e9feeeedfd083e', '::1', 1574279093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343237393039333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('021e8711878e74cde8d3338f584a33ec2e125b85', '::1', 1574771573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343737313537333b),
('02280560624ca57dde01eb33b7287ceca490f527', '::1', 1575610487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353631303438353b),
('05bfd0ec51db8090b78fdd1735d185d6711174f0', '::1', 1574275982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343237353935363b),
('05f011420ba23350b7f42f6a5957384f92b6fafb', '::1', 1574764650, 0x61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b5f5f63695f6c6173745f726567656e65726174657c693a313537343736343635303b),
('1106d06ba06a5f8a9b56815ffeaaf4bcff29f2a7', '::1', 1574745067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343734353036373b),
('219d8fef64062f64204808adc77a53ca42ccd254', '::1', 1574322335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343332323333353b),
('226f5ea8d74d9adb9f2d2f41a08fa335e41dfec0', '::1', 1514652534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343635323533343b),
('23704fa9f1fc0773d20a1c78e90fda9f25df933d', '::1', 1514629293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343632393034303b),
('3353c9cb7b170858199b1acedd34b3c1cfdae95e', '::1', 1514629969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343632393836333b),
('344af91ffa28cac0f6b89e16897ac73c0c9fd597', '::1', 1574309426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343330393432363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('37413e44ee5a4df226be04af31d30a614d7475db', '::1', 1574765342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343736353334323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('3a00a01f7202accfa93bbc461aeb4c1174a5e419', '::1', 1514631260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343633313039323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('3c0e275f17808b56a2d1aafb090cc7eeb0e6c147', '::1', 1574309928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343330393932383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('405254638882169ec8689a1dd2625d42b8e0b57e', '::1', 1514635174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343633353137343b),
('44003517108dddfa2d08b519a4615e78c6a34e02', '::1', 1578208004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383230373935393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('44de162a776c4e07904fd5083c69444ad7b47987', '::1', 1514646579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343634363537393b),
('472593c0b4298749cdc110ab85374eefd0d82ae9', '::1', 1514633595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343633333538343b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('47beeb7f0332d37c11f6cf2131fabdaeeddf9fa9', '::1', 1575364300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353336343139373b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('47dfdb0e4961808414e8875a427f1662d7f326c7', '::1', 1514650651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343635303632333b746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a2262616d77696e65223b6c6f67696e5f747970657c733a373a2274656163686572223b),
('5620ca0d7ffe313dd33b9daef257ec79e91667dc', '::1', 1514632920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343633323931333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('5640ded67bb98b5a4a682146274b4180b86ed00b', '::1', 1575190686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353139303638363b),
('567793953ba3b91f29f597c076a8484386f1bf7b', '::1', 1574332677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343333323634353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b666c6173685f6d6573736167657c733a31343a225468656d652053656c6563746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('5b1090280a8987068f5f4cd1a4bdf2ae7b7b0a0e', '::1', 1574766814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343736363831343b),
('5f799efed5bbe15c6236aac0b2332348c72c967c', '::1', 1574766814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343736363831343b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('6038c48c0aa769cb0b4c696757a9ad8d28b97e55', '::1', 1577430933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373433303930383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('6131d1d580bb227ebb834b0a26760863fb9f3a95', '::1', 1578206797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383230363736393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('61374215d97caa0c55e84e9d4d8b5f018d591ddc', '::1', 1575610721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353631303732313b),
('61b359d0b4e8b62945de82c8f75fae033d10c151', '::1', 1574312857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343331323737333b73747564656e745f6c6f67696e7c733a313a2231223b73747564656e745f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a22736562756e7961223b6c6f67696e5f747970657c733a373a2273747564656e74223b),
('62bb5403f049248891b07e5f64831a50ead91f9a', '::1', 1514623780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343632333734323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('63bdbbd6f3b55868448f8d7a45e058db7d9591e1', '::1', 1574279834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343237393833343b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('644ea603e3385fdf3ff13d2c1439a1651f42efb8', '::1', 1578380350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383338303139343b),
('69b24f6be2cb2bc6d445348d11773d1b7b41f60d', '::1', 1514646105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343634363039383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('70d5521cb9cbf79aa8513bf3932ef85c7391690f', '::1', 1578206760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383230363736303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('70f1ea860f5653850c3f87b9b571d30b70166d67', '::1', 1574946159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343934363135393b),
('7336747346e218f58dcb72a86272cf92d13d0040', '::1', 1514648317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343634383331363b),
('7363845b0dc84d4662136de89f781e604cd043e1', '::1', 1574764963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343736343936333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('75fda3626d112d36c9fe5e9b71d54e6fadbbebe9', '::1', 1574765394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343736353339343b),
('7ad8b8e09be7d4fb3d1887f0826280c6af834b24', '::1', 1575369399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353336393332383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('7ce7a3feb1cccef2dded5c9d9341d9175c3751e2', '::1', 1514650079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343634393934383b706172656e745f6c6f67696e7c733a313a2231223b706172656e745f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a2262616d77696e65223b6c6f67696e5f747970657c733a363a22706172656e74223b),
('831727adf5b9f9e470f21fffe9c9d0af0726c1b4', '::1', 1574838288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343833383238383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('88cada9ae31b9bd12aae9a97165cba57c9d83af8', '::1', 1514641125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343634313033393b),
('91d124e29a7f6602a522feda05f92c476a6a76ac', '::1', 1577430674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373433303637333b),
('9ac5c45107eccd2195c6b35a83c504abd16b2227', '::1', 1574280021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343237393833343b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('9ad3fe540f0ee21631921223477d6cc71174d7c1', '::1', 1514624674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343632343337353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('9ae77133b3843dcbf3d46a41c5290c9f1fc44473', '::1', 1514624792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343632343637363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('9d9ebe71e474530ab6c5ef02b13ac0a310919e11', '::1', 1574334710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343333343731303b),
('a15fd58f59f280bccd59fc6f4d70b111bdd179be', '::1', 1574838289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343833383238393b),
('a2d8e38279d5232ed80d62a93f20046454c78e26', '::1', 1514641583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343634313538333b),
('aaded8d715b678d69e0ec77b74c2321fb6d27c94', '::1', 1574276554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343237363535343b),
('aedcbc8d9298c7c585f596ee7ee18e0ba18a8b73', '::1', 1514644757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343634343734333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('aef314b2898256dfd9e00d714939e32bc044d1bf', '::1', 1574312382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343331323338323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('aef7b62108dd25e9edb01b87188e63b8be76e504', '::1', 1578208439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383230383331343b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('b0275494f1870173bfb332a1c9931928806af005', '::1', 1574312069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343331323036393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('b21bc923bf0e351134d1dd51609ce2231dd17d0b', '::1', 1514647759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343634373735333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('ba4dc7b1358c8fee876b25d2dd55d32de4fab0f5', '::1', 1575190919, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353139303931393b),
('bbdc3ca69acb8e0dcf2ff01575d54dd9d31223a7', '::1', 1574662441, 0x61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b5f5f63695f6c6173745f726567656e65726174657c693a313537343636323339313b),
('bbf0fa093a5dc9852de39d40756f71d7e934e291', '::1', 1574662381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343636323338313b),
('c01986e50057b5f9b72e8b573d46d65b385dc3bc', '::1', 1575609944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353630393839383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('c10768114818cf82e500a263a5ace2d7757f54f3', '::1', 1574763939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343736333933393b),
('c7517919374b3d9d192217cd900362f20e7b5325', '::1', 1514623569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343632333431373b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('c7e87c0a02105cf6f0422283a842e68f7610c3dd', '::1', 1574277455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343237373435353b746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a2262616d77696e65223b6c6f67696e5f747970657c733a373a2274656163686572223b),
('c8a32de543029d596dbcc6170e64bfb7a20edecd', '::1', 1574770150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343737303034333b73747564656e745f6c6f67696e7c733a313a2231223b73747564656e745f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a22736562756e7961223b6c6f67696e5f747970657c733a373a2273747564656e74223b),
('c9dcd7cc6b53761db886a54384644f543eb1d62b', '::1', 1578207689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383230373534333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('cdec579994937d6c56b3fa0efcfc5cf2c74d6e3f', '::1', 1574276973, 0x61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b5f5f63695f6c6173745f726567656e65726174657c693a313537343237363937333b),
('d123826bfb8923781bf931f7044d541f82af7b8e', '::1', 1514650322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343635303331323b73747564656e745f6c6f67696e7c733a313a2231223b73747564656e745f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a22736562756e7961223b6c6f67696e5f747970657c733a373a2273747564656e74223b),
('d66e8ef0bf83758ce4bb8833b80a94e665ce3c68', '::1', 1574770568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343737303531373b73747564656e745f6c6f67696e7c733a313a2231223b73747564656e745f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a22736562756e7961223b6c6f67696e5f747970657c733a373a2273747564656e74223b),
('db43c72bd5e066ec1553cb0f703444d98084877b', '::1', 1574278165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343237383136353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('dba5b87415e7440e7356a8700b205bb0fd134ebc', '::1', 1577693401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373639333339353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('e0d15e3e1909b7851b922919f8bcb36d3ff7daea', '::1', 1575890233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353839303233333b),
('e843bb2d4787a2f7bb3b2c43b331f6394e12b65e', '::1', 1574771573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343737313537333b746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a2262616d77696e65223b6c6f67696e5f747970657c733a373a2274656163686572223b),
('efd04aafebd575552cf421fe7098e6e288d2e6a8', '::1', 1514650380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343635303337313b746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a2262616d77696e65223b6c6f67696e5f747970657c733a373a2274656163686572223b),
('f5acef8afbbb06e0bbade0406ef87dadb64666f3', '::1', 1574334463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343333343436333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('f749a7d0a90e6045088090cbdf45e5ebe0eecd82', '::1', 1514647208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343634373230383b),
('f80151df224c7b29a59650df7d9bca581bdbdd8c', '::1', 1514630735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343633303639363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('f8bc78be1e87391bccc60408528c7907447d36ed', '::1', 1514649827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343634393830393b746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a373a2262616d77696e65223b6c6f67696e5f747970657c733a373a2274656163686572223b),
('fee95d28bc84595f956826d812bcc209cd0f7f85', '::1', 1574312705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537343331323730353b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a224d722e2041646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_level` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`, `class_level`) VALUES
(1, 'SENIOR ONE', 'S.1', 1, 'o'),
(2, 'SENOIR TWO', 'S.2', 1, 'a'),
(3, 'senoir six', 'S.6', 1, 'o');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `time_start_min` int(11) NOT NULL,
  `time_end_min` int(11) NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`class_routine_id`, `class_id`, `subject_id`, `time_start`, `time_end`, `time_start_min`, `time_end_min`, `day`) VALUES
(1, 1, 3, 8, 22, 30, 50, 'monday');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`document_id`, `title`, `description`, `file_name`, `file_type`, `class_id`, `teacher_id`, `timestamp`) VALUES
(1, 'ASP .Net Course Content', 'All details about course content in ASP.net', 'ASPNet.pdf', 'pdf', '1', 0, '0'),
(2, 'C course content', 'Details about C language course content', 'CLanguage.pdf', 'pdf', '1', 0, '1451948400');

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_room` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `date`, `comment`) VALUES
(1, 'BOT', '11/28/2017', 'for bot'),
(2, 'MID', '11/22/2017', 'mid term');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `comment`) VALUES
(1, '4', 'o', 76, 100, 'Credit'),
(2, '9', 'o', 61, 75, 'Pass'),
(3, '6', 'o', 46, 60, 'Pass'),
(4, '9', 'a', 0, 78, 'Fail'),
(5, '9', 'o', 89, 5, 'Pass'),
(6, '9', 'a', 78, 90, 'Distinction'),
(7, '9', 'o', 61, 75, 'Pass'),
(8, '9', 'o', 0, 30, 'Pass'),
(9, '1', 'o', 76, 100, 'Distinction'),
(10, '6', 'o', 46, 60, 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_paid` longtext COLLATE utf8_unicode_ci NOT NULL,
  `due` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  `term` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `years` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `student_id`, `title`, `description`, `amount`, `amount_paid`, `due`, `creation_timestamp`, `payment_timestamp`, `payment_method`, `payment_details`, `status`, `term`, `years`) VALUES
(1, 1, 'fees', 'begin of term', 50000, '10000', '40000', 1511910000, '', '', '', 'paid', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `bengali` longtext COLLATE utf8_unicode_ci NOT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `arabic` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dutch` longtext COLLATE utf8_unicode_ci NOT NULL,
  `russian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `chinese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `turkish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hungarian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `french` longtext COLLATE utf8_unicode_ci NOT NULL,
  `greek` longtext COLLATE utf8_unicode_ci NOT NULL,
  `german` longtext COLLATE utf8_unicode_ci NOT NULL,
  `italian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thai` longtext COLLATE utf8_unicode_ci NOT NULL,
  `urdu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hindi` longtext COLLATE utf8_unicode_ci NOT NULL,
  `latin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `indonesian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `japanese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `korean` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(1, 'login', 'login', 'লগইন', 'login', 'دخول', 'login', 'Войти', '注册', 'giriş', 'login', 'bejelentkezés', 'Connexion', 'σύνδεση', 'Login', 'login', 'เข้าสู่ระบบ', 'لاگ ان', 'लॉगिन', 'login', 'login', 'ログイン', '로그인'),
(2, 'account_type', 'account type', 'অ্যাকাউন্ট টাইপ', 'tipo de cuenta', 'نوع الحساب', 'type account', 'тип счета', '账户类型', 'hesap türü', 'tipo de conta', 'fiók típusát', 'Type de compte', 'τον τύπο του λογαριασμού', 'Kontotyp', 'tipo di account', 'ประเภทบัญชี', 'اکاؤنٹ کی قسم', 'खाता प्रकार', 'propter speciem', 'Jenis akun', '口座の種類', '계정 유형'),
(3, 'admin', 'admin', 'অ্যাডমিন', 'administración', 'مشرف', 'admin', 'админ', '管理', 'yönetim', 'administrador', 'admin', 'administrateur', 'το admin', 'Admin', 'Admin', 'ผู้ดูแลระบบ', 'منتظم', 'प्रशासन', 'Lorem ipsum dolor sit', 'admin', '管理者', '관리자'),
(4, 'teacher', 'teacher', 'শিক্ষক', 'profesor', 'معلم', 'leraar', 'учитель', '老师', 'öğretmen', 'professor', 'tanár', 'professeur', 'δάσκαλος', 'Lehrer', 'insegnante', 'ครู', 'استاد', 'शिक्षक', 'Magister', 'guru', '教師', '선생'),
(5, 'student', 'student', 'ছাত্র', 'estudiante', 'طالب', 'student', 'студент', '学生', 'öğrenci', 'estudante', 'diák', 'étudiant', 'φοιτητής', 'Schüler', 'studente', 'นักเรียน', 'طالب علم', 'छात्र', 'discipulo', 'mahasiswa', '学生', '학생'),
(6, 'parent', 'parent', 'পিতা বা মাতা', 'padre', 'أصل', 'ouder', 'родитель', '亲', 'ebeveyn', 'parente', 'szülő', 'mère', 'μητρική εταιρεία', 'Elternteil', 'genitore', 'ผู้ปกครอง', 'والدین', 'माता - पिता', 'parente', 'induk', '親', '부모의'),
(7, 'email', 'email', 'ইমেইল', 'email', 'البريد الإلكتروني', 'e-mail', 'по электронной почте', '电子邮件', 'E-posta', 'e-mail', 'E-mail', 'email', 'e-mail', 'E-Mail-', 'e-mail', 'อีเมล์', 'ای میل', 'ईमेल', 'email', 'email', 'メール', '이메일'),
(8, 'password', 'password', 'পাসওয়ার্ড', 'contraseña', 'كلمة السر', 'wachtwoord', 'пароль', '密码', 'şifre', 'senha', 'jelszó', 'mot de passe', 'τον κωδικό', 'Passwort', 'password', 'รหัสผ่าน', 'پاس', 'पासवर्ड', 'Signum', 'kata sandi', 'パスワード', '암호'),
(9, 'forgot_password ?', 'forgot password ?', 'পাসওয়ার্ড ভুলে গেছেন?', '¿Olvidó su contraseña?', 'نسيت كلمة المرور؟', 'wachtwoord vergeten?', 'забыли пароль?', '忘记密码？', 'Şifremi unuttum?', 'Esqueceu a senha?', 'Elfelejtett jelszó?', 'Mot de passe oublié?', 'Ξεχάσατε τον κωδικό;', 'Passwort vergessen?', 'dimenticato la password?', 'ลืมรหัสผ่าน', 'پاس ورڈ بھول گیا؟', 'क्या संभावनाएं हैं?', 'oblitus esne verbi?', 'lupa password?', 'パスワードを忘れた？', '비밀번호를 잊으 셨나요?'),
(10, 'reset_password', 'reset password', 'পাসওয়ার্ড রিসেট', 'restablecer la contraseña', 'إعادة تعيين كلمة المرور', 'reset wachtwoord', 'сбросить пароль', '重设密码', 'şifrenizi sıfırlamak', 'redefinir a senha', 'Jelszó visszaállítása', 'réinitialiser le mot de passe', 'επαναφέρετε τον κωδικό πρόσβασης', 'Kennwort zurücksetzen', 'reimpostare la password', 'ตั้งค่ารหัสผ่าน', 'پاس ورڈ ری سیٹ', 'पासवर्ड रीसेट', 'Duis adipiscing', 'reset password', 'パスワードを再設定する', '암호를 재설정'),
(11, 'reset', 'reset', 'রিসেট করুন', 'reajustar', 'إعادة تعيين', 'reset', 'сброс', '重置', 'ayarlamak', 'restabelecer', 'vissza', 'remettre', 'επαναφορά', 'rücksetzen', 'reset', 'ตั้งใหม่', 'ری سیٹ', 'रीसेट करें', 'Duis', 'ulang', 'リセット', '재설정'),
(12, 'admin_dashboard', 'admin dashboard', 'অ্যাডমিন ড্যাশবোর্ড', 'administrador salpicadero', 'المشرف وحة القيادة', 'admin dashboard', 'админ панель', '管理面板', 'Admin paneli', 'Admin Dashboard', 'admin műszerfal', 'administrateur tableau de bord', 'πίνακα ελέγχου του διαχειριστή', 'Admin-Dashboard', 'Admin Dashboard', 'แผงควบคุมของผู้ดูแลระบบ', 'ایڈمن ڈیش بورڈ', 'व्यवस्थापक डैशबोर्ड', 'Lorem ipsum dolor sit Dashboard', 'admin dashboard', '管理ダッシュボード', '관리자 대시 보드'),
(13, 'account', 'account', 'হিসাব', 'cuenta', 'حساب', 'rekening', 'счет', '帐户', 'hesap', 'conta', 'számla', 'compte', 'λογαριασμός', 'Konto', 'conto', 'บัญชี', 'اکاؤنٹ', 'खाता', 'propter', 'rekening', 'アカウント', '계정'),
(14, 'profile', 'profile', 'পরিলেখ', 'perfil', 'ملف', 'profiel', 'профиль', '轮廓', 'profil', 'perfil', 'profil', 'profil', 'προφίλ', 'Profil', 'profilo', 'โปรไฟล์', 'پروفائل', 'रूपरेखा', 'profile', 'profil', 'プロフィール', '프로필'),
(15, 'change_password', 'change password', 'পাসওয়ার্ড পরিবর্তন', 'cambiar la contraseña', 'تغيير كلمة المرور', 'wachtwoord wijzigen', 'изменить пароль', '更改密码', 'şifresini değiştirmek', 'alterar a senha', 'jelszó megváltoztatása', 'changer le mot de passe', 'αλλάξετε τον κωδικό πρόσβασης', 'Kennwort ändern', 'cambiare la password', 'เปลี่ยนรหัสผ่าน', 'پاس ورڈ تبدیل', 'पासवर्ड परिवर्तित', 'mutare password', 'mengubah password', 'パスワードを変更する', '암호를 변경'),
(16, 'logout', 'logout', 'লগ আউট', 'logout', 'تسجيل الخروج', 'logout', 'выход', '注销', 'logout', 'Sair', 'logout', 'Déconnexion', 'αποσύνδεση', 'logout', 'Esci', 'ออกจากระบบ', 'لاگ آؤٹ کریں', 'लॉगआउट', 'logout', 'logout', 'ログアウト', '로그 아웃'),
(17, 'panel', 'panel', 'প্যানেল', 'panel', 'لوحة', 'paneel', 'панель', '面板', 'panel', 'painel', 'bizottság', 'panneau', 'πίνακας', 'Platte', 'pannello', 'แผงหน้าปัด', 'پینل', 'पैनल', 'panel', 'panel', 'パネル', '패널'),
(18, 'dashboard_help', 'dashboard help', 'ড্যাশবোর্ড সহায়তা', 'salpicadero ayuda', 'لوحة القيادة مساعدة', 'dashboard hulp', 'Приборная панель помощь', '仪表板帮助', 'pano yardım', 'dashboard ajuda', 'műszerfal help', 'tableau de bord aide', 'ταμπλό βοήθεια', 'Dashboard-Hilfe', 'dashboard aiuto', 'แผงควบคุมความช่วยเหลือ', 'ڈیش بورڈ مدد', 'डैशबोर्ड मदद', 'Dashboard auxilium', 'dashboard bantuan', 'ダッシュボードヘルプ', '대시 보드 도움말'),
(19, 'dashboard', 'dashboard', 'ড্যাশবোর্ড', 'salpicadero', 'لوحة القيادة', 'dashboard', 'приборная панель', '仪表盘', 'gösterge paneli', 'painel de instrumentos', 'műszerfal', 'tableau de bord', 'ταμπλό', 'Armaturenbrett', 'cruscotto', 'หน้าปัด', 'ڈیش بورڈ', 'डैशबोर्ड', 'Dashboard', 'dasbor', 'ダッシュボード', '계기판'),
(20, 'student_help', 'student help', 'শিক্ষার্থীর সাহায্য', 'ayuda estudiantil', 'مساعدة الطالب', 'student hulp', 'студент помощь', '学生的帮助', 'Öğrenci yardım', 'ajuda estudante', 'diák segítségével', 'aide aux étudiants', 'φοιτητής βοήθεια', 'Schüler-Hilfe', 'help studente', 'ช่วยเหลือนักเรียน', 'طالب علم کی مدد', 'छात्र मदद', 'Discipulus auxilium', 'membantu siswa', '学生のヘルプ', '학생 도움말'),
(21, 'teacher_help', 'teacher help', 'শিক্ষক সাহায্য', 'ayuda del maestro', 'مساعدة المعلم', 'leraar hulp', 'Учитель помощь', '老师的帮助', 'öğretmen yardım', 'ajuda de professores', 'tanár segítségével', 'aide de l''enseignant', 'βοήθεια των εκπαιδευτικών', 'Lehrer-Hilfe', 'aiuto dell''insegnante', 'ครูช่วยเหลือ', 'استاد کی مدد', 'शिक्षक मदद', 'doctor auxilium', 'bantuan guru', '教師のヘルプ', '교사의 도움'),
(22, 'subject_help', 'subject help', 'বিষয় সাহায্য', 'ayuda sujeto', 'مساعدة الموضوع', 'Onderwerp hulp', 'Заголовок помощь', '主题帮助', 'konusu yardım', 'ajuda assunto', 'tárgy segítségével', 'l''objet de l''aide', 'υπόκεινται βοήθεια', 'Thema Hilfe', 'Aiuto Subject', 'ความช่วยเหลือเรื่อง', 'موضوع مدد', 'विषय मदद', 'agitur salus', 'bantuan subjek', '件名ヘルプ', '주제 도움'),
(23, 'subject', 'subject', 'বিষয়', 'sujeto', 'موضوع', 'onderwerp', 'тема', '主题', 'konu', 'assunto', 'tárgy', 'sujet', 'θέμα', 'Thema', 'soggetto', 'เรื่อง', 'موضوع', 'विषय', 'agitur', 'subyek', 'テーマ', '제목'),
(24, 'class_help', 'class help', 'বর্গ সাহায্য', 'clase de ayuda', 'الطبقة مساعدة', 'klasse hulp', 'Класс помощь', '类的帮助', 'sınıf yardım', 'classe ajuda', 'osztály segítségével', 'aide de la classe', 'Κατηγορία βοήθεια', 'Klasse Hilfe', 'help classe', 'ความช่วยเหลือในชั้นเรียน', 'کلاس مدد', 'कक्षा मदद', 'genus auxilii', 'kelas bantuan', 'クラスのヘルプ', '클래스 도움'),
(25, 'class', 'class', 'বর্গ', 'clase', 'فئة', 'klasse', 'класс', '类', 'sınıf', 'classe', 'osztály', 'classe', 'κατηγορία', 'Klasse', 'classe', 'ชั้น', 'کلاس', 'वर्ग', 'class', 'kelas', 'クラス', '클래스'),
(26, 'exam_help', 'exam help', 'পরীক্ষায় সাহায্য', 'ayuda examen', 'امتحان مساعدة', 'examen hulp', 'Экзамен помощь', '考试帮助', 'sınav yardım', 'exame ajuda', 'vizsga help', 'aide à l''examen', 'εξετάσεις βοήθεια', 'Prüfung Hilfe', 'esame di guida', 'การสอบความช่วยเหลือ', 'امتحان مدد', 'परीक्षा मदद', 'ipsum Auxilium', 'ujian bantuan', '試験ヘルプ', '시험에 도움'),
(27, 'exam', 'exam', 'পরীক্ষা', 'examen', 'امتحان', 'tentamen', 'экзамен', '考试', 'sınav', 'exame', 'vizsgálat', 'exam', 'εξέταση', 'Prüfung', 'esame', 'การสอบ', 'امتحان', 'परीक्षा', 'Lorem ipsum', 'ujian', '試験', '시험'),
(28, 'marks_help', 'marks help', 'চিহ্ন সাহায্য', 'marcas ayudan', 'علامات مساعدة', 'markeringen helpen', 'метки помогают', '标记帮助', 'işaretleri yardım', 'marcas ajudar', 'jelek segítenek', 'marques aident', 'σήματα βοηθήσει', 'Markierungen helfen', 'segni aiutano', 'เครื่องหมายช่วย', 'نمبر مدد', 'निशान मदद', 'notas auxilio', 'tanda membantu', 'マークのヘルプ', '마크는 데 도움이'),
(29, 'marks-attendance', 'marks-attendance', 'চিহ্ন-উপস্থিতির', 'marcas-asistencia', 'علامات-الحضور', 'merken-deelname', 'знаки-посещаемости', '标记缺席', 'işaretleri-katılım', 'marcas de comparecimento', 'jelek-ellátás', 'marques-participation', 'σήματα προσέλευση', 'Marken-Teilnahme', 'marchi-presenze', 'เครื่องหมายการเข้าร่วม', 'نمبر حاضری', 'निशान उपस्थिति', 'signa eius ministrabant,', 'tanda-pertemuan', 'マーク·出席', '마크 출석'),
(30, 'grade_help', 'grade help', 'গ্রেড সাহায্য', 'ayuda de grado', 'مساعدة الصف', 'leerjaar hulp', 'оценка помощь', '级帮助', 'sınıf yardım', 'ajuda grau', 'fokozat help', 'aide de qualité', 'βαθμού βοήθεια', 'Grade-Hilfe', 'aiuto grade', 'ช่วยเหลือเกรด', 'گریڈ مدد', 'ग्रेड मदद', 'gradus ope', 'kelas bantuan', 'グレードのヘルプ', '급 도움'),
(31, 'exam-grade', 'exam-grade', 'পরীক্ষার শ্রেণী', 'examen de grado', 'امتحان الصف', 'examen-grade', 'экзамен класса', '考试级别', 'sınav notu', 'exame de grau', 'vizsga-grade', 'examen de qualité', 'εξετάσεις ποιότητας', 'Prüfung-Grade', 'esami-grade', 'สอบเกรด', 'امتحان گریڈ', 'परीक्षा ग्रेड', 'ipsum turpis,', 'ujian-grade', '試験グレード', '시험 등급'),
(32, 'class_routine_help', 'class routine help', 'ক্লাসের রুটিন সাহায্য', 'clase ayuda rutina', 'الطبقة مساعدة روتينية', 'klasroutine hulp', 'класс рутина помощь', '类常规帮助', 'sınıf rutin yardım', 'classe ajuda rotina', 'osztály rutin segít', 'classe aide routine', 'κατηγορία ρουτίνας βοήθεια', 'Klasse Routine Hilfe', 'Classe aiuto di routine', 'ระดับความช่วยเหลือตามปกติ', 'کلاس معمول مدد', 'वर्ग दिनचर्या मदद', 'uno genere auxilium', 'kelas bantuan rutin', 'クラスルーチンのヘルプ', '클래스 루틴 도움'),
(33, 'class_routine', 'class routine', 'ক্লাসের রুটিন', 'rutina de la clase', 'فئة الروتينية', 'klasroutine', 'класс подпрограмм', '常规类', 'sınıf rutin', 'rotina classe', 'osztály rutin', 'routine de classe', 'Κατηγορία ρουτίνα', 'Klasse Routine', 'classe di routine', 'ประจำชั้น', 'کلاس معمول', 'वर्ग दिनचर्या', 'in genere uno,', 'rutin kelas', 'クラス·ルーチン', '클래스 루틴'),
(34, 'invoice_help', 'invoice help', 'চালান সাহায্য', 'ayuda factura', 'مساعدة الفاتورة', 'factuur hulp', 'счет-фактура помощь', '发票帮助', 'fatura yardım', 'ajuda factura', 'számla segítségével', 'aide facture', 'τιμολόγιο βοήθεια', 'Rechnungs Hilfe', 'help fattura', 'ช่วยเหลือใบแจ้งหนี้', 'انوائس مدد', 'चालान सहायता', 'auxilium cautionem', 'bantuan faktur', '送り状ヘルプ', '송장 도움'),
(35, 'payment', 'payment', 'প্রদান', 'pago', 'دفع', 'betaling', 'оплата', '付款', 'ödeme', 'pagamento', 'fizetés', 'paiement', 'πληρωμή', 'Zahlung', 'pagamento', 'การชำระเงิน', 'ادائیگی', 'भुगतान', 'pecunia', 'pembayaran', '支払い', '지불'),
(36, 'book_help', 'book help', 'বইয়ের সাহায্য', 'libro de ayuda', 'كتاب المساعدة', 'boek hulp', 'Книга помощь', '本书帮助', 'kitap yardımı', 'livro ajuda', 'könyv segít', 'livre aide', 'βοήθεια του βιβλίου', 'Buch-Hilfe', 'della guida', 'ช่วยเหลือหนังสือ', 'کتاب مدد', 'पुस्तक मदद', 'auxilium libro,', 'Buku bantuan', 'ブックのヘルプ', '책 도움말'),
(37, 'library', 'library', 'লাইব্রেরি', 'biblioteca', 'مكتبة', 'bibliotheek', 'библиотека', '文库', 'kütüphane', 'biblioteca', 'könyvtár', 'bibliothèque', 'βιβλιοθήκη', 'Bibliothek', 'biblioteca', 'ห้องสมุด', 'لائبریری', 'पुस्तकालय', 'library', 'perpustakaan', '図書館', '도서관'),
(38, 'transport_help', 'transport help', 'যানবাহনের সাহায্য', 'ayuda de transporte', 'مساعدة النقل', 'vervoer help', 'транспорт помощь', '运输帮助', 'ulaşım yardım', 'ajuda de transporte', 'szállítás Súgó', 'le transport de l''aide', 'βοηθούν τη μεταφορά', 'Transport Hilfe', 'help trasporti', 'ช่วยเหลือการขนส่ง', 'نقل و حمل مدد', 'परिवहन मदद', 'auxilium onerariis', 'transportasi bantuan', '輸送のヘルプ', '전송 도움'),
(39, 'transport', 'transport', 'পরিবহন', 'transporte', 'نقل', 'vervoer', 'транспорт', '运输', 'taşıma', 'transporte', 'szállítás', 'transport', 'μεταφορά', 'Transport', 'trasporto', 'การขนส่ง', 'نقل و حمل', 'परिवहन', 'onerariis', 'angkutan', '輸送', '수송'),
(40, 'dormitory_help', 'dormitory help', 'আস্তানা সাহায্য', 'dormitorio de ayuda', 'عنبر المساعدة', 'slaapzaal hulp', 'общежитие помощь', '宿舍帮助', 'yatakhane yardım', 'dormitório ajuda', 'kollégiumi help', 'dortoir aide', 'κοιτώνα βοήθεια', 'Wohnheim Hilfe', 'dormitorio aiuto', 'หอพักช่วยเหลือ', 'شیناگار مدد', 'छात्रावास मदद', 'dormitorium auxilium', 'asrama bantuan', '寮のヘルプ', '기숙사 도움말'),
(41, 'dormitory', 'dormitory', 'শ্রমিক - আস্তানা', 'dormitorio', 'المهجع', 'slaapzaal', 'спальня', '宿舍', 'yatakhane', 'dormitório', 'hálóterem', 'dortoir', 'κοιτώνα', 'Wohnheim', 'dormitorio', 'หอพัก', 'شیناگار', 'छात्रावास', 'dormitorium', 'asrama mahasiswa', '寮', '기숙사'),
(42, 'noticeboard_help', 'noticeboard help', 'নোটিশবোর্ড সাহায্য', 'tablón de anuncios de la ayuda', 'اللافتة مساعدة', 'prikbord hulp', 'доска для объявлений помощь', '布告帮助', 'noticeboard yardım', 'avisos ajuda', 'üzenőfalán help', 'panneau d''aide', 'ανακοινώσεων βοήθεια', 'Brett-Hilfe', 'bacheca aiuto', 'ป้ายประกาศความช่วยเหลือ', 'noticeboard مدد', 'Noticeboard मदद', 'auxilium noticeboard', 'pengumuman bantuan', '伝言板のヘルプ', '의 noticeboard 도움말'),
(43, 'noticeboard-event', 'noticeboard-event', 'নোটিশবোর্ড-ইভেন্ট', 'tablón de anuncios de eventos', 'اللافتة الحدث', 'prikbord-event', 'доска для объявлений-событие', '布告牌事件', 'noticeboard olay', 'avisos de eventos', 'üzenőfalán esemény', 'panneau d''événement', 'ανακοινώσεων εκδήλωση', 'Brett-Ereignis', 'bacheca-evento', 'ป้ายประกาศของเหตุการณ์', 'noticeboard ایونٹ', 'Noticeboard घटना', 'noticeboard eventus,', 'pengumuman-acara', '伝言板イベント', '의 noticeboard 이벤트'),
(44, 'bed_ward_help', 'bed ward help', 'বিছানা ওয়ার্ড সাহায্য', 'cama ward ayuda', 'جناح سرير المساعدة', 'bed ward hulp', 'кровать подопечный помощь', '床病房的帮助', 'yatak koğuş yardım', 'ajuda cama enfermaria', 'ágy Ward help', 'lit salle de l''aide', 'κρεβάτι πτέρυγα βοήθεια', 'Betten-Station Hilfe', 'Letto reparto aiuto', 'วอร์ดเตียงช่วยเหลือ', 'بستر وارڈ مدد', 'बिस्तर वार्ड मदद', 'lectum stans auxilium', 'tidur bangsal bantuan', 'ベッド病棟のヘルプ', '침대 병동 도움'),
(45, 'settings', 'settings', 'সেটিংস', 'configuración', 'إعدادات', 'instellingen', 'настройки', '设置', 'ayarları', 'definições', 'beállítások', 'paramètres', 'Ρυθμίσεις', 'Einstellungen', 'Impostazioni', 'การตั้งค่า', 'ترتیبات', 'सेटिंग्स', 'occasus', 'Pengaturan', '設定', '설정'),
(46, 'system_settings', 'system settings', 'সিস্টেম সেটিংস', 'configuración del sistema', 'إعدادات النظام', 'systeeminstellingen', 'настройки системы', '系统设置', 'sistem ayarları', 'configurações do sistema', 'rendszerbeállításokat', 'les paramètres du système', 'ρυθμίσεις του συστήματος', 'Systemeinstellungen', 'impostazioni di sistema', 'การตั้งค่าระบบ', 'نظام کی ترتیبات', 'प्रणाली सेटिंग्स', 'ratio occasus', 'pengaturan sistem', 'システム設定', '시스템 설정'),
(47, 'manage_language', 'manage language', 'ভাষা ও পরিচালনা', 'gestionar idioma', 'إدارة اللغة', 'beheren taal', 'управлять язык', '管理语言', 'dil yönetmek', 'gerenciar língua', 'kezelni nyelv', 'gérer langue', 'διαχείριση γλώσσα', 'verwalten Sprache', 'gestire lingua', 'จัดการภาษา', 'زبان کا انتظام', 'भाषा का प्रबंधन', 'moderari linguam,', 'mengelola bahasa', '言語を管理', '언어를 관리'),
(48, 'backup_restore', 'backup restore', 'ব্যাকআপ পুনঃস্থাপন', 'copia de seguridad a restaurar', 'استعادة النسخ الاحتياطي', 'backup terugzetten', 'восстановить резервного копирования', '备份还原', 'yedekleme geri', 'de backup restaurar', 'Backup Restore', 'restauration de sauvegarde', 'επαναφοράς αντιγράφων ασφαλείας', 'Backup wiederherstellen', 'ripristino di backup', 'การสำรองข้อมูลเรียกคืน', 'بیک اپ بحال', 'बैकअप बहाल', 'tergum restituunt', 'backup restore', 'バックアップは、リストア', '백업 복원'),
(49, 'profile_help', 'profile help', 'সাহায্য প্রোফাইল', 'Perfil Ayuda', 'ملف المساعدة', 'profile hulp', 'анкета помощь', '简介帮助', 'yardım profile', 'Perfil ajuda', 'profile help', 'profil aide', 'προφίλ βοήθεια', 'Profil Hilfe', 'profilo di aiuto', 'โปรไฟล์ความช่วยเหลือ', 'مدد پروفائل', 'प्रोफाइल में', 'Auctor nullam opem', 'Profil bantuan', 'プロフィールヘルプ', '도움 프로필'),
(50, 'manage_student', 'manage student', 'শিক্ষার্থী ও পরিচালনা', 'gestionar estudiante', 'إدارة الطلبة', 'beheren student', 'управлять студента', '管理学生', 'öğrenci yönetmek', 'gerenciar estudante', 'kezelni diák', 'gérer étudiant', 'διαχείριση των φοιτητών', 'Schüler verwalten', 'gestire studente', 'การจัดการศึกษา', 'طالب علم کا انتظام', 'छात्र का प्रबंधन', 'curo alumnorum', 'mengelola siswa', '生徒を管理', '학생 관리'),
(51, 'manage_teacher', 'manage teacher', 'শিক্ষক ও পরিচালনা', 'gestionar maestro', 'إدارة المعلم', 'beheren leraar', 'управлять учителя', '管理老师', 'öğretmen yönetmek', 'gerenciar professor', 'kezelni tanár', 'gérer enseignant', 'διαχείριση των εκπαιδευτικών', 'Lehrer verwalten', 'gestire insegnante', 'จัดการครู', 'ٹیچر کا انتظام', 'शिक्षक का प्रबंधन', 'magister curo', 'mengelola guru', '教師を管理', '교사 관리'),
(52, 'noticeboard', 'noticeboard', 'নোটিশবোর্ড', 'tablón de anuncios', 'اللافتة', 'prikbord', 'доска для объявлений', '布告', 'noticeboard', 'quadro de avisos', 'üzenőfalán', 'panneau d''affichage', 'ανακοινώσεων', 'Brett', 'bacheca', 'ป้ายประกาศ', 'noticeboard', 'Noticeboard', 'noticeboard', 'pengumuman', '伝言板', '의 noticeboard'),
(53, 'language', 'language', 'ভাষা', 'idioma', 'لغة', 'taal', 'язык', '语', 'dil', 'língua', 'nyelv', 'langue', 'γλώσσα', 'Sprache', 'lingua', 'ภาษา', 'زبان', 'भाषा', 'Lingua', 'bahasa', '言語', '언어'),
(54, 'backup', 'backup', 'ব্যাকআপ', 'reserva', 'دعم', 'reservekopie', 'резервный', '备用', 'yedek', 'backup', 'mentés', 'sauvegarde', 'εφεδρικός', 'Sicherungskopie', 'di riserva', 'การสำรองข้อมูล', 'بیک اپ', 'बैकअप', 'tergum', 'backup', 'バックアップ', '지원'),
(55, 'calendar_schedule', 'calendar schedule', 'ক্যালেন্ডার সময়সূচী', 'horario de calendario', 'الجدول الزمني', 'kalender schema', 'Календарь Расписание', '日历日程', 'takvim programı', 'agenda calendário', 'naptári ütemezés', 'calendrier calendrier', 'χρονοδιαγράμματος του ημερολογίου', 'Kalender Zeitplan', 'programma di calendario', 'ปฏิทินตารางนัดหมาย', 'کیلنڈر شیڈول', 'कैलेंडर अनुसूची', 'kalendarium ipsum', 'jadwal kalender', 'カレンダーのスケジュール', '캘린더 일정'),
(56, 'select_a_class', 'select a class', 'একটি শ্রেণী নির্বাচন', 'seleccionar una clase', 'حدد فئة', 'selecteer een class', 'выберите класс', '选择一个类', 'bir sınıf seçin', 'selecionar uma classe', 'válasszon ki egy osztályt', 'sélectionner une classe', 'επιλέξτε μια κατηγορία', 'Wählen Sie eine Klasse', 'selezionare una classe', 'เลือกชั้น', 'ایک کلاس منتخب کریں', 'एक वर्ग का चयन करें', 'eligere genus', 'pilih kelas', 'クラスを選択', '클래스를 선택'),
(57, 'student_list', 'student list', 'শিক্ষার্থীর তালিকা', 'lista de alumnos', 'قائمة الطلاب', 'student lijst', 'Список студент', '学生名单', 'öğrenci listesi', 'lista de alunos', 'diák lista', 'liste des étudiants', 'κατάλογο των φοιτητών', 'Schülerliste', 'elenco degli studenti', 'รายชื่อนักเรียน', 'طالب علم کی فہرست', 'छात्र सूची', 'Discipulus album', 'daftar mahasiswa', '学生のリスト', '학생 목록'),
(58, 'add_student', 'add student', 'ছাত্র যোগ', 'añadir estudiante', 'إضافة طالب', 'voeg student', 'добавить студента', '新增学生', 'öğrenci eklemek', 'adicionar estudante', 'hozzá hallgató', 'ajouter étudiant', 'προσθέστε φοιτητής', 'Student hinzufügen', 'aggiungere studente', 'เพิ่มนักเรียน', 'طالب علم شامل', 'छात्र जोड़', 'adde elit', 'menambahkan mahasiswa', '学生を追加', '학생을 추가'),
(59, 'roll', 'roll', 'রোল', 'rollo', 'لفة', 'broodje', 'рулон', '滚', 'rulo', 'rolo', 'tekercs', 'rouleau', 'ρολό', 'Rolle', 'rotolo', 'ม้วน', 'رول', 'रोल', 'volumen', 'gulungan', 'ロール', '롤'),
(60, 'photo', 'photo', 'ছবি', 'foto', 'صور', 'foto', 'фото', '照片', 'fotoğraf', 'foto', 'fénykép', 'photo', 'φωτογραφία', 'Foto', 'foto', 'ภาพถ่าย', 'تصویر', 'फ़ोटो', 'Lorem ipsum', 'foto', '写真', '사진'),
(61, 'student_name', 'student name', 'শিক্ষার্থীর নাম', 'Nombre del estudiante', 'اسم الطالب', 'naam van de leerling', 'Имя студента', '学生姓名', 'Öğrenci adı', 'nome do aluno', 'tanuló nevét', 'nom de l''étudiant', 'το όνομα του μαθητή', 'Studentennamen', 'nome dello studente', 'ชื่อนักเรียน', 'طالب علم کے نام', 'छात्र का नाम', 'ipsum est nomen', 'nama siswa', '学生の名前', '학생의 이름'),
(62, 'address', 'address', 'ঠিকানা', 'dirección', 'عنوان', 'adres', 'адрес', '地址', 'adres', 'endereço', 'cím', 'adresse', 'διεύθυνση', 'Adresse', 'indirizzo', 'ที่อยู่', 'ایڈریس', 'पता', 'Oratio', 'alamat', 'アドレス', '주소'),
(63, 'options', 'options', 'অপশন', 'Opciones', 'خيارات', 'opties', 'опции', '选项', 'seçenekleri', 'opções', 'lehetőségek', 'les options', 'Επιλογές', 'Optionen', 'Opzioni', 'ตัวเลือก', 'اختیارات', 'विकल्प', 'options', 'Pilihan', 'オプション', '옵션'),
(64, 'marksheet', 'marksheet', 'marksheet', 'marksheet', 'marksheet', 'Marksheet', 'marksheet', 'marksheet', 'Marksheet', 'marksheet', 'Marksheet', 'relevé de notes', 'Marksheet', 'marksheet', 'Marksheet', 'marksheet', 'marksheet', 'अंकपत्र', 'marksheet', 'marksheet', 'marksheet', 'marksheet'),
(65, 'id_card', 'id card', 'আইডি কার্ড', 'carnet de identidad', 'بطاقة الهوية', 'id-kaart', 'удостоверение личности', '身份证', 'kimlik kartı', 'carteira de identidade', 'személyi igazolvány', 'carte d''identité', 'id κάρτα', 'Ausweis', 'carta d''identità', 'บัตรประชาชน', 'شناختی کارڈ', 'औ डी कार्ड', 'id ipsum', 'id card', 'IDカード', '신분증'),
(66, 'edit', 'edit', 'সম্পাদন করা', 'editar', 'تحرير', 'uitgeven', 'редактировать', '编辑', 'düzenleme', 'editar', 'szerkeszt', 'modifier', 'edit', 'bearbeiten', 'modifica', 'แก้ไข', 'میں ترمیم کریں', 'संपादित करें', 'edit', 'mengedit', '編集', '편집'),
(67, 'delete', 'delete', 'মুছে ফেলা', 'borrar', 'حذف', 'verwijderen', 'удалять', '删除', 'silmek', 'excluir', 'töröl', 'effacer', 'διαγραφή', 'löschen', 'cancellare', 'ลบ', 'خارج', 'हटाना', 'vel deleri,', 'menghapus', '削除する', '삭제'),
(68, 'personal_profile', 'personal profile', 'ব্যক্তিগত প্রোফাইল', 'perfil personal', 'ملف شخصي', 'persoonlijk profiel', 'личный профиль', '个人简介', 'kişisel profil', 'perfil pessoal', 'személyes profil', 'profil personnel', 'προσωπικό προφίλ', 'persönliches Profil', 'profilo personale', 'รายละเอียดข้อมูลส่วนตัว', 'ذاتی پروفائل', 'व्यक्तिगत प्रोफाइल', 'personal profile', 'profil pribadi', '人物点描', '개인 프로필'),
(69, 'academic_result', 'academic result', 'একাডেমিক ফলাফল', 'resultado académico', 'نتيجة الأكاديمية', 'academische resultaat', 'академический результат', '学术成果', 'akademik sonuç', 'resultado acadêmico', 'tudományos eredmény', 'résultat académique', 'ακαδημαϊκή αποτέλεσμα', 'Studienergebnis', 'risultato accademico', 'ผลการศึกษา', 'تعلیمی نتیجہ', 'शैक्षिक परिणाम', 'Ex academicis', 'Hasil akademik', '学術結果', '학습 결​​과'),
(70, 'name', 'name', 'নাম', 'nombre', 'اسم', 'naam', 'название', '名称', 'isim', 'nome', 'név', 'nom', 'όνομα', 'Name', 'nome', 'ชื่อ', 'نام', 'नाम', 'nomen,', 'nama', '名前', '이름'),
(71, 'birthday', 'birthday', 'জন্মদিন', 'cumpleaños', 'عيد ميلاد', 'verjaardag', 'день рождения', '生日', 'doğum günü', 'aniversário', 'születésnap', 'anniversaire', 'γενέθλια', 'Geburtstag', 'compleanno', 'วันเกิด', 'سالگرہ', 'जन्मदिन', 'natalis', 'ulang tahun', '誕生日', '생일'),
(72, 'sex', 'sex', 'লিঙ্গ', 'sexo', 'جنس', 'seks', 'секс', '性别', 'seks', 'sexo', 'szex', 'sexe', 'φύλο', 'Sex', 'sesso', 'เพศ', 'جنسی', 'लिंग', 'sex', 'seks', 'セックス', '섹스'),
(73, 'male', 'male', 'পুরুষ', 'masculino', 'ذكر', 'mannelijk', 'мужской', '男性', 'erkek', 'masculino', 'férfi', 'mâle', 'αρσενικός', 'männlich', 'maschio', 'เพศชาย', 'پروفائل', 'नर', 'masculus', 'laki-laki', '男性', '남성'),
(74, 'female', 'female', 'মহিলা', 'femenino', 'أنثى', 'vrouw', 'женский', '女', 'kadın', 'feminino', 'női', 'femelle', 'θηλυκός', 'weiblich', 'femminile', 'เพศหญิง', 'خواتین', 'महिला', 'femina,', 'perempuan', '女性', '여성'),
(75, 'religion', 'religion', 'ধর্ম', 'religión', 'دين', 'religie', 'религия', '宗教', 'din', 'religião', 'vallás', 'religion', 'θρησκεία', 'Religion', 'religione', 'ศาสนา', 'مذہب', 'धर्म', 'religionis,', 'agama', '宗教', '종교'),
(76, 'blood_group', 'blood group', 'রক্তের বিভাগ', 'grupo sanguíneo', 'فصيلة الدم', 'bloedgroep', 'группа крови', '血型', 'kan grubu', 'grupo sanguíneo', 'vércsoport', 'groupe sanguin', 'ομάδα αίματος', 'Blutgruppe', 'gruppo sanguigno', 'กรุ๊ปเลือด', 'خون کے گروپ', 'रक्त वर्ग', 'sanguine coetus', 'golongan darah', '血液型', '혈액형'),
(77, 'phone', 'phone', 'ফোন', 'teléfono', 'هاتف', 'telefoon', 'телефон', '电话', 'telefon', 'telefone', 'telefon', 'téléphone', 'τηλέφωνο', 'Telefon', 'telefono', 'โทรศัพท์', 'فون', 'फ़ोन', 'Praesent', 'telepon', '電話', '전화'),
(78, 'father_name', 'father name', 'পিতার নাম', 'Nombre del padre', 'اسم الأب', 'naam van de vader', 'отчество', '父亲姓名', 'baba adı', 'nome pai', 'apa név', 'nom de père', 'Το όνομα του πατέρα', 'Der Name des Vaters', 'nome del padre', 'ชื่อพ่อ', 'والد کا نام', 'पिता का नाम', 'nomine Patris,', 'Nama ayah', '父親の名前', '아버지의 이름'),
(79, 'mother_name', 'mother name', 'মায়ের নাম', 'Nombre de la madre', 'اسم الأم', 'moeder naam', 'Имя матери', '母亲的名字', 'anne adı', 'Nome mãe', 'anyja név', 'nom de la mère', 'το όνομα της μητέρας', 'Name der Mutter', 'Nome madre', 'ชื่อแม่', 'ماں کا نام', 'माता का नाम', 'matris nomen,', 'Nama ibu', '母の名前', '어머니 이름'),
(80, 'edit_student', 'edit student', 'সম্পাদনা ছাত্র', 'edit estudiante', 'تحرير الطالب', 'bewerk student', 'редактирования студент', '编辑学生', 'edit öğrenci', 'edição aluno', 'szerkesztés diák', 'modifier étudiant', 'επεξεργασία των φοιτητών', 'Schüler bearbeiten', 'modifica dello studente', 'แก้ไขนักเรียน', 'ترمیم کے طالب علم', 'संपादित छात्र', 'edit studiosum', 'mengedit siswa', '編集学生', '편집 학생'),
(81, 'teacher_list', 'teacher list', 'শিক্ষক তালিকা', 'lista maestra', 'قائمة المعلم', 'leraar lijst', 'Список учителей', '老师名单', 'öğretmen listesi', 'lista de professores', 'tanár lista', 'Liste des enseignants', 'Λίστα των εκπαιδευτικών', 'Lehrer-Liste', 'elenco degli insegnanti', 'รายชื่อครู', 'استاد فہرست', 'शिक्षक सूची', 'magister album', 'daftar guru', '教員リスト', '교사의 목록'),
(82, 'add_teacher', 'add teacher', 'শিক্ষক যোগ', 'añadir profesor', 'إضافة المعلم', 'voeg leraar', 'добавить учителя', '加上老师', 'öğretmen ekle', 'adicionar professor', 'hozzá tanár', 'ajouter enseignant', 'προσθέστε δάσκαλος', 'Lehrer hinzufügen', 'aggiungere insegnante', 'เพิ่มครู', 'استاد شامل', 'शिक्षक जोड़', 'Magister addit', 'menambah guru', '先生を追加', '교사를 추가'),
(83, 'teacher_name', 'teacher name', 'শিক্ষক নাম', 'Nombre del profesor', 'اسم المعلم', 'leraarsnaam', 'Имя учителя', '老师姓名', 'öğretmen adı', 'nome professor', 'tanár név', 'nom des enseignants', 'όνομα των εκπαιδευτικών', 'Lehrer Name', 'Nome del docente', 'ชื่อครู', 'استاد کا نام', 'शिक्षक का नाम', 'magister nomine', 'nama guru', '教員名', '교사 이름'),
(84, 'edit_teacher', 'edit teacher', 'সম্পাদনা শিক্ষক', 'edit maestro', 'تحرير المعلم', 'leraar bewerken', 'править учитель', '编辑老师', 'edit öğretmen', 'editar professor', 'szerkesztés tanár', 'modifier enseignant', 'edit εκπαιδευτικών', 'edit Lehrer', 'modifica insegnante', 'แก้ไขครู', 'ترمیم استاد', 'संपादित करें शिक्षक', 'edit magister', 'mengedit guru', '編集の先生', '편집 교사'),
(85, 'manage_parent', 'manage parent', 'অভিভাবক ও পরিচালনা', 'gestionar los padres', 'إدارة الأم', 'beheren ouder', 'управлять родителей', '母公司管理', 'ebeveyn yönetmek', 'gerenciar pai', 'kezelni szülő', 'gérer parent', 'διαχείριση μητρική', 'verwalten Mutter', 'gestione genitore', 'จัดการปกครอง', 'والدین کا انتظام', 'माता - पिता का प्रबंधन', 'curo parent', 'mengelola orang tua', '親を管理', '부모 관리'),
(86, 'parent_list', 'parent list', 'মূল তালিকা', 'lista primaria', 'قائمة الوالد', 'ouder lijst', 'родительского списка', '父列表', 'ebeveyn listesi', 'lista pai', 'szülő lista', 'liste parent', 'μητρική λίστα', 'geordneten Liste', 'elenco padre', 'รายชื่อผู้ปกครอง', 'والدین کی فہرست', 'माता - पिता सूची', 'parente album', 'daftar induk', '親リスト', '상위 목록'),
(87, 'parent_name', 'parent name', 'মূল নাম', 'Nombre del padre', 'اسم الوالد', 'oudernaam', 'родитель название', '父名', 'ebeveyn isim', 'nome do pai', 'szülő név', 'nom du parent', 'μητρικό όνομα', 'Mutternamen', 'nome del padre', 'ชื่อผู้ปกครอง', 'والدین کے نام', 'माता - पिता का नाम', 'Nomen parentis,', 'nama orang tua', '親の名前', '부모 이름'),
(88, 'relation_with_student', 'relation with student', 'ছাত্রদের সঙ্গে সম্পর্ক', 'relación con el estudiante', 'العلاقة مع الطالب', 'relatie met student', 'отношения с учеником', '与学生关系', 'öğrenci ile ilişkisi', 'relação com o aluno', 'kapcsolatban diák', 'relation avec l''élève', 'σχέση με τον μαθητή', 'Zusammenhang mit Studenten', 'rapporto con lo studente', 'ความสัมพันธ์กับนักเรียน', 'طالب علم کے ساتھ تعلق', 'छात्रा के साथ संबंध', 'cum inter ipsum', 'hubungan dengan siswa', '学生との関係', '학생과의 관계'),
(89, 'parent_email', 'parent email', 'মূল ইমেইল', 'correo electrónico de los padres', 'البريد الإلكتروني الأم', 'ouder email', 'родитель письмо', '父母的电子邮件', 'ebeveyn email', 'e-mail dos pais', 'szülő e-mail', 'parent email', 'email του γονέα', 'Eltern per E-Mail', 'email genitore', 'อีเมล์ผู้ปกครอง', 'والدین کا ای میل', 'माता - पिता ईमेल', 'parente email', 'email induk', '親電子メール', '부모의 이메일'),
(90, 'parent_phone', 'parent phone', 'ঊর্ধ্বতন ফোন', 'teléfono de los padres', 'الهاتف الوالدين', 'ouder telefoon', 'родитель телефон', '家长电话', 'ebeveyn telefon', 'telefone dos pais', 'szülő telefon', 'mère de téléphone', 'μητρική τηλέφωνο', 'Elterntelefon', 'telefono genitore', 'โทรศัพท์ของผู้ปกครอง', 'والدین فون', 'माता - पिता को फोन', 'parentis phone', 'telepon orang tua', '親の携帯電話', '부모 전화'),
(91, 'parrent_address', 'parrent address', 'parrent ঠিকানা', 'Dirección Parrent', 'عنوان parrent', 'parrent adres', 'Parrent адрес', 'parrent地址', 'parrent adresi', 'endereço Parrent', 'parrent cím', 'adresse Parrent', 'parrent διεύθυνση', 'parrent Adresse', 'Indirizzo parrent', 'ที่อยู่ parrent', 'parrent ایڈریس', 'parrent पता', 'oratio parrent', 'alamat parrent', 'parrentアドレス', 'parrent 주소'),
(92, 'parrent_occupation', 'parrent occupation', 'parrent বৃত্তি', 'ocupación Parrent', 'الاحتلال parrent', 'parrent bezetting', 'Parrent оккупация', 'parrent职业', 'parrent işgal', 'ocupação Parrent', 'parrent Foglalkozás', 'occupation Parrent', 'parrent επάγγελμα', 'parrent Beruf', 'occupazione parrent', 'อาชีพ parrent', 'parrent قبضے', 'parrent कब्जे', 'opus parrent', 'pendudukan parrent', 'parrent職業', 'parrent 직업'),
(93, 'add', 'add', 'যোগ করা', 'añadir', 'إضافة', 'toevoegen', 'добавлять', '加', 'eklemek', 'adicionar', 'hozzáad', 'ajouter', 'προσθήκη', 'hinzufügen', 'aggiungere', 'เพิ่ม', 'شامل', 'जोड़ना', 'Adde', 'menambahkan', '加える', '추가'),
(94, 'parent_of', 'parent of', 'অভিভাবক', 'matriz de', 'الأم ل', 'ouder van', 'родитель', '父', 'ebeveyn', 'pai', 'szülő', 'parent d''', 'γονέας', 'Muttergesellschaft der', 'madre di', 'ผู้ปกครองของ', 'والدین', 'के माता - पिता', 'parentem,', 'induk dari', 'の親', '의 부모'),
(95, 'profession', 'profession', 'পেশা', 'profesión', 'مهنة', 'beroep', 'профессия', '职业', 'meslek', 'profissão', 'szakma', 'profession', 'επάγγελμα', 'Beruf', 'professione', 'อาชีพ', 'پیشہ', 'व्यवसाय', 'professio', 'profesi', '職業', '직업'),
(96, 'edit_parent', 'edit parent', 'সম্পাদনা ঊর্ধ্বতন', 'edit padres', 'تحرير الوالدين', 'bewerk ouder', 'править родитель', '编辑父', 'edit ebeveyn', 'edição pai', 'szerkesztés szülő', 'modifier parent', 'edit γονέα', 'edit Mutter', 'modifica genitore', 'แก้ไขผู้ปกครอง', 'میں ترمیم کریں والدین', 'संपादित जनक', 'edit parent', 'mengedit induk', '編集親', '편집 부모'),
(97, 'add_parent', 'add parent', 'ঊর্ধ্বতন যোগ', 'añadir los padres', 'إضافة الوالد', 'Voeg een ouder', 'добавить родителя', '添加父', 'ebeveyn ekle', 'adicionar pai', 'hozzá szülő', 'ajouter parent', 'προσθέστε μητρική', 'Mutter hinzufügen', 'aggiungere genitore', 'เพิ่มผู้ปกครอง', 'والدین شامل', 'माता - पिता जोड़', 'adde parent', 'menambahkan orang tua', '親を追加', '부모를 추가'),
(98, 'manage_subject', 'manage subject', 'বিষয় ও পরিচালনা', 'gestionar sujeto', 'إدارة الموضوع', 'beheren onderwerp', 'управлять тему', '管理主题', 'konuyu yönetmek', 'gerenciar assunto', 'kezelni tárgy', 'gérer sujet', 'διαχείριση υπόκειται', 'Thema verwalten', 'gestire i soggetti', 'การจัดการเรื่อง', 'موضوع کا انتظام', 'विषय का प्रबंधन', 'subiectum disponat', 'mengelola subjek', '対象を管理', '대상 관리'),
(99, 'subject_list', 'subject list', 'বিষয় তালিকা', 'lista por materia', 'قائمة الموضوع', 'Onderwerp lijst', 'Список подлежит', '主题列表', 'konu listesi', 'lista por assunto', 'téma lista', 'liste de sujets', 'υπόκεινται λίστα', 'Themenliste', 'lista soggetto', 'รายการเรื่อง', 'موضوع کی فہرست', 'विषय सूची', 'subiectum album', 'daftar subjek', 'サブジェクトリスト', '주제 목록'),
(100, 'add_subject', 'add subject', 'বিষয় যোগ', 'Añadir asunto', 'إضافة الموضوع', 'Onderwerp toevoegen', 'добавить тему', '新增主题', 'konu ekle', 'adicionar assunto', 'Tárgy hozzáadása', 'ajouter l''objet', 'Προσθήκη θέματος', 'Thema hinzufügen', 'aggiungere soggetto', 'เพิ่มเรื่อง', 'موضوع', 'जोड़ें विषय', 're addere', 'menambahkan subjek', '件名を追加', '제목을 추가'),
(101, 'subject_name', 'subject name', 'বিষয় নাম', 'nombre del sujeto', 'اسم الموضوع', 'Onderwerp naam', 'имя субъекта', '主题名称', 'konu adı', 'nome do assunto', 'tárgy megnevezése', 'nom du sujet', 'υπόκεινται όνομα', 'Thema Namen', 'nome del soggetto', 'ชื่อเรื่อง', 'موضوع کے نام', 'विषय का नाम', 'agitur nomine', 'nama subjek', 'サブジェクト名', '주체 이름'),
(102, 'edit_subject', 'edit subject', 'সম্পাদনা বিষয়', 'Editar asunto', 'تحرير الموضوع', 'Onderwerp bewerken', 'Изменить тему', '编辑主题', 'düzenleme konusu', 'Editar assunto', 'Tárgy szerkesztése', 'modifier l''objet', 'edit θέμα', 'Betreff bearbeiten', 'Modifica oggetto', 'แก้ไขเรื่อง', 'موضوع میں ترمیم کریں', 'विषय संपादित करें', 'edit subiecto', 'mengedit subjek', '編集対象', '제목 수정'),
(103, 'manage_class', 'manage class', 'ক্লাস ও পরিচালনা', 'gestionar clase', 'إدارة الصف', 'beheren klasse', 'управлять класс', '管理类', 'sınıf yönetmek', 'gerenciar classe', 'kezelni osztály', 'gérer classe', 'διαχείριση τάξης', 'Klasse verwalten', 'gestione della classe', 'การจัดการชั้นเรียน', 'کلاس کا انتظام', 'वर्ग का प्रबंधन', 'genus regendi', 'mengelola kelas', 'クラスを管理', '클래스에게 관리'),
(104, 'class_list', 'class list', 'বর্গ তালিকা', 'lista de la clase', 'قائمة فئة', 'klasse lijst', 'Список класс', '类列表', 'sınıf listesi', 'lista de classe', 'class lista', 'liste de classe', 'πίνακας αποτελεσμάτων', 'Klassenliste', 'elenco di classe', 'รายการชั้น', 'کلاس فہرست', 'कक्षा सूची', 'genus album', 'daftar kelas', 'クラスリスト', '클래스 목록'),
(105, 'add_class', 'add class', 'ক্লাসে যোগ', 'agregar la clase', 'إضافة فئة', 'voeg klasse', 'добавить класс', '添加类', 'sınıf eklemek', 'adicionar classe', 'hozzá osztály', 'ajouter la classe', 'προσθέσετε τάξη', 'Klasse hinzufügen', 'aggiungere classe', 'เพิ่มระดับ', 'کلاس شامل کریں', 'वर्ग जोड़', 'adde genus', 'menambahkan kelas', 'クラスを追加', '클래스를 추가'),
(106, 'class_name', 'class name', 'শ্রেণীর নাম', 'nombre de la clase', 'اسم الفئة', 'class naam', 'Имя класса', '类名', 'sınıf adı', 'nome da classe', 'osztály neve', 'nom de la classe', 'όνομα της κλάσης', 'Klassennamen', 'nome della classe', 'ชื่อชั้น', 'کلاس نام', 'वर्ग के नाम', 'Classis nomine', 'nama kelas', 'クラス名', '클래스 이름'),
(107, 'numeric_name', 'numeric name', 'সাংখ্যিক নাম', 'nombre numérico', 'اسم رقمية', 'numerieke naam', 'числовое имя', '数字名称', 'Sayısal isim', 'nome numérico', 'numerikus név', 'nom numérique', 'αριθμητικό όνομα', 'numerischen Namen', 'nome numerico', 'ชื่อตัวเลข', 'عددی نام', 'सांख्यिक नाम', 'secundum numerum est secundum nomen,', 'Nama numerik', '数値の名前', '숫자 이름'),
(108, 'name_numeric', 'name numeric', 'সাংখ্যিক নাম দিন', 'nombre numérico', 'تسمية رقمية', 'naam numerieke', 'назвать числовой', '数字命名', 'sayısal isim', 'nome numérico', 'név numerikus', 'nommer numérique', 'όνομα αριθμητικό', 'nennen numerischen', 'nome numerico', 'ชื่อตัวเลข', 'عددی نام', 'सांख्यिक का नाम', 'secundum numerum est secundum nomen,', 'nama numerik', '数値に名前を付ける', '숫자 이름을'),
(109, 'edit_class', 'edit class', 'সম্পাদনা বর্গ', 'clase de edición', 'الطبقة تحرير', 'bewerken klasse', 'править класс', '编辑类', 'sınıf düzenle', 'edição classe', 'szerkesztés osztály', 'modifier la classe', 'edit κατηγορία', 'Klasse bearbeiten', 'modifica della classe', 'แก้ไขระดับ', 'ترمیم کلاس', 'संपादित वर्ग', 'edit genere', 'mengedit kelas', '編集クラス', '편집 클래스'),
(110, 'manage_exam', 'manage exam', 'পরীক্ষা পরিচালনা', 'gestionar examen', 'إدارة الامتحان', 'beheren examen', 'управлять экзамен', '考试管理', 'sınavı yönetmek', 'gerenciar exame', 'kezelni vizsga', 'gérer examen', 'διαχείριση εξετάσεις', 'Prüfung verwalten', 'gestire esame', 'การจัดการสอบ', 'امتحان کا انتظام', 'परीक्षा का प्रबंधन', 'curo ipsum', 'mengelola ujian', '試験を管理', '시험 관리'),
(111, 'exam_list', 'exam list', 'পরীক্ষার তালিকা', 'lista de exámenes', 'قائمة الامتحان', 'examen lijst', 'Список экзамен', '考试名单', 'sınav listesi', 'lista de exames', 'vizsga lista', 'liste d''examen', 'Λίστα εξετάσεις', 'Prüfungsliste', 'elenco esami', 'รายการสอบ', 'امتحان فہرست', 'परीक्षा सूची', 'Lorem ipsum album', 'daftar ujian', '試験のリスト', '시험 목록'),
(112, 'add_exam', 'add exam', 'পরীক্ষার যোগ', 'agregar examen', 'إضافة امتحان', 'voeg examen', 'добавить экзамен', '新增考试', 'sınav eklemek', 'adicionar exame', 'hozzá vizsga', 'ajouter examen', 'προσθέσετε εξετάσεις', 'Prüfung hinzufügen', 'aggiungere esame', 'เพิ่มการสอบ', 'امتحان میں شامل کریں', 'परीक्षा जोड़', 'adde ipsum', 'menambahkan ujian', '試験を追加', '시험에 추가'),
(113, 'exam_name', 'exam name', 'পরীক্ষার নাম', 'nombre del examen', 'اسم الامتحان', 'examen naam', 'Название экзамен', '考试名称', 'sınav adı', 'nome do exame', 'Vizsga neve', 'nom de l''examen', 'Το όνομά εξετάσεις', 'Prüfungsnamen', 'nome dell''esame', 'ชื่อสอบ', 'امتحان کے نام', 'परीक्षा का नाम', 'ipsum nomen,', 'Nama ujian', '試験名', '시험 이름'),
(114, 'date', 'date', 'তারিখ', 'fecha', 'تاريخ', 'datum', 'дата', '日期', 'tarih', 'data', 'dátum', 'date', 'ημερομηνία', 'Datum', 'data', 'วันที่', 'تاریخ', 'तारीख', 'date', 'tanggal', '日付', '날짜'),
(115, 'comment', 'comment', 'মন্তব্য', 'comentario', 'تعليق', 'commentaar', 'комментарий', '评论', 'yorum', 'comentário', 'megjegyzés', 'commentaire', 'σχόλιο', 'Kommentar', 'commento', 'ความเห็น', 'تبصرہ', 'टिप्पणी', 'comment', 'komentar', 'コメント', '논평'),
(116, 'edit_exam', 'edit exam', 'সম্পাদনা পরীক্ষা', 'examen de edición', 'امتحان تحرير', 'bewerk examen', 'править экзамен', '编辑考试', 'edit sınavı', 'edição do exame', 'szerkesztés vizsga', 'modifier examen', 'edit εξετάσεις', 'edit Prüfung', 'modifica esame', 'แก้ไขการสอบ', 'ترمیم امتحان', 'संपादित परीक्षा', 'edit ipsum', 'mengedit ujian', '編集試験', '편집 시험'),
(117, 'manage_exam_marks', 'manage exam marks', 'পরীক্ষা চিহ্ন ও পরিচালনা', 'gestionar marcas de examen', 'إدارة علامات الامتحان', 'beheren examencijfers', 'управлять экзаменационные отметки', '管理考试痕', 'sınav işaretleri yönetmek', 'gerenciar marcas exame', 'kezelni vizsga jelek', 'gérer les marques d''examen', 'διαχείριση των σημάτων εξετάσεις', 'Prüfungsnoten verwalten', 'gestire i voti degli esami', 'จัดการสอบเครื่องหมาย', 'امتحان کے نشانات کا انتظام', 'परीक्षा के निशान का प्रबंधन', 'ipsum curo indicia', 'mengelola nilai ujian', '試験マークを管理', '시험 점수를 관리'),
(118, 'manage_marks', 'manage marks', 'চিহ্ন ও পরিচালনা', 'gestionar marcas', 'إدارة علامات', 'beheren merken', 'управлять знаки', '商标管理', 'işaretleri yönetmek', 'gerenciar marcas', 'kezelni jelek', 'gérer les marques', 'διαχείριση των σημάτων', 'Markierungen verwalten', 'gestire i marchi', 'จัดการเครื่องหมาย', 'نمبروں کا انتظام', 'निशान का प्रबंधन', 'curo indicia', 'mengelola tanda', 'マークを管理', '마크를 관리'),
(119, 'select_exam', 'select exam', 'পরীক্ষার নির্বাচন', 'seleccione examen', 'حدد الامتحان', 'selecteer examen', 'выбрать экзамен', '选择考试', 'sınavı seçin', 'selecionar exame', 'válassza ki a vizsga', 'sélectionnez examen', 'επιλέξτε εξετάσεις', 'Prüfung wählen', 'seleziona esame', 'เลือกสอบ', 'امتحان منتخب کریں', 'परीक्षा का चयन', 'velit ipsum', 'pilih ujian', '受験を選択', '시험을 선택'),
(120, 'select_class', 'select class', 'বর্গ নির্বাচন', 'seleccione clase', 'حدد فئة', 'selecteren klasse', 'выбрать класс', '选择产品类别', 'sınıf seçin', 'selecionar classe', 'válassza osztály', 'sélectionnez classe', 'Επιλέξτε κατηγορία', 'Klasse wählen', 'seleziona classe', 'เลือกชั้น', 'کلاس منتخب کریں', 'वर्ग का चयन करें', 'genus eligere,', 'pilih kelas', 'クラスを選択', '클래스를 선택'),
(121, 'select_subject', 'select subject', 'বিষয় নির্বাচন করুন', 'seleccione tema', 'حدد الموضوع', 'Selecteer onderwerp', 'выберите тему', '选择主题', 'konu seçin', 'selecionar assunto', 'Válassza a Tárgy', 'sélectionner le sujet', 'επιλέξτε θέμα', 'Thema wählen', 'seleziona argomento', 'เลือกเรื่อง', 'موضوع منتخب کریں', 'विषय का चयन', 'eligere subditos', 'pilih subjek', '件名を選択', '주제를 선택'),
(122, 'select_an_exam', 'select an exam', 'একটি পরীক্ষা নির্বাচন', 'seleccione un examen', 'حدد الامتحان', 'selecteer een examen', 'выбрать экзамен', '选择考试', 'Bir sınav seçin', 'selecionar um exame', 'válasszon ki egy vizsga', 'sélectionner un examen', 'επιλέξτε μια εξέταση', 'Wählen Sie eine Prüfung', 'selezionare un esame', 'เลือกสอบ', 'امتحان منتخب کریں', 'एक परीक्षा का चयन', 'Eligebatur autem ipsum', 'pilih ujian', '受験を選択', '시험을 선택'),
(123, 'mark_obtained', 'mark obtained', 'চিহ্নিত প্রাপ্ত', 'calificación obtenida', 'بمناسبة الحصول على', 'markeren verkregen', 'отметить получены', '获得标', 'işaretlemek elde', 'marca obtida', 'jelölje kapott', 'marquer obtenu', 'σήμα που λαμβάνεται', 'Markieren Sie erhalten', 'contrassegnare ottenuto', 'ทำเครื่องหมายที่ได้รับ', 'نشان زد حاصل', 'अंक प्राप्त', 'attende obtinuit', 'menandai diperoleh', 'マークが得', '마크 획득'),
(124, 'attendance', 'attendance', 'উপস্থিতি', 'asistencia', 'الحضور', 'opkomst', 'посещаемость', '护理', 'katılım', 'comparecimento', 'részvétel', 'présence', 'παρουσία', 'Teilnahme', 'partecipazione', 'การดูแลรักษา', 'حاضری', 'उपस्थिति', 'auscultant', 'kehadiran', '出席', '출석'),
(125, 'manage_grade', 'manage grade', 'গ্রেড পরিচালনা', 'gestión de calidad', 'إدارة الصف', 'beheren leerjaar', 'управлять класс', '管理级', 'notu yönetmek', 'gerenciar grau', 'kezelni fokozat', 'gérer de qualité', 'διαχείριση ποιότητας', 'Klasse verwalten', 'gestione grade', 'จัดการเกรด', 'گریڈ کا انتظام', 'ग्रेड का प्रबंधन', 'moderari gradu', 'mengelola kelas', 'グレードを管理', '등급 관리'),
(126, 'grade_list', 'grade list', 'গ্রেড তালিকা', 'Lista de grado', 'قائمة الصف', 'cijferlijst', 'Список класса', '等级列表', 'sınıf listesi', 'lista grau', 'fokozat lista', 'liste de qualité', 'Λίστα βαθμού', 'Notenliste', 'elenco grade', 'รายการเกรด', 'گریڈ فہرست', 'ग्रेड की सूची', 'gradus album', 'daftar kelas', 'グレード一覧', '등급 목록'),
(127, 'add_grade', 'add grade', 'গ্রেড যোগ করুন', 'añadir grado', 'إضافة الصف', 'voeg leerjaar', 'добавить класс', '添加级', 'not eklemek', 'adicionar grau', 'hozzá fokozat', 'ajouter note', 'προσθήκη βαθμού', 'Klasse hinzufügen', 'aggiungere grade', 'เพิ่มเกรด', 'گریڈ میں شامل کریں', 'ग्रेड जोड़', 'adde gradum,', 'menambahkan kelas', 'グレードを追加', '등급을 추가'),
(128, 'grade_name', 'grade name', 'গ্রেড নাম', 'Nombre de grado', 'اسم الصف', 'rangnaam', 'Название сорта', '等级名称', 'sınıf adı', 'nome da classe', 'fokozat név', 'nom de la catégorie', 'Όνομα βαθμού', 'Klasse Name', 'nome del grado', 'ชื่อชั้น', 'گریڈ نام', 'ग्रेड का नाम', 'nomen, gradus,', 'nama kelas', 'グレード名', '등급 이름'),
(129, 'grade_point', 'grade point', 'গ্রেড পয়েন্ট', 'de calificaciones', 'تراكمي', 'rangpunt', 'балл', '成绩', 'not', 'ponto de classe', 'fokozatú pont', 'cumulative', 'βαθμών', 'Noten', 'punto di grado', 'จุดเกรด', 'گریڈ پوائنٹ', 'ग्रेड बिंदु', 'gradus punctum', 'indeks prestasi', '成績評価点', '학점'),
(130, 'mark_from', 'mark from', 'চিহ্ন থেকে', 'marca de', 'علامة من', 'mark uit', 'знак от', '从商标', 'mark dan', 'marca de', 'jelölést', 'marque de', 'σήμα από', 'Marke aus', 'segno da', 'เครื่องหมายจาก', 'نشان سے', 'मार्क से', 'marcam', 'mark dari', 'マークから', '표에서'),
(131, 'mark_upto', 'mark upto', 'পর্যন্ত চিহ্নিত', 'marcar hasta', 'بمناسبة تصل', 'mark tot', 'отметить ДО', '高达标记', 'kadar işaretlemek', 'marcar até', 'jelölje upto', 'marquer jusqu''à', 'σήμα μέχρι', 'Markieren Sie bis zu', 'contrassegnare fino a', 'ทำเครื่องหมายเกิน', 'تک کے موقع', 'तक चिह्नित', 'Genitus est notare', 'menandai upto', '点で最大マーク', '표까지'),
(132, 'edit_grade', 'edit grade', 'সম্পাদনা গ্রেড', 'edit grado', 'تحرير الصف', 'Cijfer bewerken', 'править класса', '编辑等级', 'edit notu', 'edição grau', 'szerkesztés fokozat', 'edit qualité', 'edit βαθμού', 'edit Grad', 'modifica grade', 'แก้ไขเกรด', 'ترمیم گریڈ', 'संपादित ग्रेड', 'edit gradu', 'mengedit kelas', '編集グレード', '편집 등급'),
(133, 'manage_class_routine', 'manage class routine', 'ক্লাসের রুটিন পরিচালনা', 'gestionar rutina de la clase', 'إدارة الطبقة الروتينية', 'beheren klasroutine', 'управлять рутину класса', '管理类常规', 'sınıf rutin yönetmek', 'gerenciar rotina classe', 'kezelni class rutin', 'gérer la routine de classe', 'διαχειρίζονται τάξη ρουτίνα', 'verwalten Klasse Routine', 'gestione classe di routine', 'การจัดการชั้นเรียนตามปกติ', 'کلاس معمول کا انتظام', 'वर्ग दिनचर्या का प्रबंधन', 'uno in genere tractare', 'mengelola rutinitas kelas', 'クラスルーチンを管理', '수준의 일상적인 관리'),
(134, 'class_routine_list', 'class routine list', 'ক্লাসের রুটিন তালিকা', 'clase de lista de rutina', 'قائمة الروتينية الطبقة', 'klasroutine lijst', 'класс рутина список', '班级常规列表', 'sınıf rutin listesi', 'classe de lista de rotina', 'osztály rutin lista', 'classe liste routine', 'κλάση list ρουτίνας', 'Klasse Routine Liste', 'classe lista di routine', 'รายการประจำชั้น', 'کلاس معمول کے مطابق فہرست', 'वर्ग दिनचर्या सूची', 'uno genere album', 'Daftar rutin kelas', 'クラスルーチン一覧', '클래스 루틴 목록'),
(135, 'add_class_routine', 'add class routine', 'ক্লাসের রুটিন যুক্ত', 'añadir rutina de la clase', 'إضافة فئة الروتينية', 'voeg klasroutine', 'добавить подпрограмму класса', '添加类常规', 'sınıf rutin eklemek', 'adicionar rotina classe', 'hozzá class rutin', 'ajouter routine de classe', 'προσθέσετε τάξη ρουτίνα', 'Klasse hinzufügen Routine', 'aggiungere classe di routine', 'เพิ่มระดับตามปกติ', 'کلاس معمول میں شامل کریں', 'वर्ग दिनचर्या जोड़', 'adde genus moris', 'menambahkan rutin kelas', 'クラス·ルーチンを追加', '클래스 루틴을 추가'),
(136, 'day', 'day', 'দিন', 'día', 'يوم', 'dag', 'день', '日', 'gün', 'dia', 'nap', 'jour', 'ημέρα', 'Tag', 'giorno', 'วัน', 'دن', 'दिन', 'die,', 'hari', '日', '일'),
(137, 'starting_time', 'starting time', 'সময়ের শুরু', 'tiempo de inicio', 'بدءا الوقت', 'starttijd', 'время начала', '开始时间', 'başlangıç ​​zamanı', 'tempo começando', 'indítási idő', 'temps de démarrage', 'ώρα έναρξης', 'Startzeit', 'tempo di avviamento', 'เวลาเริ่มต้น', 'وقت شروع ہونے', 'समय की शुरुआत के', 'tum satus', 'waktu mulai', '起動時間', '시작 시간'),
(138, 'ending_time', 'ending time', 'সময় শেষ', 'hora de finalización', 'تنتهي الساعة', 'eindtijd', 'время окончания', '结束时间', 'bitiş zamanını', 'tempo final', 'befejezési időpont', 'heure de fin', 'ώρα λήξης', 'Endzeit', 'ora finale', 'สิ้นสุดเวลา', 'وقت ختم', 'समय समाप्त होने के', 'et finis temporis,', 'akhir waktu', '終了時刻', '종료 시간'),
(139, 'edit_class_routine', 'edit class routine', 'সম্পাদনা ক্লাস রুটিন', 'rutina de la clase de edición', 'الطبقة تحرير الروتينية', 'bewerk klasroutine', 'Процедура редактирования класс', '编辑类常规', 'sınıf düzenle rutin', 'rotina de edição de classe', 'szerkesztés osztály rutin', 'routine modifier de classe', 'edit τάξη ρουτίνα', 'edit Klasse Routine', 'modifica della classe di routine', 'แก้ไขชั้นเรียนตามปกติ', 'ترمیم کلاس معمول', 'संपादित वर्ग दिनचर्या', 'edit uno genere', 'rutin mengedit kelas', '編集クラスのルーチン', '편집 클래스 루틴'),
(140, 'manage_invoice/payment', 'manage invoice/payment', 'চালান / পেমেন্ট পরিচালনা', 'gestionar factura / pago', 'إدارة فاتورة / دفع', 'beheren factuur / betaling', 'управлять счета / оплата', '管理发票/付款', 'fatura / ödeme yönetmek', 'gerenciar fatura / pagamento', 'kezelni számla / fizetési', 'gérer facture / paiement', 'διαχείριση τιμολογίου / πληρωμής', 'Verwaltung Rechnung / Zahlung', 'gestione fattura / pagamento', 'จัดการใบแจ้งหนี้ / การชำระเงิน', 'انوائس / ادائیگی کا انتظام', 'चालान / भुगतान का प्रबंधन', 'curo cautionem / solutionem', 'mengelola tagihan / pembayaran', '請求書/支払管理', '인보이스 / 결제 관리'),
(141, 'invoice/payment_list', 'invoice/payment list', 'চালান / পেমেন্ট তালিকা', 'lista de facturas / pagos', 'قائمة فاتورة / دفع', 'factuur / betaling lijst', 'Список счета / оплата', '发票/付款清单', 'fatura / ödeme listesi', 'lista de fatura / pagamento', 'számla / fizetési lista', 'liste facture / paiement', 'Λίστα τιμολογίου / πληρωμής', 'Rechnung / Zahlungsliste', 'elenco fattura / pagamento', 'รายการใบแจ้งหนี้ / การชำระเงิน', 'انوائس / ادائیگی کی فہرست', 'चालान / भुगतान सूची', 'cautionem / list pretium', 'daftar tagihan / pembayaran', '請求書/支払一覧', '인보이스 / 결제리스트'),
(142, 'add_invoice/payment', 'add invoice/payment', 'চালান / পেমেন্ট যোগ', 'añadir factura / pago', 'إضافة فاتورة / دفع', 'voeg factuur / betaling', 'добавить счета / оплата', '添加发票/付款', 'fatura / ödeme eklemek', 'adicionar factura / pagamento', 'hozzá számla / fizetési', 'ajouter facture / paiement', 'προσθήκη τιμολογίου / πληρωμής', 'hinzufügen Rechnung / Zahlung', 'aggiungere fatturazione / pagamento', 'เพิ่มใบแจ้งหนี้ / การชำระเงิน', 'انوائس / ادائیگی شامل', 'चालान / भुगतान जोड़ें', 'add cautionem / solutionem', 'menambahkan tagihan / pembayaran', '請求書/支払を追加', '송장 / 지불을 추가'),
(143, 'title', 'title', 'খেতাব', 'título', 'لقب', 'titel', 'название', '标题', 'başlık', 'título', 'cím', 'titre', 'τίτλος', 'Titel', 'titolo', 'ชื่อเรื่อง', 'عنوان', 'शीर्षक', 'title', 'judul', 'タイトル', '표제'),
(144, 'description', 'description', 'বিবরণ', 'descripción', 'وصف', 'beschrijving', 'описание', '描述', 'tanım', 'descrição', 'leírás', 'description', 'περιγραφή', 'Beschreibung', 'descrizione', 'ลักษณะ', 'تفصیل', 'विवरण', 'description', 'deskripsi', '説明', '기술');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(145, 'amount', 'amount', 'পরিমাণ', 'cantidad', 'مبلغ', 'bedrag', 'количество', '量', 'miktar', 'quantidade', 'mennyiség', 'montant', 'ποσό', 'Menge', 'importo', 'จำนวน', 'رقم', 'राशि', 'tantum', 'jumlah', '額', '양'),
(146, 'status', 'status', 'অবস্থা', 'estado', 'حالة', 'toestand', 'статус', '状态', 'durum', 'estado', 'állapot', 'statut', 'κατάσταση', 'Status', 'stato', 'สถานะ', 'درجہ', 'हैसियत', 'status', 'status', 'ステータス', '지위'),
(147, 'view_invoice', 'view invoice', 'দেখুন চালান', 'vista de la factura', 'عرض الفاتورة', 'view factuur', 'вид счета-фактуры', '查看发票', 'view fatura', 'vista da fatura', 'view számla', 'vue facture', 'προβολή τιμολόγιο', 'Ansicht Rechnung', 'vista fattura', 'ดูใบแจ้งหนี้', 'دیکھیں انوائس', 'देखें चालान', 'propter cautionem', 'lihat faktur', 'ビュー請求書', '보기 송장'),
(148, 'paid', 'paid', 'পরিশোধ', 'pagado', 'مدفوع', 'betaald', 'оплаченный', '支付', 'ücretli', 'pago', 'fizetett', 'payé', 'καταβληθεί', 'bezahlt', 'pagato', 'ต้องจ่าย', 'ادا کیا', 'प्रदत्त', 'solutis', 'dibayar', '支払われた', '지급'),
(149, 'unpaid', 'unpaid', 'অবৈতনিক', 'no pagado', 'غير مدفوع', 'onbetaald', 'неоплаченный', '未付', 'ödenmemiş', 'não remunerado', 'kifizetetlen', 'non rémunéré', 'απλήρωτη', 'unbezahlt', 'non pagato', 'ยังไม่ได้ชำระ', 'بلا معاوضہ', 'अवैतनिक', 'non est constitutus,', 'dibayar', '未払い', '지불하지 않은'),
(150, 'add_invoice', 'add invoice', 'চালান যোগ', 'añadir factura', 'إضافة الفاتورة', 'voeg factuur', 'добавить счет', '添加发票', 'faturayı eklemek', 'adicionar fatura', 'hozzá számla', 'ajouter facture', 'προσθέστε τιμολόγιο', 'Rechnung hinzufügen', 'aggiungere fattura', 'เพิ่มใบแจ้งหนี้', 'انوائس میں شامل', 'चालान जोड़', 'add cautionem', 'menambahkan faktur', '請求書を追加', '송장을 추가'),
(151, 'payment_to', 'payment to', 'পেমেন্ট', 'pago a', 'دفع ل', 'betaling aan', 'оплата', '支付', 'için ödeme', 'pagamento', 'fizetés', 'paiement', 'πληρωμή', 'Zahlung an', 'pagamento', 'ชำระเงินให้กับ', 'ادائیگی', 'को भुगतान', 'pecunia', 'pembayaran kepada', 'への支払い', '에 지불'),
(152, 'bill_to', 'bill to', 'বিল', 'proyecto de ley para', 'مشروع قانون ل', 'wetsvoorstel om', 'Законопроект о', '法案', 'bill', 'projeto de lei para', 'törvényjavaslat', 'projet de loi', 'νομοσχέδιο για την', 'Gesetzentwurf zur', 'disegno di legge per', 'บิล', 'بل', 'बिल के लिए', 'latumque', 'RUU untuk', '請求する', '법안'),
(153, 'invoice_title', 'invoice title', 'চালান শিরোনাম', 'Título de la factura', 'عنوان الفاتورة', 'factuur titel', 'Название счета', '发票抬头', 'fatura başlık', 'título fatura', 'számla cím', 'titre de la facture', 'Τίτλος τιμολόγιο', 'Rechnungs Titel', 'title fattura', 'ชื่อใบแจ้งหนี้', 'انوائس عنوان', 'चालान शीर्षक', 'title cautionem', 'judul faktur', '請求書のタイトル', '송장 제목'),
(154, 'invoice_id', 'invoice id', 'চালান আইডি', 'Identificación de la factura', 'فاتورة معرف', 'factuur id', 'счет-фактура ID', '发票编号', 'fatura id', 'id fatura', 'számla id', 'Identifiant facture', 'id τιμολόγιο', 'Rechnung-ID', 'fattura id', 'ใบแจ้งหนี้หมายเลข', 'انوائس ID', 'चालान आईडी', 'id cautionem', 'faktur id', '請求書ID', '송장 ID'),
(155, 'edit_invoice', 'edit invoice', 'সম্পাদনা চালান', 'edit factura', 'تحرير الفاتورة', 'bewerk factuur', 'редактирования счета-фактуры', '编辑发票', 'edit fatura', 'edição fatura', 'szerkesztés számla', 'modifier la facture', 'edit τιμολόγιο', 'edit Rechnung', 'modifica fattura', 'แก้ไขใบแจ้งหนี้', 'ترمیم انوائس', 'संपादित चालान', 'edit cautionem', 'mengedit faktur', '編集送り状', '편집 송장'),
(156, 'manage_library_books', 'manage library books', 'লাইব্রেরির বই ও পরিচালনা', 'gestionar libros de la biblioteca', 'إدارة مكتبة الكتب', 'beheren bibliotheekboeken', 'управлять библиотечные книги', '管理图书', 'kitapları kütüphane yönetmek', 'gerenciar os livros da biblioteca', 'kezelni könyvtári könyvek', 'gérer des livres de bibliothèque', 'διαχειριστείτε τα βιβλία της βιβλιοθήκης', 'Bücher aus der Bibliothek verwalten', 'gestire i libri della biblioteca', 'จัดการหนั​​งสือห้องสมุด', 'کتب خانے کی کتابیں منظم', 'पुस्तकालय की पुस्तकों का प्रबंधन', 'curo bibliotheca librorum,', 'mengelola buku perpustakaan', '図書館の本を管理', '도서관 책 관리'),
(157, 'book_list', 'book list', 'পাঠ্যতালিকা', 'lista de libros', 'قائمة الكتب', 'boekenlijst', 'Список книг', '书单', 'kitap listesi', 'lista de livros', 'book lista', 'liste de livres', 'λίστα βιβλίων', 'Buchliste', 'elenco libri', 'รายการหนั​​งสือ', 'کتاب کی فہرست', 'पुस्तक सूची', 'album', 'daftar buku', 'ブックリスト', '도서 목록'),
(158, 'add_book', 'add book', 'বই যোগ', 'Añadir libro', 'إضافة كتاب', 'boek toevoegen', 'добавить книгу', '加入书', 'kitap eklemek', 'adicionar livro', 'Könyv hozzáadása', 'ajouter livre', 'προσθέστε το βιβλίο', 'Buch hinzufügen', 'aggiungere il libro', 'เพิ่มหนังสือ', 'کتاب شامل', 'पुस्तक जोड़', 'adde libri', 'menambahkan buku', '本を追加', '책을 추가'),
(159, 'book_name', 'book name', 'বইয়ের নাম', 'Nombre del libro', 'اسم الكتاب', 'boeknaam', 'Название книги', '书名', 'kitap adı', 'nome livro', 'book név', 'nom de livre', 'το όνομα του βιβλίου', 'Buchnamen', 'nome del libro', 'ชื่อหนังสือ', 'کتاب کا نام', 'किताब का नाम', 'librum nomine', 'nama buku', 'ブック名', '책 이름'),
(160, 'author', 'author', 'লেখক', 'autor', 'الكاتب', 'auteur', 'автор', '作者', 'yazar', 'autor', 'szerző', 'auteur', 'συγγραφέας', 'Autor', 'autore', 'ผู้เขียน', 'مصنف', 'लेखक', 'auctor', 'penulis', '著者', '저자'),
(161, 'price', 'price', 'দাম', 'precio', 'السعر', 'prijs', 'цена', '价格', 'fiyat', 'preço', 'ár', 'prix', 'τιμή', 'Preis', 'prezzo', 'ราคา', 'قیمت', 'कीमत', 'price', 'harga', '価格', '가격'),
(162, 'available', 'available', 'উপলব্ধ', 'disponible', 'متاح', 'beschikbaar', 'доступный', '可用的', 'mevcut', 'disponível', 'rendelkezésre álló', 'disponible', 'διαθέσιμος', 'verfügbar', 'disponibile', 'สามารถใช้ได้', 'دستیاب', 'उपलब्ध', 'available', 'tersedia', '利用できる', '유효한'),
(163, 'unavailable', 'unavailable', 'অপ্রাপ্য', 'indisponible', 'غير متاح', 'niet beschikbaar', 'недоступен', '不可用', 'yok', 'indisponível', 'érhető el', 'indisponible', 'διαθέσιμο', 'nicht verfügbar', 'non disponibile', 'ไม่มี', 'دستیاب نہیں', 'अनुपलब्ध', 'unavailable', 'tidak tersedia', '利用できない', '없는'),
(164, 'edit_book', 'edit book', 'সম্পাদনা বই', 'libro de edición', 'كتاب تحرير', 'bewerk boek', 'править книга', '编辑本书', 'edit kitap', 'edição do livro', 'edit könyv', 'edit livre', 'επεξεργαστείτε το βιβλίο', 'edit Buch', 'modifica book', 'แก้ไขหนังสือ', 'ترمیم کتاب', 'संपादित पुस्तक', 'edit Liber', 'mengedit buku', '編集の本', '편집 책'),
(165, 'manage_transport', 'manage transport', 'পরিবহন ও পরিচালনা', 'gestionar el transporte', 'إدارة النقل', 'beheren van vervoerssystemen', 'управлять транспортом', '运输管理', 'ulaşım yönetmek', 'gerenciar o transporte', 'kezelni a közlekedés', 'la gestion du transport', 'διαχείριση των μεταφορών', 'Transport verwalten', 'gestire i trasporti', 'การจัดการการขนส่ง', 'نقل و حمل کے انتظام', 'परिवहन का प्रबंधन', 'curo onerariis', 'mengelola transportasi', '輸送を管理', '교통 관리'),
(166, 'transport_list', 'transport list', 'পরিবহন তালিকা', 'Lista de transportes', 'قائمة النقل', 'lijst vervoer', 'лист транспорт', '运输名单', 'taşıma listesi', 'Lista de transportes', 'szállítás lista', 'liste de transport', 'Λίστα των μεταφορών', 'Transportliste', 'elenco trasporti', 'รายการการขนส่ง', 'نقل و حمل کی فہرست', 'परिवहन सूची', 'turpis album', 'daftar transport', '輸送一覧', '전송 목록'),
(167, 'add_transport', 'add transport', 'পরিবহন যোগ করুন', 'añadir el transporte', 'إضافة النقل', 'voeg vervoer', 'добавить транспорт', '加上运输', 'taşıma ekle', 'adicionar transporte', 'hozzá a közlekedés', 'ajouter transports', 'προσθέστε μεταφορών', 'add-Transport', 'aggiungere il trasporto', 'เพิ่มการขนส่ง', 'نقل و حمل شامل', 'परिवहन जोड़', 'adde onerariis', 'tambahkan transportasi', 'トランスポートを追加', '전송을 추가'),
(168, 'route_name', 'route name', 'রুট নাম', 'nombre de la ruta', 'اسم توجيه', 'naam van de route', 'Имя маршрут', '路由名称', 'rota ismi', 'nome da rota', 'útvonal nevét', 'nom de la route', 'Όνομα διαδρομής', 'Routennamen', 'nome del percorso', 'ชื่อเส้นทาง', 'راستے نام', 'मार्ग का नाम', 'iter nomine', 'Nama rute', 'ルートの名前', '경로 이름'),
(169, 'number_of_vehicle', 'number of vehicle', 'গাড়ীর সংখ্যা', 'número de vehículo', 'عدد من المركبات', 'aantal voertuigkilometers', 'количество автомобиля', '车辆的数量', 'Aracın sayısı', 'número de veículo', 'számú gépjármű', 'nombre de véhicules', 'αριθμός των οχημάτων', 'Anzahl der Fahrzeug', 'numero di veicolo', 'จำนวนของยานพาหนะ', 'گاڑی کی تعداد', 'वाहन की संख्या', 'de numero scilicet vehiculum', 'jumlah kendaraan', '車両の数', '차량의 수'),
(170, 'route_fare', 'route fare', 'রুট করবেন', 'ruta hacer', 'المسار تفعل', 'route doen', 'маршрут делать', '路线做', 'yol yapmak', 'rota fazer', 'útvonal do', 'itinéraire faire', 'διαδρομή κάνει', 'Route zu tun', 'r', 'เส้นทางทำ', 'راستے کرتے', 'मार्ग करना', 'iter faciunt,', 'rute lakukan', 'ルートか', '경로는 할'),
(171, 'edit_transport', 'edit transport', 'সম্পাদনা পরিবহন', 'transporte de edición', 'النقل تحرير', 'vervoer bewerken', 'править транспорт', '编辑运输', 'edit ulaşım', 'edição transporte', 'szerkesztés szállítás', 'transport modifier', 'edit μεταφορών', 'edit Transport', 'modifica dei trasporti', 'แก้ไขการขนส่ง', 'ترمیم نقل و حمل', 'संपादित परिवहन', 'edit onerariis', 'mengedit transportasi', '編集輸送', '편집 전송'),
(172, 'manage_dormitory', 'manage dormitory', 'আস্তানা ও পরিচালনা', 'gestionar dormitorio', 'إدارة مهجع', 'beheren slaapzaal', 'управлять общежитие', '宿舍管理', 'yurt yönetmek', 'gerenciar dormitório', 'kezelni kollégiumi', 'gérer dortoir', 'διαχείριση κοιτώνα', 'Schlafsaal verwalten', 'gestione dormitorio', 'จัดการหอพัก', 'شیناگار کا انتظام', 'छात्रावास का प्रबंधन', 'curo dormitorio', 'mengelola asrama', '寮を管理', '기숙사를 관리'),
(173, 'dormitory_list', 'dormitory list', 'আস্তানা তালিকা', 'lista dormitorio', 'قائمة مهجع', 'slaapzaal lijst', 'Список общежитие', '宿舍名单', 'yurt listesi', 'lista dormitório', 'kollégiumi lista', 'liste de dortoir', 'Λίστα κοιτώνα', 'Schlafsaal Liste', 'elenco dormitorio', 'รายชื่อหอพัก', 'شیناگار فہرست', 'छात्रावास सूची', 'dormitorium album', 'daftar asrama', '寮のリスト', '기숙사 목록'),
(174, 'add_dormitory', 'add dormitory', 'আস্তানা যোগ', 'añadir dormitorio', 'إضافة مهجع', 'voeg slaapzaal', 'добавить общежитие', '添加宿舍', 'yurt ekle', 'adicionar dormitório', 'hozzá kollégiumi', 'ajouter dortoir', 'προσθήκη κοιτώνα', 'Schlaf hinzufügen', 'aggiungere dormitorio', 'เพิ่มหอพัก', 'شیناگار شامل', 'छात्रावास जोड़', 'adde dormitorio', 'menambahkan asrama', '寮を追加', '기숙사를 추가'),
(175, 'dormitory_name', 'dormitory name', 'আস্তানা নাম', 'Nombre del dormitorio', 'اسم المهجع', 'slaapzaal naam', 'Имя общежитие', '宿舍名', 'yurt adı', 'nome dormitório', 'kollégiumi név', 'nom de dortoir', 'Όνομα κοιτώνα', 'Schlaf Namen', 'Nome dormitorio', 'ชื่อหอพัก', 'شیناگار نام', 'छात्रावास नाम', 'dormitorium nomine', 'Nama asrama', '寮名', '기숙사 이름'),
(176, 'number_of_room', 'number of room', 'ঘরের সংখ্যা', 'número de habitación', 'عدد الغرف', 'aantal kamer', 'число комнате', '房间数量', 'oda sayısı', 'número de quarto', 'száma szobában', 'nombre de salle', 'τον αριθμό των δωματίων', 'Anzahl der Zimmer', 'numero delle camera', 'จำนวนห้องพัก', 'کمرے کی تعداد', 'कमरे की संख्या', 'numerus locus', 'Jumlah kamar', 'お部屋数', '객실 수'),
(177, 'manage_noticeboard', 'manage noticeboard', 'নোটিশবোর্ড পরিচালনা', 'gestionar tablón de anuncios', 'إدارة اللافتة', 'beheren prikbord', 'управлять доске объявлений', '管理布告', 'Noticeboard yönetmek', 'gerenciar avisos', 'kezelni üzenőfalán', 'gérer panneau d''affichage', 'διαχείριση ανακοινώσεων', 'Brett verwalten', 'gestione bacheca', 'จัดการป้ายประกาศ', 'noticeboard کا انتظام', 'Noticeboard का प्रबंधन', 'curo noticeboard', 'mengelola pengumuman', '伝言板を管理', '의 noticeboard 관리'),
(178, 'noticeboard_list', 'noticeboard list', 'নোটিশবোর্ড তালিকা', 'tablón de anuncios de la lista', 'قائمة اللافتة', 'prikbord lijst', 'Список доска для объявлений', '布告名单', 'noticeboard listesi', 'lista de avisos', 'üzenőfalán lista', 'liste de panneau d''affichage', 'λίστα ανακοινώσεων', 'Brett-Liste', 'elenco bacheca', 'รายการป้ายประกาศ', 'noticeboard فہرست', 'Noticeboard सूची', 'noticeboard album', 'daftar pengumuman', '伝言板一覧', '의 noticeboard 목록'),
(179, 'add_noticeboard', 'add noticeboard', 'নোটিশবোর্ড যোগ', 'añadir tablón de anuncios', 'إضافة اللافتة', 'voeg prikbord', 'добавить доске объявлений', '添加布告', 'Noticeboard ekle', 'adicionar avisos', 'hozzá üzenőfalán', 'ajouter panneau d''affichage', 'προσθήκη ανακοινώσεων', 'Brett hinzufügen', 'aggiungere bacheca', 'เพิ่มป้ายประกาศ', 'noticeboard شامل', 'Noticeboard जोड़', 'adde noticeboard', 'menambahkan pengumuman', '伝言板を追加', '의 noticeboard 추가'),
(180, 'notice', 'notice', 'বিজ্ঞপ্তি', 'aviso', 'إشعار', 'kennisgeving', 'уведомление', '通知', 'uyarı', 'aviso', 'értesítés', 'délai', 'ειδοποίηση', 'Bekanntmachung', 'avviso', 'แจ้งให้ทราบ', 'نوٹس', 'नोटिस', 'Observa', 'pemberitahuan', '予告', '통지'),
(181, 'add_notice', 'add notice', 'নোটিশ যোগ করুন', 'añadir aviso', 'إضافة إشعار', 'voeg bericht', 'добавить уведомление', '添加通知', 'haber ekle', 'adicionar aviso', 'hozzá értesítés', 'ajouter un avis', 'προσθέστε ανακοίνωση', 'Hinweis hinzufügen', 'aggiungere preavviso', 'เพิ่มแจ้งให้ทราบล่วงหน้า', 'نوٹس کا اضافہ کریں', 'नोटिस जोड़', 'addunt et titulum', 'tambahkan pemberitahuan', '通知を追加', '통지를 추가'),
(182, 'edit_noticeboard', 'edit noticeboard', 'সম্পাদনা নোটিশবোর্ড', 'edit tablón de anuncios', 'تحرير اللافتة', 'bewerk prikbord', 'править доска для объявлений', '编辑布告', 'edit noticeboard', 'edição de avisos', 'szerkesztés üzenőfalán', 'modifier panneau d''affichage', 'edit ανακοινώσεων', 'Brett bearbeiten', 'modifica bacheca', 'แก้ไขป้ายประกาศ', 'میں ترمیم کریں noticeboard', 'संपादित Noticeboard', 'edit noticeboard', 'mengedit pengumuman', '編集伝言板', '편집의 noticeboard'),
(183, 'system_name', 'system name', 'সিস্টেমের নাম', 'Nombre del sistema', 'اسم النظام', 'Name System', 'Имя системы', '系统名称', 'sistemi adı', 'nome do sistema', 'rendszer neve', 'nom du système', 'όνομα του συστήματος', 'Systemnamen', 'nome del sistema', 'ชื่อระบบ', 'نظام کا نام', 'सिस्टम नाम', 'ratio nominis', 'Nama sistem', 'システム名', '시스템 이름'),
(184, 'save', 'save', 'রক্ষা', 'guardar', 'حفظ', 'besparen', 'экономить', '节省', 'kurtarmak', 'salvar', 'kivéve', 'sauver', 'εκτός', 'sparen', 'salvare', 'ประหยัด', 'کو بچانے کے', 'बचाना', 'salvum', 'menyimpan', '保存', '저장'),
(185, 'system_title', 'system title', 'সিস্টেম শিরোনাম', 'Título de sistema', 'عنوان النظام', 'systeem titel', 'Название системы', '系统标题', 'Sistem başlık', 'título sistema', 'rendszer cím', 'titre du système', 'Τίτλος του συστήματος', 'System-Titel', 'titolo di sistema', 'ชื่อระบบ', 'نظام عنوان', 'सिस्टम शीर्षक', 'ratio title', 'title sistem', 'システムのタイトル', '시스템 제목'),
(186, 'paypal_email', 'paypal email', 'PayPal ইমেইল', 'paypal email', 'باي بال البريد الإلكتروني', 'paypal e-mail', 'PayPal по электронной почте', 'PayPal电子邮件', 'paypal e-posta', 'paypal e-mail', 'paypal email', 'paypal email', 'paypal ηλεκτρονικό ταχυδρομείο', 'paypal E-Mail', 'paypal-mail', 'paypal อีเมล์', 'پے پال ای میل', 'पेपैल ईमेल', 'Paypal email', 'email paypal', 'Paypalのメール', '페이팔 이메일'),
(187, 'currency', 'currency', 'মুদ্রা', 'moneda', 'عملة', 'valuta', 'валюта', '货币', 'para', 'moeda', 'valuta', 'monnaie', 'νόμισμα', 'Währung', 'valuta', 'เงินตรา', 'کرنسی', 'मुद्रा', 'currency', 'mata uang', '通貨', '통화'),
(188, 'phrase_list', 'phrase list', 'ফ্রেজ তালিকা', 'lista de frases', 'قائمة جملة', 'zinnenlijst', 'Список фраза', '短语列表', 'ifade listesi', 'lista de frases', 'kifejezés lista', 'liste de phrase', 'Λίστα φράση', 'Phrasenliste', 'elenco frasi', 'รายการวลี', 'جملہ فہرست', 'वाक्यांश सूची', 'dicitur album', 'Daftar frase', 'フレーズリスト', '문구 목록'),
(189, 'add_phrase', 'add phrase', 'শব্দগুচ্ছ যুক্ত', 'añadir la frase', 'إضافة عبارة', 'voeg zin', 'добавить фразу', '添加词组', 'ifade eklemek', 'adicionar frase', 'adjunk kifejezést', 'ajouter la phrase', 'προσθέστε φράση', 'Begriff hinzufügen', 'aggiungere la frase', 'เพิ่มวลี', 'جملہ شامل', 'वाक्यांश जोड़ना', 'addere phrase', 'menambahkan frase', 'フレーズを追加', '문구를 추가'),
(190, 'add_language', 'add language', 'ভাষা যুক্ত', 'añadir idioma', 'إضافة لغة', 'add taal', 'добавить язык', '新增语言', 'dil ekle', 'adicionar língua', 'nyelv hozzáadása', 'ajouter la langue', 'προσθέστε γλώσσα', 'Sprache hinzufügen', 'aggiungere la lingua', 'เพิ่มภาษา', 'زبان کو شامل', 'भाषा जोड़ना', 'addere verbis', 'menambahkan bahasa', '言語を追加', '언어를 추가'),
(191, 'phrase', 'phrase', 'বাক্য', 'frase', 'العبارة', 'frase', 'фраза', '短语', 'ifade', 'frase', 'kifejezés', 'phrase', 'φράση', 'Ausdruck', 'frase', 'วลี', 'جملہ', 'वाक्यांश', 'phrase', 'frasa', 'フレーズ', '구'),
(192, 'manage_backup_restore', 'manage backup restore', 'ব্যাকআপ পুনঃস্থাপন ও পরিচালনা', 'gestionar copias de seguridad a restaurar', 'إدارة استعادة النسخ الاحتياطي', 'beheer van back-up herstellen', 'управлять восстановить резервного копирования', '管理备份恢复', 'yedekleme geri yönetmek', 'gerenciar o backup de restauração', 'kezelni a biztonsági mentés visszaállítása', 'gérer de restauration de sauvegarde', 'διαχείριση επαναφοράς αντιγράφων ασφαλείας', 'verwalten Backup wiederherstellen', 'gestire il ripristino di backup', 'จัดการการสำรองข้อมูลเรียกคืน', 'بیک اپ بحال انتظام', 'बैकअप बहाल का प्रबंधन', 'curo tergum restituunt', 'mengelola backup restore', 'バックアップ、リストアを管理', '백업 복원 관리'),
(193, 'restore', 'restore', 'প্রত্যর্পণ করা', 'restaurar', 'استعادة', 'herstellen', 'восстановление', '恢复', 'geri', 'restaurar', 'visszaad', 'restaurer', 'επαναφέρετε', 'wiederherstellen', 'ripristinare', 'ฟื้นฟู', 'بحال', 'बहाल', 'reddite', 'mengembalikan', '復元する', '복원'),
(194, 'mark', 'mark', 'ছাপ', 'marca', 'علامة', 'mark', 'знак', '标志', 'işaret', 'marca', 'jel', 'marque', 'σημάδι', 'Marke', 'marchio', 'เครื่องหมาย', 'نشان', 'निशान', 'Marcus', 'tanda', 'マーク', '표'),
(195, 'grade', 'grade', 'গ্রেড', 'grado', 'درجة', 'graad', 'класс', '等级', 'sınıf', 'grau', 'fokozat', 'grade', 'βαθμός', 'Klasse', 'grado', 'เกรด', 'گریڈ', 'ग्रेड', 'gradus,', 'kelas', 'グレード', '학년'),
(196, 'invoice', 'invoice', 'চালান', 'factura', 'فاتورة', 'factuur', 'счет-фактура', '发票', 'fatura', 'fatura', 'számla', 'facture', 'τιμολόγιο', 'Rechnung', 'fattura', 'ใบกำกับสินค้า', 'انوائس', 'बीजक', 'cautionem', 'faktur', 'インボイス', '송장'),
(197, 'book', 'book', 'বই', 'libro', 'كتاب', 'boek', 'книга', '书', 'kitap', 'livro', 'könyv', 'livre', 'βιβλίο', 'Buch', 'libro', 'หนังสือ', 'کتاب', 'किताब', 'Liber', 'buku', '本', '책'),
(198, 'all', 'all', 'সব', 'todo', 'كل', 'alle', 'все', '所有', 'tüm', 'tudo', 'minden', 'tout', 'όλα', 'alle', 'tutto', 'ทั้งหมด', 'تمام', 'सब', 'omnes', 'semua', 'すべて', '모든'),
(199, 'upload_&_restore_from_backup', 'upload & restore from backup', 'আপলোড &amp; ব্যাকআপ থেকে পুনঃস্থাপন', 'cargar y restaurar copia de seguridad', 'تحميل واستعادة من النسخة الاحتياطية', 'uploaden en terugzetten van een backup', 'загрузить и восстановить из резервной копии', '上传及从备份中恢复', 'yükleyebilir ve yedekten geri yükleme', 'fazer upload e restauração de backup', 'feltölteni és visszaállítani backup', 'télécharger et restauration de la sauvegarde', 'ανεβάσετε και επαναφορά από backup', 'Upload &amp; Wiederherstellung von Backups', 'caricare e ripristinare dal backup', 'อัปโหลดและเรียกคืนจากการสำรองข้อมูล', 'اپ لوڈ کریں اور بیک اپ سے بحال', 'अपलोड और बैकअप से बहाल', 'restituo ex tergum upload,', 'meng-upload &amp; restore dari backup', 'アップロード＆バックアップから復元', '업로드 및 백업에서 복원'),
(200, 'manage_profile', 'manage profile', 'প্রফাইলটি পরিচালনা', 'gestionar el perfil', 'إدارة الملف الشخصي', 'te beheren!', 'управлять профилем', '管理配置文件', 'profilini yönetmek', 'gerenciar o perfil', 'Profil kezelése', 'gérer le profil', 'διαχειριστείτε το προφίλ', 'Profil verwalten', 'gestire il profilo', 'จัดการรายละเอียด', 'پروفائل کا نظم کریں', 'प्रोफाइल का प्रबंधन', 'curo profile', 'mengelola profil', 'プロファイル（個人情報）の管理', '프로필 (내 정보) 관리'),
(201, 'update_profile', 'update profile', 'প্রোফাইল আপডেট', 'actualizar el perfil', 'تحديث الملف الشخصي', 'Profiel bijwerken', 'обновить профиль', '更新个人资料', 'profilinizi güncelleyin', 'atualizar o perfil', 'frissíteni profil', 'mettre à jour le profil', 'ενημερώσετε το προφίλ', 'Profil aktualisieren', 'aggiornare il profilo', 'อัปเดตโปรไฟล์', 'پروفائل کو اپ ڈیٹ', 'प्रोफ़ाइल अपडेट', 'magna eget ipsum', 'memperbarui profil', 'プロファイルを更新', '프로필을 업데이트'),
(202, 'new_password', 'new password', 'নতুন পাসওয়ার্ড', 'nueva contraseña', 'كلمة مرور جديدة', 'nieuw wachtwoord', 'новый пароль', '新密码', 'Yeni şifre', 'nova senha', 'Új jelszó', 'nouveau mot de passe', 'νέο κωδικό', 'Neues Passwort', 'nuova password', 'รหัสผ่านใหม่', 'نیا پاس ورڈ', 'नया पासवर्ड', 'novum password', 'kata sandi baru', '新しいパスワード', '새 암호'),
(203, 'confirm_new_password', 'confirm new password', 'নতুন পাসওয়ার্ড নিশ্চিত করুন', 'confirmar nueva contraseña', 'تأكيد كلمة المرور الجديدة', 'Bevestig nieuw wachtwoord', 'подтвердить новый пароль', '确认新密码', 'yeni parolayı onaylayın', 'confirmar nova senha', 'erősítse meg az új jelszót', 'confirmer le nouveau mot de passe', 'επιβεβαιώσετε το νέο κωδικό', 'Bestätigen eines neuen Kennwortes', 'conferma la nuova password', 'ยืนยันรหัสผ่านใหม่', 'نئے پاس ورڈ کی توثیق', 'नए पासवर्ड की पुष्टि', 'confirma novum password', 'konfirmasi password baru', '新しいパスワードを確認', '새 암호를 확인합니다'),
(204, 'update_password', 'update password', 'পাসওয়ার্ড আপডেট', 'actualizar la contraseña', 'تحديث كلمة السر', 'updaten wachtwoord', 'обновить пароль', '更新密码', 'Parolanızı güncellemek', 'atualizar senha', 'frissíti jelszó', 'mettre à jour le mot de passe', 'ενημερώσετε τον κωδικό πρόσβασης', 'Kennwort aktualisieren', 'aggiornare la password', 'ปรับปรุงรหัสผ่าน', 'پاس اپ ڈیٹ', 'पासवर्ड अद्यतन', 'scelerisque eget', 'memperbarui sandi', 'パスワードを更新', '암호를 업데이트'),
(205, 'teacher_dashboard', 'teacher dashboard', 'শিক্ষক ড্যাশবোর্ড', 'tablero maestro', 'لوحة أجهزة القياس المعلم', 'leraar dashboard', 'учитель приборной панели', '老师仪表板', 'öğretmen pano', 'dashboard professor', 'tanár műszerfal', 'enseignant tableau de bord', 'ταμπλό των εκπαιδευτικών', 'Lehrer-Dashboard', 'dashboard insegnante', 'กระดานครู', 'استاد ڈیش بورڈ', 'शिक्षक डैशबोर्ड', 'magister Dashboard', 'dashboard guru', '教師のダッシュボード', '교사 대시 보드'),
(206, 'backup_restore_help', 'backup restore help', 'ব্যাকআপ পুনঃস্থাপন সাহায্য', 'copia de seguridad restaurar ayuda', 'استعادة النسخ الاحتياطي المساعدة', 'backup helpen herstellen', 'восстановить резервную копию помощь', '备份恢复的帮助', 'yedekleme yardım geri', 'de backup restaurar ajuda', 'Backup Restore segítségével', 'restauration de sauvegarde de l''aide', 'επαναφοράς αντιγράφων ασφαλείας βοήθεια', 'Backup wiederherstellen Hilfe', 'Backup Restore aiuto', 'การสำรองข้อมูลเรียกคืนความช่วยเหลือ', 'بیک اپ کی مدد بحال', 'बैकअप मदद बहाल', 'auxilium tergum restituunt', 'backup restore bantuan', 'バックアップヘルプを復元', '백업 도움을 복원'),
(207, 'student_dashboard', 'student dashboard', 'ছাত্র ড্যাশবোর্ড', 'salpicadero estudiante', 'لوحة القيادة الطلابية', 'student dashboard', 'студент приборной панели', '学生的仪表板', 'Öğrenci paneli', 'dashboard estudante', 'tanuló műszerfal', 'tableau de bord de l''élève', 'ταμπλό των φοιτητών', 'Schüler Armaturenbrett', 'studente dashboard', 'แผงควบคุมนักเรียน', 'طالب علم کے ڈیش بورڈ', 'छात्र डैशबोर्ड', 'Discipulus Dashboard', 'dashboard mahasiswa', '学生のダッシュボード', '학생 대시 보드'),
(208, 'parent_dashboard', 'parent dashboard', 'অভিভাবক ড্যাশবোর্ড', 'salpicadero padres', 'لوحة أجهزة القياس الأم', 'ouder dashboard', 'родитель приборной панели', '家长仪表板', 'ebeveyn kontrol paneli', 'dashboard pai', 'szülő műszerfal', 'parent tableau de bord', 'μητρική ταμπλό', 'Mutter Armaturenbrett', 'dashboard genitore', 'แผงควบคุมของผู้ปกครอง', 'والدین کے ڈیش بورڈ', 'माता - पिता डैशबोर्ड', 'Dashboard parent', 'orangtua dashboard', '親ダッシュ', '부모 대시 보드'),
(209, 'view_marks', 'view marks', 'দেখুন চিহ্ন', 'Vista marcas', 'علامات رأي', 'view merken', 'вид знаки', '鉴于商标', 'görünümü işaretleri', 'vista marcas', 'view jelek', 'Vue marques', 'σήματα άποψη', 'Ansicht Marken', 'Vista marchi', 'เครื่องหมายมุมมอง', 'دیکھیں نشانات', 'देखने के निशान', 'propter signa', 'lihat tanda', 'ビューマーク', '보기 마크'),
(210, 'delete_language', 'delete language', 'ভাষা মুছতে', 'eliminar el lenguaje', 'حذف اللغة', 'verwijderen taal', 'удалить язык', '删除语言', 'dili silme', 'excluir língua', 'törlése nyelv', 'supprimer la langue', 'διαγραφή γλώσσα', 'Sprache löschen', 'eliminare lingua', 'ลบภาษา', 'زبان کو خارج کر دیں', 'भाषा को हटाना', 'linguam turpis', 'menghapus bahasa', '言語を削除する', '언어를 삭제'),
(211, 'settings_updated', 'settings updated', 'সেটিংস আপডেট', 'configuración actualizado', 'الإعدادات المحدثة', 'instellingen bijgewerkt', 'Настройки обновлены', '设置更新', 'ayarları güncellendi', 'definições atualizadas', 'beállítások frissítve', 'paramètres mis à jour', 'Ρυθμίσεις ενημέρωση', 'Einstellungen aktualisiert', 'impostazioni aggiornate', 'การตั้งค่าการปรับปรุง', 'ترتیبات کی تازہ کاری', 'सेटिंग्स अद्यतन', 'venenatis eu', 'pengaturan diperbarui', '設定が更新', '설정이 업데이트'),
(212, 'update_phrase', 'update phrase', 'আপডেট ফ্রেজ', 'actualización de la frase', 'تحديث العبارة', 'Update zin', 'обновление фраза', '更新短语', 'güncelleme ifade', 'atualização frase', 'frissítést kifejezés', 'mise à jour phrase', 'ενημέρωση φράση', 'Update Begriff', 'aggiornamento frase', 'ปรับปรุงวลี', 'اپ ڈیٹ جملہ', 'अद्यतन वाक्यांश', 'eget dictum', 'frase pembaruan', '更新フレーズ', '업데이트 구문'),
(213, 'login_failed', 'login failed', 'লগইন ব্যর্থ হয়েছে', 'Error de acceso', 'فشل تسجيل الدخول', 'inloggen is mislukt', 'Ошибка входа', '登录失败', 'giriş başarısız oldu', 'Falha no login', 'bejelentkezés sikertelen', 'Échec de la connexion', 'Είσοδος απέτυχε', 'Fehler bei der Anmeldung', 'Accesso non riuscito', 'เข้าสู่ระบบล้มเหลว', 'لاگ ان ناکام', 'लॉगिन विफल', 'tincidunt defecit', 'Login gagal', 'ログインに失敗しました', '로그인 실패'),
(214, 'live_chat', 'live chat', 'লাইভ চ্যাট', 'chat en vivo', 'الدردشة الحية', 'live chat', 'Онлайн-чат', '即时聊天', 'canlı sohbet', 'chat ao vivo', 'élő chat', 'chat en direct', 'live chat', 'Live-Chat', 'live chat', 'อยู่สนทนา', 'لائیو چیٹ', 'लाइव चैट', 'Vivamus nibh', 'live chat', 'ライブチャット', '라이브 채팅'),
(215, 'client 1', 'client 1', 'ক্লায়েন্টের 1', 'cliente 1', 'العميل 1', 'client 1', 'Клиент 1', '客户端1', 'istemcisi 1', 'cliente 1', 'ügyfél 1', 'client 1', 'πελάτη 1', 'Client 1', 'client 1', 'ลูกค้า 1', 'کلائنٹ 1', 'ग्राहक 1', 'I huius', 'client 1', 'クライアント1', '클라이언트 1'),
(216, 'buyer', 'buyer', 'ক্রেতা', 'comprador', 'مشتر', 'koper', 'покупатель', '买方', 'alıcı', 'comprador', 'vevő', 'acheteur', 'αγοραστής', 'Käufer', 'compratore', 'ผู้ซื้อ', 'خریدار', 'खरीददार', 'qui emit,', 'pembeli', 'バイヤー', '구매자'),
(217, 'purchase_code', 'purchase code', 'ক্রয় কোড', 'código de compra', 'كود الشراء', 'aankoop code', 'покупка код', '申购代码', 'satın alma kodu', 'código de compra', 'vásárlási kódot', 'code d''achat', 'Κωδικός αγορά', 'Kauf-Code', 'codice di acquisto', 'รหัสการสั่งซื้อ', 'خریداری کے کوڈ', 'खरीद कोड', 'Mauris euismod', 'kode pembelian', '購入コード', '구매 코드'),
(218, 'system_email', 'system email', 'সিস্টেম ইমেইল', 'correo electrónico del sistema', 'نظام البريد الإلكتروني', 'systeem e-mail', 'система электронной почты', '邮件系统', 'sistem e-posta', 'e-mail do sistema', 'a rendszer az e-mail', 'email de système', 'e-mail συστήματος', 'E-Mail-System', 'email sistema', 'อีเมล์ระบบ', 'نظام کی ای میل', 'प्रणाली ईमेल', 'Praesent sit amet', 'email sistem', 'システムの電子メール', '시스템 전자 메일'),
(219, 'option', 'option', 'বিকল্প', 'opción', 'خيار', 'optie', 'вариант', '选项', 'seçenek', 'opção', 'opció', 'option', 'επιλογή', 'Option', 'opzione', 'ตัวเลือกที่', 'آپشن', 'विकल्प', 'optio', 'pilihan', 'オプション', '선택권'),
(220, 'edit_phrase', 'edit phrase', 'সম্পাদনা ফ্রেজ', 'edit frase', 'تحرير العبارة', 'bewerk zin', 'править фраза', '编辑语', 'edit ifade', 'edição frase', 'szerkesztés kifejezés', 'modifier phrase', 'edit φράση', 'edit Begriff', 'modifica frase', 'แก้ไขวลี', 'ترمیم کے جملہ', 'संपादित वाक्यांश', 'edit phrase', 'mengedit frase', '編集フレーズ', '편집 구'),
(221, 'forgot_your_password', 'Forgot Your Password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(222, 'forgot_password', 'Forgot Password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(223, 'back_to_login', 'Back To Login', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(224, 'return_to_login_page', 'Return to Login Page', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(225, 'admit_student', 'Admit Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(226, 'admit_bulk_student', 'Admit Bulk Student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(227, 'student_information', 'Student Information', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(228, 'student_marksheet', 'Student Mark Sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(229, 'daily_attendance', 'Daily Attendance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(230, 'exam_grades', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(231, 'message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(232, 'general_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(233, 'language_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(234, 'edit_profile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(235, 'event_schedule', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(236, 'cancel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(237, 'addmission_form', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(238, 'value_required', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(239, 'select', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(240, 'gender', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(241, 'add_bulk_student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(242, 'student_bulk_add_form', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(243, 'select_excel_file', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(244, 'upload_and_import', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(245, 'manage_classes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(246, 'manage_sections', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(247, 'add_new_teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(248, 'section_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(249, 'nick_name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(250, 'add_new_section', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(251, 'add_section', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(252, 'update', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(253, 'section', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(254, 'select_class_first', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(255, 'parent_information', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(256, 'relation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(257, 'add_form', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(258, 'all_parents', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(259, 'parents', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(260, 'add_new_parent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(261, 'add_new_student', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(262, 'all_students', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(263, 'view_marksheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(264, 'text_align', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(265, 'clickatell_username', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(266, 'clickatell_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(267, 'clickatell_api_id', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(268, 'sms_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(269, 'data_updated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(270, 'data_added_successfully', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(271, 'edit_notice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(272, 'private_messaging', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(273, 'messages', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(274, 'new_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(275, 'write_new_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(276, 'recipient', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(277, 'select_a_user', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(278, 'write_your_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(279, 'send', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(280, 'current_password', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(281, 'exam_marks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(282, 'marks_obtained', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(283, 'total_marks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(284, 'comments', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(285, 'theme_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(286, 'select_theme', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(287, 'theme_selected', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(288, 'language_list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(289, 'payment_cancelled', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(290, 'study_material', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(291, 'download', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(292, 'select_a_theme_to_make_changes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(293, 'manage_daily_attendance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(294, 'select_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(295, 'select_month', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(296, 'select_year', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(297, 'manage_attendance', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(298, 'twilio_account', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(299, 'authentication_token', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(300, 'registered_phone_number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(301, 'select_a_service', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(302, 'active', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(303, 'disable_sms_service', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(304, 'not_selected', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(305, 'disabled', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(306, 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(307, 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(308, 'accounting', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(309, 'income', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(310, 'expense', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(311, 'incomes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(312, 'invoice_informations', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(313, 'payment_informations', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(314, 'total', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(315, 'enter_total_amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(316, 'enter_payment_amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(317, 'payment_status', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(318, 'method', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(319, 'cash', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(320, 'check', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(321, 'card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(322, 'data_deleted', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(323, 'total_amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(324, 'take_payment', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(325, 'payment_history', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(326, 'amount_paid', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(327, 'due', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(328, 'payment_successfull', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(329, 'creation_date', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(330, 'invoice_entries', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(331, 'paid_amount', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(332, 'send_sms_to_all', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(333, 'yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(334, 'no', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(335, 'activated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(336, 'sms_service_not_activated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(337, 'add_study_material', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(338, 'file', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(339, 'file_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(340, 'select_file_type', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(341, 'image', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(342, 'doc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(343, 'pdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(344, 'excel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(345, 'other', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(346, 'expenses', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(347, 'add_new_expense', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(348, 'add_expense', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(349, 'edit_expense', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(350, 'total_mark', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(351, 'send_marks_by_sms', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(352, 'send_marks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(353, 'select_receiver', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(354, 'students', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(355, 'marks_of', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(356, 'for', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(357, 'message_sent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(358, 'expense_category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(359, 'add_new_expense_category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(360, 'add_expense_category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(361, 'category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(362, 'select_expense_category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(363, 'message_sent!', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(364, 'reply_message', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(365, 'account_updated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(366, 'upload_logo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(367, 'upload', 'Upload', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(368, 'study_material_info_saved_successfuly', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(369, 'edit_study_material', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(370, 'default_theme', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(371, 'default', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(372, 'tabulation_sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(373, 'create_student_payment', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(374, 'student_payments', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(375, 'update_product', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(376, 'install_update', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(377, 'transport_route', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(378, 'hour', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(379, 'minutes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(380, 'password_updated', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(381, 'create_single_invoice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(382, 'create_mass_invoice', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(383, 'update_marks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(384, 'mark_sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(385, 'service_is_disabled', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(386, 'view_tabulation_sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(387, 'subjects', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(388, 'average_grade_point', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(389, 'print_tabulation_sheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(390, 'on', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(391, 'marksheet_for', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(392, 'print_marksheet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(393, 'unpaid_invoices', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(394, 'select_all', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(395, 'select_none', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(396, 'update_p1rofile', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(397, 'Disabled in Demo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(398, 'password_mismatch', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(399, 'change_password (Disabled in Demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(400, 'edit (Disabled)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(401, 'delete (Disabled)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(402, 'edit (Disabled in Demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(403, 'delete (Disabled in Demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(404, 'edit (Disabled in demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(405, 'delete (Disabled in demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(406, 'edit (Disabled in demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(407, 'delete (Disabled in demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(408, 'edit (Disabled in demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(409, 'delete (Disabled in demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(410, 'edit (Disabled in demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(411, 'delete (Disabled in demo)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(412, 'add_noticeboards', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(413, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(414, 'Subject Name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(415, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(416, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(417, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(418, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(419, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(420, 'subject list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(421, 'add subject', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(422, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(423, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(424, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(425, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(426, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(427, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(428, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(429, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(430, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(431, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(432, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(433, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(434, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(435, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(436, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(437, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(438, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(439, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(440, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(441, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(442, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(443, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(444, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(445, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(446, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(447, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(448, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(449, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(450, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(451, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(452, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(453, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(454, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(455, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(456, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(457, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(458, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(459, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(460, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(461, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(462, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(463, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(464, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(465, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(466, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(467, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(468, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(469, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(470, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(471, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(472, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(473, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(474, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(475, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(476, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(477, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(478, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(479, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(480, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(481, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(482, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(483, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(484, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(485, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(486, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(487, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(488, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(489, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(490, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(491, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(492, 'add subjects', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(493, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(494, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(495, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(496, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(497, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(498, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(499, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(500, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(501, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(502, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(503, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(504, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(505, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(506, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(507, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(508, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(509, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(510, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(511, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(512, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(513, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(514, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(515, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(516, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(517, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(518, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(519, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(520, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(521, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(522, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(523, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(524, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(525, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(526, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(527, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(528, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(529, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(530, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(531, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(532, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(533, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(534, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(535, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(536, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(537, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(538, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(539, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(540, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(541, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(542, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(543, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(544, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(545, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(546, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(547, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(548, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(549, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(550, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(551, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(552, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(553, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(554, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(555, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(556, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(557, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(558, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(559, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(560, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(561, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(562, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(563, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(564, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(565, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(566, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(567, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(568, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(569, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(570, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(571, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(572, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(573, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(574, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(575, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(576, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(577, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(578, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(579, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(580, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(581, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(582, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(583, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(584, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(585, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(586, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(587, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(588, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(589, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(590, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(591, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(592, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(593, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(594, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(595, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(596, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(597, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(598, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(599, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(600, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(601, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(602, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(603, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(604, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(605, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(606, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(607, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(608, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(609, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(610, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(611, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(612, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(613, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(614, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(615, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(616, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(617, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(618, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(619, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(620, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(621, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(622, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(623, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(624, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(625, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(626, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(627, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(628, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(629, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(630, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(631, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(632, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(633, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(634, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(635, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(636, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(637, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(638, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(639, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(640, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(641, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(642, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(643, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(644, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(645, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(646, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(647, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(648, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(649, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(650, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(651, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(652, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(653, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(654, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(655, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(656, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(657, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(658, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(659, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(660, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(661, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(662, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(663, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(664, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(665, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(666, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(667, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(668, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(669, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(670, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(671, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(672, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(673, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(674, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(675, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(676, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(677, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(678, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(679, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(680, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(681, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(682, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(683, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(684, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(685, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(686, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(687, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(688, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(689, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(690, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(691, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(692, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(693, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(694, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(695, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(696, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(697, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(698, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(699, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(700, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(701, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(702, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(703, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(704, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(705, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(706, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(707, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(708, 'Aggregate', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(709, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(710, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(711, 'From (Mark)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(712, 'To (Mark)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(713, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(714, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(715, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(716, 'Mark From ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(717, 'Mark To ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(718, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(719, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(720, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(721, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(722, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(723, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(724, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(725, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(726, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(727, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(728, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(729, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(730, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(731, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(732, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(733, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(734, 'Level', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(735, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(736, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(737, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(738, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(739, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(740, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(741, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(742, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(743, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(744, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(745, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(746, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(747, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(748, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(749, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(750, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(751, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(752, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(753, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(754, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(755, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(756, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(757, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(758, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(759, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(760, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(761, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(762, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(763, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(764, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(765, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(766, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(767, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(768, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(769, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(770, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(771, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(772, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(773, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(774, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(775, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(776, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(777, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(778, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(779, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(780, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(781, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(782, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(783, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(784, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(785, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(786, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(787, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(788, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(789, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(790, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(791, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(792, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(793, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(794, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(795, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(796, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(797, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(798, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(799, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(800, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(801, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(802, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(803, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(804, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(805, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(806, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(807, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(808, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(809, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(810, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(811, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(812, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(813, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(814, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(815, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(816, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(817, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(818, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(819, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(820, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(821, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(822, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(823, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(824, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(825, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(826, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(827, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(828, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(829, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(830, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(831, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(832, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(833, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(834, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(835, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(836, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(837, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(838, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(839, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(840, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(841, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(842, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(843, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(844, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(845, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(846, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(847, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(848, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(849, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(850, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(851, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(852, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(853, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(854, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(855, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(856, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(857, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(858, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(859, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(860, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(861, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(862, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(863, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(864, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(865, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(866, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(867, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(868, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(869, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(870, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(871, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(872, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(873, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(874, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(875, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(876, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(877, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(878, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(879, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(880, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(881, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(882, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(883, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(884, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(885, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(886, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(887, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(888, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(889, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(890, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(891, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(892, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(893, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(894, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(895, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(896, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(897, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(898, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(899, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(900, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(901, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(902, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(903, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(904, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(905, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(906, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(907, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(908, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(909, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(910, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(911, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(912, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(913, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(914, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(915, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(916, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(917, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(918, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(919, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(920, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(921, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(922, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(923, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(924, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(925, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(926, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(927, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(928, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(929, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(930, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(931, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(932, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(933, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(934, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(935, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(936, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(937, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(938, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(939, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(940, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(941, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(942, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(943, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(944, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(945, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(946, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(947, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(948, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(949, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(950, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(951, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(952, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(953, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(954, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(955, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(956, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(957, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(958, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(959, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(960, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(961, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(962, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(963, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(964, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(965, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(966, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(967, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(968, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(969, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(970, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(971, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(972, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(973, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(974, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(975, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(976, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(977, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(978, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(979, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(980, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(981, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(982, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(983, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(984, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(985, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(986, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(987, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(988, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(989, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(990, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(991, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(992, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(993, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(994, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(995, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(996, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(997, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(998, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(999, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1000, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1001, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1002, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1003, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1004, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1005, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1006, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1007, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1008, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1009, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1010, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1011, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1012, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1013, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1014, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1015, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1016, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1017, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1018, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1019, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1020, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1021, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1022, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1023, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1024, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1025, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1026, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1027, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1028, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1029, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1030, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1031, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1032, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1033, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1034, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1035, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1036, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1037, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1038, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1039, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1040, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1041, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1042, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1043, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1044, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1045, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1046, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1047, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1048, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1049, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1050, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1051, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1052, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1053, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1054, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1055, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1056, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1057, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1058, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1059, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1060, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1061, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1062, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1063, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1064, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1065, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1066, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1067, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1068, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1069, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1070, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1071, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1072, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1073, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1074, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1075, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1076, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1077, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1078, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1079, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1080, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1081, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1082, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1083, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1084, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1085, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1086, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1087, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1088, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1089, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1090, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1091, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1092, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1093, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1094, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1095, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1096, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1097, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1098, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1099, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1100, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1101, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1102, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1103, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1104, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1105, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1106, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1107, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1108, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1109, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1110, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1111, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1112, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1113, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1114, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1115, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1116, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1117, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1118, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1119, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1120, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1121, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1122, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1123, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1124, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1125, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1126, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1127, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1128, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1129, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1130, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1131, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1132, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1133, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1134, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1135, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1136, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1137, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1138, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1139, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1140, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1141, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1142, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1143, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1144, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1145, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1146, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1147, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1148, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1149, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1150, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1151, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1152, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1153, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1154, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1155, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1156, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1157, 'Aggregates', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1158, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1159, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1160, 'MANAGE AGGRETGATES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1161, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1162, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1163, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1164, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1165, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1166, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1167, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1168, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1169, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1170, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1171, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1172, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1173, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1174, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1175, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1176, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1177, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1178, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1179, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1180, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1181, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1182, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1183, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1184, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1185, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1186, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1187, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1188, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1189, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1190, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1191, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1192, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1193, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1194, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1195, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1196, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1197, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1198, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1199, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1200, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1201, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1202, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1203, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1204, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1205, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1206, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1207, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1208, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1209, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1210, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1211, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1212, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1213, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1214, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1215, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1216, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1217, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1218, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1219, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1220, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1221, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1222, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1223, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1224, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1225, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1226, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1227, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1228, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1229, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1230, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1231, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1232, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1233, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1234, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1235, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1236, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1237, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1238, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1239, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1240, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1241, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1242, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1243, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1244, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1245, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1246, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1247, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1248, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1249, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1250, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1251, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1252, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1253, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1254, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1255, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1256, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1257, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1258, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1259, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1260, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1261, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1262, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1263, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1264, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1265, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1266, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1267, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1268, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1269, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1270, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1271, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1272, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1273, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1274, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1275, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1276, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1277, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1278, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1279, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1280, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1281, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1282, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1283, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1284, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1285, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1286, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1287, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1288, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1289, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1290, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1291, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1292, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1293, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1294, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1295, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1296, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1297, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1298, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1299, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1300, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1301, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1302, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1303, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1304, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1305, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1306, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1307, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1308, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1309, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1310, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1311, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1312, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1313, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1314, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1315, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1316, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1317, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1318, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1319, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1320, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1321, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1322, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1323, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1324, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1325, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1326, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1327, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1328, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1329, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1330, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1331, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1332, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1333, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1334, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1335, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1336, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1337, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1338, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1339, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1340, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1341, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1342, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1343, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1344, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1345, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1346, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1347, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1348, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1349, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1350, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1351, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1352, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1353, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1354, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1355, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1356, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1357, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1358, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1359, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1360, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1361, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1362, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1363, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1364, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1365, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1366, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1367, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1368, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1369, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1370, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1371, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1372, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1373, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1374, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1375, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1376, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1377, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1378, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1379, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1380, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1381, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1382, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1383, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1384, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1385, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1386, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1387, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1388, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1389, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1390, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1391, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1392, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1393, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1394, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1395, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1396, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1397, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1398, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1399, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1400, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1401, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1402, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1403, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1404, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1405, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1406, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1407, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1408, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1409, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1410, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1411, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1412, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1413, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1414, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1415, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1416, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1417, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1418, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1419, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1420, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1421, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1422, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1423, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1424, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1425, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1426, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1427, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1428, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1429, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1430, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1431, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1432, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(1433, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1434, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1435, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1436, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1437, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1438, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1439, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1440, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1441, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1442, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1443, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1444, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1445, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1446, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1447, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1448, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1449, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1450, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1451, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1452, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1453, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1454, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1455, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1456, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1457, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1458, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1459, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1460, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1461, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1462, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1463, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1464, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1465, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1466, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1467, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1468, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1469, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1470, 'priority subjects', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1471, 'Priority subjects', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1472, 'MANAGE Priority subjects', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1473, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1474, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1475, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1476, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1477, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1478, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1479, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1480, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1481, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1482, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1483, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1484, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1485, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1486, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1487, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1488, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1489, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1490, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1491, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1492, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1493, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1494, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1495, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1496, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1497, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1498, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1499, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1500, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1501, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1502, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1503, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1504, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1505, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1506, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1507, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1508, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1509, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1510, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1511, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1512, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1513, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1514, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1515, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1516, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1517, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1518, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1519, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1520, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1521, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1522, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1523, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1524, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1525, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1526, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1527, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1528, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1529, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1530, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1531, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1532, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1533, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1534, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1535, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1536, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1537, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1538, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1539, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1540, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1541, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1542, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1543, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1544, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1545, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1546, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1547, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1548, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1549, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1550, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1551, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1552, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1553, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1554, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1555, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1556, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1557, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1558, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1559, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1560, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1561, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1562, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1563, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1564, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1565, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1566, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1567, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1568, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1569, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1570, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1571, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1572, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1573, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1574, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1575, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1576, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1577, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1578, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1579, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1580, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1581, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1582, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1583, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1584, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1585, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1586, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1587, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1588, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1589, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1590, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1591, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1592, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1593, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1594, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1595, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1596, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1597, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1598, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1599, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1600, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1601, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1602, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1603, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1604, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1605, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1606, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1607, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1608, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1609, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1610, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1611, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1612, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1613, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1614, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1615, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1616, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1617, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1618, 'school_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1619, 'school settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1620, 'school name', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1621, 'School Motto', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1622, 'school address', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1623, 'Registration Number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1624, 'Contact Numbers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1625, 'school_email', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1626, 'Center Number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1627, 'Box Number', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1628, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1629, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1630, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1631, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1632, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1633, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1634, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1635, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1636, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1637, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1638, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1639, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1640, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1641, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1642, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1643, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1644, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1645, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1646, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1647, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1648, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1649, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1650, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1651, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1652, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1653, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1654, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1655, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1656, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1657, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1658, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1659, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1660, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1661, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1662, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1663, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1664, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1665, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1666, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1667, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1668, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1669, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1670, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1671, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1672, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1673, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1674, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1675, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1676, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1677, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1678, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1679, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1680, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1681, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1682, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1683, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1684, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1685, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1686, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1687, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1688, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1689, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1690, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1691, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1692, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1693, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1694, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1695, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1696, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1697, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1698, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1699, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1700, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1701, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1702, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1703, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1704, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1705, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1706, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1707, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1708, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1709, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1710, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1711, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1712, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1713, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1714, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1715, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1716, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1717, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1718, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1719, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1720, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1721, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1722, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1723, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1724, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1725, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1726, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1727, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1728, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1729, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1730, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1731, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1732, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1733, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1734, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1735, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1736, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1737, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1738, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1739, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1740, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1741, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1742, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1743, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1744, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1745, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1746, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1747, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1748, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1749, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1750, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1751, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1752, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1753, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1754, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1755, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1756, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1757, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1758, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1759, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1760, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1761, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1762, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1763, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1764, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1765, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1766, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1767, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1768, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1769, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1770, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1771, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1772, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1773, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1774, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1775, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1776, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1777, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1778, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1779, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1780, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1781, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1782, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1783, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1784, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1785, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1786, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1787, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1788, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1789, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1790, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1791, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1792, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1793, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1794, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1795, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1796, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1797, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1798, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1799, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1800, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1801, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1802, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1803, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1804, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1805, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1806, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1807, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1808, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1809, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1810, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1811, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1812, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1813, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1814, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1815, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1816, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1817, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1818, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1819, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1820, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1821, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1822, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1823, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1824, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1825, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1826, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1827, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1828, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1829, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1830, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1831, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1832, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1833, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1834, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1835, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1836, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1837, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1838, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1839, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1840, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1841, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1842, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1843, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1844, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1845, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1846, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1847, 'data_saved', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1848, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1849, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1850, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1851, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1852, 'Back Up', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1853, 'Create backup', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1854, 'restore from backup', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1855, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1856, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1857, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1858, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1859, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1860, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1861, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1862, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1863, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1864, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1865, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1866, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1867, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1868, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1869, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1870, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1871, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1872, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1873, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1874, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1875, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1876, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1877, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1878, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1879, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1880, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1881, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1882, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1883, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1884, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1885, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1886, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1887, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1888, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1889, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1890, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1891, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1892, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1893, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1894, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1895, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1896, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1897, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1898, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1899, 'GRADING  CRITERIA ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1900, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1901, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1902, 'AGGREGATE CRITERIA ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1903, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1904, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1905, 'SEND MARKS BY SMS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1906, 'TABULATION SHEET', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1907, 'SUBJECT  RULES ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1908, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1909, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1910, 'EXAM  LIST', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1911, 'MANAGE  MARKS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1912, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1913, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1914, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1915, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1916, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1917, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1918, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1919, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(1920, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1921, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1922, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1923, 'MANAGE PRIORITY SUBJECTS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1924, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1925, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1926, 'MANAGE  SUBJECTS RULES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1927, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1928, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1929, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1930, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1931, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1932, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1933, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1934, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1935, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1936, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1937, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1938, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1939, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1940, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1941, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1942, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1943, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1944, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1945, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1946, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1947, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1948, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1949, 'MANAGE  SUBJECT RULES', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1950, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1951, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1952, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1953, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1954, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1955, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1956, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1957, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1958, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1959, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1960, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1961, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1962, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1963, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1964, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1965, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1966, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1967, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1968, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1969, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1970, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1971, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1972, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1973, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1974, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1975, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1976, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1977, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1978, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1979, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1980, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1981, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1982, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1983, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1984, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1985, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1986, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1987, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1988, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1989, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1990, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1991, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1992, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1993, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1994, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1995, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1996, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1997, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1998, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1999, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2000, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2001, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2002, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2003, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2004, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2005, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2006, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2007, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2008, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2009, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2010, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2011, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2012, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2013, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2014, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2015, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2016, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2017, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2018, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2019, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2020, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2021, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2022, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2023, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2024, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2025, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2026, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2027, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2028, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2029, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2030, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2031, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2032, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2033, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2034, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2035, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2036, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2037, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2038, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2039, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2040, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2041, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2042, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2043, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2044, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2045, 'study_material_info_updated_successfuly', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2046, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2047, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2048, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2049, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2050, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2051, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2052, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2053, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2054, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2055, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2056, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2057, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2058, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2059, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2060, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2061, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2062, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2063, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2064, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2065, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2066, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2067, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2068, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2069, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2070, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2071, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2072, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2073, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2074, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2075, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2076, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2077, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2078, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2079, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2080, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2081, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2082, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2083, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2084, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2085, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2086, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2087, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2088, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2089, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2090, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2091, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2092, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2093, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2094, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2095, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2096, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2097, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2098, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2099, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2100, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2101, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2102, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2103, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2104, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2105, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2106, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2107, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2108, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2109, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2110, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2111, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2112, 'Exam', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2113, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2114, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2115, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2116, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2117, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2118, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2119, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2120, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2121, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2122, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2123, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2124, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2125, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2126, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2127, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2128, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2129, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2130, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2131, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2132, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2133, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2134, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2135, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2136, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2137, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2138, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2139, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2140, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2141, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2142, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2143, 'valid_email_required', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2144, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2145, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2146, 'Term', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2147, 'Year', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2148, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2149, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2150, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2151, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2152, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2153, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2154, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2155, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2156, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2157, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2158, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2159, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2160, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2161, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2162, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2163, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2164, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2165, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2166, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2167, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2168, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2169, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2170, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2171, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2172, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2173, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2174, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2175, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2176, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2177, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2178, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2179, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2180, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2181, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2182, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2183, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2184, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2185, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2186, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2187, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2188, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2189, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2190, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2191, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2192, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2193, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2194, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2195, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2196, 'Teachers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2197, 'Marks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2198, 'Marks For', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2199, 'invoice/payment', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2200, 'library_books', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2201, 'Study', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2202, 'study_documents/Homework', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2203, 'Study Material', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2204, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2205, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2206, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2207, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2208, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2209, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2210, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2211, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2212, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2213, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2214, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2215, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2216, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2217, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2218, 'Combination Already Exist', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2219, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2220, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2221, 'manage_session', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2222, 'student_promotion', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2223, 'academic_syllabus', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2224, 'teachers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2225, 'librarians', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2226, 'manage_alumni', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2227, 'manage_media', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2228, 'all_enquiries', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2229, 'manage_loan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2230, 'manage_loan_applicants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2231, 'manage_loan_approvals', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2232, 'enquiry_category', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2233, 'accountants', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2234, 'hostel_manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2235, 'generate_ID_cards', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2236, 'teacher_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2237, 'student_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2238, 'hostel_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2239, 'accountant_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2240, 'librarian_ID_card', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2241, 'classs', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2242, 'class_routines', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2243, 'school_clubs', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2244, 'manage_circular', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2245, 'task_manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2246, 'study_materials', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2247, 'attendance_report', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2248, 'daily_attendances', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2249, 'manage_CBT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2250, 'add_exams', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2251, 'list_exams', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2252, 'view_result', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2253, 'exams', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2254, 'manage_exam_questions', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2255, 'assignments', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2256, 'libraries', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2257, 'transports', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2258, 'dormitories', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2259, 'noticeboards', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2260, 'manage_holiday', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2261, 'manage_thoughts', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2262, 'front_end_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2263, 'manage_banners', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2264, 'system_information', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2265, 'news_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2266, 'manage_help_link', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2267, 'manage_help_desks', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2268, 'manage_account', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2269, 'teachers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2270, 'teachers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2271, 'teachers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2272, 'teachers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2273, 'teachers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2274, 'teachers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2275, 'teachers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2276, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2277, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2278, 'License', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2279, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2280, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2281, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2282, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2283, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2284, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2285, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2286, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2287, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2288, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2289, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2290, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2291, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2292, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2293, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2294, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2295, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2296, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2297, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2298, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2299, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2300, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2301, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2302, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2303, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2304, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2305, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2306, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2307, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2308, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2309, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2310, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2311, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2312, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2313, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2314, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2315, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2316, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2317, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2318, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2319, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2320, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2321, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2322, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2323, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2324, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2325, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2326, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2327, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2328, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2329, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2330, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2331, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2332, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2333, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2334, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2335, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2336, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2337, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2338, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2339, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2340, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2341, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2342, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2343, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2344, 'Grade', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2345, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2346, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2347, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2348, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2349, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2350, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2351, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2352, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2353, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2354, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2355, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2356, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2357, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2358, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2359, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2360, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2361, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2362, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2363, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2364, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2365, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2366, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2367, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2368, 'Teacher', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2369, 'Add', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2370, 'Class', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2371, 'Restore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2372, 'School_settings', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2373, 'MTN money', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2374, 'Airtel money', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2375, 'Credit Card Info', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2376, 'Dedit Card Info', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` int(11) NOT NULL DEFAULT '0',
  `mark_total` int(11) NOT NULL DEFAULT '100',
  `aggr` int(100) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subj_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_score` int(100) NOT NULL DEFAULT '0',
  `term` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `years` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `aggr`, `comment`, `subj_name`, `class_score`, `term`, `years`) VALUES
(1, 1, 1, 2, 1, 90, 100, 9, 'Very good', 'BIOLOGY', 0, '', ''),
(2, 1, 2, 2, 1, 70, 100, 9, '', 'chemistry', 0, '', ''),
(3, 1, 1, 2, 2, 20, 100, 0, 'hellow', 'BIOLOGY', 0, '', ''),
(4, 1, 2, 2, 2, 72, 100, 9, 'jkjkk', 'chemistry', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext NOT NULL,
  `message` longtext NOT NULL,
  `sender` longtext NOT NULL,
  `timestamp` longtext NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 unread 1 read'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `reciever` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`) VALUES
(1, 'school day', 'school day', 1511218800);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES
(1, 'bamwine', 'parent@parent.com', 'parent', '9988', 'kal', 'doctor', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `term` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `years` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `expense_category_id`, `title`, `payment_type`, `invoice_id`, `student_id`, `method`, `description`, `amount`, `timestamp`, `term`, `years`) VALUES
(1, 0, 'fees', 'income', 1, 1, '1', 'begin of term', '10000', '1511910000', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `priority_mark_rules`
--

CREATE TABLE `priority_mark_rules` (
  `id` int(11) NOT NULL,
  `subjectId` int(11) DEFAULT '0',
  `aggr_obtained` int(11) DEFAULT '0',
  `fromDiv` int(11) DEFAULT '0',
  `toDiv` int(11) DEFAULT '0',
  `dater` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `priority_mark_rules`
--

INSERT INTO `priority_mark_rules` (`id`, `subjectId`, `aggr_obtained`, `fromDiv`, `toDiv`, `dater`) VALUES
(1, 3, 9, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`) VALUES
(1, 'sciences', 'sci', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'PHC SYSTEM'),
(2, 'system_title', 'PHC SYSTEM'),
(3, 'address', ''),
(4, 'phone', ''),
(5, 'paypal_email', ''),
(6, 'currency', ''),
(7, 'system_email', ''),
(20, 'active_sms_service', 'twilio'),
(11, 'language', 'english'),
(12, 'text_align', 'left-to-right'),
(13, 'clickatell_user', ''),
(14, 'clickatell_password', ''),
(15, 'clickatell_api_id', ''),
(16, 'skin_colour', 'red'),
(17, 'twilio_account_sid', ''),
(18, 'twilio_auth_token', ''),
(19, 'twilio_sender_phone_number', ''),
(21, 'school_name', 'Valley College'),
(22, 'school_motto', 'we belive in Trust and Quality'),
(23, 'school_address', 'kampala Makerere'),
(24, 'school_reg_number', '34343434343434'),
(25, 'school_phone', '256789105998 ,256705727318'),
(26, 'school_email', 'bamwinealbert@gmail.com'),
(27, 'school_uneb\n', 'fgfgfg'),
(28, 'school_boxno', '76767 kampala uganda'),
(29, 'term', 'Term2'),
(30, 'years', '2017'),
(31, 'school_no', '3020070'),
(32, 'footer', 'Developed by BSigned Uganda'),
(33, 'session', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `roll` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_room_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `authentication_key`) VALUES
(1, 'sebunya', '11/28/2017', '', '', '', 'kal', '8009', 'student@student.com', 'student', '', '', '2', 0, 1, '45', 0, 0, '', ''),
(2, 'bamwine', '11/22/2017', 'female', '', '', 'kal', '089', 'student@student.com', 'admin', '', '', '3', 1, 1, '800', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`) VALUES
(1, 'BIOLOGY', 2, 1),
(2, 'chemistry', 2, 1),
(3, 'BOILOGY', 1, 1),
(4, 'goods-one', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`) VALUES
(1, 'bamwine', '11/15/2017', 'male', '', '', 'KAMPALA', '256789105998', 'teacher@teacher.com', 'teacher', '');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `valid`
--

CREATE TABLE `valid` (
  `startd` tinytext NOT NULL,
  `enda` tinytext NOT NULL,
  `systemco` varchar(700) NOT NULL,
  `tkl` tinytext NOT NULL,
  `Key_code` tinytext NOT NULL,
  `mach_code` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `valid`
--

INSERT INTO `valid` (`startd`, `enda`, `systemco`, `tkl`, `Key_code`, `mach_code`) VALUES
('2019-12-26 08:15:08', '2020-01-30 12:0:0 ', 'SY792144775HK', 'WitBbDVidlVZZk5DRW4vV29VWDM2TVhjUkU4Z01RRGFxMnY1YzVnMDVSc1lOQ1A2Qm1FVFVPTDBYZGhRTHdCOQ==', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `aggre`
--
ALTER TABLE `aggre`
  ADD PRIMARY KEY (`aggre_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `avrage_postion`
--
ALTER TABLE `avrage_postion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_level_points`
--
ALTER TABLE `a_level_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `priority_mark_rules`
--
ALTER TABLE `priority_mark_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- Indexes for table `valid`
--
ALTER TABLE `valid`
  ADD PRIMARY KEY (`systemco`),
  ADD KEY `systemco` (`systemco`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `aggre`
--
ALTER TABLE `aggre`
  MODIFY `aggre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `avrage_postion`
--
ALTER TABLE `avrage_postion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `a_level_points`
--
ALTER TABLE `a_level_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2377;
--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `priority_mark_rules`
--
ALTER TABLE `priority_mark_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
