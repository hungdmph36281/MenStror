-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2023 lúc 07:16 PM
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
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `iduser` int(10) DEFAULT 0,
  `ngaydathang` varchar(50) DEFAULT NULL,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(50) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_pttt` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1. Thanh toán trực tiếp ',
  `total` int(10) NOT NULL,
  `bill_satus` int(11) NOT NULL DEFAULT 0 COMMENT '0. Đang chuẩn bị đơn hàng 1. Đang vận chuyển 2. Đang giao hàng 3. Đã giao hàng',
  `bill_thanhtoan` int(10) NOT NULL COMMENT '0. Chưa thanh toán 1. Đã thanh toán'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `iduser`, `ngaydathang`, `bill_name`, `bill_address`, `bill_tel`, `bill_email`, `bill_pttt`, `total`, `bill_satus`, `bill_thanhtoan`) VALUES
(1, 0, '04:05:042022-11-27T16:05:41+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 1, 245, 0, 0),
(2, 0, '04:06:042022-11-27T16:06:35+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 1, 245, 0, 0),
(3, 0, '04:07:042022-11-27T16:07:22+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 245, 0, 0),
(4, 0, '04:08:042022-11-27T16:08:07+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 245, 0, 0),
(5, 0, '04:08:042022-11-27T16:08:13+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 245, 0, 0),
(6, 0, '04:38:042022-11-27T16:38:21+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 245, 0, 0),
(7, 0, '04:41:042022-11-27T16:41:17+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 245, 0, 0),
(8, 0, '04:41:042022-11-27T16:41:40+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 245, 0, 0),
(9, 0, '04:47:042022-11-27T16:47:07+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 1, 145, 0, 0),
(10, 0, '04:51:042022-11-27T16:51:30+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 1, 145, 0, 0),
(11, 0, '04:51:042022-11-27T16:51:45+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 1, 145, 0, 0),
(12, 0, '05:03:052022-11-27T17:03:14+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 1, 145, 0, 0),
(13, 0, '05:03:052022-11-27T17:03:27+01:0011 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 145, 0, 0),
(14, 0, '05:10:28Europe/Berlin 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 145, 0, 0),
(15, 0, '05:10 27/11/2022', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 145, 0, 0),
(16, 0, '27/11/2022 05:14:58', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 145, 0, 0),
(17, 0, '27/11/2022 05:15:31 PM', 'abc', 'abcd xyz', '0376732833', 'hoangnvph15198@fpt.edu.vn', 0, 145, 0, 0),
(18, 0, '27/11/2022 05:16:17 PM', '', '', '', '', 0, 99, 0, 0),
(19, 0, '27/11/2022 05:17:06 PM', '', '', '', '', 0, 99, 0, 0),
(20, 0, '27/11/2022 05:19:38 PM', 'thieu', '79 Nguyễn Chí Thanh - Đống Đa', '0376732833', 'thieu12345hn@gmail.com', 0, 99, 0, 0),
(21, 0, '27/11/2022 05:19:54 PM', 'thieu', '79 Nguyễn Chí Thanh - Đống Đa', '0376732833', 'thieu12345hn@gmail.com', 0, 169, 0, 0),
(22, 0, '27/11/2022 05:20:14 PM', 'thieu', '79 Nguyễn Chí Thanh - Đống Đa', '0376732833', 'thieu12345hn@gmail.com', 1, 169, 0, 0),
(23, 0, '27/11/2022 05:21:29 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 0, 145, 0, 0),
(24, 0, '27/11/2022 05:22:29 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 0, 289, 0, 0),
(25, 0, '27/11/2022 05:24:49 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 368, 0, 0),
(26, 0, '27/11/2022 05:25:49 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 0, 145, 0, 0),
(27, 0, '27/11/2022 05:26:23 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 145, 0, 0),
(28, 6, '27/11/2022 05:55:21 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 290, 2, 0),
(29, 6, '27/11/2022 06:05:33 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 2, 368, 0, 0),
(30, 6, '27/11/2022 06:07:24 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 99, 0, 0),
(31, 6, '27/11/2022 06:09:06 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 80, 0, 0),
(32, 6, '27/11/2022 06:20:08 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 1, 0, 0),
(33, 6, '27/11/2022 06:25:56 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 2, 0, 0),
(34, 6, '27/11/2022 06:27:39 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 0, 0, 0),
(35, 6, '27/11/2022 06:27:46 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 0, 0, 0),
(36, 6, '27/11/2022 06:27:56 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 0, 0, 0),
(37, 6, '27/11/2022 06:28:06 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 0, 0, 0),
(38, 6, '27/11/2022 06:29:31 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 1, 0, 0),
(39, 6, '27/11/2022 06:29:59 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 297, 0, 0),
(40, 6, '27/11/2022 06:31:20 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 1, 0, 0),
(41, 6, '27/11/2022 06:33:27 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 1, 0, 0),
(42, 6, '27/11/2022 06:35:44 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 5746000, 0, 0),
(43, 6, '27/11/2022 06:36:24 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 0, 0, 0),
(44, 6, '27/11/2022 06:36:51 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 0, 0, 0),
(45, 6, '27/11/2022 06:37:02 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 6799966, 0, 0),
(46, 0, '27/11/2022 06:38:00 PM', 'thieuz', 'abc xyz', '0323232323', 'hoangnvph15198@fpt.edu.vn', 1, 870000, 0, 0),
(47, 6, '27/11/2022 06:40:40 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 823745000, 0, 0),
(48, 6, '27/11/2022 06:44:35 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 507000, 0, 0),
(49, 6, '28/11/2022 03:18:21 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 1450297000, 0, 0),
(50, 6, '29/11/2022 12:17:32 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 500000000, 0, 0),
(51, 6, '29/11/2022 01:21:45 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 507000, 0, 0),
(52, 6, '29/11/2022 01:25:50 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 507000, 0, 0),
(53, 6, '29/11/2022 01:39:17 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 1000000, 0, 0),
(54, 6, '29/11/2022 02:01:33 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 0, 3, 1),
(55, 6, '29/11/2022 02:18:53 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 507000, 0, 0),
(56, 4, '29/11/2022 06:09:07 PM', 'thieuz', 'ha tay', '0376732833', 'thieuz@gmail.com', 2, 606000, 1, 0),
(57, 4, '29/11/2022 06:25:01 PM', 'thieuz', 'ha tay', '0376732833', 'thieuz@gmail.com', 1, 435000, 2, 0),
(58, 4, '29/11/2022 06:26:50 PM', 'thieuz', 'ha tay', '0376732833', 'thieuz@gmail.com', 1, 300000, 2, 0),
(59, 6, '29/11/2022 06:28:39 PM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 507000, 3, 1),
(60, 6, '30/11/2022 12:40:20 AM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 300000000, 0, 0),
(61, 6, '30/11/2022 01:38:22 AM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 2197000, 0, 0),
(62, 0, '30/11/2022 09:58:46 AM', 'thieuz', 'abc xyz', '0376732833', 'thieudxqph21179@fpt.edu.vn', 1, 268000, 0, 0),
(63, 0, '30/11/2022 10:04:44 AM', 'thieuz', 'abc xyz', '0376732833', 'thieudxqph21179@fpt.edu.vn', 1, 0, 0, 0),
(64, 0, '30/11/2022 10:05:51 AM', 'thieuz', '79 Nguyễn Chí Thanh - Đống Đa', '0376732833', 'thieu12345hn@gmail.com', 1, 100000000, 0, 0),
(65, 6, '30/11/2022 10:40:21 AM', 'Thiều', 'Hà Tây', '0323232323', 'abv@gmail.com', 1, 1500000000, 0, 0),
(66, 0, '30/11/2022 03:17:28 PM', 'thieuz', 'abc xyz', '0376732833', 'thieu12345hn@gmail.com', 1, 507000, 0, 0),
(67, 6, '01/12/2022 07:15:10 PM', 'Thiều', 'Hà Tây', '0323232222', 'abv22@gmail.com', 1, 530000, 1, 0),
(68, 6, '01/12/2022 07:36:43 PM', 'Thiều', 'Hà Tây', '0323232222', 'abv22@gmail.com', 1, 100399998, 3, 1),
(69, 6, '02/12/2022 10:56:28 PM', 'Thiều', 'Hà Tây', '0323232222', 'abv22@gmail.com', 1, 1201650000, 0, 0),
(70, 6, '02/12/2022 10:57:26 PM', 'Thiều', 'Hà Tây', '0323232222', 'abv22@gmail.com', 1, 0, 0, 0),
(71, 6, '02/12/2022 10:57:58 PM', 'Thiều', 'Hà Tây', '0323232222', 'abv22@gmail.com', 1, 396000, 3, 1),
(72, 0, '02/12/2022 11:26:14 PM', 'thieuz', 'abcd xyz', '0323232222', 'qwertyuiopasdfghjklc3dc@gmail.com', 1, 599997, 0, 0),
(73, 0, '02/12/2022 11:28:17 PM', 'thieu12', 'abc xyz', '0323232222', 'thieudxqph21179@fpt.edu.vn', 1, 300000000, 0, 0),
(74, 6, '03/12/2022 12:20:51 PM', 'Thiều', 'Hà Tây', '0376732835', 'abv22@gmail.com', 1, 2147483647, 0, 0),
(75, 6, '03/12/2022 12:25:01 PM', 'Thiều', 'Hà Tây', '0376732835', 'abv22@gmail.com', 1, 2147483647, 0, 0),
(76, 6, '03/12/2022 12:25:23 PM', 'Thiều', 'Hà Tây', '0376732835', 'abv22@gmail.com', 1, 0, 0, 0),
(77, 6, '03/12/2022 12:25:44 PM', 'Thiều', 'Hà Tây', '0376732835', 'abv22@gmail.com', 1, 2147483647, 0, 0),
(78, 6, '03/12/2022 12:26:06 PM', 'Thiều', 'Hà Tây', '0376732835', 'abv22@gmail.com', 1, 100000000, 0, 0),
(79, 6, '03/12/2022 12:27:36 PM', 'Thiều', 'Hà Tây', '0376732835', 'abv22@gmail.com', 1, 2147483647, 0, 0),
(80, 2, '12/11/2023 11:17 PM', '', '', '', '', 1, 100085000, 0, 0),
(81, 2, '12/11/2023 11:18 PM', '', '', '', '', 1, 199999, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(199) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpro` int(11) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(1, 'hhihi', 3, 1, '28/11/2022'),
(2, 'aaa', 6, 1, '01:03:23pm 29/11/2022'),
(3, 'sachs hay qua', 2, 1, '05:19:49pm 12/11/2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(20) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(1, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 1),
(2, 7, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 1, 100000, 1),
(3, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 2),
(4, 7, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 1, 100000, 2),
(5, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 3),
(6, 7, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 1, 100000, 3),
(7, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 4),
(8, 7, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 1, 100000, 4),
(9, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 5),
(10, 7, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 1, 100000, 5),
(11, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 6),
(12, 7, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 1, 100000, 6),
(13, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 7),
(14, 7, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 1, 100000, 7),
(15, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 8),
(16, 7, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 1, 100000, 8),
(17, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 9),
(18, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 10),
(19, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 11),
(20, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 12),
(21, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 13),
(22, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 14),
(23, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 15),
(24, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 16),
(25, 7, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 17),
(26, 0, 2, 'image_195509_1_36329.jpg', 'Tri Thức Cực Hạn', 99000, 1, 99000, 18),
(27, 0, 2, 'image_195509_1_36329.jpg', 'Tri Thức Cực Hạn', 99000, 1, 99000, 19),
(28, 2, 2, 'image_195509_1_36329.jpg', 'Tri Thức Cực Hạn', 99000, 1, 99000, 20),
(29, 2, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 1, 169000, 21),
(30, 2, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 1, 169000, 22),
(31, 6, 6, 'z3853755123845_b2a39dccbee5d09d9b45b0ee33394506_1.jpg', 'Tokyo Revengers - Tập 6 ', 145000, 1, 145000, 23),
(32, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 1, 169000, 24),
(33, 6, 12, 'ghi-ch_p-gi_i-ph_u-t_m-l_bia1.jpg', 'Ghi Chép Giải Phẫu Tâm Lý Học Tội Phạm', 120000, 1, 120000, 24),
(34, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 1, 169000, 25),
(35, 6, 21, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Manga abc', 199999, 1, 199999, 25),
(36, 6, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 26),
(37, 6, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 27),
(38, 6, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 28),
(39, 6, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 1, 145000, 28),
(40, 6, 21, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Manga abc', 199999, 1, 199999, 29),
(41, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 1, 169000, 29),
(42, 6, 2, 'image_195509_1_36329.jpg', 'Tri Thức Cực Hạn', 99000, 1, 99000, 30),
(43, 6, 13, '8936067607611.jpg', 'Tinh Thần Bền Bỉ', 80000, 1, 80000, 31),
(44, 6, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 2, 290000, 32),
(45, 6, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 2, 290000, 32),
(46, 6, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 3, 435000, 32),
(47, 6, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 3, 435000, 32),
(48, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 3, 507000, 32),
(49, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 14, 2366000, 33),
(50, 6, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 10, 1450000, 38),
(51, 6, 10, 'tham-tu-lung-danh-conan---ho-so-tuyet-mat---heiji-hattori-_-kazuha-toyama.jpg', 'Thám Tử Lừng Danh Conan', 99000, 3, 297000, 39),
(52, 6, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 11, 1100000, 40),
(53, 6, 14, '8935251419573.jpg', 'Mưu Hèn Kế Bẩn Nơi Công Sở', 110000, 18, 1980000, 41),
(54, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 34, 5746000, 42),
(55, 6, 21, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Manga abc', 199999, 34, 6799966, 45),
(56, 0, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 3, 435000, 46),
(57, 0, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 3, 435000, 46),
(58, 6, 6, 'z3853755123845_b2a39dccbee5d09d9b45b0ee33394506_1.jpg', 'Tokyo Revengers - Tập 6 ', 145000, 3, 435000, 47),
(59, 6, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 5678, 823310000, 47),
(60, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 3, 507000, 48),
(61, 6, 2, 'image_195509_1_36329.jpg', 'Tri Thức Cực Hạn', 99000, 3, 297000, 49),
(62, 6, 6, 'z3853755123845_b2a39dccbee5d09d9b45b0ee33394506_1.jpg', 'Tokyo Revengers - Tập 6 ', 145000, 10000, 1450000000, 49),
(63, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 2, 200000000, 50),
(64, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 3, 300000000, 50),
(65, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 3, 507000, 51),
(66, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 3, 507000, 52),
(67, 6, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 10, 1000000, 53),
(68, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 3, 507000, 55),
(69, 4, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 3, 507000, 56),
(70, 4, 2, 'image_195509_1_36329.jpg', 'Tri Thức Cực Hạn', 99000, 1, 99000, 56),
(71, 4, 4, 'tktt.jpg', 'Thoát Khỏi Tâm Trí và Bước Vào Cuộc Sống', 145000, 3, 435000, 57),
(72, 4, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 3, 300000, 58),
(73, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 3, 507000, 59),
(74, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 3, 300000000, 60),
(75, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 3, 507000, 61),
(76, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 5, 845000, 61),
(77, 6, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 5, 845000, 61),
(78, 0, 2, 'image_195509_1_36329.jpg', 'Tri Thức Cực Hạn', 99000, 1, 99000, 62),
(79, 0, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 1, 169000, 62),
(80, 0, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 1, 100000000, 64),
(81, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 15, 1500000000, 65),
(82, 0, 1, '8936066692298.jpg', 'Thao Túng Tâm Lý', 169000, 3, 507000, 66),
(83, 6, 14, '8935251419573.jpg', 'Mưu Hèn Kế Bẩn Nơi Công Sở', 110000, 3, 330000, 67),
(84, 6, 9, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Dragon Ball Full Color', 100000, 2, 200000, 67),
(85, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 1, 100000000, 68),
(86, 6, 21, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Manga abc', 199999, 1, 199999, 68),
(87, 6, 21, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Manga abc', 199999, 1, 199999, 68),
(88, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 12, 300000000, 69),
(89, 6, 14, '8935251419573.jpg', 'Mưu Hèn Kế Bẩn Nơi Công Sở', 110000, 15, 550000, 69),
(90, 6, 10, 'tham-tu-lung-danh-conan---ho-so-tuyet-mat---heiji-hattori-_-kazuha-toyama.jpg', 'Thám Tử Lừng Danh Conan', 99000, 4, 396000, 71),
(91, 0, 21, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Manga abc', 199999, 3, 599997, 72),
(92, 0, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 3, 300000000, 73),
(93, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 556, 100000000, 74),
(94, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 99, 2147483647, 75),
(95, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 90, 2147483647, 77),
(96, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 1, 100000000, 78),
(97, 6, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 2147483647, 2147483647, 79),
(98, 2, 24, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'thieuz', 100000000, 1, 100000000, 80),
(99, 2, 3, '1080x1080_thoat-khoi-bay-nhan-thuc.jpg', 'Thoát Khỏi Bẫy Nhận Thức', 85000, 1, 85000, 80),
(100, 2, 21, 'dragon-ball-full-color---phan5---truy-lung-cell-bo-hung---tap-6.jpg', 'Manga abc', 199999, 1, 199999, 81);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(33, 'Phụ kiện'),
(34, 'Quần Nam'),
(40, 'Áo Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(51, 'Áo Sơ Mi Unisex Tay Dài Kẻ Sọc Caro Form Loose - 10F23SHLU001', 540.00, 'ao-so-mi-14-10f23shlu001-green-_1__2_jpg.webp', 'Chất liệu: Bạn sẽ yêu ngay từ lần chạm đầu tiên với chất liệu 100% cotton cao cấp, mềm mại và thoáng khí.Màu sắc: Màu xanh navy tinh tế và dễ phối hợp với nhiều trang phục khác nhau, từ quần jeans đến quần kaki.', 0, 40),
(52, 'Áo Thun Nam Tay Ngắn Polyester Thêu Hình Form Fitted - 10F23TSS001L', 589.00, 'ao-thun-nam-10f23tss001l-black-beauty-_1__2_1_jpg.webp', 'Kiểu dáng: Áo polo này có kiểu dáng Classic Fit, tạo cảm giác thoải mái và phong cách lịch lãm. Thiết kế với cổ áo polo truyền thống và đường may tỉ mỉ, làm nổi bật vẻ sang trọng.Chất liệu: Bạn sẽ yêu ngay từ lần chạm đầu tiên với chất liệu 100% cotton cao cấp, mềm mại và thoáng khí.', 0, 40),
(53, 'Áo Thun Nam Tay Dài Cotton Cổ Tròn Thêu Chữ Form Regular - 10F23TSL003', 373.00, 'ao-len-nam-3-10f23tsl003-black-_1__1_jpg.webp', 'Kiểu dáng: Áo polo này có kiểu dáng Classic Fit, tạo cảm giác thoải mái và phong cách lịch lãm. Thiết kế với cổ áo polo truyền thống và đường may tỉ mỉ, làm nổi bật vẻ sang trọng.Logo: Huy hiệu nhãn hiệu diskre và thời trang được đặt tinh tế trên ngực trái, thể hiện sự tinh tế và đẳng cấp', 0, 40),
(54, 'Áo Khoác Nam Flannel Tay Dài Khóa Kéo Kẻ Caro Form Regular - 10F23JAC002', 981.00, 'ao-khoac-nam-10f23jac002-black_2__1.jpg', 'Chất liệu: Áo khoác được làm từ vật liệu chống nước chất lượng cao, giúp bạn thoải mái đối mặt với mọi điều kiện thời tiết.Chi tiết độc đáo: Được trang trí bằng các đường may đối xứng và các chi tiết kim loại chất lượng, tạo điểm nhấn và sự cá tính cho chiếc áo khoác.\r\n\r\n', 0, 40),
(55, 'Áo Len Polo Nam Dệt Kim Tay Ngắn Cotton Phối Túi Form Boxy - 10F23KNI001', 569.00, 'ao-len-nam-10f23kni001-dark-sapphire-_1__2_jpg.webp', 'Chất liệu: Được làm từ vải cotton cao cấp, áo sơ mi này mang lại cảm giác mềm mại và thoải mái suốt cả ngày.Kiểu dáng: Với kiểu dáng Classic Fit, áo sơ mi này ôm vừa vặn nhưng không quá chật, tạo sự thoải mái và phong cách lịch lãm. Cổ áo button-down tạo điểm nhấn truyền thống và dễ phối hợp với nhiều phụ kiện khác nhau.', 0, 40),
(56, 'Quần Jean Nam Trơn Ống Ôm Form Slim Crop - 10S23DPA005', 589.00, 'quan-jean-nam-1010-10s23dpa005_tree_house_1__1_jpg.webp', 'Chất liệu: Được làm từ vải chino cao cấp, chiếc quần này mang lại cảm giác thoải mái và bền bỉ trong suốt cả ngày dài.Kiểu dáng: Với kiểu dáng Slim Fit, chiếc quần này ôm vừa vặn, tôn lên đường chân và tạo nên sự gọn gàng. Chất liệu co giãn nhẹ giúp tối ưu hóa sự thoải mái và sự linh hoạt.', 0, 34),
(57, 'Quần Jean Nam Trơn Form Slim - 10S23DPA012', 569.00, '10s23dpa012_l_indigo-quan-jean-nam_1__2_jpg.webp', 'Chất liệu: Được làm từ denim chất lượng cao, chiếc quần jeans này không chỉ bền bỉ mà còn mang lại cảm giác thoải mái và co giãn nhẹ.Kiểu dáng: Với kiểu dáng Slim Fit, chiếc quần này ôm vừa vặn, tôn lên đường chân và tạo nên sự gọn gàng. Form dáng hiện đại phù hợp với nhiều phong cách thời trang.', 0, 34),
(58, 'Black Friday 2023  ', 540.00, '10s23pca001_black-quan-kaki-nam_1__1_1_jpg.webp', 'Chất liệu: Được làm từ vải chino cao cấp, chiếc quần này mang lại cảm giác thoải mái và bền bỉ trong suốt cả ngày dài.Kiểu dáng: Với kiểu dáng Slim Fit, chiếc quần này ôm vừa vặn, tôn lên đường chân và tạo nên sự gọn gàng. Chất liệu co giãn nhẹ giúp tối ưu hóa sự thoải mái và sự linh hoạt.Màu sắc: Màu be đậm trung tính, dễ dàng phối hợp với nhiều loại áo và giày, phù hợp cho cả các dịp trang trí và lịch sự.', 0, 34),
(59, 'Quần Jean Nam Premium Trơn Co Giãn Form Slim - 10F22DPA025', 442.00, '10f22dpa025_-_m.indigo_2__2_jpg.webp', 'Chất liệu: Được làm từ vải chino cao cấp, chiếc quần này mang lại cảm giác thoải mái và bền bỉ trong suốt cả ngày dài.Chi tiết thiết kế: Được trang trí bằng các đường may tỉ mỉ và nút kim loại chất lượng, tạo nên sự sang trọng và sành điệu.', 0, 34),
(60, 'Quần Jean Nam Ống Rộng Trơn Form Straight Crop', 540.00, 'quan-jean-nam-1010-10f23dpa022_black_1__2.jpg', 'Với sự kết hợp giữa kiểu dáng thời trang và tính ứng dụng, chiếc quần jeans này là sự lựa chọn hoàn hảo cho phong cách cá nhân của bạn.Chất liệu: Được làm từ denim chất lượng cao, chiếc quần jeans này không chỉ bền bỉ mà còn mang lại cảm giác thoải mái và co giãn nhẹ.', 0, 34),
(61, 'GAPNón Nam - Logo', 550.00, '542693-04-1_xh21kgew1tdupvhl.webp', 'Chất liệu: Được làm từ vải chất lượng cao, chiếc mũ snapback này mang lại cảm giác thoải mái và bền bỉ. Viền mũ làm từ chất liệu cứng cáp giữ cho hình dáng snapback luôn ổn định.Kiểu dáng: Với kiểu dáng snapback, chiếc mũ này phổ biến trong giới trẻ và thể hiện sự phong cách đường phố urban. Nó có thể điều chỉnh phù hợp với nhiều kích thước đầu.', 0, 33),
(62, 'POLO RALPH LAURENDây Nịt Nam Reversible Dress Belt', 3.90, 'lifestyle_405727371005_p0ekxqmpk9bawwse.webp', 'Chất liệu: Được làm từ da bò tự nhiên chất lượng cao, chiếc thắt lưng này không chỉ mang lại vẻ ngoại hình sang trọng mà còn đảm bảo độ bền và sự linh hoạt.Màu sắc: Màu nâu vintage tạo nên vẻ cổ điển và dễ dàng phối hợp với nhiều loại trang phục khác nhau.', 0, 33),
(63, 'KARL LAGERFELDNón Nam', 2.21, '230m3404998_5_1.webp', 'Chất liệu: Được làm từ vải chất lượng cao, chiếc mũ snapback này mang lại cảm giác thoải mái và bền bỉ. Viền mũ làm từ chất liệu cứng cáp giữ cho hình dáng snapback luôn ổn định.', 0, 33),
(64, 'SUNNIES STUDIOSKính Mát Gọng Vuông Henrick Mantis F', 559.00, '60281-3-3-one_size.webp', 'Chất liệu: Gọng kính bằng kim loại chất lượng cao, nhẹ nhàng và bền bỉ. Tròng kính polarized bảo vệ tối ưu khỏi tác động của tia UV và ánh sáng chói.Kiểu dáng: Thiết kế aviator mang đến vẻ ngoại hình hiện đại và lịch lãm. Kích thước vừa vặn nhiều khuôn mặt, là sự kết hợp hoàn hảo giữa thoải mái và phong cách.', 0, 33),
(66, 'Áo Khoác Nam Cộc Tay Trơn Phối Túi Hộp Form Regular', 342.00, 'ao-khoac-nam-10s23jac001-black-_5__2_jpg.webp', 'Áo khoác cộc tay thường có kiểu dáng thoải mái, không rườm rà, tạo cảm giác nhẹ nhàng và linh hoạt cho người mặc.\r\nDáng áo có thể là dáng suông hoặc ôm nhẹ tùy thuộc vào thiết kế cụ thể.Chất liệu của áo khoác cộc tay thường là những loại vải thoáng khí như cotton, linen, hoặc các loại vải kỹ thuật cao giúp thoát mồ hôi và giữ cảm giác thoải mái.Áo khoác cộc tay thường được sử dụng trong những bối cảnh không quá trang trí, phù hợp cho các hoạt động ngoại ô, đi chơi, hoặc những dịp thoải mái.', 0, 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `role` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(2, 'thieu', 'thieuu', 'thieu12345hn@gmail.com', '79 Nguyễn Chí Thanh - Đống Đa', '0376732831', 0),
(3, 'thieuz', 'thieu', 'thieuabc@xyz', 'ha noi', '0376732832', 1),
(4, 'thieuzz', 'thieuzz', 'thieuz@gmail.com', 'ha tay', '0376732833', 0),
(5, 'thieuvjpdaica', 'thieu123', 'thieu@gmail.com', 'abcd xyz', '0376732834', 0),
(6, 'Thiều', '1234', 'abv22@gmail.com', 'Hà Tây', '0376732835', 1),
(7, 'abc', '123', 'hoangnvph15198@fpt.edu.vn', 'abcd xyz', '0376732836', 0),
(8, 'hungdz2004', 'hungg2004', 'duonghungd4111@gmail.com', 'Ngọc Trục city', '0375946847', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dmsp_fk` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `dmsp_fk` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
