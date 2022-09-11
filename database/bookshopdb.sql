-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 05:02 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2a$10$I3qKkNLEUGVIqbGCNyydSOovA5t.0385z7.BQI2vc8IuHms1U3dgi');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`) VALUES
(1, 'adones', '$2a$10$gPlX7FlRFIwcB9E.N4MjROEdryV2MnsMfmFzv6ZAgmKI7u254heVW');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'ordered'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `descr` text NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `descr`, `price`, `stock`, `picture`) VALUES
(1, 'Ponniyin Selvan', 'Ponniyin Selvan  is a historical fiction novel by Kalki Krishnamurthy, written in Tamil.it tells the story of early days of Arulmozhivarman , who later became the great Chola emperor Rajaraja Chola I. Kalki visited Sri Lanka three times to gather information for it. ', 567, 78, 'Ponniyin_Selvan.jpg'),
(2, 'Parthiban Kanavu', 'Parthiban Kanavu . Parthiban dream is a Tamil novel written by Kalki Krishnamurthy.This novel chronicles the attempts of Vikraman, the son of the Chola king Parthiban, to attain independence from the Pallava ruler Narasimhavarman. ', 420, 80, 'Parthiban_kanavu.jpg'),
(3, 'Sivagamiyin Sapatham', 'Sivagamiyin Sapatham is a Tamil historical novel written by Kalki', 365, 85, 'Sivagamiyin_Sapatham.jpg'),
(4, 'Vekkai', 'Vekkai, which appears on first reading as an ordinary revenge story, is a literary work with subtle multi-dimensionality.', 422, 69, 'Vekkai.jpg'),
(5, 'Bharathiyar Kavithaikal', 'Here we have the huge collection of Bharathiyar Kavithaigal in Tamil. All the Bharathiyar Kavithaigal here are in the Tamil language and it was the original language of Bharathiyar Kavithaigal.', 650, 100, 'Bharathiyar_Kavithaikal.jpg'),
(6, 'Thirukkural', 'The Tirukkuṟaḷ or shortly the Kural is a classic Tamil language text consisting of 1,330 short couplets, or kurals, of seven words each', 775, 100, 'Thirukkural.jpg'),
(7, 'Mohini Theevu', 'Tamil language Novel Writer, Journalist, Poet & Critic late Ramaswamy Aiyer Krishnamurthy also known as Kalki. He derived his pen name from the suffixes of his wife name Kalyani and his name Krishnamurthy in Tamil form and  as Kalki.', 385, 83, 'Mohinitheevu.jpg'),
(8, 'Kaanakam', '', 125, 59, 'Kaanakam.jpg'),
(9, 'Kaaval Kottam', 'Serialized in Junior Vikatan magazine, the plot is retitled as Kooru Paramparai based on the strength of the plot.It can only be mined from Vairangalio mine Junior Vikatan teaching team has mined diamonds from Velas mine and turned them into a beautiful garland for this, Ju V should be commended.', 180, 59, 'KaavalKottam.jpg'),
(10, 'Kadal Pura',' Kadal Pura is a Tamil historical novel written by the famous author Sandhiyan. The story of this book based on the ancient Tamil Chola dynasty.', 230, 68, 'KadalPura.png'),
(11, 'Kutra Parambarai', 'Recipient of the 2011 Sahitya Akademi award, his policing span begins with the Null Nayak regime and extends to the early 20th century. This innovation is taking place in a village called Dadanur near Madurai.', 125, 59, 'KutraParambarai.jpg'),
(12, 'Or Iravil Oru Rayil', 'Or Iravil oru Rayilil is a Tamil fiction novel. The famous Tamil author Sujatha Rangarajan wrote this book. The story of this book narrated based on the story of a Swamiji. He was traveling by train to attend a function. Many things happened to him along the way. It is one of a thriller type novel from Sujatha Rangarajan.', 195, 99, 'OrIravilOruRayil.jpg'),
(13, 'Pesum Pommai', 'Pesum Bommaigal is a science fiction novel by Sujatha Rangarajan. Sujatha Rangarajan wrote a lot of science fiction novels in Tamil literature. It can say that Sujatha Rangarajan is one of a famous writer in Tamil. ', 250, 48, 'PesumPommai.jpg'),
(14, 'Roja', 'Roja is one of the famous novels in Tamil literature. It is a thriller mystery novel; Kizhakku Pathippagam publisher published this book in 2017. Sujatha Rangarajan, the Tamil legendary author, wrote this novel. The plot of this novel is charming.', 100, 20, 'roja.jpg'),
(15, 'Vaadivaasal', 'C.S. In Chellappa novel Vadivasal, the close-up feeling of witnessing jallikattu performance is aptly described', 400, 90, 'Vaadivaasal.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
