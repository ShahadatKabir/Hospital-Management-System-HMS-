-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2021 at 10:39 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectmms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

DROP TABLE IF EXISTS `bloodgroup`;
CREATE TABLE IF NOT EXISTS `bloodgroup` (
  `bg_id` int(11) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(12) NOT NULL,
  PRIMARY KEY (`bg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(1, 'O+'),
(2, 'O-'),
(3, 'AB+'),
(4, 'AB-'),
(5, 'A+'),
(6, 'A-'),
(7, 'B+'),
(8, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int(22) NOT NULL AUTO_INCREMENT,
  `dname` varchar(22) NOT NULL,
  `userid` int(22) NOT NULL,
  `dcontact` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `fee` varchar(22) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `pcontact` varchar(50) NOT NULL,
  `email` varchar(111) NOT NULL,
  `addres` varchar(50) NOT NULL,
  `dates` date NOT NULL,
  `tyme` varchar(22) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `dname`, `userid`, `dcontact`, `expertise`, `fee`, `pname`, `pcontact`, `email`, `addres`, `dates`, `tyme`) VALUES
(20, 'Md. Azharul Islam', 1016, '01521470368', 'Bone', '800', 'Tandin Phurba', '77874730', '123tandin@gmail.com', 'Thimphu, Bhutan', '2021-03-18', '11.00am'),
(21, 'Tandin Phurba', 0, '77874730', 'Medicine', '5000', 'Tandin Phurba', '77874730', '123tandin@gmail.com', 'Thimphu, Bhutan', '2021-03-18', '03.00pm'),
(22, 'Dr. Abdul Kader', 1001, '01734761999', 'Heart', '500', 'sahil', '9876543210', 'sahildhingra172000@gmail.com', 'phagwara', '2021-03-31', '11.00am');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `cat` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`) VALUES
(1, 'Medicine'),
(2, 'Heart'),
(3, 'Bone'),
(4, 'Kedney'),
(5, 'Cardiologist'),
(6, 'Plastic Surgeon'),
(7, 'General Physician'),
(8, 'Neurologist');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` varchar(111) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `firstname`, `lastname`, `email`, `comment`) VALUES
(1, 'Azharul', 'Islam', 'azad.ece13@gmai', 'My comment is getting successful.'),
(2, 'zahid', 'hasan', 'hasan@gmail.com', 'good job'),
(3, 'sahil', 'dhingra', 'sahildhingra172000@gmail.com', 'good'),
(4, 'sahil', 'dhingra', 'sahildhingra172000@gmail.com', 'good'),
(5, 'sahil', 'dhingra', 'sahildhingra172000@gmail.com', 'good'),
(6, 'honey', 'singh', 'hd@gmail.com', 'average');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doc_id` int(22) NOT NULL AUTO_INCREMENT,
  `doctor_id` varchar(22) NOT NULL,
  `name` varchar(22) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(14) NOT NULL,
  `email` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `id` int(11) NOT NULL,
  `fee` varchar(111) NOT NULL,
  `userid` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL,
  `pic` varchar(111) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doctor_id`, `name`, `address`, `contact`, `email`, `expertise`, `id`, `fee`, `userid`, `password`, `pic`) VALUES
(18, '', 'Tandin Phurba', 'Thimphu, Bhutan', '77874730', '123tandin@gmail.com', 'Medicine', 0, '5000', 'adnim', '17813848', '1bfa641c847b48625257eb2ec9cb7f54.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
CREATE TABLE IF NOT EXISTS `donation` (
  `donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `unit` varchar(2) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(222) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `name`, `address`, `unit`, `dates`, `email`) VALUES
(1, 'Mazhar', 'khulna', '1', '2017-11-07', 'abul@gmail.com'),
(2, 'Mokarrom', 'Saidpur', '2', '2017-11-11', 'mamun@gmail.com'),
(3, 'Azad', 'hstu', '2', '2017-01-21', 'mamun@gmail.com'),
(4, 'sumaiya', 'Saidpur', '1', '2017-11-15', 'azad.ece13@gmail.com'),
(5, 'Al-Mamun', 'hstu', '1', '2017-12-05', 'azad.ece13@gmail.com'),
(6, 'Azad', 'aaa', '2', '2017-12-29', 'azad.ece13@gmail.com'),
(7, 'Md. Azharul Islam', 'Dhaka', '2', '2018-05-12', 'azad.ece13@gmail.com'),
(8, 'Md. Azharul Islam', 'Dhaka', '1', '2018-05-10', 'azad.ece13@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(22) NOT NULL,
  `expertise` varchar(30) NOT NULL,
  `available` varchar(50) NOT NULL,
  `rating` int(20) NOT NULL,
  `feedback` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `expertise`, `available`, `rating`, `feedback`) VALUES
(4, '123tandin@gmail.com', 'Good', 'available mostly', 3, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) NOT NULL,
  `age` varchar(22) NOT NULL,
  `contact` varchar(22) NOT NULL,
  `address` varchar(22) NOT NULL,
  `bgroup` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `contact`, `address`, `bgroup`, `email`, `password`) VALUES
(7, 'Tandin Phurba', '21', '9876543210', 'Thimphu, Bhutan', 'B+', '123tandin@gmail.com', '420Mind!'),
(8, 'Tenzin', '22', '77654321', 'Paro, Bhutan', 'O+', 'tenzin123@gmail.com', '17813848'),
(9, 'sahil', '12', '67898767', 'gh', 'O-', 'sahildhingra12000@gmail.com', '123'),
(10, 'sahil', '21', '9876543210', 'phagwara', 'O+', 'sahildhingra172000@gmail.com', 'sahil1234567');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `name`, `description`, `pic`) VALUES
(6, 'approach', '	\r\nOne to One interaction', 'download.jpg'),
(7, 'technology', 'attribute based keyword search -eye', 'pexels-ksenia-chernaya-5752290.jpg'),
(5, 'easy referal', 'cross institutional data exchange', 'experienced facullty.jpg'),
(8, 'outpatient care', 'we follow covid guidelines', 'mask.jpg'),
(9, 'query solve', 'Questionnaire and whatsapp support available', 'image3.jpg'),
(10, 'syringe', 'Questionnaire and whatsapp support available', 'syringe.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `donar_id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `type` varchar(22) NOT NULL,
  `city` varchar(221) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL,
  PRIMARY KEY (`donar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`donar_id`, `username`, `gender`, `age`, `contact`, `type`, `city`, `address`, `bgroup`, `dates`, `email`, `password`, `pic`) VALUES
(86, 'Syeda Musharrat', 'female', '21', '01712292009', 'Blood Donor', 'Dinajpur', 'Ghashipara', 'O+', '0000-00-00', 'musharratnashrum.mn@gmail.com', 123, ''),
(87, 'Hussain Al Mortuza', 'male', '21', '01706742647', 'Blood Donor', 'Rangpur', 'Dhap', 'B+', '0000-00-00', 'mortuza1202089@gmail.com', 123, ''),
(88, 'Rumana Akter Ela', 'female', '21', '01734301217', 'Blood Donor', 'Dinajpur', 'Ramnagar', 'O+', '0000-00-00', 'elahstu@gmail.com', 123, ''),
(89, 'Miftahul Jannat', 'female', '22', '01734472278', 'Blood Seeker', 'Panchagarh', 'Panchagarh', 'O+', '0000-00-00', 'mj.nure@gmail.com', 123, ''),
(90, 'Farjana Lina', 'female', '21', '01773438430', 'Blood Seeker', 'Dinajpur', 'Basherhat', 'O+', '0000-00-00', 'lina73farjana@gmail.com', 123, ''),
(91, 'Dristy Das', 'female', '21', '01795660520', 'Blood Donor', 'Dinajpur', 'Kalitola', 'B+', '0000-00-00', 'dristydas.hstu@gmail.com', 123, ''),
(92, 'Hamidul Islam', 'male', '21', '01751318963', 'Blood Seeker', 'Kurigram', 'Razarhat', 'O+', '0000-00-00', 'imdhamidul13@gmail.com', 123, ''),
(93, 'Sirazum Monira', 'female', '22', '01757950876', 'Blood Donor', 'Dinajpur', 'Doshmail', 'O+', '0000-00-00', 'sirazum79@gmail.com', 123, ''),
(94, 'Atiya Sanjida Etu', 'female', '20', '01836022493', 'Blood Seeker', 'Dinajpur', 'Nimtola', 'B+', '0000-00-00', 'atiyasanjida42@gmail.com', 123, ''),
(95, 'Sazzad Hossain', 'male', '21', '017738783899', 'Blood Donor', 'Dinajpur', 'Birol', 'O+', '0000-00-00', 'sazzad1002@gmail.com', 123, ''),
(96, 'S.M. Janardan Roy', 'male', '21', '01738082848', 'Blood Donor', 'Thakurgaon', 'Setabgonj', 'A+', '0000-00-00', 'janardanroyhstu2013@gmail.com', 123, ''),
(97, 'Shafiqul Islam ', 'male', '21', '01722710298', 'Blood Donor', 'Panchagarh', 'Debigonj', 'O+', '0000-00-00', 'sujon.hstu.tee013@gmail.com', 123, ''),
(98, 'Uswatun Hasana ', 'female', '22', '01747125554', 'Blood Donor', 'Dinajpur', 'Paharpur', 'A+', '0000-00-00', 'uswatun.h5554@gmail.com', 123, ''),
(99, 'Keshob Ray', 'male', '21', '01761023408', 'Blood Donor', 'Rangpur', 'Keranir hat', 'B+', '0000-00-00', 'keshobrayhstu91@gmail.com', 123, ''),
(100, 'Md. Elias Hossain', 'male', '21', '01751119073', 'Blood Donor', 'Dinajpur', 'Kosba,Pulhat', 'B+', '0000-00-00', 'md.eliashossain13@gmail.com', 123, ''),
(101, 'Md. Azharul Islam', 'male', '21', '01764761919', 'Blood Donor', 'Nilphamari', 'saidpur', 'O+', '0000-00-00', 'azad.ece13@gmail.com', 123, ''),
(102, 'Maruf Hasan Piko', 'male', '21', '01737366366', 'Blood Donor', 'Rangpur', 'Dhap Kakolilane', 'O+', '0000-00-00', 'pikohasan73@gmail.com', 123, ''),
(103, 'Fatema Farin', 'female', '21', '01714442319', 'Blood Seeker', 'Jessore', 'West Barandipara', 'O+', '0000-00-00', 'fatema.farin13@gmail.com', 123, ''),
(104, 'Fahim Ahmed ', 'male', '21', '01765676686', 'Blood Seeker', 'Kushtia', 'Bheramara', 'O-', '0000-00-00', 'fahimahmed100@gmail.com', 123, ''),
(105, 'Mokarram Hossain', 'male', '22', '01723155254', 'Blood Donor', 'Nilphamari', 'Saidpur', 'A+', '0000-00-00', 'connect.with.me254@gmail.com', 123, ''),
(106, 'Arabi Mohammad ', 'male', '21', '01742827093', 'Blood Donor', 'Kurigram', 'Kurigram', 'B+', '0000-00-00', 'didar247@gmail.com', 123, ''),
(107, 'Ajmary Jahan Riny', 'female', '21', '01772974973', 'Blood Donor', 'Dinajpur', 'Uttor Faridpur', 'O+', '0000-00-00', 'ajmaryjahan@gmail.com', 123, ''),
(108, 'Resmi Rashid', 'female', '21', '01762946949', 'Blood Donor', 'Lalmonirhat', 'Mission more', 'B+', '0000-00-00', 'resmi.tee13@gmail.com', 123, ''),
(109, 'Sazia Haider', 'female', '21', '01705808656', 'Blood Donor', 'Dinajpur', 'Newtown 3', 'B+', '0000-00-00', 'saziahaidersizu@gmail.com', 123, ''),
(110, 'Shohel Rana', 'male', '21', '01761273269', 'Blood Donor', 'Thakurgaon', 'Pirgonj', 'A+', '0000-00-00', 'shohelhstu117@gmail.com', 123, ''),
(111, 'Al-Mamun', 'male', '22', '01746314882', 'Blood Donor', 'Nilphamari', 'Saidpur', 'AB+', '0000-00-00', 'mamunhstu13@gmail.com', 123, ''),
(112, 'Babul Hossain', 'male', '21', '01738421785', 'Blood Donor', 'Chapainawabganj', 'Shibgonj', 'B+', '0000-00-00', 'babul.hstu@gmail.com', 123, ''),
(113, 'Aysha Siddika Shova', 'female', '21', '01793965152', 'Blood Seeker', 'Dinajpur', 'Munshipara', 'B+', '0000-00-00', 'siddika.shova5152@gmail.com', 123, ''),
(114, 'Kanak Borman', 'male', '21', '01758964988', 'Blood Donor', 'Bogra', 'Adamdighi', 'A+', '0000-00-00', 'kanakborman@gmail.com', 123, ''),
(115, 'Mukesh Chaudhary', 'male', '21', '01794953611', 'Blood Donor', 'Dinajpur', 'HSTU', 'B+', '0000-00-00', 'mukesh101mak@gmail.com', 123, ''),
(116, 'username', 'female', '21', '3', 'Blood Seeker', 'Chapainawabganj', 'hstu', 'O-', '2017-11-29', 'azad.ece13@gmail.com', 123, ''),
(117, 'developerazad', 'male', '21', '01521470368', 'Blood Donor', 'Dinajpur', 'Dhaka', 'O-', '0000-00-00', 'developerazad.hstu@gmail.com', 111, ''),
(121, 'admin', '', '', '01764761919', '', 'Dinajpur', '', 'O+', '0000-00-00', 'admin@gmail.com', 123, ''),
(122, 'admin', '', '', '', '', '', '', '', '0000-00-00', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

DROP TABLE IF EXISTS `requestes`;
CREATE TABLE IF NOT EXISTS `requestes` (
  `reg_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reqdate` date NOT NULL,
  `detail` varchar(100) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`reg_id`, `name`, `gender`, `age`, `mobile`, `bgroup`, `email`, `reqdate`, `detail`) VALUES
(3, 'admin', 'male', 33, '01764761919', '', 'g@gmail.com', '2022-01-19', 'save life'),
(4, 'admin', 'male', 33, '01764761919', '', 'g@gmail.com', '2022-01-19', 'save life'),
(5, 'sanaaa', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(6, 'sanaaa', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(7, 'sanaaa', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(8, 'sanaaa', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(9, 'mamun', 'male', 22, '01777777', 'AB+', 'mamun@gmail.com', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `type`) VALUES
('admin', 'admin', 'admin'),
('adnim', '13020944', 'admin'),
('172000', '172000', '172000'),
('', '', ''),
('987654321', '987654321', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `type`) VALUES
('adnim', '13020944', 'admin'),
('sahil', 'sahil', 'sahil');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
