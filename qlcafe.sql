-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 18, 2020 lúc 04:19 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlcafe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ban`
--

CREATE TABLE `ban` (
  `MaBan` int(11) NOT NULL,
  `MaKhuVuc` int(11) NOT NULL,
  `TenBan` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ban`
--

INSERT INTO `ban` (`MaBan`, `MaKhuVuc`, `TenBan`, `TrangThai`) VALUES
(1, 1, 'Bàn 1', 'Trống'),
(2, 2, 'Bàn 2', 'Trống'),
(3, 2, 'Bàn 3', 'Trống'),
(4, 2, 'Bàn 4', 'Trống'),
(5, 4, 'Bàn 5', 'Trống'),
(6, 4, 'Bàn 6', 'Trống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calamviec`
--

CREATE TABLE `calamviec` (
  `MaCLV` int(11) NOT NULL,
  `TenCLV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioBD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `GioKT` time NOT NULL,
  `SoTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `calamviec`
--

INSERT INTO `calamviec` (`MaCLV`, `TenCLV`, `GioBD`, `GioKT`, `SoTien`) VALUES
(1, 'Ca sáng', '2020-12-16 23:00:00', '12:00:00', 100000),
(3, 'Ca chiều', '2020-12-17 05:00:00', '18:00:00', 150000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietcalam`
--

CREATE TABLE `chitietcalam` (
  `MaCTCLV` int(11) NOT NULL,
  `MaNV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaCLV` int(11) NOT NULL,
  `GioBDThucTe` time NOT NULL,
  `GioKTThucTe` time NOT NULL,
  `NgayLam` date NOT NULL,
  `TienChotCa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietcalam`
--

INSERT INTO `chitietcalam` (`MaCTCLV`, `MaNV`, `MaCLV`, `GioBDThucTe`, `GioKTThucTe`, `NgayLam`, `TienChotCa`) VALUES
(1, 'NV1', 1, '00:00:00', '00:00:00', '0000-00-00', 0),
(2, 'NV1', 1, '00:00:00', '00:00:00', '0000-00-00', 0),
(4, 'NV1', 1, '20:41:00', '20:41:00', '2020-12-17', 0),
(5, 'NV1', 1, '21:22:00', '21:22:00', '2020-12-17', 0),
(6, 'NV1', 1, '21:23:00', '21:23:00', '2020-12-17', 0),
(7, 'NV1', 1, '21:26:00', '21:26:00', '2020-12-17', 0),
(8, 'NV1', 1, '21:32:00', '21:32:00', '2020-12-17', 0),
(9, 'NV1', 1, '21:33:00', '21:33:00', '2020-12-17', 0),
(10, 'NV1', 1, '21:37:00', '21:37:00', '2020-12-17', 0),
(11, 'NV1', 1, '21:42:00', '21:42:00', '2020-12-17', 0),
(12, 'NV1', 1, '21:02:00', '21:02:00', '2020-12-18', 0),
(13, 'NV1', 1, '22:09:00', '22:09:00', '2020-12-18', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethd`
--

CREATE TABLE `chitiethd` (
  `MaChiTietHD` int(11) NOT NULL,
  `MaHoaDon` int(11) NOT NULL,
  `MaMon` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethd`
--

INSERT INTO `chitiethd` (`MaChiTietHD`, `MaHoaDon`, `MaMon`, `SoLuong`, `Gia`) VALUES
(6, 8, 1, 1, 25000),
(7, 8, 2, 2, 25000),
(9, 10, 1, 1, 25000),
(10, 10, 2, 1, 25000),
(11, 11, 1, 1, 25000),
(14, 14, 2, 1, 25000),
(16, 16, 1, 1, 25000),
(21, 20, 1, 1, 25000),
(22, 20, 2, 1, 25000),
(31, 26, 1, 3, 25000),
(33, 26, 2, 1, 25000),
(34, 27, 1, 1, 25000),
(35, 28, 2, 1, 25000),
(36, 29, 1, 3, 25000),
(37, 30, 1, 1, 25000),
(38, 30, 2, 1, 25000),
(39, 31, 1, 1, 25000),
(40, 31, 2, 1, 25000),
(41, 32, 1, 4, 25000),
(42, 32, 2, 2, 25000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `MaNV` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NV',
  `GiamGia` int(11) DEFAULT NULL,
  `MaBan` int(11) NOT NULL,
  `GioDen` datetime NOT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `MaNV`, `GiamGia`, `MaBan`, `GioDen`, `TongTien`, `TrangThai`) VALUES
(8, 'NV1', 30, 2, '2020-12-14 17:51:32', 52500, 1),
(10, 'NV1', NULL, 3, '2020-12-14 19:03:07', 50000, 1),
(11, 'NV1', NULL, 1, '2020-12-14 19:04:29', 25000, 1),
(14, 'NV1', NULL, 1, '2020-12-14 19:20:01', 25000, 1),
(16, 'NV1', NULL, 2, '2020-12-14 19:22:42', 25000, 1),
(20, 'NV1', NULL, 3, '2020-12-14 19:54:50', 50000, 1),
(26, 'NV1', NULL, 1, '2020-12-14 22:13:04', 100000, 1),
(27, 'NV1', 20, 1, '2020-12-14 22:13:32', 20000, 1),
(28, 'NV1', NULL, 6, '2020-12-14 22:13:36', 25000, 1),
(29, 'NV1', 50, 1, '2020-12-15 17:59:50', 37500, 1),
(30, 'NV1', NULL, 1, '2020-12-17 19:53:27', 50000, 1),
(31, 'NV1', NULL, 2, '2020-12-18 21:02:17', 50000, 1),
(32, 'NV1', NULL, 1, '2020-12-18 22:09:08', 150000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuvuc`
--

CREATE TABLE `khuvuc` (
  `MaKhuVuc` int(11) NOT NULL,
  `TenKhuVuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuvuc`
--

INSERT INTO `khuvuc` (`MaKhuVuc`, `TenKhuVuc`) VALUES
(1, 'Tầng 1'),
(2, 'Tầng 2'),
(3, 'Tầng 3'),
(4, 'Tầng 4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenNV` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` tinyint(4) NOT NULL,
  `ChucVu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgayVaoLam` date NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` int(11) NOT NULL,
  `PhanQuyen` tinyint(4) NOT NULL,
  `MatKhau` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `GioiTinh`, `ChucVu`, `NgayVaoLam`, `DiaChi`, `SDT`, `PhanQuyen`, `MatKhau`) VALUES
('', '', 0, '', '0000-00-00', '', 0, 0, ''),
('NV1', 'Nguyen Mai', 1, 'Nhan Vien', '2020-12-01', 'Ha Noi', 386202101, 0, '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhommon`
--

CREATE TABLE `nhommon` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `MauSac` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhommon`
--

INSERT INTO `nhommon` (`MaLoai`, `TenLoai`, `MauSac`) VALUES
(1, 'Cà phê', '#800000'),
(2, 'Trà sữa', '#40FF00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thucdon`
--

CREATE TABLE `thucdon` (
  `MaMon` int(11) NOT NULL,
  `TenMon` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `DVT` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thucdon`
--

INSERT INTO `thucdon` (`MaMon`, `TenMon`, `MaLoai`, `DonGia`, `DVT`) VALUES
(1, 'Capuchino', 1, 25000, 'Ly'),
(2, 'Đen đá', 1, 25000, 'Ly');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`MaBan`),
  ADD KEY `MaKhuVuc` (`MaKhuVuc`);

--
-- Chỉ mục cho bảng `calamviec`
--
ALTER TABLE `calamviec`
  ADD PRIMARY KEY (`MaCLV`);

--
-- Chỉ mục cho bảng `chitietcalam`
--
ALTER TABLE `chitietcalam`
  ADD PRIMARY KEY (`MaCTCLV`),
  ADD KEY `MaCLV` (`MaCLV`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD PRIMARY KEY (`MaChiTietHD`),
  ADD KEY `MaHoaDon` (`MaHoaDon`),
  ADD KEY `MaMon` (`MaMon`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `MaBan` (`MaBan`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `khuvuc`
--
ALTER TABLE `khuvuc`
  ADD PRIMARY KEY (`MaKhuVuc`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `nhommon`
--
ALTER TABLE `nhommon`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `thucdon`
--
ALTER TABLE `thucdon`
  ADD PRIMARY KEY (`MaMon`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ban`
--
ALTER TABLE `ban`
  MODIFY `MaBan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `calamviec`
--
ALTER TABLE `calamviec`
  MODIFY `MaCLV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `chitietcalam`
--
ALTER TABLE `chitietcalam`
  MODIFY `MaCTCLV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  MODIFY `MaChiTietHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT cho bảng `khuvuc`
--
ALTER TABLE `khuvuc`
  MODIFY `MaKhuVuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `nhommon`
--
ALTER TABLE `nhommon`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `thucdon`
--
ALTER TABLE `thucdon`
  MODIFY `MaMon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ban`
--
ALTER TABLE `ban`
  ADD CONSTRAINT `ban_ibfk_1` FOREIGN KEY (`MaKhuVuc`) REFERENCES `khuvuc` (`MaKhuVuc`);

--
-- Các ràng buộc cho bảng `chitietcalam`
--
ALTER TABLE `chitietcalam`
  ADD CONSTRAINT `chitietcalam_ibfk_1` FOREIGN KEY (`MaCLV`) REFERENCES `calamviec` (`MaCLV`),
  ADD CONSTRAINT `chitietcalam_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD CONSTRAINT `chitiethd_ibfk_1` FOREIGN KEY (`MaHoaDon`) REFERENCES `hoadon` (`MaHoaDon`),
  ADD CONSTRAINT `chitiethd_ibfk_2` FOREIGN KEY (`MaMon`) REFERENCES `thucdon` (`MaMon`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaBan`) REFERENCES `ban` (`MaBan`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `thucdon`
--
ALTER TABLE `thucdon`
  ADD CONSTRAINT `thucdon_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `nhommon` (`MaLoai`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
