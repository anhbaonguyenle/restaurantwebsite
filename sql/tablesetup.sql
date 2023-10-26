-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2023 lúc 11:54 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `restaurant`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `table_id` int(11) NOT NULL,
  `time` date NOT NULL,
  `f_id` int(11) NOT NULL,
  `f_amount` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food`
--

CREATE TABLE `food` (
  `f_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `f_description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_amount_detail`
--

CREATE TABLE `food_amount_detail` (
  `f_id` int(11) NOT NULL,
  `f_detail_type` varchar(25) DEFAULT NULL,
  `f_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_img`
--

CREATE TABLE `food_img` (
  `f_id` int(11) NOT NULL,
  `f_img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_type`
--

CREATE TABLE `food_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information`
--

CREATE TABLE `information` (
  `res_phone` int(11) NOT NULL,
  `res_name` varchar(255) NOT NULL,
  `res_addr` varchar(255) NOT NULL,
  `res_fax` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurant_table`
--

CREATE TABLE `restaurant_table` (
  `table_id` int(11) NOT NULL,
  `table_name` varchar(10) NOT NULL,
  `table_status` int(11) NOT NULL,
  `table_seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `user_phone` int(11) DEFAULT NULL,
  `user_pw` varchar(18) NOT NULL,
  `user_coefficients_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_detail`
--

CREATE TABLE `user_detail` (
  `user_id` int(11) NOT NULL,
  `user_total_hour` int(11) DEFAULT NULL,
  `user_total_salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `fk_typefood` (`type_id`);

--
-- Chỉ mục cho bảng `food_amount_detail`
--
ALTER TABLE `food_amount_detail`
  ADD KEY `fk_id_detail` (`f_id`);

--
-- Chỉ mục cho bảng `food_img`
--
ALTER TABLE `food_img`
  ADD KEY `fo_foodurlimg` (`f_id`);

--
-- Chỉ mục cho bảng `food_type`
--
ALTER TABLE `food_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`res_phone`);

--
-- Chỉ mục cho bảng `restaurant_table`
--
ALTER TABLE `restaurant_table`
  ADD PRIMARY KEY (`table_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_detail`
--
ALTER TABLE `user_detail`
  ADD KEY `fk_userdetail` (`user_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `fk_typefood` FOREIGN KEY (`type_id`) REFERENCES `food_type` (`type_id`);

--
-- Các ràng buộc cho bảng `food_amount_detail`
--
ALTER TABLE `food_amount_detail`
  ADD CONSTRAINT `fk_id_detail` FOREIGN KEY (`f_id`) REFERENCES `food` (`f_id`);

--
-- Các ràng buộc cho bảng `food_img`
--
ALTER TABLE `food_img`
  ADD CONSTRAINT `fo_foodurlimg` FOREIGN KEY (`f_id`) REFERENCES `food` (`f_id`);

--
-- Các ràng buộc cho bảng `user_detail`
--
ALTER TABLE `user_detail`
  ADD CONSTRAINT `fk_userdetail` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
