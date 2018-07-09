-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2017 at 11:33 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tolet`
--

-- --------------------------------------------------------

--
-- Table structure for table `commercialspace`
--

CREATE TABLE `commercialspace` (
  `postId` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `division` varchar(250) NOT NULL,
  `district` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `rent` varchar(250) NOT NULL,
  `size` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `carparking` varchar(250) NOT NULL,
  `lift` varchar(250) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT 'pending',
  `image` longblob NOT NULL,
  `imageName` varchar(200) DEFAULT 'Unavailable',
  `datee` varchar(200) DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercialspace`
--

INSERT INTO `commercialspace` (`postId`, `title`, `category`, `division`, `district`, `address`, `rent`, `size`, `description`, `carparking`, `lift`, `contact`, `email`, `status`, `image`, `imageName`, `datee`) VALUES
(2, 'Garage Rent @Gajipur', 'Garage', 'Dhaka', 'Dhaka', '234,Gajipur', '2500', '1900', 'A big place for car parking', 'Yes', 'No', '1678482121', 'halim@yahoo.com', 'Approved', '', 'Unavailable', 'none'),
(7, 'Garage for rent', 'Garage', 'Dhaka', 'Dhaka', '289 East Nakhalpara,Tejgaon,Dhaka', '170000', '7500', '40 car parking space and underground secured place.Local landowner and private property.Highrise building and frontier car parking space are also available.Besides Nabisco and Volkswagen showroom. 20ft wide road.', 'Yes', 'No', '01756949019', 'nafis123@gmail.com', 'Approved', '', 'comm7.png', '07-30-2017'),
(8, 'Office Space for Rent', 'Office', 'Dhaka', 'Dhaka', 'House-23, Block-F, Road-4, Flat-A1, Banani.', '65000', '2000', 'A 2000sft space is vacant for Office Rent at Banani prime location. Front side, road facing n prime location beside road no.11, Banani.', 'Yes', 'Yes', '01819165026', 'nafisa1@gmail.com', 'Approved', '', 'comm8.JPG', '08-01-2017'),
(9, 'Excellent shop in a Food Court (7th floor) in Grand Zam Zam Tower', 'Shop', 'Dhaka', 'Dhaka', 'Sonargaon Janapath and Grareeb-Nawaz Ave, Sector 13, Uttara', '54500', '', 'Excellent and spacious shop in a Food Court , Number 809 situated on 7th Floor, Grand Zam Zam Tower', 'Yes', 'Yes', '01754399697', 'nafisa1@gmail.com', 'Approved', '', 'comm9.jpeg', '08-01-2017'),
(11, 'Office rent at Baridhara', 'Office', 'Dhaka', 'Dhaka', 'APT# A3, H#10, R# 2E, Block#J, BARIDHARA', '55000', '', 'Single Apartment per floor, With all utility connection at 3rd floor, lift, generator, South-east corner plot. New Building', 'Yes', 'Yes', '01711587576', 'sshibli745@gmail.com', 'pending', '', 'unavailable', '08-01-2017'),
(12, 'shop for rent at Nakhal para', 'Shop', 'Dhaka', 'Dhaka', '230, west nakhalpara, tejgaon, dhaka', '5000', '70', 'advance: 300000 tk, for details contact.', 'No', 'No', '01728522296', 'sshibli745@gmail.com', 'pending', '', 'comm12.jpg', '08-01-2017');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `massege` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'unsolved',
  `datee` varchar(200) DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `category`, `massege`, `status`, `datee`) VALUES
(4, 'Shahariar Shibli', 'sshibli745@gmail.com', 'Complaint', 'Site is down most of the time.\r\nPlease fix this.', 'unsolved', '08-02-2017'),
(5, 'Swapnil Biswas', 'swapnilaustcse@gmail.com', 'Suggestions', 'Please improve the design of About us page!!', 'unsolved', '08-02-2017'),
(6, 'Nafis Islam', 'nafis123@gmail.com', 'Information', 'Can you provide the detail about the website?', 'unsolved', '08-02-2017'),
(7, 'Nafisa Rahman', 'nafisa1@gmail.com', 'Others', 'Please Approve my post of 8-2-2017', 'unsolved', '08-02-2017');

-- --------------------------------------------------------

--
-- Table structure for table `residentialhouse`
--

CREATE TABLE `residentialhouse` (
  `postId` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `division` varchar(250) NOT NULL,
  `district` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `rent` varchar(250) NOT NULL,
  `size` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `bedroom` varchar(250) NOT NULL,
  `bathroom` varchar(250) NOT NULL,
  `carParking` varchar(250) NOT NULL,
  `lift` varchar(250) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT 'pending',
  `imageName` varchar(200) DEFAULT 'unavailable',
  `datee` varchar(200) DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `residentialhouse`
--

INSERT INTO `residentialhouse` (`postId`, `title`, `category`, `division`, `district`, `address`, `rent`, `size`, `description`, `bedroom`, `bathroom`, `carParking`, `lift`, `contact`, `email`, `status`, `imageName`, `datee`) VALUES
(18, '1 or 2 Female mate wanted', 'Female Mess', '', '', 'Sewrapara,mirpur,h-979', '7000', '', 'Full tiles master bed room with attached washroom, balcony, kitchen with drawing dining ..... 4th floor , open place , always available sunlight and air . Secured with Caretaker . Homely environment . for details 1 jon o thakte perbe 2 jon o thakte p', '1', '1', 'No', 'No', '01884335031', 'sshibli745@gmail.com', 'Approved', 'res18.jpg', '07-29-2017'),
(21, 'Need Hindu Roommate', 'Bachelor Mess', 'Dhaka', 'Dhaka', 'Adarshanagar,Badda', '0', '', 'one new big flat with fully tiles now we are 3 persons. need more 3/4 persons to share the flat from August-17', '', '1', 'Yes', 'No', '01924608630', 'nafis123@gmail.com', 'Approved', 'unavailable', '07-30-2017'),
(25, 'House for Rent', 'Family House', 'Dhaka', 'Dhaka', 'Sector: 14, House: 81, Road: 17, Uttara', '13000', '', 'It is a 6 storied indepedent building with 5floor for accommodation and ground floor for parking. Suitable for service apartment, foreign office, rehab centre, old home etc.', '1', '2', 'No', 'No', '01717592336', 'nafisa1@gmail.com', 'Approved', 'res25.jpg', '08-01-2017'),
(26, 'To-let in Merul Badda', 'Bachelor Mess', 'Dhaka', 'Dhaka', 'House#09, road#16, South Baridhara R/A, DIT Project, Merul Badda', '9500', '', 'South facing apartment with a wide balcony. 1 month advance should be done. Floor: 6th floor Available from 1st september, 2017.', '1', '1', 'Yes', 'No', '01817530697', 'nafisa1@gmail.com', 'Approved', 'unavailable', '08-01-2017'),
(27, 'One Big Room at Shuvastu Nazarvalley', 'Sublet', 'Dhaka', 'Dhaka', 'Tower 1 (16 F1), Suvastu Nazarvalley, Shajadpur, Gulshan', '6500', '', 'Room rent is fixed and service charge is exclusive from the room rent. For details Please contact with me. Thanks. ', '1', '1', 'No', 'Yes', '01720021241', 'nafisa1@gmail.com', 'Approved', 'res27.jpg', '08-01-2017'),
(28, 'one big room rent for female', 'Female Mess', 'Dhaka', 'Dhaka', 'kaderabad housing(near mokbul hossain degree college)', '6000', '', 'one big room..all time gas water and electricity available.price all included.100% security all time.', '1', '1', 'No', 'No', '01683768914', 'nafisa1@gmail.com', 'Approved', 'unavailable', '08-01-2017'),
(29, 'House Rent at Ghorashal', 'Family House', 'Dhaka', 'Dhaka', 'Ghorashal Shantanpara', '0', '', ' rooms, 1 Dining Space, Kitchen, Garage, Gas, Electricity Water Facility 24 hours, Apartment Type, Full Secured ', '3', '2', 'Yes', 'No', '01742977021', 'sshibli745@gmail.com', 'Approved', 'unavailable', '08-01-2017'),
(30, 'Bachelor Mess wanted (gentle muslim)', 'Bachelor Mess', 'Dhaka', 'Dhaka', '66/ E West Razabazar, Farmgate, Dhaka.', '0', '', 'For details contact.', '3', '2', 'Yes', 'No', '01847214417', 'sshibli745@gmail.com', 'Approved', 'unavailable', '08-01-2017'),
(31, 'Tolet for beacholer ', 'Bachelor Mess', 'Dhaka', 'Dhaka', 'Shahzadpur kha21/3gulahan.dhaka', '7000', '', 'One sublet room from July for only beacholor all bills r including rent7000fixed room toilet kitchen all r tiles .gownfloor.bolamosjider dole even.maybe 4member easily suitable.one months advance d running months rent payable 1-10.', '1', '1', 'No', 'No', '01712332782', 'sshibli745@gmail.com', 'Approved', 'unavailable', '08-01-2017'),
(32, 'To-Let (Small Family)', 'Family House', 'Dhaka', 'Dhaka', 'House-05, Main Road, Block-C, Banasree, Rampura, Dhaka-1219.', '14000', '750', 'Flat (4th & 6th Floor are Available ),2 Balconies,Drawing,Dinning,Kitchen. ', '2', '2', 'No', 'No', '01552601700', 'admin@gmail.com', 'Approved', 'res32.jpg', '08-02-2017'),
(33, 'flat rent at tejgaon', 'Family House', 'Dhaka', 'Dhaka', 'Tejkunipara,Farmgate', '0', '', 'flat of two bedroom, bathroom, kitchen, dining and veranda at ground floor near farmgate', '2', '1', 'No', 'No', '01749159012', 'admin@gmail.com', 'Approved', 'res33.JPG', '08-02-2017'),
(34, 'Furnished Room Sublet for female in Uttara', 'Sublet', 'Dhaka', 'Dhaka', 'Road no #7/b,Sector# 9,Uttara, Dhaka-1230,Bangladesh', '15000', '300', 'I would like to offer you this excellent furnished room in Uttara Sector 9, Road 7. The location is being considered very calm and quiet. You can use Drawing room, Dining room, Kitchen. . You will be given food 3 times', '1', '1', 'No', 'Yes', '01916298700', 'admin@gmail.com', 'Approved', 'res34.jpg', '08-02-2017'),
(35, 'SUBLET ONE ROOM ATTACH BATH BELCONY', 'Sublet', 'Dhaka', 'Dhaka', 'SECTOR -10 ROAD -02,Uttara', '8000', '', '1.RENT FROM 1ST DECEMBER. 2.1ST FLOOR. 3.ATTACH BATH N BELCONY. 4.DINNING ROOM. 5.DRAWING ROOM. 6.KITCHEN.', '1', '1', 'Yes', 'No', '01850331201', 'admin@gmail.com', 'Approved', 'res35.jpg', '08-02-2017'),
(36, 'one room rent from 1st September,2017', 'Bachelor Mess', 'Dhaka', 'Dhaka', '6/17,5th floor, Salimullah Road,mohammadpur,dhaka', '5500', '', 'one separate room with attach toilet.rent-5500 without electricity depend on use.its 2 room flat.maximum 2 person allow.', '1', '1', 'No', 'No', '01773168411', 'admin@gmail.com', 'Approved', 'res36.jpg', '08-02-2017'),
(37, 'One Room Available from 1st September 2017', 'Bachelor Mess', 'Dhaka', 'Dhaka', 'H-29, Level-6 A Arjotpara Mohakhali Dhaka', '6500', '', 'We are Looking for one who is service holder or connect with any radiant job.', '1', '2', 'No', 'No', '01912405174', 'admin@gmail.com', 'Approved', 'res37.jpg', '08-02-2017'),
(38, 'One Room Rent(Female)', 'Female Mess', 'Dhaka', 'Dhaka', 'Tolarbag Water Tank Goli,Near Bangla college,Mirpur-1', '6000', '', 'From September Month One Room rent for female Service holder or Student Facilities: 1.Attach Bathroom 2.One Balcony 3.All floors are Tiles mated. 4.24 Hours Water & Gas available', '1', '1', 'No', 'No', '01723309458', 'admin@gmail.com', 'pending', 'res38.jpg', '08-02-2017'),
(39, 'female flatemate needed,one or two', 'Female Mess', 'Dhaka', 'Dhaka', 'kala chand pur ,paka mosjid road, opposite to commitionars house,gulshan 2,beside united hospital,', '8000', '', 'Two female flatmate needed from September1,2017. Full tiles master bed room with attached washroom, balcony, separated kitchen with drawing dining', '2', '1', 'No', 'No', '01787613994', 'admin@gmail.com', 'pending', 'unavailable', '08-02-2017');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `email`, `password`, `contact`) VALUES
('Fariha Mahbub', 'fariha46@gmail.com', 'fariha46', '01787894561'),
('Hafizul Islam Himel', 'hafizulhimel@gmail.com', 'hafizulhimel', '01743216547'),
('Arafath Karim', 'karim56@yahoo.com', 'karim56', '01917401176'),
('Mariha Rahman', 'mariha33@gmail.com', 'mariha33', '01817401176'),
('Nafis Islam', 'nafis123@gmail.com', 'nafis123', '01671237895'),
('Nafisa Rahman', 'nafisa1@gmail.com', 'nafisa1', '01687485962'),
('Rahim Uddin', 'rahim56@gmail.com', 'rahim56', '01819631478'),
('Rahima Khatun', 'rahima11@gmail.com', 'rahima11', '01553571598'),
('Saimon Azad', 'saimonazad2@yahoo.com', 'saimonazad2', '01858671187'),
('Shahariar Shibli', 'sshibli745@gmail.com', '4321', '01687842121'),
('Swapnil Biswas', 'swapnilaustcse@gmail.com', '1234', '01723017782');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commercialspace`
--
ALTER TABLE `commercialspace`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `residentialhouse`
--
ALTER TABLE `residentialhouse`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commercialspace`
--
ALTER TABLE `commercialspace`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `residentialhouse`
--
ALTER TABLE `residentialhouse`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
