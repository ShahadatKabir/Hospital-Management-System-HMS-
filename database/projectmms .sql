-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 09:41 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

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

CREATE TABLE `bloodgroup` (
  `bg_id` int(11) NOT NULL,
  `bg_name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `booking` (
  `booking_id` int(22) NOT NULL,
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
  `tyme` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `dname`, `userid`, `dcontact`, `expertise`, `fee`, `pname`, `pcontact`, `email`, `addres`, `dates`, `tyme`) VALUES
(80, 'Dr Alok Kumar', 1001, '9876543210', 'Medicine', '400', 'sahil', '9876543210', 'sahildhingra172000@gmail.com', 'phagwara', '2021-04-24', '11.00am'),
(81, 'Dr Dheeraj Khurana', 1002, '9876543219', 'Bone', '400', 'sahil', '9876543210', 'sahildhingra172000@gmail.com', 'phagwara', '2021-04-25', '03.00pm'),
(83, 'Dr Ajay Singla', 1004, '9876543214', 'Heart', '400', 'sohel rana', '9876543213', 'sohelrana@gmail.om', 'phagwara', '2021-05-07', '03.00pm'),
(84, 'Dr Dheeraj Khurana', 1002, '9876543219', 'Bone', '400', 'kundan', '1234466788', 'kd@gmail.com', 'phagwara', '2021-05-01', '03.00pm'),
(85, 'Dr Alok Kumar', 1001, '9876543210', 'Medicine', '400', 'kundan', '1234466788', 'kd@gmail.com', 'phagwara', '2021-05-04', '03.00pm'),
(86, 'Dr.Jyoti Rai', 1003, '9876543219', 'kedney', '400', 'nishant', '9876543213', 'nishantsodhi1@gmail.com', 'phagwara', '2021-04-26', '11.00am'),
(87, 'Dr.Jyoti Rai', 1003, '9876543219', 'kedney', '400', 'nishant', '1234466788', 'nishantsodhi1@gmail.com', 'phagwara', '2021-04-27', '03.00pm'),
(88, 'Dr Ajay Singla', 1004, '9876543214', 'Heart', '400', 'tandin ', '9876543217', '123tandin@gmail.com', 'phagwara', '2021-04-28', '03.00pm'),
(89, 'Dr Alok Kumar', 1001, '9876543210', 'Medicine', '400', 'tandin ', '1234466788', '123tandin@gmail.com', 'phagwara', '2021-04-29', '03.00pm'),
(90, 'Dr Alok Kumar', 1001, '9876543210', 'Medicine', '400', 'sahil', '9876543210', 'sahildhingra172000@gmail.com', 'phagwara', '2021-04-29', '11.00am');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(22) NOT NULL,
  `cat` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `firstname`, `lastname`, `email`, `comment`) VALUES
(2, 'zahid', 'hasan', 'hasan@gmail.com', 'good job'),
(3, 'sahil', 'dhingra', 'sahildhingra172000@gmail.com', 'good'),
(4, 'sahil', 'dhingra', 'sahildhingra172000@gmail.com', 'good'),
(5, 'sahil', 'dhingra', 'sahildhingra172000@gmail.com', 'good'),
(6, 'honey', 'singh', 'hd@gmail.com', 'average'),
(7, 'honey', 'saini', 'hs@gmail.com', 'good'),
(9, 'sahil', 'dhingra', 'sahildhingra172000@gmail.com', 'good'),
(10, 'sd', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(22) NOT NULL,
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
  `pic` varchar(111) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doctor_id`, `name`, `address`, `contact`, `email`, `expertise`, `id`, `fee`, `userid`, `password`, `pic`) VALUES
(24, '', 'Dr Dheeraj Khurana', 'phagwara', '9876543219', 'dk123@gmail.com', 'Bone', 0, '400', '1002', '123', 'dheeraj.jpg'),
(25, '', 'Dr.Jyoti Rai', 'phagwara', '9876543219', 'jyotirai12@gmail.com', 'kedney', 0, '400', '1003', '123', 'jyti.jpg'),
(26, '', 'Dr Ajay Singla', 'phagwara', '9876543214', 'ajay123@gmail.com', 'Heart', 0, '400', '1004', '123', 'ajayy.jpg'),
(27, '', 'Dr Alok Kumar', 'phagwara', '9876543210', 'alokkumar123@gmail.com', 'Medicine', 0, '400', '1005', '123', 'alok.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `unit` varchar(2) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(75) NOT NULL,
  `expertise` varchar(30) NOT NULL,
  `available` varchar(50) NOT NULL,
  `rating` int(20) NOT NULL,
  `feedback` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `expertise`, `available`, `rating`, `feedback`) VALUES
(20, 'sahildhingra172000@gmail.com', 'Excellent', 'Highly available', 5, 'all good'),
(21, 'sohelrana@gmail.com', 'Good', 'available mostly', 4, 'average'),
(22, 'kd@gmail.com', 'Excellent', 'Highly available', 5, 'time saving'),
(23, 'nishantsodhi1@gmail.com', 'Excellent', 'Highly available', 5, 'satisfied'),
(24, '123tandin@gmail.com', 'Excellent', 'Highly available', 5, 'one of best');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `age` varchar(22) NOT NULL,
  `contact` varchar(22) NOT NULL,
  `address` varchar(22) NOT NULL,
  `bgroup` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `contact`, `address`, `bgroup`, `email`, `password`) VALUES
(7, 'Tandin Phurba', '21', '9876543210', 'phagwara', 'B+', '123tandin@gmail.com', '123456'),
(10, 'sahil', '21', '9876543210', 'phagwara', 'O+', 'sahildhingra172000@gmail.com', 'sahil1234'),
(11, 'Md Sohel Rana', '34', '9876543219', 'phagwara', 'AB+', 'sohelrana@gmail.om', '123'),
(12, 'kundan Singh', '22', '9876543219', 'phagwara', 'O+', 'kd@gmail.com', '123'),
(13, 'nishant sodhi', '22', '9876543211', 'phagwara', 'O+', 'nishantsodhi1@gmail.com', '123'),
(14, 'monika dhingra', '1', '9876543210', 'phagwara', 'O+', 'monika.dhingra1979@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(550) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `name`, `description`, `pic`) VALUES
(6, 'Coaching', 'Good clinical leadership is well recognised as vital for high quality care. But clinical leadership is a challenging and often lonely job. It sits at the interface of the clinical and the corporate agenda which may not be aligned.\r\n\r\nWe have a range of clinical coaches who have practical experience of clinical leadership within large healthcare organisations who have specifically developed the coaching skills to work one to one with clinical leaders.', 'download.jpg'),
(7, 'Broad Range Of Specialities ', 'We have a broad range of clinical specialities represented that cover most of the clinical areas required by our clients. Each of our clinicians is highly experienced and respected in their own clinical speciality. They have been carefully chosen as having a blend of senior clinical and managerial experience along with  the interpersonal skills required in a consulting environment.', 'pexels-ksenia-chernaya-5752290.jpg'),
(5, 'Direction', 'A more directive approach can be required where a client is stuck with implementing service improvements or where there are serious performance concerns. Often these are due to poor relationships between local clinicians or difficult individual behaviours.\r\n\r\nWe offer some prominent and well respected clinicians with a national reputations who can be deployed to unblock these situations as part of the consulting delivery team.', 'experienced facullty.jpg'),
(8, 'Digital Transformation', 'The digital working environment for healthcare is rapidly evolving and accelerating to accommodate the coronavirus restrictions. It has an increasing focus for our clients requests.\r\n\r\nWe have responded by developing a team of clinicians with specific digital expertise. This spans from thorough long term knowledge of IT implementation programmes, software/app development, through to operational improvements through clinical informatics, board level responsibilities for digital transformation to commercial roles in the technology sector.', 'mask.jpg'),
(9, 'Facilitation', 'Many of our client requests are for transforming service delivery, either within an organisation or across a system of care. Mostly they collectively have the knowledge, but struggle with bringing this together and implementing the changes.\r\n\r\nIt is often the clinicians who are being asked to change the way they work for transformation to occur. The clinicians therefore need to design the service changes for them to be effective. We have specifically chosen clinicians with very well developed facilitation skills. ', 'image3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `donar_id` int(100) NOT NULL,
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
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `requestes` (
  `reg_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reqdate` date NOT NULL,
  `detail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `user` (
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

CREATE TABLE `users` (
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`donar_id`);

--
-- Indexes for table `requestes`
--
ALTER TABLE `requestes`
  ADD PRIMARY KEY (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `bg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `donar_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `requestes`
--
ALTER TABLE `requestes`
  MODIFY `reg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
