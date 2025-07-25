

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `swapmeet`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `name` varchar(40) NOT NULL,
  `description` varchar(50) NOT NULL,
  `item` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`name`, `description`, `item`, `location`, `image`) VALUES
('', '', '', '', ''),
('Iphone', 'abcd', 'Samsung', 'Lahore', 0x3331363133322d437962657270756e6b2d4769726c2d5363692d46692d344b2e6a7067),
('Iphone', 'Brand New Iphone 13', 'Samsung s20', 'Lahore', 0x496e74656c2d526f636b65722d4c616b652d322d65313631353930383138363538342d39323078363134202831292e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `fullname`) VALUES
('Laiba', 'laiba123', 'Laiba Ehsan');
COMMIT;

