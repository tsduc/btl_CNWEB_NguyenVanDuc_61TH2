-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2021 lúc 06:46 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11
CREATE DATABASE `btl_web`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_login`
--

CREATE TABLE `account_login` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grab_admin`
--

CREATE TABLE `grab_admin` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `grab_admin`
--

INSERT INTO `grab_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grab_cart`
--

CREATE TABLE `grab_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `productid` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `grab_cart`
--

INSERT INTO `grab_cart` (`id`, `quantity`, `productid`, `userid`) VALUES
(1, 10, 2, 1),
(2, 10, 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grab_category`
--

CREATE TABLE `grab_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `divice` varchar(255) NOT NULL,
  `divice_first` varchar(255) DEFAULT NULL,
  `divice_second` varchar(255) DEFAULT NULL,
  `divice_thỉrd` varchar(255) DEFAULT NULL,
  `divice_fourth` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `grab_category`
--

INSERT INTO `grab_category` (`id`, `name`, `quantity`, `avatar`, `divice`, `divice_first`, `divice_second`, `divice_thỉrd`, `divice_fourth`) VALUES
(1, 'Tivi', 268, 'Default-1-TV-254x254.png ; banner-samsung-390x210-1.png', 'Tivi ; TIVI ; PHỤ KIỆN TIVI ; Xem tất cả', 'Tivi trả góp 0-1% ; Sony ; Samsung ; LG ; TCL ; Từ 32-43 inch ; Từ 43-55 inch ; Dưới 7 triệu ; Tivi cao cấp ; Máy chiếu', 'Cáp HDMI, cáp Tivi ; Khung treo Tivi ; Điều khiển TV ; Android TV Box', '', ''),
(2, 'Loa', 168, 'product-NewGD3-780x420.png', 'Loa, Dàn Karaoke ; LOA ÂM THANH ; Xem tất cả', 'Loa kéo ; Loa Bluetooth ; Loa thanh (Soundbar) ; Dàn âm thanh ; Dàn Karaoke, Amply ; Micro', '', '', ''),
(3, 'Tủ lạnh', 172, 'Tủ Lạnh giảm sâu đến 24%', 'Tủ lạnh ; TỦ LẠNH ; Xem tất cả', 'Trả góp 0 - 0.5% ; Tủ lạnh từ 150 - 300 lít ; Tủ lạnh từ 301 - 400 lít ; Tủ lạnh Side by side ; Tủ lạnh Mini ; Panasonic ; Samsung ; Toshiba ; Aqua ; LG ; Từ 8 - 12 triệu', '', '', ''),
(4, 'Tủ đông', 28, '', 'Tủ đông, Tủ mát ; TỦ ĐÔNG, TỦ MÁT ; Xem tất cả', 'Kangaroo ; Sanaky ; Sunhouse ; LG', '', '', ''),
(5, 'Điện gia dụng', 28, 'Gia dụng Online giảm đến 49% ; Default-3-254x254-2.png', 'Điện gia dụng ; NỒI CÁC LOẠI ; MÁY XAY - VẮT - ÉP ; BẾP - LÒ ; THIẾT BỊ NHÀ BẾP ; ĐIỆN GIA DỤNG ; CHĂM SÓC SỨC KHỎE ; THIẾT BỊ LÀM ĐẸP ; Xem tất cả', 'Nồi cơm điện ; Nồi áp suất ; Nồi lẩu điện ; Nồi chiên không dầu ; Máy xay sinh tố ; Máy xay thịt ; Máy làm sữa hạt ; Máy ép trái cây ; Máy vắt cam ;  Máy đánh trứng', 'Bếp ga ; Bếp từ ; Bếp hồng ngoại ; Bếp nướng điện ; Lò nướng ; Lò vi sóng ; Bình đun, Bình thủy điện ; Máy pha cà phê ; Máy hút mùi ; Máy rửa chén', 'Bàn ủi ; Quạt ; Quạt điều hòa ; Máy lọc không khí ; Máy hút bụi, Robot hút bụi ; Đèn bàn, Đèn pin, Đèn sạc ; Đèn bắt muỗi ; Vợt muỗi ; Ổ cắm điện', 'Máy khí dung ; Máy đo huyết áp Nhiệt kế ; Cân sức khỏe ; Máy chạy bộ ; Xe đạp tập thể dục ; Ghế massage ; Máy sấy tóc ; Máy tạo kiểu tóc ; Máy cạo râu ; Máy massage, Máy rửa mặt'),
(6, 'Dụng cụ', 132, 'banner-dungcugd-390x210.png ; product-NewGD3-1-780x420.png', 'Dụng cụ ; DỤNG CỤ SỬA CHỮA ; THIẾT BỊ ĐIỆN NƯỚC', 'Máy khoan, Mũi khoan ; Máy cắt, Máy mài ; Bộ dụng cụ đa năng ; Cờ lê - mỏ lết, Tua vít ; Kìm, Búa, Thước đo - cân cầm tay ; Máy đo khoảng cách ; Ổ khóa', 'Máy bơm nước ; Máy rửa xe ; Ổn áp', '', ''),
(7, 'Đồ dùng nhà bếp', 26, '690-300-690x300-14.png ; banner-giadungonline-new-390x210.png', 'Đồ dùng nhà bếp ; PHÒNG ĂN ; VỆ SINH NHÀ CỬA ; NHÀ BẾP ; THIẾT BỊ KHÁC', 'Bình đựng nước ; Bình, ly giữ nhiệt ; Tô, chén, dĩa ; Đũa - Muỗng ; Ly, bộ ly ; Bộ ấm trà ; Bộ lau nhà ; Kẹp, móc quần áo ; Phụ kiện máy giặt ; Vệ sinh nhà cửa', 'Nồi, bộ nồi ; Chảo chống dính ; Dao, kéo, thớt ; Hộp, Hũ đựng thực phẩm ; Hộp hâm cơm ; Thau, rổ ; Vá, Sạn ; Thùng đá, ca đá', 'Dụng cụ kẹp gắp ; Dụng cụ làm bánh ; Vỉ, thùng nướng ; Khay, ly làm đá ; Phụ kiện nhà bếp ; Khay, kệ đựng đồ ; Vòi rửa chén', 'Mũ bảo hiểm ; Két sắt, Ổ khoá'),
(8, 'Chăm sóc mẹ và bé', 24, 'product-NewGD3(1)-780x420.png', 'mẹ và bé ; CHĂM SÓC MẸ VÀ BÉ ; THIẾT BỊ PHÒNG TẮM ; Xem tất cả', 'Máy hút sữa ; Máy hâm sữa ; Máy tiệt trùng ; Núm ti ; Ti giả ; Núm trợ ti', 'Nắp bồn cầu ; Vòi xịt vệ sinh ; Vòi sen', '', ''),
(9, 'Lọc nước', 68, '690-300-690x300-30.png ; Default-4-254x254.png', 'Lọc nước ; LỌC NƯỚC', 'Máy lọc nước RO tủ đứng ; Máy lọc nước RO âm tủ ; Máy lọc nước RO để bàn ; Máy lọc nước ion kiềm ; Lọc nước không điện ; Lõi máy lọc nước ; Cốc lọc đầu nguồn ; Bút thử nước ; Cây nước nóng lạnh', '', '', ''),
(10, 'Máy nước nóng', 100, '', 'Máy nước nóng ; MÁY NƯỚC NÓNG', 'Máy nước nóng trực tiếp ; Máy nước nóng gián tiếp ; Máy nước nóng năng lượng mặt trời ; Ariston ; Electrolux ; Panasonic ; Centon', '', '', ''),
(11, 'Điện thoại', 173, '', 'Điện thoại ; ĐIỆN THOẠI ; Xem tất cả', 'iPhone ; Samsung ; Oppo ; Xiaomi ; Điện thoại từ 2 - 4 triệu ; Điện thoại từ 4 - 7 triệu ; Điện thoại trên 13 triệu ; Điện thoại cũ giá rẻ ; Điện thoại trả góp 0-1%', '', '', ''),
(12, 'Laptop, Tablet', 268, '', 'Laptop, Tablet ; LAPTOP ; TABLET ; MÀN HÌNH ; MÁY TÍNH ; MÁY IN ; Xem tất cả', 'Macbook ; Asus ; HP ; Lenovo ; Acer ; Dell ; LG ; MSI ; Laptop dưới 15 triệu ; Laptop cũ giá rẻ ; Laptop trả góp 0-1%', 'iPad ; Samsung ; Huawei ; Lenovo ; Masstel ; Máy tính bảng từ 3 - 15 triệu ; Máy tính bảng trên 15tr ; Máy tính bảng cũ giá rẻ ; Máy tính bảng trả góp 0-1%', 'Màn hình Asus ; Màn hình Lenovo ; Màn hình Viewsonic ; Màn hình Samsung ; Màn hình LG ; Apple iMac | Mac Mini ; Máy tính để bàn HP ; Máy tính để bàn Asus', 'Máy in HP ; Máy in Brother ; Máy in Canon ; Mực in'),
(13, 'Phụ kiện', 268, '', 'Phụ kiện ; PHỤ KIỆN ĐIỆN THOẠI ; PHỤ KIỆN LAPTOP ; PHỤ KIỆN ĐIỆN MÁY ; THIẾT BỊ MẠNG ; Xem tất cả', 'Pin sạc dự phòng ; Cáp sạc ; Tai nghe ; Loa nghe nhạc ; Thẻ nhớ', 'USB ; Ổ cứng ; Chuột ; Bàn phím', 'Cáp HDMI, Cáp tivi ; Khung treo Tivi ; Điều khiển Tivi ; Giá đỡ máy giặt ; Loa soundbar', 'Thiết bị mạng TP-LINK ; Thiết bị mạng TotoLink ; Thiết bị mạng Asus ; Thiết bị mạng Xiaomi ; Thiết bị mạng Tenda ; Thiết bị mạng LINKSYS'),
(14, 'Đồng hồ', 268, '', 'Đồng hồ ; ĐỒNG HỒ THỜI TRANG ; ĐỒNG HỒ THÔNG MINH ; Xem tất cả', 'Đồng hồ nam ; Đồng hồ nữ ; Đồng hồ Casio ; Đồng hồ Orient ; Đồng hồ Citizen', 'Apple Watch ; Samsung ; Huawei ; Xiaomi', '', ''),
(15, 'Máy cũ, trưng bày', 26, '', 'Máy cũ, trưng bày ; Tivi, dàn loa âm thanh ; Điện gia dụng ; Tủ lạnh, tủ đông ; Máy lạnh, quạt điều hòa ; Máy giặt, máy sấy ; Máy lọc nước, nước nóng ; Phụ kiện, loa ; Viễn thông ; Xem tất cả', 'Tivi ; Loa Karaoke ; Micro ; Quạt ; Nồi cơm ; Sinh tố/ Xay ép ; Bếp điện ; Bếp gas ; Bàn ủi', 'Tủ lạnh ; Tủ đông ; Máy lạnh ; Quạt điều hòa', 'Máy giặt ; Máy sấy ; Máy lọc nước ; Máy nước nóng ; Cây nước nóng lạnh', 'Pin sạc dự phòng ; Chuột ; Cáp sạc/ Adapter ; Tai nghe ; Phụ kiện điện máy ; Loa laptop ; Điện thoại ; Máy tính bảng ; Laptop ; Đồng hồ thông minh'),
(16, 'Xe đạp', 228, '690-300-690x300-1.jpg', 'Xe đạp ; XE ĐẠP ; Xem tất cả', 'Giant ; Fornix ; Sava ; Fascino ; Life ; RoyalBaby ; Xe đạp thể thao ; Xe đạp địa hình ; Xe đạp trẻ em ; Xe đạp đua ; Xe đạp thành phố ; Xe đạp trả góp 0%', '', '', ''),
(17, 'Phụ kiện xe đạp', 148, '', 'Phụ kiện xe đạp ; PHỤ KIỆN XE ĐẠP ; Xem tất cả', 'Mũ bảo hiểm ; Bình nước ; Bộ đèn ; Túi đeo ; Chân chống ; Khoá dây ; Gọng nước ; Găng tay', '', '', ''),
(18, 'Máy giặt', 268, 'Máy Giặt mua Online giảm đến 30%', 'Máy giặt ; MÁY GIẶT ; PHỤ KIỆN MÁY GIẶT ; Xem tất cả', 'Đời mới 2021 ; Toshiba ; LG ; Panasonic ; Samsung ; Electrolux ; Aqua ; Máy giặt cửa ngang (cửa trước) ; Máy giặt sấy ; Giá dưới 5 triệu', 'Áo trùm máy giặt ; Giá đỡ máy giặt ; Túi giặt', '', ''),
(19, 'Máy sấy quần áo', 268, 'Default-2-254x254.png', 'Sấy quần áo ; MÁY SẤY QUẦN ÁO ; Xem tất cả', 'Giá từ 5 - 10 triệu ; Electrolux ; Beko ; Candy', '', '', ''),
(20, 'Máy Lạnh', 268, '690-300-690x300-12.png', 'Máy lạnh ; MÁY LẠNH ; Xem tất cả', 'Trả góp 0 - 0.5% ; Đời mới 2020 ; Panasonic ; Daikin ; Samsung ; Máy lạnh 1 HP ; Máy lạnh 1.5 HP ; Máy lạnh Inverter tiết kiệm điện ; Máy lạnh dưới 7 triệu', '', '', ''),
(21, 'Quạt điều hòa', 268, '', 'Quạt điều hòa ; QUẠT ĐIỀU HÒA ; Quạt ; Xem tất cả', 'Kangaroo ; Daikiosan ; Sunhouse ; Midea ; Delites ; Từ 1 đến 3 triệu ; Từ 3 đến 5 triệu ; Quạt mát dưới 20 m² ; Quạt mát từ 20 - 34 m² ; Quạt mát từ 35 - 50 m² ; Quạt mát trên 50 m²', 'Quạt treo tường ; Quạt sạc điện ; Quạt đứng ; Quạt hộp ; Quạt lửng ; Quạt bàn', '', ''),
(22, 'Dịch vụ hữu ích', 268, '', 'Dịch vụ hữu ích ; DỊCH VỤ HỮU ÍCH', 'Sim số, thẻ càoGiảm 5% ; Thu hộ ; Vệ sinh Máy lạnh - Máy giặt - Quạt ; Sửa chữa Điện - NướcMới ; Đi chợ online', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grab_content`
--

CREATE TABLE `grab_content` (
  `id` bigint(20) NOT NULL,
  `cid` bigint(20) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL,
  `img` text DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `percent` double DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `gift` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `grab_content`
--

INSERT INTO `grab_content` (`id`, `cid`, `avatar`, `img`, `discount`, `percent`, `price`, `name`, `size`, `color`, `gift`, `payment_type`, `category_name`) VALUES
(1, 0, 'mg-lg-inverter-85-kg-fv1408s4w-8-300x300.jpg', 'mg-Frame(11)-min-1020x570.jpg , mg-may-giat-lg-fv1409s4w-note-1.jpg', 11490000, 17, '9.440.000', 'Máy Giặt LG Inverter 8.5 Kg FV1408S4W', '', '8.5 KG - Xám , 8.5 KG - Trắng , 9 KG - Trắng', '', 'Online giá rẻ', 'Máy giặt , Máy giặt LG'),
(2, 0, 'noi-chien-khong-daukalite-q10-300x300.png', 'nc-220921-0553000.jpg , nc-220921-0553000.jpg', 4490000, 35, '2790000', 'Nồi chiên không dầu Kalite Q10 10 lít', '', '', '', 'Chỉ bán onlinẻ', 'Thiết bị làm bánh , Nồi chiên không dầu Kalite'),
(3, 0, 'tv-samsung-qa65lst7t-293020-023011-550x340.jpg', 'tv-vi-vn-nanocell-lg-50nano75tpa-1.jpg , tv-nanocell-lg-50nano75tpa-230921-100745.jpg', 99900000, 21, '44900000', 'Máy lọc nước RO Karofi B930 9 lõi', '64 inch , 4K', '', '', 'Online giá rẻ', 'Tivi , Smart Tivi Samsung'),
(4, 0, 'mln-kangaroo-kg3331-daidien-300x300.jpg', 'mnl-1-1020x570.jpg , mnl-cay-nuoc-nong-lanh-kangaroo-kg3331-2.jpg', 2690000, 21, '2.100.000', 'Cây nước nóng lạnh Kangaroo KG3331', '', '', '', '', 'Gia dụng ,Cây nước nóng lạnh Kangaroo'),
(5, 0, 'tl-samsung-rt32k5932by-sv-300x300.jpg', 'tl-samsung-rt32k5932by-sv-140821-0852180.png , tl-samsung-rt32k5932by-sv-note.jpg', 14390000, 21, '11.160.000', 'Tủ Lạnh Samsung Inverter 319 lít RT32K5932BY/SV', '', '319 lít - Đen , 319 lít - Nâu', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(6, 0, 'xd-city-phoenix-yumo-26-inch-xanh-lam-thumb-550x340.jpg', 'xd-city-phoenix-yumo-26-inch-xanh-lam-1-org.jpg , xd-city-phoenix-yumo-26-inch-xanh-lam-8-org.jpg', 4290000, 21, '3.003.000', 'Xe đạp đường phố cổ điển City Phoenix YUMO 26 inch', 'Bánh 26\" , Sườn hợp kim nhôm', '', '', 'Online giá rẻ', 'Xe đạp , Xe đạp đường phố (City Bike) Phoenix'),
(7, 0, 'nl-kangaroo-22l-kg-73r2-1-300x300.jpg', 'nl-01(2)-1020x570.jpg , nl-kangaroo-22l-kg-73r2-note.jpg', 2890000, 15, '2450000', 'Máy nước nóng gián tiếp Kangaroo 22 lít 2500W KG 73R2', '2500W , 22 lít', '', '', '', 'Máy nước nóng , Gián tiếp Kangaroo'),
(8, 0, 'may-xay-da-nang-kangaroo-kg2b3-thumb-300x300.jpg', 'mxxt-Tinhnang1-1020x570.jpg , mxxt-may-xay-da-nang-kangaroo-kg2b3-n.jpg', 790000, 46, '426.000', 'Máy xay đa năng Kangaroo KG2B3', 'Cối xay nhựa', '380 W - Đen & Bạc , 500 W - Đen 500 , W - Đen', '', 'Online giá rẻ', 'Gia dụng , Máy xay sinh tố Kangaroo'),
(9, 0, 'tl-aqua-aqr-igw525em-gb-12-300x300.jpg', 'tl-aqua-aqr-igw525em-gb-260821-1151010.jpg , tl-tu-lanh-aqua-aqr-igw525em-gb.jpg', 25690000, 21, '19900000', 'Tủ Lạnh Aqua Inverter 456 lít AQR-IGW525EM GB', '', '311 lít , 337 lít , 456 lít', '', '', 'Tủ lạnh , Tủ lạnh Aqua'),
(10, 0, 'tv-60AU8100-550x34011212.jpg', 'tv-vi-vn-nanocell-lg-55nano75tpa.jpg , tv-nanocell-lg-55nano75tpa637696318870397082.jpg', 24690000, 14, '21900000', 'Samsung Smart TV Crystal UHD UA60AU8100', '60 inch , 4K', '50 inch , 55 inch , 65 inch', '', 'Online giá rẻ', 'Tivi , Samsung Smart TV'),
(11, 1, 'tv-pic2-550x340.jpg', 'tv-casper-43fx6200-070621-0300230-1020x570.jpg , tv-casper-43fx6200-note.jpg', 16990000, 8, '16.200.000', 'LG Smart TV QNED 75QNED99TPB', '75 inch, 8K', '50 inch , 55 inch , 75 inch', '', 'Online giá rẻ', 'Tivi , Smart Tivi LG'),
(12, 1, 'tv-qled-4k-samsung-qa55q65a-avatar-1-550x340.jpeg', 'tv-casper-43fx6200-070621-0300230-1020x570.jpg , tv-casper-43fx6200-note.jpg', 21990000, 7, '20.200.000', 'Samsung Smart TV QLED QA50Q65A', '50 inch , 4K', '50 inch , 55 inch , 65 inch', '', 'Online giá rẻ', 'Tivi , Smart Tivi Samsung'),
(13, 1, 'tv-casper-32hx6200-550x340.jpg', 'tv-casper-43fx6200-070621-0300230-1020x570.jpg , tv-casper-43fx6200-note.jpg', 13990000, 7, '13400000', 'Sony Android TV KD-43X75', '75 inch , 8K', '50 inch , 55 inch , 75 inch', '', 'Online giá rẻ', 'Tivi , Smart Tivi Sony'),
(14, 1, 'tv-up7750-550x340.jpg', 'tv-casper-43fx6200-070621-0300230-1020x570.jpg , tv-casper-43fx6200-note.jpg', 15990000, 8, '14490000', 'LG Smart TV 43UP7800PTB', '43 inch , 4K', '50 inch , 55 inch , 65 inch', '', 'Online giá rẻ', 'Tivi , Smart Tivi LG'),
(15, 1, 'tv-untitled-1-550x340.jpg', 'tv-casper-43fx6200-070621-0300230-1020x570.jpg , tv-casper-43fx6200-note.jpg', 69990000, 7, '64900000', 'Sony Android TV KD-85X86J', '85 inch , 8K', '50 inch , 55 inch , 65 inch', '', 'Online giá rẻ', 'Tivi , Smart Tivi Sony'),
(16, 1, 'tv-sony-kd-55x7500h-193620-103647-550x340.jpg', 'tv-casper-43fx6200-070621-0300230-1020x570.jpg , tv-casper-43fx6200-note.jpg', 24900000, 14, '21400000', 'Samsung Smart TV Crystal UHD UA60AU8100', '60 inch , 4K', '50 inch , 55 inch , 65 inch', '', 'Online giá rẻ', 'Tivi , Smart Tivi Samsung'),
(17, 1, 'tv-nanocell-lg-55nano75tpa-avatar-1-550x340.jpeg', 'tv-casper-43fx6200-070621-0300230-1020x570.jpg , tv-casper-43fx6200-note.jpg', 6490000, 6, '6090000', 'TCL Android TV L32S66A', '32 inch , 4K', '50 inch , 55 inch , 65 inch', '', 'Online giá rẻ', 'Tivi , Smart Tivi TCL'),
(18, 1, 'tv-x75-550x340.jpg', 'tv-casper-43fx6200-070621-0300230-1020x570.jpg , tv-casper-43fx6200-note.jpg', 15990000, 18, '12900000', 'AQUA Android TV LE50AQT6600UG', '50 inch , 4K', '50 inch , 55 inch , 65 inch', '', 'Online giá rẻ', 'Tivi , Smart Tivi AQUA'),
(19, 1, 'tv-led-4k-samsung-ua50au8100-avatar-1-550x340.jpeg', 'tv-casper-43fx6200-070621-0300230-1020x570.jpg , tv-casper-43fx6200-note.jpg', 21990000, 21, '17900000', 'LG Smart TV NanoCell 50NANO75TPA', '50 inch , 4K', '50 inch , 55 inch , 65 inch', '', 'Online giá rẻ', 'Tivi , Smart Tivi LG'),
(20, 1, 'tv-up7800-1-550x340.jpg', 'tv-casper-43fx6200-070621-0300230-1020x570.jpg , tv-casper-43fx6200-note.jpg', 25990000, 8, '24900000', 'Sony Android TV KD-55X85J', '55 inch , 4K', '50 inch , 55 inch , 65 inch', '', 'Online giá rẻ', 'Tivi , Smart Tivi Sony'),
(21, 0, 'nl-ariston-sl2-20-rs-25-fe-9-300x300.jpg', 'nl-ariston-sl2-20-rs-25-fe-190821-1215350.png , nl-may-nuoc-nong-ariston-sl2-20-rs-25-fe.jpg', 3690000, 21, '3290000', 'Máy nước nóng gián tiếp Ariston 20 lít 2500W SL2 20 RS 2.5 FE', '2500W , 20 lít', '', '', '', 'Máy nước nóng , Trực tiếp Beko'),
(22, 0, 'tld-kangaroo-kg-400nc2-2-300x300.jpg', 'tld--dac-diem-noi-bat.jpg , tld-kangaroo-kg-400nc2.jpg', 8990000, 16, '7490000', 'Samsung Inverter 236 lít RT22M4032BY/SV', '', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(23, 0, 'mg-ww10tp44dsb-6-1-300x300.jpg', 'mg-09-1020x570.jpg , mg-toshiba-tw-bk115g4v-mg-note-1.jpg', 13090000, 24, '9900000', 'LG Inverter 9 Kg FV1409S4W', '', '', '', 'Online giá rẻ', 'Máy giặt , Máy giặt LG'),
(24, 0, 'dh-midea-msfr-10crdn8-550x160.jpg', 'dh-sharp-ah-x9xew-100621-1003461.jpg , dh-sharp-ah-x9xew.jpg', 8990000, 10, '8.030.000', 'Sharp Inverter 1 HP AH-X9XEW', '', '', 'Giam them 500.000 và Quà 1.145.000', '', 'Điều hòa , Điều hòa Sharp'),
(25, 0, 'tl-samsung-rt20har8dbu-sv-300x300.jpg', 'tl-samsung-rf48a4010m9-sv-080821-0655071.png , tl-samsung-rf48a4010m9-sv-note.jpg', 25090000, 21, '21490000', 'Samsung Inverter 488 lít RF48A4010M9/SV', '', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(26, 0, 'mg-samsung-ww10tp44dsh-sv-300x300.jpg', 'mg-09-1020x570.jpg , mg-toshiba-tw-bk115g4v-mg-note-1.jpg', 13690000, 21, '10900000', 'LG Inverter 9 Kg FV1409S4W', '', '', '', 'Online giá rẻ', 'Máy giặt , Máy giặt LG'),
(27, 0, 'tld-kangaroo-kg498kx2-300x300.jpg', 'tld--dac-diem-noi-bat.jpg , tld-kangaroo-kg-400nc2.jpg', 9990000, 16, '7490000', 'Samsung Inverter 236 lít RT22M4032BY/SV', '1 ngăn đông, 1 ngăn mát', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(28, 0, 'mgd-panasonic-na-fd14v1brv-300x300.jpg', 'mgd-1-1020x570.jpg , mgd-aqua-aqw-fr105gt-bk-note-2.jpg', 13690000, 21, '9900000', 'LG Inverter 9 Kg FV1409S4W', '', '', '', '', 'Máy giặt , Máy giặt LG'),
(29, 0, 'tl-aqua-aqr-igw525em-gb-12-300x300.jpg', 'tl-samsung-rf48a4010m9-sv-080821-0655071.png , tl-samsung-rf48a4010m9-sv-note.jpg', 25090000, 14, '21490000', 'Samsung Inverter 488 lít RF48A4010M9/SV', '', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(30, 0, 'dh-1hpftka25vmvmv-550x160.jpg', 'dh-sharp-ah-x9xew-100621-1003461.jpg , dh-sharp-ah-x9xew.jpg', 8990000, 10, '8.030.000', 'Sharp Inverter 1 HP AH-X9XEW', '', '1 HP , 1.5 HP , 2 HP', '', '', 'Điều hòa , Điều hòa Sharp'),
(31, 0, 'onap-robot-1kva-90-300x300.jpg', 'onap-250920-0359540.jpg , onap-robot-1kva-90-note.jpg', 2029000, 15, '1.724.000', 'Ổn áp ROBOT 1 Pha 1KVA 90 ', '1 pha , 90W', '', '', '', 'Ổn áp , Ổn áp ROBOT'),
(32, 0, 'onap-robot-5kva-90-300x300.jpg', 'onap-250920-0359540.jpg , onap-robot-1kva-90-note.jpg', 4600000, 15, '3.986.000', 'Ổn áp ROBOT 1 Pha 5KVA 90 ', '1 pha , 90W', '', '', '', 'Ổn áp , Ổn áp ROBOT'),
(33, 0, 'onap-robot-1kva-140-300x300.jpg', 'onap-250920-0359540.jpg , onap-robot-1kva-90-note.jpg', 1770000, 15, '1.504.000', 'Ổn áp ROBOT 1Pha 1KVA 140 ', '1 pha , 140W', '', '', '', 'Ổn áp , Ổn áp ROBOT'),
(34, 0, 'onap-robot-5kva-140-300x300.jpg', 'onap-250920-0359540.jpg , onap-robot-1kva-90-note.jpg', 4445000, 15, '3.778.000', 'Ổn áp ROBOT 1 Pha 5KVA 140 ', '1 pha , 140W', '', '', '', 'Ổn áp , Ổn áp ROBOT'),
(35, 0, 'onap-robot-10kva-150-300x300.jpg', 'onap-250920-0359540.jpg , onap-robot-1kva-90-note.jpg', 7390000, 15, '6.281.000', 'Ổn áp ROBOT 1 Pha 10KVA 150 ', '1 pha , 150W', '', '', '', 'Ổn áp , Ổn áp ROBOT'),
(36, 0, 'onap-robot-10kva-90-300x300.jpg', 'onap-250920-0359540.jpg , onap-robot-1kva-90-note.jpg', 9590000, 15, '8.151.000', 'Ổn áp ROBOT 1 Pha 10KVA 90 ', '1 pha , 90W', '', '', '', 'Ổn áp , Ổn áp ROBOT'),
(37, 0, 'onap-robot-3kva-140-300x300.jpg', 'onap-250920-0359540.jpg , onap-robot-1kva-90-note.jpg', 3640000, 15, '3.094.000', 'Ổn áp ROBOT 1 Pha 3KVA 140 ', '1 pha , 140W', '', '', '', 'Ổn áp , Ổn áp ROBOT'),
(38, 0, 'onap-robot-2kva-90-300x300.jpg', 'onap-250920-0359540.jpg , onap-robot-1kva-90-note.jpg', 2940000, 15, '2.499.000', 'Ổn áp ROBOT 1 Pha 2KVA 90 ', '1 pha , 90W', '', '', '', 'Ổn áp , Ổn áp ROBOT'),
(39, 0, 'onap-robot-2kva-140-300x300.jpg', 'onap-250920-0359540.jpg , onap-robot-1kva-90-note.jpg', 2860000, 15, '2.431.000', 'Ổn áp ROBOT 1 Pha 2KVA 140 ', '1 pha , 140W', '', '', '', 'Ổn áp , Ổn áp ROBOT'),
(40, 0, 'onap-robot-3kva-90-300x300.jpg', 'onap-250920-0359540.jpg , onap-robot-1kva-90-note.jpg', 3600000, 15, '3.136.000', 'Ổn áp ROBOT 1 Pha 3KVA 90 ', '1 pha , 90W', '', '', '', 'Ổn áp , Ổn áp ROBOT'),
(41, 9, 'mln-ro-kangaroo-kg88avtu-7-loi-145120-025132-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 13690000, 42, '7.822.000', 'Máy lọc nước RO hydrogen ion kiềm Kangaroo KG100MED 5 lõi', '', '', '', 'Online giá rẻ', 'Thiết bị lọc nước , Máy lọc nước'),
(42, 9, 'mln-korihome-wpk-g61-4-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 8300000, 25, '6.225.000', 'Máy lọc nước RO AOSmith M2 5 lõi', '', '', '', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(43, 9, 'mln-ro-karofi-b930-9-loi-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 4900000, 21, '3.675.000', 'Máy lọc nước UF IONPIA ION-UFS4P 4 lõi', '', '', '', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(44, 9, 'mln-ion-kiem-ionpia-5100-5-loi-20-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 6890000, 20, '5.512.000', 'Máy lọc nước RO Daikiosan DXW-42010H 10 lõi', '', '', '', 'Online giá rẻ', 'Thiết bị lọc nước , Máy lọc nước'),
(45, 9, 'mln-ro-dien-phan-kangaroo-kg100es-7-loi-1-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 7000000, 20, '5600000', 'Máy lọc nước RO Coway P-300L 5 lõi', '', '', 'Quà 350.000', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(46, 9, 'mln-ro-karofi-optimus-pro-o-i439-9-loi-kg-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 7000000, 20, '5600000', 'Máy lọc nước RO Coway P-300L 5 lõi', '', '', 'Quà 350.000', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(47, 9, 'mln-ion-kiem-kangen-leveluk-k8-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 99000000, 20, '79.200.000', 'Máy lọc nước đầu nguồn UF Kangaroo KG888 2 cột lọc và 2 lõi', '', '', '', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(48, 9, 'mln-ro-daikiosan-dxw-33009g-2-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 10990000, 18, '8.910.000', 'Máy lọc nước RO nóng lạnh Sunhouse SHA76214CK-S 9 lõi', '', '', '', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(49, 9, 'mln-ro-aosmith-m2-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 6320000, 15, '5.370.000', 'Máy lọc nước RO Mutosi MP-290SK 9 lõi', '', '', '', 'Online giá rẻ', 'Thiết bị lọc nước , Máy lọc nước'),
(50, 9, 'mln-ion-kiem-ionpia-5250-5-loi-20-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 22690000, 20, '139900000', 'Máy lọc nước RO nóng lạnh Cuckoo CP-QRP2001SW 4 lõi', '', '', '', 'Online giá rẻ', 'Thiết bị lọc nước , Máy lọc nước'),
(51, 5, 'rice-midea-mb-hs5008-18-lit-thumb-300x300.jpg', 'rice-nap-gai-hommy-1-8-lit-jrc-180fe637686132095780342.jpg , rice-nap-gai-hommy-1-8-lit-jrc-180fe-n.jpg', 960000, 44, '532.000', 'Nồi cơm điện nắp gài Kangaroo KG825 1.5 lít', '', '', '', 'Chỉ bán online', 'Gia dụng , Nồi cơm điện'),
(52, 5, 'hair-flyco-fc5809-1-300x300.jpg', 'hair-flyco-fc5809-1-300x300.jpg', 690000, 45, '390.000', 'Tông đơ 75QNED99TPB', '', '', '', 'Chỉ bán online', 'Gia dụng , Tông đơ'),
(53, 5, 'can-thong-minh-xiaomi-nun4056gl-8-300x300.jpg', 'can-thong-minh-xiaomi-nun4056gl-8-300x300.jpg', 990000, 30, '600.000', 'Cân thông minh xiaomi', '', '', '', 'Chỉ bán online', 'Gia dụng , Cân thông minh'),
(54, 5, 'fryer-kalite-q5-237694-300x300.jpg', 'nckd-1.jpg', 5690000, 21, '4900000', 'Nồi chiên không dầu fryer kalite', '', '', '', 'Chỉ bán online', 'Gia dụng , Nồi chiên không dầu'),
(55, 5, 'dh-sunhouse-shd7721-100538-300x300.jpg', 'dh-sharp-ah-x9xew-100621-1003461.jpg , dh-sharp-ah-x9xew.jpg', 3390000, 21, '2900000', 'Điều hòa sunhouse shd7721', '', '', '', 'Chỉ bán online', 'Gia dụng , Điều hòa'),
(56, 5, 'mlkk-kangaroo-kg40ap-avata-300x300.jpg', 'ava-rcy-8617a-310821-0335060.jpg , ava-rcy-8617a-note.jpg', 3886000, 21, '3490000', 'Máy lọc không khí Hafele CF-8116 (537.82.710)', '', '', '', 'Chỉ bán online', 'Gia dụng , Máy lọc không khí'),
(57, 5, 'milk-unie-v6-thumb-300x300.jpg', 'milk-unie-v6-thumb-300x300.jpg', 3800000, 35, '3490000', 'Máy làm sữa hạt Unie V6S', '', '', '', 'Chỉ bán online', 'Gia dụng , Máy làm sữa'),
(58, 5, 'mhb-cam-tay-midea-mcv-16t-b-1-300x300.jpg', 'ava-rcy-8617a-310821-0335060.jpg , ava-rcy-8617a-note.jpg', 5990000, 38, '3.713.000', 'Máy hút bụi cầm tay Xiaomi 1C', '', '', '', 'Chỉ bán online', 'Gia dụng , Máy hút bụi'),
(59, 5, 'rice-hommy-x2522-18l-thumb-300x300.jpg', 'rice-nap-gai-hommy-1-8-lit-jrc-180fe637686132095780342.jpg , rice-nap-gai-hommy-1-8-lit-jrc-180fe-n.jpg', 1690000, 33, '9900000', 'Nồi cơm điện nắp gài Kangaroo KG825 2.5 lít', '', '', '', 'Chỉ bán online', 'Gia dụng , Nồi cơm điện'),
(60, 5, 'inductionCooker-kangaroo-kg859i-10-300x300.jpg', 'Size780x433-780x433.jpg , hommy-kt861-note.jpg', 4100000, 35, '2.665.000', 'Bếp từ Pramie 1105', '', '', '', 'Chỉ bán online', 'Gia dụng , Bếp từ'),
(61, 16, 'bike-mtb-fornix-r20-20-inch-den-doava-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 4200000, 30, '2900000', 'Xe đạp đường phố cổ điển City Phoenix YUMO 26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', '', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(62, 16, 'bike-knight-jy903-sliverblue-thumb-550x340.jpg', 'xd-knight-jy903-silver-red-glr.jpg', 2490000, 21, '1.743.000', 'Xe đạp trẻ em Stitch Antelope JK907-18 18 inch', 'Bánh 18\" , sườn thép', '', '', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(63, 16, 'bike-mtb-forever-f1904-den-vang-100921-100915-550x340.jpg', 'bike-mtb-forever-f1904-den-vang-100921-100915-550x340.jpg', 2990000, 21, '2.093.000', 'Xe Stitch Spider King JK912-18 18 inch', 'Bánh 18\" , sườn hợp kim nhôm', '', '', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(64, 16, 'bike-mtb-fascino-fs-01-20-inch-den-xanh-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 5590000, 21, '4.472.000', 'Xe Đạp Địa Hình MTB Phoenix VIGILON 3.0 26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', '', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(65, 16, 'bike-touring-cavanio-focus-den-doava-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 20, '5.320.000', 'Xe đạp đường phố Touring Cavanio FOCUS 29 inch', 'Bánh 29\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(66, 16, 'bike-mtb-fornix-w20-20-inch-xanh-duong-cam-600x600.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 21, '5.320.000', 'Xe Đạp Địa Hình MTB Phoenix VIGILON 3.0 26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(67, 16, 'bike-mtb-fornix-r20-20-inch-do-denava-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 3690000, 21, '2900000', 'Xe đạp Stitch Knight JY903-26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(68, 16, 'bike-british-girl-jy909-thumb-550x340.jpg', 'xd-knight-jy903-silver-red-glr.jpg', 2690000, 21, '1900000', 'Xe đạp trẻ em Stitch Knight JY903-16 16 inch', 'Bánh 16\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(69, 16, 'bike-ava-xanh-ghi-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 21, '5900000<', 'Xe đạp địa hình MTB Forever F1904 27.5 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(70, 16, 'bike-royalbaby-chipmunk-cm18-1-18-inch-xanh-600x600.jpg', 'xd-knight-jy903-silver-red-glr.jpg', 3690000, 21, '2900000', 'Xe đạp trẻ em Stitch Knight JY903-16 16 inch', 'Bánh 16\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(71, 11, 'phone-samsung-galaxy-z-fold-3-silver-1-600x600.jpg', 'phone-samsung-galaxy-z-fold-3-slider-tong-quan-1020x570.jpg , phone-samsung-galaxy-z-fold-3-n-1.jpg', 44690000, 21, '43900000', 'Samsung Galaxy Z Fold3 5G 512GB', '', '', '', '', 'Điện thoại , Điện thoại Samsung'),
(72, 11, 'phone-iphone-12-den-1-2-600x600.jpg', 'phone-vi-vn-iphone-12-1.jpg , phone-iphone-12-note-1.jpg', 21990000, 6, '20900000', 'Iphone 12 đen', '', '', 'Quà 100.000', '', 'Điện thoại , Điện thoại Iphone'),
(73, 11, 'phone-redmi-10-gray-600x600.jpg', 'phone-realme-c21y-tongquan-780x433-1.jpg , phone-realme-c21y-note-1.jpg', 139900000, 0, '', 'Redmi 10 Gray', '', '', '', 'Chỉ bán online', 'Điện thoại , Điện thoại Redmi'),
(74, 11, 'phone-vivo-y12s-den-new-600x600-600x600.jpg', 'phone-vi-vn-vivo-y21-slider-tong-quan.jpg , phone-vivo-y21-n-1.jpg', 4290000, 0, '', 'Vivo Y21', '', '', '', '', 'Điện thoại , Điện thoại Vivo'),
(75, 11, 'phone-oppo-reno6-z-5g-aurora-1-600x600.jpg', 'phone-oppo-reno6-z-5g-280721-11481111.jpg , phone-oppo-reno6-z-5g-note-3.jpg', 9490000, 0, '', 'OPPO Reno6 Z 5G', '', '', '', '', 'Điện thoại , Điện thoại OPPO'),
(76, 11, 'phone-samsung-galaxy-s21-tim-600x600.jpg', 'phone-samsung-galaxy-z-fold-3-slider-tong-quan-1020x570.jpg , phone-samsung-galaxy-z-fold-3-n-1.jpg', 15490000, 16, '12990000', 'Samsung Galaxy S21 FE (8GB/256GB)', '', '', '', '', 'Điện thoại , Điện thoại Samsung'),
(77, 11, 'phone-oppo-a74-blue-9-600x600.jpg', 'phone-oppo-reno6-z-5g-280721-11481111.jpg , phone-oppo-reno6-z-5g-note-3.jpg', 6690000, 0, '', 'OPPO A74', '', '', '', '', 'Điện thoại , Điện thoại OPPO'),
(78, 11, 'phone-realme-c21y-black-600x600.jpg', 'phone-realme-c21y-tongquan-780x433-1.jpg , phone-realme-c21y-note-1.jpg', 3990000, 0, '', 'Realme C21Y 4GB', '', '', '', '', 'Điện thoại , Điện thoại Realme'),
(79, 11, 'phone-xiaomi-redmi-note-10-5g-xanh-bong-dem-1-600x600.jpg', 'phone-xiaomi-11-lite-5g-slider-tong-quan-1020x570.jpg , phone-xiaomi-11-lite-5g-ne-n-1.jpg', 4690000, 0, '', 'Xiaomi Redmi 10 (6GB/128GB)', '', '', '', '', 'Điện thoại , Điện thoại Xiaomi'),
(80, 11, 'phone-vivo-y53s-xanh-600x600.jpg', 'phone-vi-vn-vivo-y21-slider-tong-quan.jpg , phone-vivo-y21-n-1.jpg', 9900000, 0, '', 'Vivo Y53s Xanh', '', '', '', '', 'Điện thoại , Điện thoại Vivo'),
(81, 13, 'headphone-bluetooth-true-wireless-samsung-buds-2-r177n-avatar2-600x600.jpg', 'headphone-samsung-galaxy-buds-2-r177n-trang-9.jpg , headphone-samsung-galaxy-buds-2-r177n-trang-note-1.jpg', 2900000, 0, '', 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N', '', '', '', '', 'Tai nghe , Không dây - True Wireless'),
(82, 13, 'headphone-bluetooth-true-wireless-samsung-buds-2-r177n-trang-600x600.jpg', 'headphone-samsung-galaxy-buds-2-r177n-trang-9.jpg , headphone-samsung-galaxy-buds-2-r177n-trang-note-1.jpg', 2990000, 0, '', 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N Trắng', '', '', '', '', 'Tai nghe , Không dây - True Wireless'),
(83, 13, 'headphone-galaxy-buds-pro-bac-ava-600x600.jpg', 'headphone-samsung-galaxy-buds-2-r177n-trang-9.jpg , headphone-samsung-galaxy-buds-2-r177n-trang-note-1.jpg', 4390000, 31, '2990000', 'Tai nghe Bluetooth AirPods 2 Apple MV7N2', '', '', '', '', 'Tai nghe , Không dây - True Wireless'),
(84, 13, 'headphone-charge-apple-mwp22-ava-600x600.jpg', 'headphone-samsung-galaxy-buds-2-r177n-trang-9.jpg , headphone-samsung-galaxy-buds-2-r177n-trang-note-1.jpg', 6390000, 31, '4990000', 'Tai nghe Bluetooth AirPods Pro Wireless Charge Apple MWP22', '', '', '', '', 'Tai nghe , Không dây - True Wireless'),
(85, 13, 'loa-bluetooth-sony-extra-bass-srs-xb23-den-av-600x600.jpg', 'loa-bluetooth-harman-kardon-onyx-studio-6-4-1-org.jpg', 4990000, 21, '4740000', 'Loa Bluetooth Harman Kardon Onyx Studio 6', '', '', '', '', 'Loa , Loa Bluetooth'),
(86, 13, 'headphone-hydrus-ts12bc-ava-2-600x600.jpg', 'headphone-samsung-galaxy-buds-2-r177n-trang-9.jpg , headphone-samsung-galaxy-buds-2-r177n-trang-note-1.jpg', 690000, 21, '302.000', 'Tai nghe Bluetooth True Wireless Hydrus TS12BC', '', '', '', 'Chỉ bán online', 'Tai nghe , Không dây - True Wireless'),
(87, 13, 'pin-hydrus-pj-jp196-ava-600x600.jpg', 'pin-hydrus-pj-jp196-hong-4-org.jpg', 490000, 50, '245.000<', 'Pin sạc dự phòng Polymer 10.000 mAh Hydrus PJ JP196', '', '', '', 'Chỉ bán online', 'Phụ kiện , Pin sạc dự phòng'),
(88, 13, 'bluetoth-jbl-charge-4-600x600.jpg', 'loa-bluetoth-jbl-charge-4-den-1-org.jpg , loabluetoth-jbl-charge-4-note-1.jpg', 2990000, 5, '2.840.000', 'Loa Bluetooth JBL Charge 4', '50W', '', '', '', 'Tai nghe , Loa , Loa Bluetooth'),
(89, 13, 'pin-polymer-10000mah-qc30-xmobile-p68d-avatar-1-600x600.jpg', 'pin-hydrus-pj-jp196-hong-4-org.jpg', 700000, 50, '350000', 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 Xmobile P68D', '', '', '', 'Chỉ bán online', 'Phụ kiện , Pin sạc dự phòng'),
(90, 13, 'pin-polymer-10000mah-qc-3-evalu-pa-f1-air-avatar-1-600x600.jpg', 'pin-hydrus-pj-jp196-hong-4-org.jpg', 600000, 30, '420000', 'Pin sạc dự phòng Polymer 10.000 mAh Type C QC3.0 eValu PA F1 Air', '', '', '', 'Online giá rẻ', 'Phụ kiện , Pin sạc dự phòng'),
(91, 14, 'sw-se-40mm-vien-nhom-day-cao-su-hong-thumb-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 8990000, 11, '8000000', 'Apple Watch SE 40mm viền nhôm dây cao su', 'Có nghe gọi', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Apple'),
(92, 14, 'sw-samsung-galaxy-watch-4-lte-classic-46mm-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 9990000, 0, '', 'Samsung Galaxy Watch 4 LTE Classic 46mm', 'Có nghe gọi , Đo nồng độ oxy (SpO2)', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Samsung'),
(93, 14, 'sw-mi-band-6-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 1290000, 21, '990000', 'Vòng đeo tay thông minh Mi Band 6', 'Đo nồng độ oxy (SpO2)', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh  Mi Band'),
(94, 14, 'sw-samsung-galaxy-watch-4-40mm-bac-ava-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 9690000, 57, '4900000', 'Samsung Galaxy Watch 3 41mm viền thép bạc dây da', 'Có nghe gọi , Đo nồng độ oxy (SpO2)', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh  Samsung'),
(95, 14, 'sw-beu-b2-den-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 4900000, 0, '', 'Đồng hồ thông minh Garmin Venu SQ dây silicone trắng', 'Đo nồng độ oxy (SpO2)', '', 'Quà 2990000', '', 'Đồng hồ thông minh , Đồng hồ thông minh Garmin Venu'),
(96, 14, 'sw-garmin-forerunner-45-day-silicone-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 690000, 30, '490.000', 'Đồng hồ thông minh BeU B2 Đen', '', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh BeU'),
(97, 14, 'sw-kidcare-s8-hong-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 5690000, 21, '4.072.000', 'Đồng hồ thông minh Garmin Forerunner 45 dây silicone đỏ', '', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Garmin Forerunner'),
(98, 14, 'sw-mi-band-5-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 2690000, 10, '2.200.000', 'Đồng hồ định vị trẻ em 4G Kidcare S8 Hồng', 'Có nghe gọi', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Kidcare'),
(99, 14, 'sw-samsung-galaxy-watch-active-2-40-mm-den-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 990000, 40, '590.000', 'Vòng đeo tay thông minh Mi Band 5', '', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Mi Band'),
(100, 14, 'sw-oppo-watch-46mm-day-silicone-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 5690000, 50, '2.850.000', 'Samsung Galaxy Watch Active 2 40mm viền nhôm dây silicone đen', 'Có nghe gọi', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Samsung'),
(101, 1, 'ffalcon-32f1-7-550x340.jpg', '1-1020x570 (1).jpg , vi-vn-samsung-qa65lst7t-14.jpg', 6490000, 14, '4690000', 'FFALCON 32F1', '32 inch , HD', '', '', 'Online giá rẻ', 'Tivi , Smart Tivi FFALCON'),
(102, 1, 'tu6900-550x340.jpg', '1-1020x570 (1).jpg , vi-vn-samsung-qa65lst7t-14.jpg', 17900000, 10, '16000000', 'Samsung Smart TV UA55TU6900 55 inch 4K', '55 inch , 4K', '', '', 'Online giá rẻ', 'Tivi , Smart Tivi Samsung'),
(103, 1, 'q726-thumb-1-550x340.png', '1-1020x570 (1).jpg , vi-vn-samsung-qa65lst7t-14.jpg', 20990000, 19, '16990000', 'TCL Android TV QLED 55Q726', '32 inch , HD', '', '', 'Online giá rẻ', 'Tivi , Smart Tivi TCL'),
(104, 1, 'led-4k-samsung-ua50au8100-550x340.jpg', '1-1020x570 (1).jpg , vi-vn-samsung-qa65lst7t-14.jpg', 18900000, 4, '18.200.000', 'Samsung Smart TV Crystal UHD UA50AU8100', '32 inch , HD', '', '', 'Online giá rẻ', 'Tivi , Smart Tivi Samsung'),
(105, 1, 'thumb-1-550x340.jpg', '1-1020x570 (1).jpg , vi-vn-samsung-qa65lst7t-14.jpg', 19400000, 10, '18000000', 'Sony Android TV KD-50X80J', '32 inch , HD', '', '', 'Online giá rẻ', 'Tivi , Smart Tivi Sony'),
(106, 1, 'thumb-1-550x340 (1).jpg', '1-1020x570 (1).jpg , vi-vn-samsung-qa65lst7t-14.jpg', 27900000, 10, '16000000', 'Sony Android TV XR-55X90', '32 inch , HD', '', '', 'Online giá rẻ', 'Tivi , Smart Tivi Sony'),
(107, 1, 'x75-550x340.jpg', '1-1020x570 (1).jpg , vi-vn-samsung-qa65lst7t-14.jpg', 19400000, 10, '18000000', 'Sony Android TV KD-43X75', '32 inch , HD', '', '', 'Online giá rẻ', 'Tivi , Smart Tivi Sony'),
(108, 1, 'led-casper-32hg5200-550x340.jpg', '1-1020x570 (1).jpg , vi-vn-samsung-qa65lst7t-14.jpg', 27900000, 10, '16000000', 'Casper Android TV 32HG5200', '32 inch , HD', '', '', 'Online giá rẻ', 'Tivi , Smart Tivi Casper'),
(109, 2, 'loa-bluetooth-mozard-e7-1-600x600.jpg', 'loa-bluetooth-mozard-e8-xanh-navy-3-org.jpg , loa-bluetooth-mozard-e8-note-1.jpg', 700000, 25, '525.000', 'Loa Bluetooth Mozard E7', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(110, 2, 'loa-bluetooth-fenda-w5-plus-600x600.jpg', 'loa-bluetooth-fenda-w5-plus-233320-083341.jpg , loa-bluetooth-fenda-w5-plus-n-1.jpg', 450000, 25, '337.000', 'Loa Bluetooth Fenda W5 Plus', '2.1 kênh , 5W', '', '', 'Online giá rẻ', 'Loa'),
(111, 2, 'loa-bluetooth-mozard-e8-600x600.jpg', 'loa-bluetooth-mozard-e8-xanh-navy-3-org.jpg , loa-bluetooth-mozard-e8-note-1.jpg', 950000, 25, '712.000', 'Loa Bluetooth Mozard E8', '2.1 kênh , 5W', '', '', 'Online giá rẻ', 'Loa'),
(112, 2, 'loa-vi-tinh-21-enkor-s2880-den-1-2-600x600.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 700000, 25, '525.000', 'Loa vi tính Bluetooth Enkor S2880', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(113, 2, 'loa-vi-tinh-21-enkor-e50-den-ava-600x600.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 950000, 25, '712.000', 'Loa vi tính Enkor E50', '2.1 kênh , 20W', '', '', 'Online giá rẻ', 'Loa'),
(114, 2, 'loa-vi-tinh-fenda-v320-ava-600x600.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 450000, 25, '337.000', 'Loa vi tính Fenda V320', '2.1 kênh ,420W', '', '', 'Online giá rẻ', 'Loa'),
(115, 2, 'dalton-ts-15g600x-12-600x600.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 950000, 25, '712.000', 'Loa kéo Karaoke Dalton TS-15G600X', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(116, 2, 'loa-vi-tinh-fenda-f380x-ava-600x600.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 950000, 25, '712.000', 'Loa Vi Tính Bluetooth Fenda F380X', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(117, 2, 'loa-bluetooth-mozard-y550-plus-600x600.jpg', 'loa-bluetooth-fenda-w5-plus-233320-083341.jpg , loa-bluetooth-fenda-w5-plus-n-1.jpg', 450000, 25, '337.000', 'Loa Bluetooth Mozard Y550 Plus', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(118, 2, 'nanomax-s-900-300x300.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 450000, 25, '337.000', 'Loa kéo Karaoke Nanomax S-900', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(119, 2, 'loa-bluetooth-mozard-e8-600x600.jpg', 'loa-bluetooth-mozard-e8-xanh-navy-3-org.jpg , loa-bluetooth-mozard-e8-note-1.jpg', 950000, 25, '712.000', 'Loa Bluetooth Mozard E8', '2.1 kênh , 5W', '', '', 'Online giá rẻ', 'Loa'),
(120, 2, 'loa-vi-tinh-21-enkor-s2880-den-1-2-600x600.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 700000, 25, '525.000', 'Loa vi tính Bluetooth Enkor S2880', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(121, 2, 'loa-vi-tinh-21-enkor-e50-den-ava-600x600.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 950000, 25, '712.000', 'Loa vi tính Enkor E50', '2.1 kênh , 20W', '', '', 'Online giá rẻ', 'Loa'),
(122, 2, 'loa-vi-tinh-fenda-v320-ava-600x600.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 450000, 25, '337.000', 'Loa vi tính Fenda V320', '2.1 kênh ,420W', '', '', 'Online giá rẻ', 'Loa'),
(123, 2, 'dalton-ts-15g600x-12-600x600.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 950000, 25, '712.000', 'Loa kéo Karaoke Dalton TS-15G600X', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(124, 2, 'loa-vi-tinh-fenda-f380x-ava-600x600.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 950000, 25, '712.000', 'Loa Vi Tính Bluetooth Fenda F380X', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(125, 2, 'loa-bluetooth-mozard-y550-plus-600x600.jpg', 'loa-bluetooth-fenda-w5-plus-233320-083341.jpg , loa-bluetooth-fenda-w5-plus-n-1.jpg', 450000, 25, '337.000', 'Loa Bluetooth Mozard Y550 Plus', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(126, 2, 'nanomax-s-900-300x300.jpg', '1-780x433.jpg , dalton-ts-15g600x-note.jpg', 450000, 25, '337.000', 'Loa kéo Karaoke Nanomax S-900', '2.1 kênh , 54W', '', '', 'Online giá rẻ', 'Loa'),
(127, 3, 'samsung-rt22m4032by-sv-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 12000000, 9, '10000000', 'Samsung Inverter 236 lít RT22M4032BY/SV', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(128, 3, 'panasonic-inverter-326-lit-nr-tl351vgmv-1.-600x600.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 8970000, 12, '6000000', 'Panasonic Inverter 326 lít NR-TL351VGMV', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(129, 3, 'lg-gn-b422wb-19-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 15090000, 14, '12.840.000', 'LG Inverter 393 lít GN-B422WB Online giá rẻ', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(130, 3, 'panasonic-nr-bc360qkvn-30-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 10000000, 0, '', 'Panasonic Inverter 322 lít NR-BC360QKVN', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(131, 3, 'samsung-rs62r5001m9-sv-9-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 10000000, 0, '', 'Samsung Inverter 647 lít RS62R5001M9/SV', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(132, 3, 'tu-lanh-electrolux-eum0900sa-2-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 15090000, 14, '12.840.000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(133, 3, 'panasonic-inverter-326-lit-nr-tl351vgmv-1.-600x600 (1).jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 8970000, 12, '6000000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(134, 3, 'lg-gn-b422wb-19-300x300 (1).jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 10000000, 0, '', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(135, 3, 'toshiba-gr-ag58va-x-16-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 15090000, 14, '12.840.000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(136, 3, 'tu-lanh-sharp-sj-x251e-sl-17-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 8970000, 12, '6000000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(137, 3, 'beko-rdnt371e50vzgb-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 15090000, 14, '12.840.000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(138, 3, 'panasonic-nr-ba229pkvn-1.-600x600.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 10000000, 0, '', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(139, 3, '30n49by-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 8970000, 12, '6000000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(140, 3, 'panasonic-nr-bc360qkvn-30-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 10000000, 0, '', 'Panasonic Inverter 322 lít NR-BC360QKVN', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(141, 3, 'samsung-rs62r5001m9-sv-9-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 10000000, 0, '', 'Samsung Inverter 647 lít RS62R5001M9/SV', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(142, 3, 'tu-lanh-electrolux-eum0900sa-2-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 15090000, 14, '12.840.000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(143, 3, 'panasonic-inverter-326-lit-nr-tl351vgmv-1.-600x600 (1).jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 8970000, 12, '6000000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(144, 3, 'lg-gn-b422wb-19-300x300 (1).jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 10000000, 0, '', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(145, 3, 'toshiba-gr-ag58va-x-16-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 15090000, 14, '12.840.000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(146, 3, 'tu-lanh-sharp-sj-x251e-sl-17-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 8970000, 12, '6000000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(147, 3, 'beko-rdnt371e50vzgb-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 15090000, 14, '12.840.000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(148, 3, 'panasonic-nr-ba229pkvn-1.-600x600.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 10000000, 0, '', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(149, 3, '30n49by-300x300.jpg', 'samsung-rt29k5532by-sv-140821-1001320.png , samsung-rt29k5532by-sv-note.jpg', 8970000, 12, '6000000', 'Electrolux 85 lít EUM0900SA', '', '', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(150, 4, 'sanaky-vh-4099a1-300-300x300.jpg', '', 7690000, -12, '6.650.000', 'Sanaky 305 lít VH-4099A1', '1 ngăn đông , 1 ngăn mát', '', '', 'Online giá re', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(151, 4, 'sanaky-vh-4099a1-300-300x300.jpg', '', 9990000, 25, '7490000', 'Kangaroo 327 lít KG498KX2', '1 ngăn đông , 1 ngăn mát', '', '', '', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(152, 4, 'kangaroo-kg-400nc2-2-300x300.jpg', '', 5300000, -12, '4700000', 'Kangaroo 252 lít KG 400NC2', '1 ngăn đông , 1 ngăn mát', '', '', 'Online giá re', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(153, 4, 'tu-dong-sanaky-vh-8699hy3-6-300x300.jpg', '', 29790000, -5, '28090000', 'Sanaky Inverter 280 lít VH-4099W3', '1 ngăn đông , 1 ngăn mát', '', '', 'Online giá re', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(154, 4, 'c4201e-300x300.jpg', '', 5300000, -12, '4700000', 'Sanaky Inverter 761 lít VH-8699HY3', '1 ngăn đông , 1 ngăn mát', '', '', '', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(155, 4, 'sunhouse-shr-f2272w2-300x300.jpg', '', 9990000, 25, '7490000', 'AQUA Inverter 319 lít AQF-C4201E', '1 ngăn đông , 1 ngăn mát', '', '', '', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(156, 4, 'sanaky-vh-1599hyk-300x300.jpg', '', 5300000, -12, '4700000', 'Sanaky 100 lít VH-1599HYK', '1 ngăn đông , 1 ngăn mát', '', '', 'Online giá re', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(157, 4, 'sanaky-vh-1199hy-300x300.jpg', '', 9990000, 25, '7490000', 'Kangaroo 140 lít KG 265NC1', '1 ngăn đông , 1 ngăn mát', '', '', '', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(158, 4, 'c3001s-300x300.jpg', '', 7690000, -12, '6.650.000', 'Sanaky 220 lít VH-2899W1', '1 ngăn đông , 1 ngăn mát', '', '', 'Online giá re', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(159, 4, 'sanaky-vh-4099a1-300-300x300.jpg', '', 9990000, 25, '7490000', 'Kangaroo 327 lít KG498KX2', '1 ngăn đông , 1 ngăn mát', '', '', '', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(160, 4, 'kangaroo-kg-400nc2-2-300x300.jpg', '', 5300000, -12, '4700000', 'Kangaroo 252 lít KG 400NC2', '1 ngăn đông , 1 ngăn mát', '', '', 'Online giá re', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(161, 4, 'tu-dong-sanaky-vh-8699hy3-6-300x300.jpg', '', 29790000, -5, '28090000', 'Sanaky Inverter 280 lít VH-4099W3', '1 ngăn đông , 1 ngăn mát', '', '', 'Online giá re', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(162, 4, 'c4201e-300x300.jpg', '', 5300000, -12, '4700000', 'Sanaky Inverter 761 lít VH-8699HY3', '1 ngăn đông , 1 ngăn mát', '', '', '', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(163, 4, 'sunhouse-shr-f2272w2-300x300.jpg', '', 9990000, 25, '7490000', 'AQUA Inverter 319 lít AQF-C4201E', '1 ngăn đông , 1 ngăn mát', '', '', '', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(164, 4, 'sanaky-vh-1599hyk-300x300.jpg', '', 5300000, -12, '4700000', 'Sanaky 100 lít VH-1599HYK', '1 ngăn đông , 1 ngăn mát', '', '', 'Online giá re', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(165, 4, 'sanaky-vh-1199hy-300x300.jpg', '', 9990000, 25, '7490000', 'Kangaroo 140 lít KG 265NC1', '1 ngăn đông , 1 ngăn mát', '', '', '', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(166, 4, 'c3001s-300x300.jpg', '', 7690000, -12, '6.650.000', 'Sanaky 220 lít VH-2899W1', '1 ngăn đông , 1 ngăn mát', '', '', 'Online giá re', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(167, 4, 'tu-dong-sanaky-vh-8699hy3-6-300x300.jpg', '', 29790000, -5, '28090000', 'Sanaky Inverter 280 lít VH-4099W3', '1 ngăn đông , 1 ngăn mát', '', '', 'Online giá re', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(168, 4, 'c4201e-300x300.jpg', '', 5300000, -12, '4700000', 'Sanaky Inverter 761 lít VH-8699HY3', '1 ngăn đông , 1 ngăn mát', '', '', '', 'Tủ đông, tủ mát , Tủ đông, tủ mát Sanaky'),
(169, 5, 'noi-lau-dien-delites-nl001-thumb-300x300.jpg', 'vi-vn-nồi-lẩu-diện-delites-nl001-3-lít-(1).jpg , noi-lau-dien-delites-nl001.jpg', 650000, 30, '', 'Nồi lẩu điện Delites NL001 3 lít', '', '', '', 'Online giá rẻ', 'Điện gia dụng , Nồi Lẩu'),
(170, 5, 'ava-aj02-16-600x600.jpg', 'a2-780x433.jpg , ava-aj02-note.jpg', 1300000, 31, '', 'Máy ép trái cây AVA AJ02', '', '', '', 'Online giá rẻ', 'Điện gia dụng , Máy ép trái cây'),
(171, 5, 'bo-hai-inox-3-day-hommy-cw-s051-4-181021-031600-600x600.jpg', 'bo-hai-inox-3-day-hommy-cw-s051-4-10.jpg , bo-hai-inox-3-day-hommy-cw-s051-4-note.jpg', 530000, 40, '', 'Bộ hai nồi inox 3 đáy nắp kiếng 16cm & 24cm Hommy CW-', '', '', '', 'Online giá rẻ', 'Điện gia dụng , nồi inox'),
(172, 5, 'sunhouse-shd1388-xanh-196230.jpg', 'vi-vn-sunhouse-shd1388-xanh-(3).jpg , sunhouse-shd1388-xanh-1.jpg', 590000, 15, '', 'Bình đun siêu tốc giữ nhiệt Sunhouse 1.7 lít SHD1388 ', '', '', '', 'Online giá rẻ', 'Điện gia dụng , Bình đun siêu tốc'),
(173, 5, 'may-hut-bui-cam-tay-xiaomi-1c-221994-300x300.jpg', 'vi-vn-dmx-mayhutbui-hopchuabui.jpg , may-hut-bui-cam-tay-xiaomi-1c.jpg', 3990000, 33, '', 'Máy hút bụi cầm tay Xiaomi 1C ', '', '', '', 'Online giá rẻ', 'Điện gia dụng , Máy hút bụi'),
(174, 6, 'may-khoan-dong-luc-bosch-gsb-550-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 920000, 0, '', 'Máy khoan động lực Bosch GSB 550 550W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(175, 6, 'bosch-x-line-34-mon-1103-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 1590000, 0, '', 'Bộ mũi khoan và vặn vít 34 món Bosch X-Line', '', '', '', '', 'Dụng cụ , Máy khoan'),
(176, 6, 'bosch-gsb-16-re-11-300x300.jfif', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 133000, 5, '', 'Máy khoan động lực Bosch GSB 550 550W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(177, 6, 'kachi-mk-212-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 389000, 0, '', 'Máy khoan Bosch GBM 320 320W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(178, 6, 'thumb-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 890000, 0, '', 'Máy khoan Bosch GBM 320 320W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(179, 6, 'kachi-mk-166-17-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 1590000, 0, '', 'Máy khoan Bosch GBM 320 320W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(180, 6, 'bosch-38-mon-12-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 389000, 0, '', 'Máy khoan động lực Bosch GSB 550 550W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(181, 6, 'may-khoan-bosch-gbm-320-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 890000, 0, '', 'Máy khoan Bosch GBM 320 320W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(182, 6, 'tolsen-10038-1-300x300.jpg', 'tolsen-10038-11-org.jpg , tolsen-10038-2-org.jpg', 389000, 0, '', 'Bộ 3 kìm - răng - cắt - nhọn mini Tolsen 11cm 10038', '', '', '', '', 'Dụng cụ , Kìm'),
(183, 6, 'bosch-x-line-34-mon-1103-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 1590000, 0, '', 'Bộ mũi khoan và vặn vít 34 món Bosch X-Line', '', '', '', '', 'Dụng cụ , Máy khoan'),
(184, 6, 'bosch-gsb-16-re-11-300x300.jfif', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 133000, 5, '', 'Máy khoan động lực Bosch GSB 550 550W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(185, 6, 'kachi-mk-212-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 389000, 0, '', 'Máy khoan Bosch GBM 320 320W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(186, 6, 'thumb-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 890000, 0, '', 'Máy khoan Bosch GBM 320 320W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(187, 6, 'kachi-mk-166-17-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 1590000, 0, '', 'Máy khoan Bosch GBM 320 320W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(188, 6, 'bosch-38-mon-12-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 389000, 0, '', 'Máy khoan động lực Bosch GSB 550 550W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(189, 6, 'may-khoan-bosch-gbm-320-300x300.jpg', '-may-khoan.jpg , may-khoan-cam-tay-bosch-gsb-16-re.jpg', 890000, 0, '', 'Máy khoan Bosch GBM 320 320W', '', '', '', '', 'Dụng cụ , Máy khoan'),
(190, 7, 'noi-lau-dien-delites-nl001-thumb-300x300.jpg', 'vi-vn-nồi-lẩu-diện-delites-nl001-3-lít-(1).jpg , noi-lau-dien-delites-nl001.jpg', 650000, 30, '', 'Nồi lẩu điện Delites NL001 3 lít', '', '', '', 'Online giá rẻ', 'Điện gia dụng , Nồi Lẩu'),
(191, 7, 'ava-aj02-16-600x600.jpg', 'a2-780x433.jpg , ava-aj02-note.jpg', 1300000, 31, '', 'Máy ép trái cây AVA AJ02', '', '', '', 'Online giá rẻ', 'Điện gia dụng , Máy ép trái cây'),
(192, 7, 'bo-hai-inox-3-day-hommy-cw-s051-4-181021-031600-600x600.jpg', 'bo-hai-inox-3-day-hommy-cw-s051-4-10.jpg , bo-hai-inox-3-day-hommy-cw-s051-4-note.jpg', 530000, 40, '', 'Bộ hai nồi inox 3 đáy nắp kiếng 16cm & 24cm Hommy CW-', '', '', '', 'Online giá rẻ', 'Điện gia dụng , nồi inox'),
(193, 7, 'sunhouse-shd1388-xanh-196230.jpg', 'vi-vn-sunhouse-shd1388-xanh-(3).jpg , sunhouse-shd1388-xanh-1.jpg', 590000, 15, '', 'Bình đun siêu tốc giữ nhiệt Sunhouse 1.7 lít SHD1388 ', '', '', '', 'Online giá rẻ', 'Điện gia dụng , Bình đun siêu tốc'),
(194, 7, 'may-hut-bui-cam-tay-xiaomi-1c-221994-300x300.jpg', 'vi-vn-dmx-mayhutbui-hopchuabui.jpg , may-hut-bui-cam-tay-xiaomi-1c.jpg', 3990000, 33, '', 'Máy hút bụi cầm tay Xiaomi 1C ', '', '', '', 'Online giá rẻ', 'Điện gia dụng , Máy hút bụi'),
(195, 7, 'rice-midea-mb-hs5008-18-lit-thumb-300x300.jpg', 'rice-nap-gai-hommy-1-8-lit-jrc-180fe637686132095780342.jpg , rice-nap-gai-hommy-1-8-lit-jrc-180fe-n.jpg', 960000, 44, '532.000', 'Nồi cơm điện nắp gài Kangaroo KG825 1.5 lít', '', '', '', 'Chỉ bán online', 'Gia dụng , Nồi cơm điện'),
(196, 7, 'hair-flyco-fc5809-1-300x300.jpg', 'hair-flyco-fc5809-1-300x300.jpg', 690000, 45, '390.000', 'Tông đơ 75QNED99TPB', '', '', '', 'Chỉ bán online', 'Gia dụng , Tông đơ'),
(197, 7, 'can-thong-minh-xiaomi-nun4056gl-8-300x300.jpg', 'can-thong-minh-xiaomi-nun4056gl-8-300x300.jpg', 990000, 30, '600.000', 'Cân thông minh xiaomi', '', '', '', 'Chỉ bán online', 'Gia dụng , Cân thông minh'),
(198, 7, 'fryer-kalite-q5-237694-300x300.jpg', 'nckd-1.jpg', 5690000, 21, '4900000', 'Nồi chiên không dầu fryer kalite', '', '', '', 'Chỉ bán online', 'Gia dụng , Nồi chiên không dầu'),
(199, 7, 'dh-sunhouse-shd7721-100538-300x300.jpg', 'dh-sharp-ah-x9xew-100621-1003461.jpg , dh-sharp-ah-x9xew.jpg', 3390000, 21, '2900000', 'Điều hòa sunhouse shd7721', '', '', '', 'Chỉ bán online', 'Gia dụng , Điều hòa'),
(200, 7, 'mlkk-kangaroo-kg40ap-avata-300x300.jpg', 'ava-rcy-8617a-310821-0335060.jpg , ava-rcy-8617a-note.jpg', 3886000, 21, '3490000', 'Máy lọc không khí Hafele CF-8116 (537.82.710)', '', '', '', 'Chỉ bán online', 'Gia dụng , Máy lọc không khí'),
(201, 7, 'milk-unie-v6-thumb-300x300.jpg', 'milk-unie-v6-thumb-300x300.jpg', 3800000, 35, '3490000', 'Máy làm sữa hạt Unie V6S', '', '', '', 'Chỉ bán online', 'Gia dụng , Máy làm sữa'),
(202, 7, 'mhb-cam-tay-midea-mcv-16t-b-1-300x300.jpg', 'ava-rcy-8617a-310821-0335060.jpg , ava-rcy-8617a-note.jpg', 5990000, 38, '3.713.000', 'Máy hút bụi cầm tay Xiaomi 1C', '', '', '', 'Chỉ bán online', 'Gia dụng , Máy hút bụi'),
(203, 7, 'rice-hommy-x2522-18l-thumb-300x300.jpg', 'rice-nap-gai-hommy-1-8-lit-jrc-180fe637686132095780342.jpg , rice-nap-gai-hommy-1-8-lit-jrc-180fe-n.jpg', 1690000, 33, '9900000', 'Nồi cơm điện nắp gài Kangaroo KG825 2.5 lít', '', '', '', 'Chỉ bán online', 'Gia dụng , Nồi cơm điện'),
(204, 7, 'inductionCooker-kangaroo-kg859i-10-300x300.jpg', 'Size780x433-780x433.jpg , hommy-kt861-note.jpg', 4100000, 35, '2.665.000', 'Bếp từ Pramie 1105', '', '', '', 'Chỉ bán online', 'Gia dụng , Bếp từ'),
(205, 8, 'dien-doi-philips-avent-eureka-scf39311-300x300.jpg', 'eureka-scf33911-3-1-org.jpg , eureka-scf33911-4-1-org.jpg', 6950000, 14, '', 'Máy hút sữa điện đôi Philips Avent Eureka SCF393.11', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , Máy hút sữa'),
(206, 8, 'philips-avent-scf284-02-3-300x300.jpg', 'tong-quan.jpg , philips-avent-scf284-02-note.jpg', 2850000, 0, '', 'Máy tiệt trùng bình sữa 3 trong 1 Philips Avent SCF284/02', '', '', '', 'Hết hàng tạm thời', 'Chăm sóc mẹ và bé , '),
(207, 8, 'philips-avent-nhua-pp-scf690-23-125ml-1-300x300.jpg', 'philips-avent-nhua-pp-scf690-23-125ml-5-org.jpg , philips-avent-nhua-pp-scf690-23-125ml-7-org.jpg', 234000, 0, '', 'Bộ 2 bình sữa nhựa PP Philips Avent SCF690/23 125ml', '', '', '', 'Hàng sắp về', 'Chăm sóc mẹ và bé , ');
INSERT INTO `grab_content` (`id`, `cid`, `avatar`, `img`, `discount`, `percent`, `price`, `name`, `size`, `color`, `gift`, `payment_type`, `category_name`) VALUES
(208, 8, 'philips-avent-scf344-21-bo-2-cai-10-300x300.jpg', 'philips-avent-scf344-21-bo-2-cai-10-300x300 (1).jpg', 123000, 0, '', 'Bộ 2 ti giả silicone Philips Avent cho trẻ 0-6 tháng tuổi SCF344/21', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , '),
(209, 8, 'tui-tru-sua-180ml-philips-avent-scf603-25-232320-052349-300x300.jpg', 'tui-tru-sua-180ml-philips-avent-scf603-25-3-org.jpg , tui-tru-sua-180ml-philips-avent-scf603-25-7-org.jpg', 435000, 0, '', 'Túi trữ sữa Philips Avent 180ml SCF603/25 (25 cái)', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , '),
(210, 8, 'dien-doi-philips-avent-eureka-scf39311-300x300.jpg', 'eureka-scf33911-3-1-org.jpg , eureka-scf33911-4-1-org.jpg', 6950000, 14, '', 'Máy hút sữa điện đôi Philips Avent Eureka SCF393.11', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , Máy hút sữa'),
(211, 8, 'philips-avent-scf284-02-3-300x300.jpg', 'tong-quan.jpg , philips-avent-scf284-02-note.jpg', 2850000, 0, '', 'Máy tiệt trùng bình sữa 3 trong 1 Philips Avent SCF284/02', '', '', '', 'Hết hàng tạm thời', 'Chăm sóc mẹ và bé , '),
(212, 8, 'philips-avent-nhua-pp-scf690-23-125ml-1-300x300.jpg', 'philips-avent-nhua-pp-scf690-23-125ml-5-org.jpg , philips-avent-nhua-pp-scf690-23-125ml-7-org.jpg', 234000, 0, '', 'Bộ 2 bình sữa nhựa PP Philips Avent SCF690/23 125ml', '', '', '', 'Hàng sắp về', 'Chăm sóc mẹ và bé , '),
(213, 8, 'philips-avent-scf344-21-bo-2-cai-10-300x300.jpg', 'philips-avent-scf344-21-bo-2-cai-10-300x300 (1).jpg', 123000, 0, '', 'Bộ 2 ti giả silicone Philips Avent cho trẻ 0-6 tháng tuổi SCF344/21', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , '),
(214, 8, 'tui-tru-sua-180ml-philips-avent-scf603-25-232320-052349-300x300.jpg', 'tui-tru-sua-180ml-philips-avent-scf603-25-3-org.jpg , tui-tru-sua-180ml-philips-avent-scf603-25-7-org.jpg', 435000, 0, '', 'Túi trữ sữa Philips Avent 180ml SCF603/25 (25 cái)', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , '),
(215, 8, 'dien-doi-philips-avent-eureka-scf39311-300x300.jpg', 'eureka-scf33911-3-1-org.jpg , eureka-scf33911-4-1-org.jpg', 6950000, 14, '', 'Máy hút sữa điện đôi Philips Avent Eureka SCF393.11', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , Máy hút sữa'),
(216, 8, 'philips-avent-scf284-02-3-300x300.jpg', 'tong-quan.jpg , philips-avent-scf284-02-note.jpg', 2850000, 0, '', 'Máy tiệt trùng bình sữa 3 trong 1 Philips Avent SCF284/02', '', '', '', 'Hết hàng tạm thời', 'Chăm sóc mẹ và bé , '),
(217, 8, 'philips-avent-nhua-pp-scf690-23-125ml-1-300x300.jpg', 'philips-avent-nhua-pp-scf690-23-125ml-5-org.jpg , philips-avent-nhua-pp-scf690-23-125ml-7-org.jpg', 234000, 0, '', 'Bộ 2 bình sữa nhựa PP Philips Avent SCF690/23 125ml', '', '', '', 'Hàng sắp về', 'Chăm sóc mẹ và bé , '),
(218, 8, 'philips-avent-scf344-21-bo-2-cai-10-300x300.jpg', 'philips-avent-scf344-21-bo-2-cai-10-300x300 (1).jpg', 123000, 0, '', 'Bộ 2 ti giả silicone Philips Avent cho trẻ 0-6 tháng tuổi SCF344/21', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , '),
(219, 8, 'tui-tru-sua-180ml-philips-avent-scf603-25-232320-052349-300x300.jpg', 'tui-tru-sua-180ml-philips-avent-scf603-25-3-org.jpg , tui-tru-sua-180ml-philips-avent-scf603-25-7-org.jpg', 435000, 0, '', 'Túi trữ sữa Philips Avent 180ml SCF603/25 (25 cái)', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , '),
(220, 8, 'dien-doi-philips-avent-eureka-scf39311-300x300.jpg', 'eureka-scf33911-3-1-org.jpg , eureka-scf33911-4-1-org.jpg', 6950000, 14, '', 'Máy hút sữa điện đôi Philips Avent Eureka SCF393.11', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , Máy hút sữa'),
(221, 8, 'philips-avent-scf284-02-3-300x300.jpg', 'tong-quan.jpg , philips-avent-scf284-02-note.jpg', 2850000, 0, '', 'Máy tiệt trùng bình sữa 3 trong 1 Philips Avent SCF284/02', '', '', '', 'Hết hàng tạm thời', 'Chăm sóc mẹ và bé , '),
(222, 8, 'philips-avent-nhua-pp-scf690-23-125ml-1-300x300.jpg', 'philips-avent-nhua-pp-scf690-23-125ml-5-org.jpg , philips-avent-nhua-pp-scf690-23-125ml-7-org.jpg', 234000, 0, '', 'Bộ 2 bình sữa nhựa PP Philips Avent SCF690/23 125ml', '', '', '', 'Hàng sắp về', 'Chăm sóc mẹ và bé , '),
(223, 8, 'philips-avent-scf344-21-bo-2-cai-10-300x300.jpg', 'philips-avent-scf344-21-bo-2-cai-10-300x300 (1).jpg', 123000, 0, '', 'Bộ 2 ti giả silicone Philips Avent cho trẻ 0-6 tháng tuổi SCF344/21', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , '),
(224, 8, 'tui-tru-sua-180ml-philips-avent-scf603-25-232320-052349-300x300.jpg', 'tui-tru-sua-180ml-philips-avent-scf603-25-3-org.jpg , tui-tru-sua-180ml-philips-avent-scf603-25-7-org.jpg', 435000, 0, '', 'Túi trữ sữa Philips Avent 180ml SCF603/25 (25 cái)', '', '', '', 'Online giá rẻ', 'Chăm sóc mẹ và bé , '),
(225, 9, 'nl-ariston-sl2-20-rs-25-fe-9-300x300.jpg', 'nl-ariston-sl2-20-rs-25-fe-190821-1215350.png , nl-may-nuoc-nong-ariston-sl2-20-rs-25-fe.jpg', 3690000, 21, '3290000', 'Máy nước nóng gián tiếp Ariston 20 lít 2500W SL2 20 RS 2.5 FE', '2500W , 20 lít', '', '', '', 'Máy nước nóng , Trực tiếp Beko'),
(226, 9, 'tld-kangaroo-kg-400nc2-2-300x300.jpg', 'tld--dac-diem-noi-bat.jpg , tld-kangaroo-kg-400nc2.jpg', 8990000, 16, '7490000', 'Samsung Inverter 236 lít RT22M4032BY/SV', '', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(227, 9, 'mg-ww10tp44dsb-6-1-300x300.jpg', 'mg-09-1020x570.jpg , mg-toshiba-tw-bk115g4v-mg-note-1.jpg', 13090000, 24, '9900000', 'LG Inverter 9 Kg FV1409S4W', '', '', '', 'Online giá rẻ', 'Máy giặt , Máy giặt LG'),
(228, 9, 'dh-midea-msfr-10crdn8-550x160.jpg', 'dh-sharp-ah-x9xew-100621-1003461.jpg , dh-sharp-ah-x9xew.jpg', 8990000, 10, '8.030.000', 'Sharp Inverter 1 HP AH-X9XEW', '', '', 'Giam them 500.000 và Quà 1.145.000', '', 'Điều hòa , Điều hòa Sharp'),
(229, 9, 'tl-samsung-rt20har8dbu-sv-300x300.jpg', 'tl-samsung-rf48a4010m9-sv-080821-0655071.png , tl-samsung-rf48a4010m9-sv-note.jpg', 25090000, 21, '21490000', 'Samsung Inverter 488 lít RF48A4010M9/SV', '', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(230, 9, 'mg-samsung-ww10tp44dsh-sv-300x300.jpg', 'mg-09-1020x570.jpg , mg-toshiba-tw-bk115g4v-mg-note-1.jpg', 13690000, 21, '10900000', 'LG Inverter 9 Kg FV1409S4W', '', '', '', 'Online giá rẻ', 'Máy giặt , Máy giặt LG'),
(231, 9, 'tld-kangaroo-kg498kx2-300x300.jpg', 'tld--dac-diem-noi-bat.jpg , tld-kangaroo-kg-400nc2.jpg', 9990000, 16, '7490000', 'Samsung Inverter 236 lít RT22M4032BY/SV', '1 ngăn đông, 1 ngăn mát', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(232, 9, 'mgd-panasonic-na-fd14v1brv-300x300.jpg', 'mgd-1-1020x570.jpg , mgd-aqua-aqw-fr105gt-bk-note-2.jpg', 13690000, 21, '9900000', 'LG Inverter 9 Kg FV1409S4W', '', '', '', '', 'Máy giặt , Máy giặt LG'),
(233, 9, 'tl-aqua-aqr-igw525em-gb-12-300x300.jpg', 'tl-samsung-rf48a4010m9-sv-080821-0655071.png , tl-samsung-rf48a4010m9-sv-note.jpg', 25090000, 14, '21490000', 'Samsung Inverter 488 lít RF48A4010M9/SV', '', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(234, 9, 'dh-1hpftka25vmvmv-550x160.jpg', 'dh-sharp-ah-x9xew-100621-1003461.jpg , dh-sharp-ah-x9xew.jpg', 8990000, 10, '8.030.000', 'Sharp Inverter 1 HP AH-X9XEW', '', '1 HP , 1.5 HP , 2 HP', '', '', 'Điều hòa , Điều hòa Sharp'),
(235, 10, 'mln-ro-kangaroo-kg88avtu-7-loi-145120-025132-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 13690000, 42, '7.822.000', 'Máy lọc nước RO hydrogen ion kiềm Kangaroo KG100MED 5 lõi', '', '', '', 'Online giá rẻ', 'Thiết bị lọc nước , Máy lọc nước'),
(236, 10, 'mln-korihome-wpk-g61-4-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 8300000, 25, '6.225.000', 'Máy lọc nước RO AOSmith M2 5 lõi', '', '', '', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(237, 10, 'mln-ro-karofi-b930-9-loi-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 4900000, 21, '3.675.000', 'Máy lọc nước UF IONPIA ION-UFS4P 4 lõi', '', '', '', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(238, 10, 'mln-ion-kiem-ionpia-5100-5-loi-20-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 6890000, 20, '5.512.000', 'Máy lọc nước RO Daikiosan DXW-42010H 10 lõi', '', '', '', 'Online giá rẻ', 'Thiết bị lọc nước , Máy lọc nước'),
(239, 10, 'mln-ro-dien-phan-kangaroo-kg100es-7-loi-1-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 7000000, 20, '5600000', 'Máy lọc nước RO Coway P-300L 5 lõi', '', '', 'Quà 350.000', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(240, 10, 'mln-ro-karofi-optimus-pro-o-i439-9-loi-kg-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 7000000, 20, '5600000', 'Máy lọc nước RO Coway P-300L 5 lõi', '', '', 'Quà 350.000', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(241, 10, 'mln-ion-kiem-kangen-leveluk-k8-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 99000000, 20, '79.200.000', 'Máy lọc nước đầu nguồn UF Kangaroo KG888 2 cột lọc và 2 lõi', '', '', '', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(242, 10, 'mln-ro-daikiosan-dxw-33009g-2-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 10990000, 18, '8.910.000', 'Máy lọc nước RO nóng lạnh Sunhouse SHA76214CK-S 9 lõi', '', '', '', 'Chỉ bán online', 'Thiết bị lọc nước , Máy lọc nước'),
(243, 10, 'mln-ro-aosmith-m2-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 6320000, 15, '5.370.000', 'Máy lọc nước RO Mutosi MP-290SK 9 lõi', '', '', '', 'Online giá rẻ', 'Thiết bị lọc nước , Máy lọc nước'),
(244, 10, 'mln-ion-kiem-ionpia-5250-5-loi-20-300x300.jpg', 'mln-Tinhnang5-min-1020x570.jpg , mln-ro-daikiosan-dxw-42010h-note-1-1.jpg', 22690000, 20, '139900000', 'Máy lọc nước RO nóng lạnh Cuckoo CP-QRP2001SW 4 lõi', '', '', '', 'Online giá rẻ', 'Thiết bị lọc nước , Máy lọc nước'),
(245, 10, 'nl-ariston-sl2-20-rs-25-fe-9-300x300.jpg', 'nl-ariston-sl2-20-rs-25-fe-190821-1215350.png , nl-may-nuoc-nong-ariston-sl2-20-rs-25-fe.jpg', 3690000, 21, '3290000', 'Máy nước nóng gián tiếp Ariston 20 lít 2500W SL2 20 RS 2.5 FE', '2500W , 20 lít', '', '', '', 'Máy nước nóng , Trực tiếp Beko'),
(246, 10, 'tld-kangaroo-kg-400nc2-2-300x300.jpg', 'tld--dac-diem-noi-bat.jpg , tld-kangaroo-kg-400nc2.jpg', 8990000, 16, '7490000', 'Samsung Inverter 236 lít RT22M4032BY/SV', '', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(247, 10, 'mg-ww10tp44dsb-6-1-300x300.jpg', 'mg-09-1020x570.jpg , mg-toshiba-tw-bk115g4v-mg-note-1.jpg', 13090000, 24, '9900000', 'LG Inverter 9 Kg FV1409S4W', '', '', '', 'Online giá rẻ', 'Máy giặt , Máy giặt LG'),
(248, 10, 'dh-midea-msfr-10crdn8-550x160.jpg', 'dh-sharp-ah-x9xew-100621-1003461.jpg , dh-sharp-ah-x9xew.jpg', 8990000, 10, '8.030.000', 'Sharp Inverter 1 HP AH-X9XEW', '', '', 'Giam them 500.000 và Quà 1.145.000', '', 'Điều hòa , Điều hòa Sharp'),
(249, 10, 'tl-samsung-rt20har8dbu-sv-300x300.jpg', 'tl-samsung-rf48a4010m9-sv-080821-0655071.png , tl-samsung-rf48a4010m9-sv-note.jpg', 25090000, 21, '21490000', 'Samsung Inverter 488 lít RF48A4010M9/SV', '', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(250, 10, 'mg-samsung-ww10tp44dsh-sv-300x300.jpg', 'mg-09-1020x570.jpg , mg-toshiba-tw-bk115g4v-mg-note-1.jpg', 13690000, 21, '10900000', 'LG Inverter 9 Kg FV1409S4W', '', '', '', 'Online giá rẻ', 'Máy giặt , Máy giặt LG'),
(251, 10, 'tld-kangaroo-kg498kx2-300x300.jpg', 'tld--dac-diem-noi-bat.jpg , tld-kangaroo-kg-400nc2.jpg', 9990000, 16, '7490000', 'Samsung Inverter 236 lít RT22M4032BY/SV', '1 ngăn đông, 1 ngăn mát', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(252, 10, 'mgd-panasonic-na-fd14v1brv-300x300.jpg', 'mgd-1-1020x570.jpg , mgd-aqua-aqw-fr105gt-bk-note-2.jpg', 13690000, 21, '9900000', 'LG Inverter 9 Kg FV1409S4W', '', '', '', '', 'Máy giặt , Máy giặt LG'),
(253, 10, 'tl-aqua-aqr-igw525em-gb-12-300x300.jpg', 'tl-samsung-rf48a4010m9-sv-080821-0655071.png , tl-samsung-rf48a4010m9-sv-note.jpg', 25090000, 14, '21490000', 'Samsung Inverter 488 lít RF48A4010M9/SV', '', '', '', '', 'Tủ lạnh , Tủ lạnh Samsung'),
(254, 10, 'dh-1hpftka25vmvmv-550x160.jpg', 'dh-sharp-ah-x9xew-100621-1003461.jpg , dh-sharp-ah-x9xew.jpg', 8990000, 10, '8.030.000', 'Sharp Inverter 1 HP AH-X9XEW', '', '1 HP , 1.5 HP , 2 HP', '', '', 'Điều hòa , Điều hòa Sharp'),
(255, 11, 'phone-redmi-10-gray-600x600.jpg', 'phone-realme-c21y-tongquan-780x433-1.jpg , phone-realme-c21y-note-1.jpg', 139900000, 0, '', 'Redmi 10 Gray', '', '', '', 'Chỉ bán online', 'Điện thoại , Điện thoại Redmi'),
(256, 11, 'phone-vivo-y12s-den-new-600x600-600x600.jpg', 'phone-vi-vn-vivo-y21-slider-tong-quan.jpg , phone-vivo-y21-n-1.jpg', 4290000, 0, '', 'Vivo Y21', '', '', '', '', 'Điện thoại , Điện thoại Vivo'),
(257, 11, 'phone-oppo-reno6-z-5g-aurora-1-600x600.jpg', 'phone-oppo-reno6-z-5g-280721-11481111.jpg , phone-oppo-reno6-z-5g-note-3.jpg', 9490000, 0, '', 'OPPO Reno6 Z 5G', '', '', '', '', 'Điện thoại , Điện thoại OPPO'),
(258, 11, 'phone-samsung-galaxy-s21-tim-600x600.jpg', 'phone-samsung-galaxy-z-fold-3-slider-tong-quan-1020x570.jpg , phone-samsung-galaxy-z-fold-3-n-1.jpg', 15490000, 16, '12990000', 'Samsung Galaxy S21 FE (8GB/256GB)', '', '', '', '', 'Điện thoại , Điện thoại Samsung'),
(259, 11, 'phone-oppo-a74-blue-9-600x600.jpg', 'phone-oppo-reno6-z-5g-280721-11481111.jpg , phone-oppo-reno6-z-5g-note-3.jpg', 6690000, 0, '', 'OPPO A74', '', '', '', '', 'Điện thoại , Điện thoại OPPO'),
(260, 11, 'phone-realme-c21y-black-600x600.jpg', 'phone-realme-c21y-tongquan-780x433-1.jpg , phone-realme-c21y-note-1.jpg', 3990000, 0, '', 'Realme C21Y 4GB', '', '', '', '', 'Điện thoại , Điện thoại Realme'),
(261, 11, 'phone-xiaomi-redmi-note-10-5g-xanh-bong-dem-1-600x600.jpg', 'phone-xiaomi-11-lite-5g-slider-tong-quan-1020x570.jpg , phone-xiaomi-11-lite-5g-ne-n-1.jpg', 4690000, 0, '', 'Xiaomi Redmi 10 (6GB/128GB)', '', '', '', '', 'Điện thoại , Điện thoại Xiaomi'),
(262, 11, 'phone-vivo-y53s-xanh-600x600.jpg', 'phone-vi-vn-vivo-y21-slider-tong-quan.jpg , phone-vivo-y21-n-1.jpg', 9900000, 0, '', 'Vivo Y53s Xanh', '', '', '', '', 'Điện thoại , Điện thoại Vivo'),
(263, 12, 'apple-macbook-air-m1-2020-z12a00050-600x600.jpg', 'vi-vn-apple-macbook-air-m1-2020-z12a00050-1.jpg , vi-vn-apple-macbook-air-m1-2020-z12a00050-3.jpg', 31490000, 3, '', 'MacBook Pro 14 M1 Pro 2021/14 core-GPU', 'RAM 8 GB , SSD 512 GB', '', 'Quà 690.000₫', '', 'Laptop, Tablet , Laptop'),
(264, 12, 'acer-nitro-5-gaming-an515-57-50ft-i5-nhqd8sv003-600x600.jpg', 'vi-vn-dell-g3-15-i7-p89f002bwh.jpg , dell-g3-15-i7-p89f002bwh-note-1.jpg', 1980000, 5, '', 'Lenovo Ideapad Gaming 3 15IMH05 i7 10750H', 'RAM 8 GB , SSD 512 GB', '', 'Quà 690.000₫', '', 'Laptop, Tablet , Laptop'),
(265, 12, 'dell-g3-15-i7-p89f002bwh-16-600x600.jpg', 'vi-vn-dell-g3-15-i7-p89f002bwh.jpg , dell-g3-15-i7-p89f002bwh-note-1.jpg', 12300000, 5, '', 'Acer Aspire 7 Gaming A715 42G R4ST R5 5500U', 'RAM 8 GB , SSD 512 GB', '', 'Quà 690.000₫', '', 'Laptop, Tablet , Laptop'),
(266, 12, 'msi-gf66-11uc-i7-224vn-600x600.jpg', 'vi-vn-dell-g3-15-i7-p89f002bwh.jpg , dell-g3-15-i7-p89f002bwh-note-1.jpg', 3244000, 5, '', 'Acer Nitro 5 Gaming AN515 57 74NU i7 11800H', 'RAM 8 GB , SSD 512 GB', '', 'Quà 690.000₫', '', 'Laptop, Tablet , Laptop'),
(267, 12, 'samsung-galaxy-tab-s7-fe-green-600x600.jpg', 'samsung-galaxy-tab-s7-fan-editon-030721-0216148.jpg , samsung-galaxy-tab-s7-fe-1-780x433.jpg', 12790000, 5, '', 'Samsung Galaxy Tab S7 FE', '', '', '', '', 'Laptop, Tablet , Tablet'),
(268, 12, 'huawei-matepad-11-grey-600x600.jpg', 'samsung-galaxy-tab-s7-fan-editon-030721-0216148.jpg , samsung-galaxy-tab-s7-fe-1-780x433.jpg', 13490000, 6, '', 'Huawei MatePad 11', '', '', '', '', 'Laptop, Tablet , Tablet'),
(269, 12, 'ipad-pro-2021-129-inch-silver-600x600.jpg', 'samsung-galaxy-tab-s7-fan-editon-030721-0216148.jpg , samsung-galaxy-tab-s7-fe-1-780x433.jpg', 38490000, 7, '', 'iPad Pro M1 12.9 inch WiFi Cellular 256GB (2021)', '', '', '', '', 'Laptop, Tablet , Tablet'),
(270, 12, 'ipad-pro-2021-129-inch-gray-600x600.jpg', 'samsung-galaxy-tab-s7-fan-editon-030721-0216148.jpg , samsung-galaxy-tab-s7-fe-1-780x433.jpg', 35290000, 8, '', 'iPad Pro M1 12.9 inch WiFi Cellular 128GB (2021)', '', '', '', '', 'Laptop, Tablet , Tablet'),
(271, 12, 'ipad-pro-m1-129-inch-wifi-sliver-600x600.jpg', 'samsung-galaxy-tab-s7-fan-editon-030721-0216148.jpg , samsung-galaxy-tab-s7-fe-1-780x433.jpg', 13490000, 9, '', 'iPad Pro M1 12.9 inch WiFi 256GB (2021)', '', '', '', '', 'Laptop, Tablet , Tablet'),
(272, 12, 'ipad-pro-m1-129-inch-wifi-gray-600x600.jpg', 'samsung-galaxy-tab-s7-fan-editon-030721-0216148.jpg , samsung-galaxy-tab-s7-fe-1-780x433.jpg', 38490000, 7, '', 'iPad Pro M1 12.9 inch WiFi 128GB (2021)', '', '', '', '', 'Laptop, Tablet , Tablet'),
(273, 12, 'ipad-pro-12-9-inch-wifi-128gb-2020-xam-600x600-2-600x600.jpg', 'samsung-galaxy-tab-s7-fan-editon-030721-0216148.jpg , samsung-galaxy-tab-s7-fe-1-780x433.jpg', 12790000, 3, '', 'iPad Pro M1 11 inch WiFi Cellular 256GB (2021)', '', '', '', '', 'Laptop, Tablet , Tablet'),
(274, 12, 'hp-envy-13-ba1030tu-i7-2k0b6pa-101820-091857-600x600 (1).jpg', 'vi-vn-dell-g3-15-i7-p89f002bwh.jpg , dell-g3-15-i7-p89f002bwh-note-1.jpg', 53210000, 6, '', 'MSI Gaming GF65 10UE i7 10750H (228VN)', 'RAM 8 GB , SSD 512 GB', '', 'Quà 690.000₫', '', 'Laptop, Tablet , Laptop'),
(275, 12, 'dell-g3-15-i7-p89f002bwh-16-600x600 (1).jpg', 'vi-vn-dell-g3-15-i7-p89f002bwh.jpg , dell-g3-15-i7-p89f002bwh-note-1.jpg', 3244000, 7, '', 'Acer Nitro 5 Gaming AN515 57 54AF i5 11400H', 'RAM 8 GB , SSD 512 GB', '', 'Quà 690.000₫', '', 'Laptop, Tablet , Laptop'),
(276, 12, 'lenovo-ideapad-gaming-3-15imh05-i7-81y4013uvn-600x600.jpg', 'vi-vn-dell-g3-15-i7-p89f002bwh.jpg , dell-g3-15-i7-p89f002bwh-note-1.jpg', 12300000, 8, '', 'GIGABYTE Gaming G5 i5 11400H (51S1123SH)', 'RAM 8 GB , SSD 512 GB', '', 'Quà 690.000₫', '', 'Laptop, Tablet , Laptop'),
(277, 12, 'acer-aspire-7-a715-42g-r4st-r5-nhqaysv004-16-600x600.jpg', 'vi-vn-dell-g3-15-i7-p89f002bwh.jpg , dell-g3-15-i7-p89f002bwh-note-1.jpg', 3244000, 9, '', 'Acer Nitro 5 Gaming AN515 57 727J i7 11800H', 'RAM 8 GB , SSD 512 GB', '', 'Quà 690.000₫', '', 'Laptop, Tablet , Laptop'),
(278, 13, 'headphone-galaxy-buds-pro-bac-ava-600x600.jpg', 'headphone-samsung-galaxy-buds-2-r177n-trang-9.jpg , headphone-samsung-galaxy-buds-2-r177n-trang-note-1.jpg', 4390000, 31, '2990000', 'Tai nghe Bluetooth AirPods 2 Apple MV7N2', '', '', '', '', 'Tai nghe , Không dây - True Wireless'),
(279, 13, 'headphone-charge-apple-mwp22-ava-600x600.jpg', 'headphone-samsung-galaxy-buds-2-r177n-trang-9.jpg , headphone-samsung-galaxy-buds-2-r177n-trang-note-1.jpg', 6390000, 31, '4990000', 'Tai nghe Bluetooth AirPods Pro Wireless Charge Apple MWP22', '', '', '', '', 'Tai nghe , Không dây - True Wireless'),
(280, 13, 'loa-bluetooth-sony-extra-bass-srs-xb23-den-av-600x600.jpg', 'loa-bluetooth-harman-kardon-onyx-studio-6-4-1-org.jpg', 4990000, 21, '4740000', 'Loa Bluetooth Harman Kardon Onyx Studio 6', '', '', '', '', 'Loa , Loa Bluetooth'),
(281, 13, 'headphone-hydrus-ts12bc-ava-2-600x600.jpg', 'headphone-samsung-galaxy-buds-2-r177n-trang-9.jpg , headphone-samsung-galaxy-buds-2-r177n-trang-note-1.jpg', 690000, 21, '302.000', 'Tai nghe Bluetooth True Wireless Hydrus TS12BC', '', '', '', 'Chỉ bán online', 'Tai nghe , Không dây - True Wireless'),
(282, 13, 'grab_contentpin-hydrus-pj-jp196-ava-600x600.jpg', 'pin-hydrus-pj-jp196-hong-4-org.jpg', 490000, 50, '245.000<', 'Pin sạc dự phòng Polymer 10.000 mAh Hydrus PJ JP196', '', '', '', 'Chỉ bán online', 'Phụ kiện , Pin sạc dự phòng'),
(283, 13, 'bluetoth-jbl-charge-4-600x600.jpg', 'loa-bluetoth-jbl-charge-4-den-1-org.jpg , loabluetoth-jbl-charge-4-note-1.jpg', 2990000, 5, '2.840.000', 'Loa Bluetooth JBL Charge 4', '50W', '', '', '', 'Tai nghe , Loa , Loa Bluetooth'),
(284, 13, 'pin-polymer-10000mah-qc30-xmobile-p68d-avatar-1-600x600.jpg', 'pin-hydrus-pj-jp196-hong-4-org.jpg', 700000, 50, '350000', 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 Xmobile P68D', '', '', '', 'Chỉ bán online', 'Phụ kiện , Pin sạc dự phòng'),
(285, 13, 'pin-polymer-10000mah-qc-3-evalu-pa-f1-air-avatar-1-600x600.jpg', 'pin-hydrus-pj-jp196-hong-4-org.jpg', 600000, 30, '420000', 'Pin sạc dự phòng Polymer 10.000 mAh Type C QC3.0 eValu PA F1 Air', '', '', '', 'Online giá rẻ', 'Phụ kiện , Pin sạc dự phòng'),
(286, 14, 'sw-mi-band-6-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 1290000, 21, '990000', 'Vòng đeo tay thông minh Mi Band 6', 'Đo nồng độ oxy (SpO2)', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh  Mi Band'),
(287, 14, 'sw-samsung-galaxy-watch-4-40mm-bac-ava-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 9690000, 57, '4900000', 'Samsung Galaxy Watch 3 41mm viền thép bạc dây da', 'Có nghe gọi , Đo nồng độ oxy (SpO2)', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh  Samsung'),
(288, 14, 'sw-beu-b2-den-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 4900000, 0, '', 'Đồng hồ thông minh Garmin Venu SQ dây silicone trắng', 'Đo nồng độ oxy (SpO2)', '', 'Quà 2990000', '', 'Đồng hồ thông minh , Đồng hồ thông minh Garmin Venu'),
(289, 14, 'sw-garmin-forerunner-45-day-silicone-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 690000, 30, '490.000', 'Đồng hồ thông minh BeU B2 Đen', '', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh BeU'),
(290, 14, 'sw-kidcare-s8-hong-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 5690000, 21, '4.072.000', 'Đồng hồ thông minh Garmin Forerunner 45 dây silicone đỏ', '', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Garmin Forerunner'),
(291, 14, 'sw-mi-band-5-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 2690000, 10, '2.200.000', 'Đồng hồ định vị trẻ em 4G Kidcare S8 Hồng', 'Có nghe gọi', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Kidcare'),
(292, 14, 'sw-samsung-galaxy-watch-active-2-40-mm-den-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 990000, 40, '590.000', 'Vòng đeo tay thông minh Mi Band 5', '', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Mi Band'),
(293, 14, 'sw-oppo-watch-46mm-day-silicone-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 5690000, 50, '2.850.000', 'Samsung Galaxy Watch Active 2 40mm viền nhôm dây silicone đen', 'Có nghe gọi', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Samsung'),
(294, 14, 'sw-samsung-galaxy-watch-active-2-40-mm-den-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 990000, 40, '590.000', 'Vòng đeo tay thông minh Mi Band 5', '', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Mi Band'),
(295, 14, 'sw-oppo-watch-46mm-day-silicone-thumb-1-1-600x600.jpg', 'sw-vi-vn-se-40mm-vien-nhom-day-cao-su-hong-slider-fix.jpg , sw-se-40mm-vien-nhom-day-cao-su-hong-080221-0348027.jpg', 5690000, 50, '2.850.000', 'Samsung Galaxy Watch Active 2 40mm viền nhôm dây silicone đen', 'Có nghe gọi', '', '', '', 'Đồng hồ thông minh , Đồng hồ thông minh Samsung'),
(296, 15, 'mg-lg-inverter-85-kg-fv1408s4w-8-300x300.jpg', 'mg-Frame(11)-min-1020x570.jpg , mg-may-giat-lg-fv1409s4w-note-1.jpg', 11490000, 17, '9.440.000', 'Máy Giặt LG Inverter 8.5 Kg FV1408S4W', '', '8.5 KG - Xám , 8.5 KG - Trắng , 9 KG - Trắng', '', 'Online giá rẻ', 'Máy giặt , Máy giặt LG'),
(297, 15, 'noi-chien-khong-daukalite-q10-300x300.png', 'nc-220921-0553000.jpg , nc-220921-0553000.jpg', 4490000, 35, '2790000', 'Nồi chiên không dầu Kalite Q10 10 lít', '', '', '', 'Chỉ bán onlinẻ', 'Thiết bị làm bánh , Nồi chiên không dầu Kalite'),
(298, 15, 'tv-samsung-qa65lst7t-293020-023011-550x340.jpg', 'tv-vi-vn-nanocell-lg-50nano75tpa-1.jpg , tv-nanocell-lg-50nano75tpa-230921-100745.jpg', 99900000, 21, '44900000', 'Máy lọc nước RO Karofi B930 9 lõi', '64 inch , 4K', '', '', 'Online giá rẻ', 'Tivi , Smart Tivi Samsung'),
(299, 15, 'mln-kangaroo-kg3331-daidien-300x300.jpg', 'mnl-1-1020x570.jpg , mnl-cay-nuoc-nong-lanh-kangaroo-kg3331-2.jpg', 2690000, 21, '2.100.000', 'Cây nước nóng lạnh Kangaroo KG3331', '', '', '', '', 'Gia dụng ,Cây nước nóng lạnh Kangaroo'),
(300, 15, 'tl-samsung-rt32k5932by-sv-300x300.jpg', 'tl-samsung-rt32k5932by-sv-140821-0852180.png , tl-samsung-rt32k5932by-sv-note.jpg', 14390000, 21, '11.160.000', 'Tủ Lạnh Samsung Inverter 319 lít RT32K5932BY/SV', '', '319 lít - Đen , 319 lít - Nâu', '', 'Online giá rẻ', 'Tủ lạnh , Tủ lạnh Samsung'),
(301, 15, 'xd-city-phoenix-yumo-26-inch-xanh-lam-thumb-550x340.jpg', 'xd-city-phoenix-yumo-26-inch-xanh-lam-1-org.jpg , xd-city-phoenix-yumo-26-inch-xanh-lam-8-org.jpg', 4290000, 21, '3.003.000', 'Xe đạp đường phố cổ điển City Phoenix YUMO 26 inch', 'Bánh 26\" , Sườn hợp kim nhôm', '', '', 'Online giá rẻ', 'Xe đạp , Xe đạp đường phố (City Bike) Phoenix'),
(302, 15, 'nl-kangaroo-22l-kg-73r2-1-300x300.jpg', 'nl-01(2)-1020x570.jpg , nl-kangaroo-22l-kg-73r2-note.jpg', 2890000, 15, '2450000', 'Máy nước nóng gián tiếp Kangaroo 22 lít 2500W KG 73R2', '2500W , 22 lít', '', '', '', 'Máy nước nóng , Gián tiếp Kangaroo'),
(303, 15, 'may-xay-da-nang-kangaroo-kg2b3-thumb-300x300.jpg', 'mxxt-Tinhnang1-1020x570.jpg , mxxt-may-xay-da-nang-kangaroo-kg2b3-n.jpg', 790000, 46, '426.000', 'Máy xay đa năng Kangaroo KG2B3', 'Cối xay nhựa', '380 W - Đen & Bạc , 500 W - Đen 500 , W - Đen', '', 'Online giá rẻ', 'Gia dụng , Máy xay sinh tố Kangaroo'),
(304, 15, 'tl-aqua-aqr-igw525em-gb-12-300x300.jpg', 'tl-aqua-aqr-igw525em-gb-260821-1151010.jpg , tl-tu-lanh-aqua-aqr-igw525em-gb.jpg', 25690000, 21, '19900000', 'Tủ Lạnh Aqua Inverter 456 lít AQR-IGW525EM GB', '', '311 lít , 337 lít , 456 lít', '', '', 'Tủ lạnh , Tủ lạnh Aqua'),
(305, 15, 'tv-60AU8100-550x34011212.jpg', 'tv-vi-vn-nanocell-lg-55nano75tpa.jpg , tv-nanocell-lg-55nano75tpa637696318870397082.jpg', 24690000, 14, '21900000', 'Samsung Smart TV Crystal UHD UA60AU8100', '60 inch , 4K', '50 inch , 55 inch , 65 inch', '', 'Online giá rẻ', 'Tivi , Samsung Smart TV'),
(306, 15, 'xd-anteklope-jk907-blue-glr-550x340.jpg', 'xd-anteklope-jk907-blue-glr.jpg', 2490000, 21, '1.743.000', 'Xe đạp trẻ em Stitch Antelope JK907-18 18 inch', 'Bánh 18\" , Sườn thép', '', '', 'Online giá rẻ', 'Xe đạp , Xe đạp trẻ em Stitch'),
(307, 15, 'mln-ro-karofi-b930-9-loi-300x300.jpg', 'mlnro-karofi-b930-9-loi637698068151859328.jpg , mln-ro-karofi-b930-9-loi-note-1.jpg', 7190000, 21, '4990000', 'Máy lọc nước RO Karofi B930 9 lõi', '', '', '', '', 'Thiết bị lọc nước , Máy lọc nước Karofi'),
(308, 15, 'tl-toshiba-gr-rt395we-pmv-06-mg-300x300.jpg', 'tl-toshiba-gr-rt395we-pmv-06-mg-780x433.jpg , tl-toshiba-gr-rt395we-pmv-06-mg-n-1.jpg', 13690000, 21, '10900000', ' Tủ Lạnh Toshiba Inverter 311 lít GR-RT395WE-PMV(06)-MG', '', '311 lít , 337 lít , 407 lít', '', '', 'Tủ lạnh , Tủ lạnh Toshiba'),
(309, 15, 'dh-nagakawa-nis-c09r2h10-550x160.jpg', 'dh-nagakawa-nis-c09r2h10-160621-1047020.jpg , dh-nagakawa-nis-c09r2h10-note.jpg', 7490000, 11, '6.660.000', 'Máy lạnh Nagakawa Inverter 1 HP NIS-C09R2H10', '', '1 HP , 1.5 HP , 2 HP', 'Quà 850.000', '', 'Máy lạnh , Máy lạnh Nagakawa'),
(310, 15, 'rice-ava-tp40-ct01e-18-lit-thumb-300x300.jpg', 'rice-ava-tp40-ct01e-18-lit637691200254285205.jpg , rice-ava-tp40-ct01e-18-lit-note-1.jpg', 1390000, 28, '990.000', 'Nồi cơm điện tử Ava TP40-CT01E 1.8 lít', '', '', '', '', 'Gia dụng , Nồi cơm điện AVA'),
(311, 16, 'bike-mtb-forever-f1904-den-vang-100921-100915-550x340.jpg', 'bike-mtb-forever-f1904-den-vang-100921-100915-550x340.jpg', 2990000, 21, '2.093.000', 'Xe Stitch Spider King JK912-18 18 inch', 'Bánh 18\" , sườn hợp kim nhôm', '', '', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(312, 16, 'bike-mtb-fascino-fs-01-20-inch-den-xanh-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 5590000, 21, '4.472.000', 'Xe Đạp Địa Hình MTB Phoenix VIGILON 3.0 26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', '', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(313, 16, 'bike-touring-cavanio-focus-den-doava-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 20, '5.320.000', 'Xe đạp đường phố Touring Cavanio FOCUS 29 inch', 'Bánh 29\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(314, 16, 'bike-mtb-fornix-w20-20-inch-xanh-duong-cam-600x600.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 21, '5.320.000', 'Xe Đạp Địa Hình MTB Phoenix VIGILON 3.0 26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(315, 16, 'bike-mtb-fornix-r20-20-inch-do-denava-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 3690000, 21, '2900000', 'Xe đạp Stitch Knight JY903-26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(316, 16, 'bike-british-girl-jy909-thumb-550x340.jpg', 'xd-knight-jy903-silver-red-glr.jpg', 2690000, 21, '1900000', 'Xe đạp trẻ em Stitch Knight JY903-16 16 inch', 'Bánh 16\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(317, 16, 'bike-ava-xanh-ghi-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 21, '5900000<', 'Xe đạp địa hình MTB Forever F1904 27.5 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(318, 16, 'bike-royalbaby-chipmunk-cm18-1-18-inch-xanh-600x600.jpg', 'xd-knight-jy903-silver-red-glr.jpg', 3690000, 21, '2900000', 'Xe đạp trẻ em Stitch Knight JY903-16 16 inch', 'Bánh 16\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(319, 17, 'bike-mtb-forever-f1904-den-vang-100921-100915-550x340.jpg', 'bike-mtb-forever-f1904-den-vang-100921-100915-550x340.jpg', 2990000, 21, '2.093.000', 'Xe Stitch Spider King JK912-18 18 inch', 'Bánh 18\" , sườn hợp kim nhôm', '', '', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(320, 17, 'bike-mtb-fascino-fs-01-20-inch-den-xanh-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 5590000, 21, '4.472.000', 'Xe Đạp Địa Hình MTB Phoenix VIGILON 3.0 26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', '', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(321, 17, 'bike-touring-cavanio-focus-den-doava-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 20, '5.320.000', 'Xe đạp đường phố Touring Cavanio FOCUS 29 inch', 'Bánh 29\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(322, 17, 'bike-mtb-fornix-w20-20-inch-xanh-duong-cam-600x600.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 21, '5.320.000', 'Xe Đạp Địa Hình MTB Phoenix VIGILON 3.0 26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(323, 17, 'bike-mtb-fornix-r20-20-inch-do-denava-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 3690000, 21, '2900000', 'Xe đạp Stitch Knight JY903-26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(324, 17, 'bike-british-girl-jy909-thumb-550x340.jpg', 'xd-knight-jy903-silver-red-glr.jpg', 2690000, 21, '1900000', 'Xe đạp trẻ em Stitch Knight JY903-16 16 inch', 'Bánh 16\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(325, 17, 'bike-ava-xanh-ghi-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 21, '5900000<', 'Xe đạp địa hình MTB Forever F1904 27.5 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(326, 17, 'bike-royalbaby-chipmunk-cm18-1-18-inch-xanh-600x600.jpg', 'xd-knight-jy903-silver-red-glr.jpg', 3690000, 21, '2900000', 'Xe đạp trẻ em Stitch Knight JY903-16 16 inch', 'Bánh 16\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(327, 17, 'bike-mtb-fascino-fs-01-20-inch-den-xanh-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 5590000, 21, '4.472.000', 'Xe Đạp Địa Hình MTB Phoenix VIGILON 3.0 26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', '', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(328, 17, 'bike-touring-cavanio-focus-den-doava-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 20, '5.320.000', 'Xe đạp đường phố Touring Cavanio FOCUS 29 inch', 'Bánh 29\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(329, 17, 'bike-mtb-fornix-w20-20-inch-xanh-duong-cam-600x600.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 21, '5.320.000', 'Xe Đạp Địa Hình MTB Phoenix VIGILON 3.0 26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(330, 17, 'bike-mtb-fornix-r20-20-inch-do-denava-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 3690000, 21, '2900000', 'Xe đạp Stitch Knight JY903-26 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(331, 17, 'bike-british-girl-jy909-thumb-550x340.jpg', 'xd-knight-jy903-silver-red-glr.jpg', 2690000, 21, '1900000', 'Xe đạp trẻ em Stitch Knight JY903-16 16 inch', 'Bánh 16\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(332, 17, 'bike-ava-xanh-ghi-550x340.jpg', 'xd-touring-cavanio-focus-den-do-1-org.jpg , xd-touring-cavanio-focus-den-do-9-org.jpg', 6690000, 21, '5900000<', 'Xe đạp địa hình MTB Forever F1904 27.5 inch', 'Bánh 26\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp đường phố'),
(333, 17, 'bike-royalbaby-chipmunk-cm18-1-18-inch-xanh-600x600.jpg', 'xd-knight-jy903-silver-red-glr.jpg', 3690000, 21, '2900000', 'Xe đạp trẻ em Stitch Knight JY903-16 16 inch', 'Bánh 16\" , sườn hợp kim nhôm', '', 'Quà 200.000', 'Chỉ bán online', 'Xe đạp , Xe đạp trẻ em'),
(334, 18, 'aqua-aqd-d850e-w-21-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 8344000, 11, '', 'Aqua Inverter 8.5 Kg AQD-D850E W', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(335, 18, 'aqua-aqd-d900f-s-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 3230000, 12, '', 'Aqua Inverter 9 Kg AQD-D900F S', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(336, 18, 'aqua-aqw-dk90ct-s-11-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 23, '', 'Aqua Inverter 9 Kg AQW-DK90CT S', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(337, 18, 'toshiba-tw-bk115g4v-mg-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 14500000, 12, '', 'Toshiba Inverter 10.5 Kg TW-BK115G4V (MG)', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(338, 18, 'may-giat-lg-inverter-85-kg-fv1408s4w-8-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 13690000, 12, '', 'LG Inverter 8.5 Kg FV1408S4W', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(339, 18, 'toshiba-tw-bk105s2v-ws-12-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 33, '', 'Toshiba Inverter 9.5 Kg TW-BK105S2V(WS)', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(340, 18, 'wd95t754dbx-5-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 14500000, 44, '', 'Samsung Inverter 9.5 Kg WD95T754DBX/SV Mới 2021', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(341, 18, 'aqua-aqw-fr105gt-bk-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 3230000, 11, '', 'Aqua 10.5 Kg AQW-FR105GT BK Mới 2021', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(342, 18, 'panasonic-na-v90fx1lvt-13-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 22, '', 'Panasonic Inverter 9 Kg NA-V90FX1LVT', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(343, 18, 'aqua-aqw-dk90ct-s-11-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 23, '', 'Aqua Inverter 9 Kg AQW-DK90CT S', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(344, 18, 'toshiba-tw-bk115g4v-mg-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 14500000, 12, '', 'Toshiba Inverter 10.5 Kg TW-BK115G4V (MG)', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(345, 18, 'may-giat-lg-inverter-85-kg-fv1408s4w-8-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 13690000, 12, '', 'LG Inverter 8.5 Kg FV1408S4W', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(346, 18, 'toshiba-tw-bk105s2v-ws-12-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 33, '', 'Toshiba Inverter 9.5 Kg TW-BK105S2V(WS)', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(347, 18, 'wd95t754dbx-5-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 14500000, 44, '', 'Samsung Inverter 9.5 Kg WD95T754DBX/SV Mới 2021', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(348, 18, 'aqua-aqw-fr105gt-bk-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 3230000, 11, '', 'Aqua 10.5 Kg AQW-FR105GT BK Mới 2021', '', '', '', '', ''),
(349, 18, 'panasonic-na-v90fx1lvt-13-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 22, '', 'Panasonic Inverter 9 Kg NA-V90FX1LVT', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy giặt'),
(350, 19, 'aqua-aqd-d850e-w-21-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 8344000, 11, '', 'Aqua Inverter 8.5 Kg AQD-D850E W', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(351, 19, 'aqua-aqd-d900f-s-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 3230000, 12, '', 'Aqua Inverter 9 Kg AQD-D900F S', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(352, 19, 'aqua-aqw-dk90ct-s-11-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 23, '', 'Aqua Inverter 9 Kg AQW-DK90CT S', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(353, 19, 'toshiba-tw-bk115g4v-mg-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 14500000, 12, '', 'Toshiba Inverter 10.5 Kg TW-BK115G4V (MG)', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(354, 19, 'may-giat-lg-inverter-85-kg-fv1408s4w-8-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 13690000, 12, '', 'LG Inverter 8.5 Kg FV1408S4W', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(355, 19, 'toshiba-tw-bk105s2v-ws-12-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 33, '', 'Toshiba Inverter 9.5 Kg TW-BK105S2V(WS)', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(356, 19, 'wd95t754dbx-5-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 14500000, 44, '', 'Samsung Inverter 9.5 Kg WD95T754DBX/SV Mới 2021', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(357, 19, 'aqua-aqw-fr105gt-bk-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 3230000, 11, '', 'Aqua 10.5 Kg AQW-FR105GT BK Mới 2021', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(358, 19, 'panasonic-na-v90fx1lvt-13-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 22, '', 'Panasonic Inverter 9 Kg NA-V90FX1LVT', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(359, 19, 'aqua-aqw-dk90ct-s-11-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 23, '', 'Aqua Inverter 9 Kg AQW-DK90CT S', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(360, 19, 'toshiba-tw-bk115g4v-mg-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 14500000, 12, '', 'Toshiba Inverter 10.5 Kg TW-BK115G4V (MG)', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(361, 19, 'may-giat-lg-inverter-85-kg-fv1408s4w-8-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 13690000, 12, '', 'LG Inverter 8.5 Kg FV1408S4W', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(362, 19, 'toshiba-tw-bk105s2v-ws-12-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 33, '', 'Toshiba Inverter 9.5 Kg TW-BK105S2V(WS)', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(363, 19, 'wd95t754dbx-5-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 14500000, 44, '', 'Samsung Inverter 9.5 Kg WD95T754DBX/SV Mới 2021', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(364, 19, 'aqua-aqw-fr105gt-bk-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 3230000, 11, '', 'Aqua 10.5 Kg AQW-FR105GT BK Mới 2021', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(365, 19, 'panasonic-na-v90fx1lvt-13-300x300.jpg', '1-1020x570.jpg , aqua-aqd-d850e-w-4.jpg', 11200000, 22, '', 'Panasonic Inverter 9 Kg NA-V90FX1LVT', '', '', '', '', 'Máy giặt, Máy sấy quần áo , Máy sấy quần áo'),
(366, 20, 'nagakawa-nis-c09r2h10-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 7490000, 10, '', 'Nagakawa Inverter 1 HP NIS-C09R2H10 Mới 2021', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(367, 20, 'may-lanh-lg-v13enh-1-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 10500000, 22, '', 'LG Inverter 1.5 HP V13ENH', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(368, 20, 'sharp-ah-x9xew-1-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 8900000, 11, '', 'Sharp Inverter 1 HP AH-X9XEW', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(369, 20, 'midea-msafa-10crdn8-2-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 8690000, 8, '', 'Midea Inverter 1 HP MSAFA-10CRDN8', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(370, 20, 'gree-gwc09fb-k6d9a1w-12-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 9190000, 14, '', 'Gree Inverter 1 HP GWC09FB-K6D9A1W', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(371, 20, 'nagakawa-nis-c09r2h10-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 7490000, 10, '', 'Nagakawa Inverter 1 HP NIS-C09R2H10 Mới 2021', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(372, 20, 'may-lanh-lg-v13enh-1-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 10500000, 22, '', 'LG Inverter 1.5 HP V13ENH', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(373, 20, 'sharp-ah-x9xew-1-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 8900000, 11, '', 'Sharp Inverter 1 HP AH-X9XEW', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(374, 20, 'midea-msafa-10crdn8-2-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 8690000, 8, '', 'Midea Inverter 1 HP MSAFA-10CRDN8', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(375, 20, 'gree-gwc09fb-k6d9a1w-12-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 9190000, 14, '', 'Gree Inverter 1 HP GWC09FB-K6D9A1W', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(376, 20, 'nagakawa-nis-c09r2h10-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 7490000, 10, '', 'Nagakawa Inverter 1 HP NIS-C09R2H10 Mới 2021', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(377, 20, 'may-lanh-lg-v13enh-1-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 10500000, 22, '', 'LG Inverter 1.5 HP V13ENH', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(378, 20, 'sharp-ah-x9xew-1-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 8900000, 11, '', 'Sharp Inverter 1 HP AH-X9XEW', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(379, 20, 'midea-msafa-10crdn8-2-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 8690000, 8, '', 'Midea Inverter 1 HP MSAFA-10CRDN8', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(380, 20, 'gree-gwc09fb-k6d9a1w-12-550x160.jpg', 'nagakawa-nis-c09r2h10-160621-1047021.jpg , nagakawa-nis-c09r2h10-note.jpg', 9190000, 14, '', 'Gree Inverter 1 HP GWC09FB-K6D9A1W', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Máy Lạnh'),
(381, 21, 'honeywell-es800-18-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 3920000, 40, '', 'Honeywell ES800', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Quạt điều hòa'),
(382, 21, 'quat-khong-khi-honeywell-cl25ae-1-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 5550000, 24, '', 'Honeywell CL25AE', '', '', '', '', 'Quạt điều hòa'),
(383, 21, 'cs10xe-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 3900000, 34, '', 'Honeywell CS10XE', '', '', '', '', 'Quạt điều hòa'),
(384, 21, 'honeywell-cl20ae-18-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 5290000, 40, '', 'Honeywell CL20AE', '', '', '', '', 'Quạt điều hòa'),
(385, 21, 'quat-tc10pe-1-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 2790000, 22, '', 'Honeywell TC10PE', '', '', '', '', 'Quạt điều hòa'),
(386, 21, 'honeywell-es800-18-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 3920000, 40, '', 'Honeywell ES800', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Quạt điều hòa'),
(387, 21, 'quat-khong-khi-honeywell-cl25ae-1-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 5550000, 24, '', 'Honeywell CL25AE', '', '', '', '', 'Quạt điều hòa'),
(388, 21, 'cs10xe-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 3900000, 34, '', 'Honeywell CS10XE', '', '', '', '', 'Quạt điều hòa'),
(389, 21, 'honeywell-cl20ae-18-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 5290000, 40, '', 'Honeywell CL20AE', '', '', '', '', 'Quạt điều hòa'),
(390, 21, 'quat-tc10pe-1-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 2790000, 22, '', 'Honeywell TC10PE', '', '', '', '', 'Quạt điều hòa'),
(391, 21, 'honeywell-es800-18-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 3920000, 40, '', 'Honeywell ES800', '', '', '', '', 'Máy Lạnh, Quạt điều hòa , Quạt điều hòa'),
(392, 21, 'quat-khong-khi-honeywell-cl25ae-1-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 5550000, 24, '', 'Honeywell CL25AE', '', '', '', '', 'Quạt điều hòa'),
(393, 21, 'cs10xe-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 3900000, 34, '', 'Honeywell CS10XE', '', '', '', '', 'Quạt điều hòa'),
(394, 21, 'honeywell-cl20ae-18-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 5290000, 40, '', 'Honeywell CL20AE', '', '', '', '', 'Quạt điều hòa'),
(395, 21, 'quat-tc10pe-1-300x300.jpg', 'honeywell-es800-310721-1106070.jpg , honeywell-es800-.jpg', 2790000, 22, '', 'Honeywell TC10PE', '', '', '', '', 'Quạt điều hòa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grab_user`
--

CREATE TABLE `grab_user` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `grab_user`
--

INSERT INTO `grab_user` (`id`, `fullname`, `email`, `username`, `password`, `phone`) VALUES
(1, 'Duc', 'duc', 'duc', '123456', 456);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account_login`
--
ALTER TABLE `account_login`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `grab_admin`
--
ALTER TABLE `grab_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `grab_cart`
--
ALTER TABLE `grab_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `userid` (`userid`);

--
-- Chỉ mục cho bảng `grab_category`
--
ALTER TABLE `grab_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `grab_content`
--
ALTER TABLE `grab_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `grab_user`
--
ALTER TABLE `grab_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account_login`
--
ALTER TABLE `account_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `grab_admin`
--
ALTER TABLE `grab_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `grab_cart`
--
ALTER TABLE `grab_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `grab_category`
--
ALTER TABLE `grab_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `grab_content`
--
ALTER TABLE `grab_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT cho bảng `grab_user`
--
ALTER TABLE `grab_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `grab_cart`
--
ALTER TABLE `grab_cart`
  ADD CONSTRAINT `grab_cart_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `grab_content` (`id`),
  ADD CONSTRAINT `grab_cart_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `grab_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
