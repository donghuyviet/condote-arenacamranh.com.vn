-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 20, 2017 lúc 05:13 AM
-- Phiên bản máy phục vụ: 5.5.56-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `arenacamranh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `created_at`, `updated_at`, `parent_id`, `slug`, `is_hidden`, `position`) VALUES
(1, 'Tin tức', 'tin tức', '2017-10-16 10:07:38', '2017-10-17 08:28:48', 0, 'tin-tuc', 0, 4),
(2, 'Mặt bằng', 'Mặt bằng condotel arena cam ranh', '2017-10-16 10:07:38', '2017-10-17 08:29:18', 0, 'mat-bang-condotel-arena-cam-ranh', 0, 1),
(3, 'chính sách', 'chính sách dự án arena cam ranh', '2017-10-16 10:07:38', '2017-10-17 08:28:33', 0, 'chinh-sach-du-an-arena-cam-ranh', 0, 2),
(7, 'tiện ích', 'Tiện ích the arena panorama cam ranh', '2017-10-17 06:50:42', '2017-10-17 08:28:41', 0, 'tien-ich-the-arena-panorama-cam-ranh', 0, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `telephone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(4, 'Nguyễn Hải Châu', '0919130608', 'chaunguyen119@gmail.com', NULL, '2017-10-22 19:49:25', '2017-10-22 19:49:25'),
(5, 'Huỳnh Lợi', '0907959847', 'loihuynh68@gmail.com', NULL, '2017-10-23 20:00:56', '2017-10-23 20:00:56'),
(6, 'quốc hưng', '0905997376', 'leonhung0969@gmail.com', NULL, '2017-10-25 02:09:36', '2017-10-25 02:09:36'),
(7, 'Nguyen hanh quynh', '09031629686', 'hanhquynh16101977@gmail.com', NULL, '2017-10-25 04:31:12', '2017-10-25 04:31:12'),
(8, 'quốc hưng', '0905779377', 'leonhung0969@gmail.com', NULL, '2017-10-27 01:56:34', '2017-10-27 01:56:34'),
(9, 'Huỳnh mai bảo thụy', '01675100419', 'thuyhuynhmaibao@gmail.com', NULL, '2017-10-30 06:42:17', '2017-10-30 06:42:17'),
(10, 'Lương Hải Triều', '01252847494', 'luongtrieu18@gmail.com', NULL, '2017-11-01 00:38:02', '2017-11-01 00:38:02'),
(11, 'truong tam', '01226875132', 'dinhtocbin@gmail.com', NULL, '2017-11-02 17:45:23', '2017-11-02 17:45:23'),
(12, 'Jessica', '0933325607', 'jessicanga2009@gmail.com', NULL, '2017-11-02 20:33:01', '2017-11-02 20:33:01'),
(13, 'jessica', '0933325607', 'nga.tran@archetype-group.com', '25 Le Dai Hanh Ha Noi', '2017-11-02 20:33:52', '2017-11-02 20:33:52'),
(14, 'Le huong giang', '0909992000', 'giangvn73@yahoo.com', NULL, '2017-11-03 17:05:32', '2017-11-03 17:05:32'),
(15, 'Le thu le', '0933336978', 'nguyetnhi999@yahoo.de', NULL, '2017-11-03 17:19:33', '2017-11-03 17:19:33'),
(16, 'Nguyen', '0903737855', 'nguyenphuong858@gmail.com', NULL, '2017-11-04 06:14:35', '2017-11-04 06:14:35'),
(17, 'Ngô xuân thong', '0988333238', 'thongkts76@gmail.com', NULL, '2017-11-05 20:36:44', '2017-11-05 20:36:44'),
(18, 'Ngô xuân thong', '0988333238', 'thongkts76@gmail.com', '2/75 thiên phước, p. 9, q. tan binh', '2017-11-05 20:38:08', '2017-11-05 20:38:08'),
(19, 'Bùi kim quế', '0912071188', 'buikimque@yahoo.com', NULL, '2017-11-05 21:01:20', '2017-11-05 21:01:20'),
(20, 'khanh', '0977657997', 'khanh.cd79@gmail.com', NULL, '2017-11-06 00:48:11', '2017-11-06 00:48:11'),
(21, 'chau van dan', '0909266366', 'chauvandannp@gmail.com', NULL, '2017-11-06 18:46:01', '2017-11-06 18:46:01'),
(22, 'vũ tuấn anh', '0964543688', 'dangthuyminh.84@gmail.com', NULL, '2017-11-07 00:25:38', '2017-11-07 00:25:38'),
(23, 'Nguyễn thị Hoa', '01696908714', 'nguyenthihoa1900@gmail.com', NULL, '2017-11-07 02:24:32', '2017-11-07 02:24:32'),
(24, 'Nguyễn thị Hoa', '01696908714', 'nguyenthihoa1900@gmail.com', NULL, '2017-11-07 02:25:52', '2017-11-07 02:25:52'),
(25, 'Nguyễn thị Hoa', '01696908714', 'nguyenthihoa1900@gmail.com', 'Khám thiên, Hà nội', '2017-11-07 02:26:49', '2017-11-07 02:26:49'),
(26, 'Trần Thanh Hoài', '0981102118', 'thanhhoaiv2004@yahoo.com', 'Vinh - Nghệ An', '2017-11-07 16:34:39', '2017-11-07 16:34:39'),
(27, 'Nguyen vanVy', '0919697719', 'lotus361976@gmail.com', 'Đà Nẵng', '2017-11-08 20:04:33', '2017-11-08 20:04:33'),
(28, 'Nguyen vanVy', '0919697719', 'lotus361976@gmail.com', 'Đà Nẵng', '2017-11-08 20:04:36', '2017-11-08 20:04:36'),
(29, 'Nguyễn khắc Trọng', '0913953092', 'khactrong1955@gmail.com', NULL, '2017-11-09 01:49:45', '2017-11-09 01:49:45'),
(30, 'Nguyễn khắc Trọng', '0913953092', 'khactrong1955@gmail.com', '41 Hoàng Hoa Thám, P10, Dalat, Lâm đồng', '2017-11-09 01:51:06', '2017-11-09 01:51:06'),
(31, 'Nguyễn Văn minh', '0912041808', 'noithat.toanthinh@gmai.com', NULL, '2017-11-10 04:31:58', '2017-11-10 04:31:58'),
(32, 'Phạm việt Tú', '0903460468', 'tupv040857@gmail.com', NULL, '2017-11-11 07:23:00', '2017-11-11 07:23:00'),
(33, 'Cao quoc Chung', '0913522711', 'chung.caoquoc@gmail.com', NULL, '2017-11-11 07:35:07', '2017-11-11 07:35:07'),
(34, 'Nguyễn Quốc Tuấn', '0903225547', 'bs.quoctuan56@gmail.com', NULL, '2017-11-12 08:33:23', '2017-11-12 08:33:23'),
(35, 'Nguyễn Quốc Tuấn', '0903225547', 'bs.quoctuan56@gmail.com', NULL, '2017-11-12 08:34:23', '2017-11-12 08:34:23'),
(36, 'Nguyễn Quốc Tuấn', '903225547', 'bs.quoctuan56@gmail.com', '31N09 Khu ĐT Sài Đồng -Long Biên Hà Nội', '2017-11-12 08:35:40', '2017-11-12 08:35:40'),
(37, 'Dung', '0989340163', 'thudung03@yahoo.com', NULL, '2017-11-13 19:52:21', '2017-11-13 19:52:21'),
(38, 'Dinh Nguyet', '0908470839', 'Nguyen889b@gmail.com', NULL, '2017-11-13 21:30:02', '2017-11-13 21:30:02'),
(39, 'Nu Pham', '01273239499', 'vuhonghoa972@gmail.com', NULL, '2017-11-14 07:18:48', '2017-11-14 07:18:48'),
(40, 'MAI THANH HUY', '0909427271', 'alan25988@gmail.com', NULL, '2017-11-14 19:54:09', '2017-11-14 19:54:09'),
(41, 'đinh ngọc nam', '0915256668', 'dienthoaiphuongnam@gmail.con', '1155 nguyễn công trứ -ninh phúc- tp ninh bình', '2017-11-14 20:53:54', '2017-11-14 20:53:54'),
(42, 'Đồng Huy Việt', '0912889138', 'donghuyviet.bds@gmail.com', NULL, '2017-11-15 00:09:38', '2017-11-15 00:09:38'),
(43, 'Nguyễn văn Sơn', '0988000730', 'nguyenvansonhcm@gmail.com', NULL, '2017-11-15 06:41:20', '2017-11-15 06:41:20'),
(44, 'HOANG MINH TU', '0903415384', 'tuhm1962@gmail.com', '23 Nguyễn Văn Cừ Long Biên Hà Nội', '2017-11-17 20:36:38', '2017-11-17 20:36:38'),
(45, 'lethivan', '0966558596', 'lethivan1208@yahoo.com.vn', NULL, '2017-11-18 19:53:18', '2017-11-18 19:53:18'),
(46, 'lethivan', '0966558596', 'lethivan1208@yahoo.com.vn', NULL, '2017-11-18 19:53:22', '2017-11-18 19:53:22'),
(47, 'lethivan', '0966558596', 'lethivan1208@yahoo.com.vn', NULL, '2017-11-18 19:54:23', '2017-11-18 19:54:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_10_014018_create_roles_table', 1),
(4, '2017_05_10_014513_create_user_role_table', 1),
(5, '2017_05_10_094716_create_categories_table', 1),
(6, '2017_05_10_094945_create_posts_table', 1),
(7, '2017_05_10_095231_create_post_category_table', 1),
(8, '2017_05_19_042442_create_customers_table', 1),
(9, '2017_07_26_075203_add_category_id_to_posts_table', 1),
(10, '2017_07_26_075249_add_parent_id_to_categories_table', 1),
(11, '2017_07_26_134953_add_slug_to_categories_table', 1),
(12, '2017_07_28_024303_create_slides_table', 1),
(13, '2017_07_28_045017_add_user_id_to_posts_table', 1),
(14, '2017_08_02_034310_add_is_hidden_to_categories', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '/photos/shares/queenland.jpg',
  `views` int(11) NOT NULL DEFAULT '0',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `hot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `post`, `description`, `slug`, `avatar`, `views`, `seo_title`, `seo_description`, `is_hidden`, `hot`, `news`, `created_at`, `updated_at`, `category_id`, `user_id`) VALUES
(31, 'chính sách condotel arena cam ranh', '<p><strong>Condotel Arena Cam Ranh&nbsp;</strong>sở hữu vị tr&iacute; đắc địa kết nối linh hoạt cụ thể chỉ c&aacute;ch cam ranh 9 ph&uacute;t, Tp. Nha trang 35 ph&uacute;t.</p>\r\n<p>&ndash; Kh&aacute;ch h&agrave;ng: <span style="color: #cf000f;"><strong>chỉ cần đ&oacute;ng 30% tổng gi&aacute; trị CH sẽ nhận ngay căn hộ.</strong></span><br /> &ndash; Ng&acirc;n h&agrave;ng: <span style="color: #cf000f;"><strong>Viettinbank cho vay tới 70% tổng GTCH</strong></span></p>\r\n<p>Nhằm giảm &aacute;p lực t&agrave;i ch&iacute;nh v&agrave; hỗ trợ tối đa cho kh&aacute;ch h&agrave;ng c&oacute; nhu cầu mua CH dự &aacute;n, kh&aacute;ch h&agrave;ng vay vốn mua căn hộ sẽ được tham gia chương tr&igrave;nh ưu đ&atilde;i từ Viettinbank:</p>\r\n<p><strong>+ L&atilde;i suất 0% cho đến khi nhận nh&agrave;</strong></p>\r\n<p><strong>+ Năm thứ 2 trở đi được điều chỉnh 03 th&aacute;ng/lần v&agrave; bằng l&atilde;i suất huy động tiền gửi tiết kiệm VNĐ</strong></p>\r\n<p><strong>+ kỳ hạn 13 th&aacute;ng trả l&atilde;i sau của <span style="color: #cf000f;">Viettinbank</span> tại thời điểm điều chỉnh cộng (+) Bi&ecirc;n độ tối </strong><strong>thiểu từ 4 %/năm t&ugrave;y xếp hạng t&iacute;n dụng kh&aacute;ch h&agrave;ng</strong></p>\r\n<p><strong>+ Thời gian vay: tối đa 20 năm</strong></p>\r\n<p><strong>+ Mức cho vay tối đa: 70% gi&aacute; trị căn hộ</strong></p>\r\n<p><span style="color: #cf000f;"><strong>Tiến độ thanh to&aacute;n linh hoạt chia l&agrave;m 9 đợt</strong>:</span></p>\r\n<p><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" /></strong>&nbsp; <strong>Đợt&nbsp;1:</strong>&nbsp;Đặt cọc 50 triệu đồng ngay khi đăng k&yacute; Thỏa thuận đặt cọc&nbsp;<br /><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" /></strong>&nbsp; <strong>Đợt&nbsp;2:</strong> 10 ng&agrave;y sau nộp tiền lần 1:&nbsp;<strong>Thanh to&aacute;n 15%</strong><br /><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" />&nbsp; Đợt&nbsp;3</strong>: 30 ng&agrave;y sau nộp tiền lần 2:&nbsp;<strong>Thanh to&aacute;n 10%</strong><br /><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" /></strong>&nbsp; <strong>Đợt&nbsp;4</strong>: Kh&ocirc;ng trễ hơn 30/6/2018:&nbsp;<strong>Thanh to&aacute;n5%</strong><br /><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" /></strong>&nbsp; <strong>Đợt&nbsp;5</strong>: Kh&ocirc;ng trễ hơn 31/8/2018:&nbsp;<strong>thanh to&aacute;n 5%</strong><br /><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" /></strong>&nbsp; <strong>Đợt&nbsp;6</strong>: Kh&ocirc;ng trễ hơn 31/10/2018:&nbsp;<strong>Thanh to&aacute;n 5%</strong><br /><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" /></strong>&nbsp; <strong>Đợt&nbsp;7</strong>: Kh&ocirc;ng trễ hơn 31/12/2018:&nbsp;<strong>Thanh to&aacute;n 5%</strong><br /><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" /></strong>&nbsp; <strong>Đợt&nbsp;8</strong>: Kh&ocirc;ng trễ hơn 28/02/2019:&nbsp;<strong>Thanh to&aacute;n 5%</strong><br /><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" /></strong>&nbsp; <strong>Đợt&nbsp;9:</strong> Kh&ocirc;ng trễ hơn 30/04/2019:&nbsp;<strong>Thanh to&aacute;n 5%</strong></p>\r\n<p><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" />&nbsp;Đợt&nbsp;10:</strong>Kh&ocirc;ng trễ hơn 30/06/2019:<strong>Thanh to&aacute;n 5%</strong></p>\r\n<p><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" />&nbsp;Đợt&nbsp;11:</strong>Kh&ocirc;ng trễ hơn 30/08/2019:<strong>Thanh to&aacute;n 5%</strong></p>\r\n<p><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" />&nbsp; Đợt&nbsp;12:</strong> Kh&ocirc;ng trễ hơn 30/10/2019:<strong>&nbsp;Thanh to&aacute;n 5%</strong></p>\r\n<p><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" />&nbsp; Đợt&nbsp;13: </strong>Kh&ocirc;ng trễ hơn th&aacute;ng 03/2020:<strong>&nbsp;Thanh to&aacute;n 25%</strong></p>\r\n<p><strong><img src="http://bietthulienkeharmony.com/photos/shares/hoa.png" alt="" width="18" height="18" />&nbsp;Đợt&nbsp;14: </strong>Dự kiến sổ hồng:<strong> Thanh to&aacute;n 5%</strong></p>\r\n<p>&nbsp;</p>\r\n<p style="text-align: center;"><img src="/photos/shares/vi-tri-the-arena-cam-ranh-01-min.jpg" alt="vị tr&iacute; tổng quan arena cam ranh" width="800" height="500" /></p>\r\n<p style="text-align: center;"><span style="color: #dd0055;"><em>tổng quan vị tr&iacute; condotel arena cam ranh kh&aacute;nh h&ograve;a</em></span>&nbsp;</p>\r\n<p><em>C&aacute;c th&ocirc;ng tin chi tiết về tiến độ dự &aacute;n sẽ được cập nhật thường xuy&ecirc;n, bạn c&oacute; thể đăng k&yacute; để cập nhật li&ecirc;n tục c&aacute;c th&ocirc;ng tin của ch&uacute;ng t&ocirc;i về dự &aacute;n Condotel The Arena Cam ranh.<br /></em><em>Xin cảm ơn!</em></p>\r\n<div class="form-detail">&nbsp;</div>\r\n<p><em>Ch&uacute;ng t&ocirc;i l&agrave; đại l&yacute; ph&acirc;n phối ch&iacute;nh thức dự &aacute;n Condotel The Arena Cam ranh, c&oacute; đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; t&acirc;m huyết trong c&ocirc;ng việc. H&atilde;y đến với ch&uacute;ng t&ocirc;i nắm bắt cơ hội &ldquo;v&agrave;ng&rdquo; của ch&iacute;nh s&aacute;ch ưu đ&atilde;i mới để t&igrave;m được ng&ocirc;i nh&agrave; l&yacute; tưởng ph&ugrave; hợp y&ecirc;u cầu v&agrave; điều kiện t&agrave;i ch&iacute;nh ngay h&ocirc;m nay</em></p>\r\n<p><em><strong>Hotline: &nbsp;0906.212.388 - 0902.252.584</strong></em></p>\r\n<p>&nbsp;<strong>&gt;&gt;&gt; <a title=" Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng si&ecirc;u hấp dẫn HTLS l&ecirc;n đến 70%" href="/mat-bang.html">Mặt bằng dự &aacute;n The Arena Cam Ranh</a></strong></p>\r\n<p><strong>&gt;&gt;&gt; <a href="/tin-tuc/condotel-la-gi-tai-sao-lai-dau-tu-vao-condotel-33.html">Condotel l&agrave; g&igrave;, tại sao đầu tư v&agrave;o condotel l&agrave; xu hướng ?</a></strong></p>', 'chinh-sach-condotel-arena-cam-ranh-31', '/photos/shares/1508249966.jpg', 87, 'Chinh sách condotel arena cam ranh', 'Chinh sách condotel arena cam ranh', 0, '1', '0', '2017-10-16 11:37:00', '2017-11-17 19:56:30', 3, 2),
(32, 'Mặt bằng condotel the arena cam ranh nha trang', '<p><strong>Condotel The Arena Cam Ranh</strong> được x&acirc;y dựng tr&ecirc;n diện t&iacute;ch gần 29ha tại&nbsp;<strong>&ocirc; D14D B&atilde;i D&agrave;i - Cam Ranh - Kh&aacute;nh H&ograve;a.&nbsp;</strong>Quy m&ocirc; gồm 4 t&ograve;a: <strong>Sea - Sand - Light - Wind</strong> với diện t&iacute;ch linh hoạt từ 32 - 40m2 ph&ugrave; hợp với m&ocirc; h&igrave;nh để ở, tự kinh doanh, k&yacute; gửi CĐT. Với 90% view biển sổ hồng 50 năm cho Condotel v&agrave; l&acirc;u d&agrave;i cho Biệt Thự. Arena Cam Ranh hứa hẹn sẽ trở th&agrave;nh điểm v&agrave;ng của bất động sản nghỉ dưỡng tại Cam Ranh.</p>\r\n<p><strong>&gt;&gt;&gt;<a title=" Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng si&ecirc;u hấp dẫn" href="/chinh-sach.html"> Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng si&ecirc;u hấp dẫn HTLS l&ecirc;n đến 70%</a></strong></p>\r\n<p><strong>&gt;&gt;&gt; <a href="/tin-tuc/condotel-la-gi-tai-sao-lai-dau-tu-vao-condotel-33.html">Condotel l&agrave; g&igrave;, tại sao đầu tư condotel l&agrave; xu hướng ?</a></strong></p>\r\n<p><img src="/photos/shares/1508209780.jpg" alt="" width="800" height="550" /></p>\r\n<p style="text-align: center;"><span style="color: #dd0055;">Mặt bằng tổng thể condotel arena cam ranh</span></p>\r\n<p style="text-align: left;">Thiết kế căn hộ đa dạng đi c&ugrave;ng tiện &iacute;ch đẳng cấp 5 sao&nbsp;kỳ vọng trở th&agrave;nh&nbsp;<strong>"Cơn Sốt"</strong>&nbsp;bất động sản nghỉ dưỡng, xu hướng sinh lời cao của nh&agrave; đầu tư. Đ&acirc;y l&agrave; dự &aacute;n đầu ti&ecirc;n v&agrave; duy nhất tại B&atilde;i D&agrave;i kết hợp xu hướng nghỉ dưỡng vui chơi giải tr&iacute; đẳng cấp. Hứa hẹn sẽ l&agrave;&nbsp;<strong>"thi&ecirc;n đường nghỉ dưỡng"</strong>&nbsp;trong mơ của du kh&aacute;ch nội địa cả quốc tế.</p>\r\n<p style="text-align: left;"><img src="/photos/shares/23313089_1250511771720001_191533773_o.jpg" alt="" width="2048" height="1446" /><img src="/photos/shares/23261868_1250511828386662_1477268125_o.jpg" alt="" width="2048" height="1446" /></p>\r\n<p style="text-align: center;"><span style="background-color: #ffffff; color: #dd0055;">Layout căn hộ The Arena Cam Ranh</span></p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p style="text-align: left;"><img src="/photos/shares/mat-bang-can-ho-the-arena-cam-ranh.png" alt="" width="800" height="500" /></p>\r\n<p style="text-align: center;"><span style="color: #dd0055;">Thiết kế 3D căn hộ Panorama The Arena Cam Ranh</span></p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p style="text-align: left;">+ Mật độ: <span style="color: #cf000f;"><strong>10%</strong></span></p>\r\n<p style="text-align: left;">+ Diện t&iacute;ch căn hộ: <span style="color: #cf000f;"><strong>36m2, 37m2, 39m2 ,44m2</strong></span></p>\r\n<p style="text-align: left;"><strong>+&nbsp;</strong>Condotel <span style="color: #cf000f;"><strong>90% view biển sổ hồng 50 năm v&agrave; l&acirc;u d&agrave;i cho biệt thự&nbsp;&nbsp;</strong></span></p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p>Số lượng c&aacute;c căn <strong>Condotel Arena</strong> rất khan hiếm trong khi độ hot của sản phẩm kh&ocirc;ng ngừng gia tăng ch&iacute;nh v&igrave; thế Qu&yacute; kh&aacute;ch h&atilde;y nhanh tay nắm bắt cơ hội sở hữu thi&ecirc;n đường sống đẳng cấp n&agrave;y.</p>\r\n<p><strong>Để biết th&ecirc;m th&ocirc;ng tin về quỹ căn hot nhất c&ugrave;ng những ưu đ&atilde;i hấp dẫn, Qu&yacute; kh&aacute;ch vui l&ograve;ng đăng k&yacute; nhận th&ocirc;ng tin sớm nhất theo form dưới đ&acirc;y:&nbsp;</strong></p>\r\n<div class="form-detail">&nbsp;</div>\r\n<p>&nbsp;</p>\r\n<p><em>Ch&uacute;ng t&ocirc;i l&agrave; đại l&yacute; ph&acirc;n phối ch&iacute;nh thức dự &aacute;n Condotel The Arena Cam ranh, c&oacute; đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; t&acirc;m huyết trong c&ocirc;ng việc. H&atilde;y đến với ch&uacute;ng t&ocirc;i nắm bắt cơ hội &ldquo;v&agrave;ng&rdquo; của ch&iacute;nh s&aacute;ch ưu đ&atilde;i mới để t&igrave;m được ng&ocirc;i nh&agrave; l&yacute; tưởng ph&ugrave; hợp y&ecirc;u cầu v&agrave; điều kiện t&agrave;i ch&iacute;nh ngay h&ocirc;m nay</em></p>\r\n<p><em><strong>Hotline: &nbsp;0906.212.388 - 0902.252.584</strong></em></p>\r\n<p>&nbsp;<strong>&gt;&gt;&gt; <a title=" Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng si&ecirc;u hấp dẫn HTLS l&ecirc;n đến 70%" href="/chinh-sach.html">Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng si&ecirc;u hấp dẫn HTLS l&ecirc;n đến 70%</a></strong></p>\r\n<p><strong>&gt;&gt;&gt; <a href="/tin-tuc/condotel-la-gi-tai-sao-lai-dau-tu-vao-condotel-33.html">Condotel l&agrave; g&igrave;, tại sao đầu tư v&agrave;o condotel l&agrave; xu hướng ?</a></strong></p>', 'mat-bang-condotel-the-arena-cam-ranh-nha-trang-32', '/photos/shares/1508570703.jpg', 83, 'Mặt bằng condotel the arena cam ranh nha trang', 'Mặt bằng condotel the arena cam ranh nha trang', 0, '1', '0', '2017-10-16 11:37:52', '2017-11-18 03:14:41', 2, 4),
(33, 'Condotel là gì, tại sao lại đầu tư vào condotel ?', '<p><img src="/photos/shares/hoa.png" alt="" width="16" height="16" />&nbsp;<strong>CONDOTEL</strong> l&agrave; viết tắt của từ CONDO-HOTEL, nghĩa l&agrave; căn hộ kh&aacute;ch sạn. Một loại h&igrave;nh bất động sản du lịch, đ&acirc;y l&agrave; một kh&aacute;i niệm rất phổ biến tr&ecirc;n thị trường thế giới nhưng vẫn c&ograve;n kh&aacute; mới mẻ ở Việt Nam.</p>\r\n<p><img src="/photos/shares/hoa.png" alt="" width="16" height="16" />&nbsp;<strong>CONDOTEL</strong>&nbsp;vừa c&oacute; chức năng hoạt động như một kh&aacute;ch sạn cho kh&aacute;ch du lịch lưu tr&uacute; ngắn ng&agrave;y v&agrave; vừa c&oacute; chức năng của một căn hộ thực thụ với đầy đủ ph&ograve;ng ngủ, ph&ograve;ng kh&aacute;ch, ph&ograve;ng bếp v&agrave; đầy đủ dụng cụ, tiện &iacute;ch như một ng&ocirc;i nh&agrave; để du kh&aacute;ch c&oacute; thể tự đi chợ nấu nướng như ch&iacute;nh trong ng&ocirc;i nh&agrave; của m&igrave;nh.<br /><img src="/photos/shares/hoa.png" alt="" width="16" height="16" /> <img src="/photos/shares/hoa.png" alt="" width="16" height="16" />&nbsp;cần c&oacute; đơn vị quản l&yacute; v&agrave; vận h&agrave;nh như kh&aacute;ch sạn trong dịch vụ/thủ tục d&agrave;nh cho Kh&aacute;ch du lịch/kh&aacute;ch lưu tr&uacute; ngắn ng&agrave;y.</p>\r\n<p>=========================<br /> <strong>Tại sao n&ecirc;n đầu tư v&agrave;o&nbsp;CONDOTEL?</strong><br /> =========================<br /> 🌼&nbsp;Lợi &iacute;ch nổi trội&nbsp;l&agrave;&nbsp;LỢI NHUẬN từ việc cho thu&ecirc; nh&agrave; cao hơn hẳn so với lợi nhuận từ c&aacute;c BĐS kh&aacute;c.&nbsp;<br /> 🌼&nbsp;D&ograve;ng tiền thu về ổn định v&agrave; đảm bảo an to&agrave;n gần như tuyệt đối v&igrave; c&oacute; sự cam kết Lợi nhuận.<br /> 🌼&nbsp;Vốn ban đầu bỏ ra thấp v&agrave; ho&agrave;n vốn 100% gi&aacute; trị BĐS nhanh nhất.<br /> 🌼&nbsp;Cơ hội tăng gi&aacute; bất động sản trong tương lai v&igrave; vị tr&iacute; của&nbsp;CONDOTELthường nằm tại vị tr&iacute; đẹp nhất để tiện khai th&aacute;c kh&aacute;ch du lịch.<br /> 🌼&nbsp;Sở hữu BĐS l&acirc;u d&agrave;i v&agrave; chuyển nhượng dễ d&agrave;ng như BĐS th&ocirc;ng thường.<br /> 🌼&nbsp;Chủ nh&agrave; được miễn ph&iacute; 15 đ&ecirc;m nghỉ/năm trong hệ thống trao đổi kỳ nghỉ h&agrave;ng năm.<br /> 🌼&nbsp;Condotel&nbsp;được trang bị full nội thất theo ti&ecirc;u chuẩn qui định khai th&aacute;c.&nbsp;<br /> 🌼&nbsp;Lựa chọn đầu tư&nbsp;CONDOTEL, kh&aacute;ch h&agrave;ng c&oacute; thể thảnh thơi, d&agrave;nh thời gian cho gia đ&igrave;nh v&agrave; c&ugrave;ng những người th&acirc;n y&ecirc;u trải qua những kỳ nghỉ kh&oacute; qu&ecirc;n, m&agrave;:&nbsp;</p>\r\n<p><br />+ Kh&ocirc;ng phải lo lắng mất thời gian v&agrave; bỏ th&ecirc;m tiền để thiết kế v&agrave; trang bị nội<br /> + Kh&ocirc;ng phải mệt mỏi v&igrave; phải tr&ocirc;ng coi BĐS, t&igrave;m kiếm kh&aacute;ch thu&ecirc; v&agrave; đ&ograve;i tiền thu&ecirc; nh&agrave; h&agrave;ng th&aacute;ng.&nbsp;<br /> + Kh&ocirc;ng phải đối diện với nguy cơ mất t&agrave;i sản/nội thất khi cho thu&ecirc;.&nbsp;<br /> + Kh&ocirc;ng phải đối diện với thị trường Căn hộ đang mất c&acirc;n bằng về nguồn cung/nguồn cầu..</p>\r\n<p>Condotel The Arena Cam Ranh l&agrave; một kiệt t&aacute;c do ch&iacute;nh tay con người tạo ra s&aacute;nh c&ugrave;ng thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ, mang đến cho qu&yacute; kh&aacute;ch đậm chất sự s&ocirc;i nổi c&ugrave;ng c&aacute;c tiện &iacute;ch đẳng cấp 5 sao.&nbsp;du kh&aacute;ch như đắm ch&igrave;m trong 1 đấu trường <strong>&ldquo;Arena&rdquo;</strong> với rất nhiều tr&ograve; chơi, những văn h&oacute;a. Trải nhiệm c&aacute;c m&ocirc;n thể thao dưới nước ở tại nội khu nghỉ dưỡng&hellip;&nbsp;</p>\r\n<p><strong>&nbsp;The Arena &ndash; Panorama Cam Ranh</strong> ch&iacute;nh l&agrave; kiệt t&aacute;c mang đến sự tươi mới v&agrave; mới lạ cho thị trường nghỉ dưỡng B&atilde;i D&agrave;i, Cam Ranh đang im ắng.</p>\r\n<p><strong>+ 10%:<span style="color: #cf000f;"> Tỷ suất lợi nhuận lớn hơn 10%</span></strong></p>\r\n<p><strong>+ 3-1:</strong>&nbsp;<span style="color: #cf000f;"><strong>M&ocirc; h&igrave;nh kinh doanh rất linh hoạt: C&oacute; thể để ở, tự kinh doanh, k&yacute; gửi trực tiếp CĐT</strong></span></p>\r\n<p><strong>+ 70%:</strong>&nbsp;<span style="color: #cf000f;"><strong>Mức vay tối đa 70% gi&aacute; trị căn hộ, l&atilde;i suất 0%, thời hạn tối đa 20 năm&nbsp;</strong></span></p>\r\n<p><strong>+ 150: <span style="color: #cf000f;">Tặng&nbsp;150 đ&ecirc;m&nbsp;nghỉ trong 10 năm tr&ecirc;n to&agrave;n bộ hệ thống bất động sản nghỉ dưỡng của Vịnh Nha Trang.&nbsp;</span></strong></p>\r\n<p><strong>+ 100%:&nbsp;<span style="color: #cf000f;">Cam kết kh&aacute;ch h&agrave;ng nhận được lợi nhuận tối thiểu l&ecirc;n tới 10%/năm trong 10 năm&nbsp;</span></strong></p>\r\n<p>Số lượng c&aacute;c căn&nbsp;<strong>Condotel Arena</strong>&nbsp;rất khan hiếm trong khi độ hot của sản phẩm kh&ocirc;ng ngừng gia tăng ch&iacute;nh v&igrave; thế Qu&yacute; kh&aacute;ch h&atilde;y nhanh tay nắm bắt cơ hội sở hữu thi&ecirc;n đường sống đẳng cấp n&agrave;y.</p>\r\n<p><strong>Để biết th&ecirc;m th&ocirc;ng tin về quỹ căn hot nhất c&ugrave;ng những ưu đ&atilde;i hấp dẫn, Qu&yacute; kh&aacute;ch vui l&ograve;ng đăng k&yacute; nhận th&ocirc;ng tin sớm nhất theo form dưới đ&acirc;y:&nbsp;</strong></p>\r\n<p>&lt;div class="form-detail"&gt;&lt;/div&gt;</p>\r\n<p><em>Ch&uacute;ng t&ocirc;i l&agrave; đại l&yacute; ph&acirc;n phối ch&iacute;nh thức dự &aacute;n Condotel The Arena Cam ranh, c&oacute; đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; t&acirc;m huyết trong c&ocirc;ng việc. H&atilde;y đến với ch&uacute;ng t&ocirc;i nắm bắt cơ hội &ldquo;v&agrave;ng&rdquo; của ch&iacute;nh s&aacute;ch ưu đ&atilde;i mới để t&igrave;m được ng&ocirc;i nh&agrave; l&yacute; tưởng ph&ugrave; hợp y&ecirc;u cầu v&agrave; điều kiện t&agrave;i ch&iacute;nh ngay h&ocirc;m nay</em></p>\r\n<p><em><strong>Hotline: &nbsp;0906.212.388 - 0902.252.584</strong></em></p>', 'condotel-la-gi-tai-sao-lai-dau-tu-vao-condotel-33', '/photos/shares/1508237510.jpg', 59, 'condotel là gì, tại sao lại đầu tư condotel', 'condotel là gì, tại sao lại đầu tư condotel', 0, NULL, NULL, '2017-10-17 03:51:50', '2017-11-18 17:09:08', 1, 2),
(34, 'Kiệt tác của sự tươi mới và mới lạ', '<p>Một trong những l&yacute; do <strong>Condotel The Arena Cam Ranh</strong> được giới thượng lưu lựa chọn l&agrave; nhờ hệ thống c&aacute;c tiện &iacute;ch cảnh quan đẳng cấp m&agrave; cư d&acirc;n được đặc quyền sử dụng. Khu nghỉ dưỡng bao gồm c&aacute;c tiện &iacute;ch đẳng cấp 5 sao đ&aacute;p ứng đầy đủ nhu cầu mua sắm, vui chơi, giải tr&iacute;, ẩm thực đến chăm s&oacute;c sức khỏe, y tế v&agrave; gi&aacute;o dục . Hơn thế nữa, hệ sinh th&aacute;i tiện &iacute;ch n&agrave;y lại nằm trọn trong kh&ocirc;ng gian thi&ecirc;n nhi&ecirc;n trong l&agrave;nh v&agrave; ri&ecirc;ng biệt, khiến cuộc sống thực sự l&agrave; một trải nghiệm sống &ldquo;nghỉ dưỡng&rdquo; ho&agrave;n hảo mỗi ng&agrave;y.</p>\r\n<p>Tại <strong>The Arena Panorama Cam Ranh</strong>, c&aacute;c kiến tr&uacute;c sư h&agrave;ng đầu đ&atilde; kiến tạo một kh&ocirc;ng gian sống ngập tr&agrave;n c&acirc;y xanh, hoa l&aacute;, c&ugrave;ng với c&aacute;c khu vui chơi, mua sắm&hellip;Mặt bằng tiện &iacute;ch&nbsp; Panorama The Arena Cam Ranh nổi bật với những thiết kế độc đ&aacute;o mang đậm chất nghỉ dưỡng, mang hơi hướng từ Địa Trung Hải. Thấu hiểu sở th&iacute;ch v&agrave; nhu cầu của kh&aacute;ch h&agrave;ng , chủ đầu tư đem đến một tổ hợp bao gồm tiện nghi: Bể bơi nước mặn lớn nhất Việt Nam, Thể thao dưới nước, D&ograve;ng s&ocirc;ng lười bao quanh dự &aacute;n, Nhạc nước, Thủy cung, Rạp chiếu phim ngo&agrave;i trời, Nh&agrave; h&agrave;ng, Gim, Spa, Poor Bar, Beach Bar club&hellip;</p>\r\n<p><strong>Kỳ quan Arena</strong>: l&agrave; nơi tổ chức c&aacute;c sự kiện lễ hội văn h&oacute;a s&ocirc;i động festival &acirc;m nhạc, nghệ thuật, v&otilde; thuật, ẩm thực&hellip; quanh năm thu h&uacute;t du kh&aacute;ch.</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="/photos/shares/0040.jpg" alt="hoạt động tại arenam" width="800" height="500" /></p>\r\n<p style="text-align: center;"><span style="color: #dd0055;"><em>Quảng trường trung t&acirc;m arena cam ranh</em></span></p>\r\n<p><strong>Quảng trường trung t&acirc;m</strong> sẽ l&agrave; sự kết hợp giữa những ph&acirc;n khu hoạt động nghệ thuật cộng đồng (trang trại s&aacute;ng t&aacute;c, nghệ thuật tạc tưởng&hellip;) v&agrave; ph&acirc;n khu Food Street nhộn nhịp &ndash; nơi du kh&aacute;ch c&oacute; thể kh&aacute;m ph&aacute; tất cả c&aacute;c đặc sản ẩm thực độc đ&aacute;o của Cam Ranh, Nha Trang, Kh&aacute;nh H&ograve;a.</p>\r\n<p>Đ&agrave;i phun nước trung t&acirc;m với chương tr&igrave;nh nhạc nước ấn tượng lu&ocirc;i cuốn du kh&aacute;ch v&agrave; cộng đồng xung quanh đến với quảng trường v&agrave; kỳ quan Arena s&ocirc;i động</p>\r\n<p>Phố đi bộ nhộn nhịp với c&aacute;c hoạt động vui chơi đường phố được tổ chức thường xuy&ecirc;n thu h&uacute;t cộng đồng, giới trẻ v&agrave; du kh&aacute;ch.</p>\r\n<p><strong>Seafood market</strong> l&agrave; nơi du kh&aacute;ch trải nghiệm cảm gi&aacute;c th&iacute;ch th&uacute; khi được tự tay bắt những loại hải sản c&ograve;n sống, tự tay chế biến v&agrave; thưởng thức ngay tại b&agrave;n hoặc c&oacute; thể tụ tập party tại khu Kitchen lougne với đầy đủ tiện nghi hỗ trợ.</p>\r\n<p>Kết hợp c&aacute;c loại h&igrave;nh thể thao giải tr&iacute; đa đạng địa h&igrave;nh thu h&uacute;t giới trẻ: b&atilde;i biển &ndash; rừng nhiệt đới &ndash; v&aacute;ch leo n&uacute;i &ndash; đồi c&aacute;t sắc m&agrave;u với những tr&ograve; chơi thể thao thư gi&atilde;n vui nhộn.</p>\r\n<p><strong>Bể bơi Olypic</strong> d&agrave;i 500m dọc b&atilde;i biển được thiết kế giật cấp 3 tầng độc đ&aacute;o để ph&acirc;n khu: bể bơi kho&aacute;ng n&oacute;ng, bể bơi nước mặn v&agrave; bể bơi nước ngọt, nơi tổ chức c&aacute;c hoạt động thể thao dưới nước hiện đại bậc nhất Việt Nam.</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="/photos/shares/0006.jpg" alt="Bể bơi d&agrave;i 500m" width="800" height="450" /></p>\r\n<p style="text-align: center;"><em><span style="color: #dd0055;">Bể bơi Olypic d&agrave;i 500m dọc b&atilde;i biển&nbsp;</span></em></p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p><span style="color: #dd0055;">Số lượng c&aacute;c căn&nbsp;<strong>Condotel Arena</strong>&nbsp;rất khan hiếm trong khi độ hot của sản phẩm kh&ocirc;ng ngừng gia tăng ch&iacute;nh v&igrave; thế Qu&yacute; kh&aacute;ch h&atilde;y nhanh tay nắm bắt cơ hội sở hữu thi&ecirc;n đường sống đẳng cấp n&agrave;y.</span></p>\r\n<p><span style="color: #dd0055;"><strong>Để biết th&ecirc;m th&ocirc;ng tin về quỹ căn hot nhất c&ugrave;ng những ưu đ&atilde;i hấp dẫn, Qu&yacute; kh&aacute;ch vui l&ograve;ng đăng k&yacute; nhận th&ocirc;ng tin sớm nhất theo form dưới đ&acirc;y:&nbsp;</strong></span></p>\r\n<div class="form-detail">&nbsp;</div>\r\n<p style="text-align: center;"><span style="color: #dd0055;"><strong>&nbsp;</strong></span></p>\r\n<p><em>Ch&uacute;ng t&ocirc;i l&agrave; đại l&yacute; ph&acirc;n phối ch&iacute;nh thức dự &aacute;n Condotel The Arena Cam ranh, c&oacute; đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; t&acirc;m huyết trong c&ocirc;ng việc. H&atilde;y đến với ch&uacute;ng t&ocirc;i nắm bắt cơ hội &ldquo;v&agrave;ng&rdquo; của ch&iacute;nh s&aacute;ch ưu đ&atilde;i mới để t&igrave;m được ng&ocirc;i nh&agrave; l&yacute; tưởng ph&ugrave; hợp y&ecirc;u cầu v&agrave; điều kiện t&agrave;i ch&iacute;nh ngay h&ocirc;m nay</em></p>\r\n<p><em><strong>Hotline: &nbsp;0906.212.388 - 0902.252.584</strong></em></p>', 'kiet-tac-cua-su-tuoi-moi-va-moi-la-34', '/photos/shares/1508570727.jpg', 38, 'Kiệt tác của sự tươi mới và mới lạ', 'Kiệt tác của sự tươi mới và mới lạ', 0, '0', '0', '2017-10-17 07:12:07', '2017-11-16 01:19:54', 7, 2),
(35, 'Điều gì khiến Arena Cam Ranh được mong đợi hơn Vinpearl Bãi Dài', '<h2><strong>Kỳ vọng về arena Cam Ranh hơn Vinperal B&atilde;i D&agrave;i</strong></h2>\r\n<p>Được mệnh danh l&agrave; &ldquo;<strong>thi&ecirc;n đường tr&ecirc;n mặt đất</strong>&rdquo; dự &aacute;n The Arena Cam Ranh được định v&iacute; l&agrave; sản phẩm bất động sản nghỉ dưỡng chiến lược của Vịnh Nha Trang trong năm 2017 v&agrave; hứa hẹn mở đầu cho cuộc hồi sinh của hơn 40 dự &aacute;n ở Cam Ranh.&nbsp;</p>\r\n<p><strong>Dự &aacute;n sở hữu vị tr&iacute; đẹp hơn cả Vinpearl B&atilde;i D&agrave;i</strong></p>\r\n<p>C&ocirc;ng tr&igrave;nh nằm tại mặt tiền đại lộ <strong>Nguyễn Tất Th&agrave;nh</strong> &ndash; trục đường xương sống nối Nha Trang &ndash; B&atilde;i D&agrave;i &ndash; Cảng h&agrave;ng kh&ocirc;ng quốc tế Cam R<span class="text_exposed_show">anh, thuận tiện di chuyển.&nbsp;</span></p>\r\n<p><span class="text_exposed_show">+&nbsp;<span style="color: #dd0055;"><strong>Từ The Arena tới s&acirc;n bay Cam Ranh: 9 ph&uacute;t l&aacute;i xe</strong></span></span></p>\r\n<p><span class="text_exposed_show">+&nbsp;<span style="color: #dd0055;"><strong>Tới trung t&acirc;m phố biển Nha Trang: 35 ph&uacute;t</strong></span></span></p>\r\n<p><span class="text_exposed_show">+&nbsp;<span style="color: #dd0055;"><strong>Dễ d&agrave;ng kết nối với Vinpearl B&atilde;i D&agrave;i, đảo B&igrave;nh Ba, B&igrave;nh Hưng&hellip;</strong></span></span></p>\r\n<p><strong>Quy m&ocirc; gấp 10 lần Vinpearl</strong></p>\r\n<p>Mặc d&ugrave; thuộc lớp &ldquo;đ&agrave;n em&rdquo; sinh sau, đẻ muộn so với Vinpearl B&atilde;i D&agrave;i thế nhưng <strong>The Arena</strong> lại vượt mặt <strong>Vinpearl</strong> cả về quy m&ocirc; v&agrave; thiết kế. Được x&acirc;y dựng tr&ecirc;n khu đất diện t&iacute;ch <strong>300 ha</strong> (trong khi đ&oacute; Vinpearl chỉ l&agrave; 26 ha) bao gồm c&aacute;c hạng mục c&ocirc;ng tr&igrave;nh: <strong>liền kề, shophouse, biệt thự v&agrave; 4 t&ograve;a Condotel</strong> x&acirc;y dựng theo h&igrave;nh v&ograve;m cung &ocirc;m trọn biển B&atilde;i D&agrave;i thơ mộng.</p>\r\n<p><strong>Tiện &iacute;ch nổi bật:</strong></p>\r\n<p>Nếu như Vinpearl B&atilde;i D&agrave;i l&agrave; khu nghỉ dưỡng y&ecirc;n tĩnh thanh b&igrave;nh nhưng thiếu thốn c&aacute;c tiện &iacute;ch th&igrave; tại The Arena bạn sẽ được lạc bước trong một thi&ecirc;n đường vui chơi giải tr&iacute;. gồm 200 tiện &iacute;ch trong đ&oacute; c&oacute; 40 tiện &iacute;ch đ&aacute;p ứng ti&ecirc;u chuẩn 5 sao với nhu cầu vui chơi, giải tr&iacute;, mua sắm, chăm s&oacute;c sức khỏe, gi&aacute;o dục mang đến cho cư d&acirc;n trải nghiệm nghỉ dưỡng ho&agrave;n hảo mỗi ng&agrave;y.</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="/photos/shares/0006.jpg" alt="TIện &iacute;ch nổi bật" width="800" height="500" /></p>\r\n<p style="text-align: center;"><span style="color: #dd0055;"><em>Bể bơi nước mắn lớn nhất việt nam d&agrave;i 500m dọc bờ biển</em></span></p>\r\n<p><strong>Ch&iacute;nh s&aacute;ch sở hữu:</strong></p>\r\n<p>Ở Vinpearl B&atilde;i D&agrave;i chủ sở hữu c&aacute;c căn biệt thự bắt buộc phải k&yacute; cam cho thu&ecirc; lại c&ugrave;ng chủ đầu tư, trong khi đ&oacute; kh&aacute;ch đầu tư The Arena được cấp sổ đỏ vĩnh viễn v&agrave; được t&ugrave;y quyền quyết định để ở hay cho thu&ecirc;.&nbsp;</p>\r\n<p><strong>Gi&aacute; b&aacute;n ph&ugrave; hợp với nhiều đối tượng kh&aacute;ch h&agrave;ng</strong></p>\r\n<p>Kh&ocirc;ng cần đến h&agrave;ng triệu đ&ocirc; để sở hữu một bất động sản nghỉ dưỡng. Chỉ từ 900 tri&ecirc;̣u bạn c&oacute; cơ hội sở hữu một căn hộ 5* tuyệt đẹp b&ecirc;n bờ biển B&atilde;i D&agrave;i.&nbsp;</p>\r\n<p>&ndash; Kh&aacute;ch h&agrave;ng:&nbsp;<span style="color: #dd0055;"><strong>chỉ cần đ&oacute;ng 30% tổng gi&aacute; trị CH sẽ nhận ngay căn hộ.</strong></span><br />&ndash; Ng&acirc;n h&agrave;ng:&nbsp;<span style="color: #dd0055;"><strong>Viettinbank cho vay tới 70% tổng GTCH</strong></span></p>\r\n<p><strong>-&nbsp;</strong>L&atilde;i xuất:&nbsp;<span style="color: #dd0055;"><strong>0% đến khi nhận nh&agrave;</strong></span></p>\r\n<p><strong>-&nbsp;</strong>Thời gian vay tối đa: <span style="color: #dd0055;"><strong>20 năm</strong></span></p>\r\n<p><strong>Panorama The Arena Cam ranh</strong>&nbsp;với m&ocirc; h&igrave;nh nghỉ dưỡng vui chơi giải tr&iacute; đẳng cấp chuẩn 5 sao.&nbsp;Đ&acirc;y l&agrave; xu hướng đầu tư ph&aacute;t triển hiệu quả tr&ecirc;n thế giới mang lại lợi nhuận lớn cho c&aacute;c nh&agrave; đầu tư tại Việt Nam.&nbsp;</p>\r\n<p><em>C&aacute;c th&ocirc;ng tin chi tiết về tiến độ dự &aacute;n sẽ được cập nhật thường xuy&ecirc;n, bạn c&oacute; thể đăng k&yacute; để cập nhật li&ecirc;n tục c&aacute;c th&ocirc;ng tin của ch&uacute;ng t&ocirc;i về dự &aacute;n Condotel The Arena Cam ranh.<br /></em><em>Xin cảm ơn!</em></p>\r\n<p><em>&lt;div class="form-detail"&gt;&lt;/div&gt;</em></p>\r\n<p><em>Ch&uacute;ng t&ocirc;i l&agrave; đại l&yacute; ph&acirc;n phối ch&iacute;nh thức dự &aacute;n Condotel The Arena Cam ranh, c&oacute; đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; t&acirc;m huyết trong c&ocirc;ng việc. H&atilde;y đến với ch&uacute;ng t&ocirc;i nắm bắt cơ hội &ldquo;v&agrave;ng&rdquo; của ch&iacute;nh s&aacute;ch ưu đ&atilde;i mới để t&igrave;m được ng&ocirc;i nh&agrave; l&yacute; tưởng ph&ugrave; hợp y&ecirc;u cầu v&agrave; điều kiện t&agrave;i ch&iacute;nh ngay h&ocirc;m nay</em></p>\r\n<p><span style="color: #dd0055;"><em><strong>Hotline: &nbsp;0906.212.388 - 0902.252.584</strong></em></span></p>\r\n<p>&nbsp;<strong>&gt;&gt;&gt;&nbsp;<a title=" Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng si&ecirc;u hấp dẫn HTLS l&ecirc;n đến 70%" href="/mat-bang.html">Mặt bằng dự &aacute;n The Arena Cam Ranh</a></strong></p>\r\n<p><strong>&gt;&gt;&gt;&nbsp;<a href="/tin-tuc/condotel-la-gi-tai-sao-lai-dau-tu-vao-condotel-33.html">Condotel l&agrave; g&igrave;, tại sao đầu tư v&agrave;o condotel l&agrave; xu hướng ?</a></strong></p>', 'dieu-gi-khien-arena-cam-ranh-duoc-mong-doi-hon-vinpearl-bai-dai-35', '/photos/shares/1508774958.jpg', 64, 'Kỳ vọng về arena Cam Ranh hơn Vinperal Bãi Dài', 'Kỳ vọng về arena Cam Ranh hơn Vinperal Bãi Dài', 0, NULL, NULL, '2017-10-23 09:09:19', '2017-11-16 23:13:57', 1, 2),
(36, 'Những thông tin cần thiết về chủ đầu tư Arena Cam Ranh', '<p>Ch&uacute;ng t&ocirc;i xin đưa ra những th&ocirc;ng tin mới nhất về chủ đầu tư Arena Cam Ranh chắc hẳn nh&agrave; đầu tư n&agrave;o cũng quan t&acirc;m:</p>\r\n<h2><span id="Thong_tin_chu_dau_tu_du_an_Arena_Cam_Ranh"><strong>Th&ocirc;ng tin chủ đầu tư dự &aacute;n Arena Cam Ranh</strong></span></h2>\r\n<p>Sau c&aacute;c dự &aacute;n đ&atilde; đi v&agrave;o hoạt động th&agrave;nh c&ocirc;ng rực rỡ tại Nha Trang. Chủ đầu tư Vịnh Nha Trang tiếp tục thực hiện dự &aacute;n tại B&atilde;i D&agrave;i Cam Ranh tr&ecirc;n quy m&ocirc; đất 29ha.</p>\r\n<p><img class="aligncenter wp-image-813" style="display: block; margin-left: auto; margin-right: auto;" src="http://thearenacamranh.vn/wp-content/uploads/2017/10/cong-ty-co-phan-dau-tu-xay-dung-vinh-nha-trang.png" sizes="(max-width: 500px) 100vw, 500px" srcset="http://thearenacamranh.vn/wp-content/uploads/2017/10/cong-ty-co-phan-dau-tu-xay-dung-vinh-nha-trang.png 300w, http://thearenacamranh.vn/wp-content/uploads/2017/10/cong-ty-co-phan-dau-tu-xay-dung-vinh-nha-trang-148x80.png 148w" alt="" width="500" height="270" /></p>\r\n<p>C&ocirc;ng ty CP đầu tư x&acirc;y dựng Vịnh Nha Trang th&agrave;nh lập từ năm 2014, c&oacute; trụ sở ch&iacute;nh tại số 2 Nguyễn Thị Minh Khai, Nha Trang, Kh&aacute;nh H&ograve;a. C&ocirc;ng ty tập trung củ yếu v&agrave;o x&acirc;y dựng bất động sản , du lịch nghỉ dưỡng.</p>\r\n<p>B&ecirc;n cạnh c&ograve;n c&oacute; sự hỗ trợ của c&aacute;c chủ lực bất động sản như C&ocirc;ng ty H&agrave; Quang Land v&agrave; nh&oacute;m nh&agrave; đầu tư từng sinh sống tại Nga.</p>\r\n<h2><span id="Thanh_cong_ngoai_mong_doi_cua_chu_dau_tu_Arena_Cam_Ranh"><strong>Th&agrave;nh c&ocirc;ng ngo&agrave;i mong đợi của chủ đầu tư Arena Cam &nbsp;Ranh</strong></span></h2>\r\n<p>T&iacute;nh từ thời điểm th&agrave;nh lập đến nay, bằng những nỗ lực cũng như &nbsp;sự kết hợp ho&agrave;n hảo giữa c&aacute;c đơn vị trong tổ chức. Với mục đ&iacute;ch mang đến &nbsp;những sản phẩm tương lại gi&aacute; trị, cuộc sống ho&agrave;n mỹ cho kh&aacute;ch h&agrave;ng.</p>\r\n<p><img class="aligncenter wp-image-793 size-full" src="http://thearenacamranh.vn/wp-content/uploads/2017/10/c%C3%B4ng-ty-v%E1%BB%8Bnh-nha-trang.jpg" sizes="(max-width: 800px) 100vw, 800px" srcset="http://thearenacamranh.vn/wp-content/uploads/2017/10/c&ocirc;ng-ty-vịnh-nha-trang.jpg 800w, http://thearenacamranh.vn/wp-content/uploads/2017/10/c&ocirc;ng-ty-vịnh-nha-trang-300x200.jpg 300w, http://thearenacamranh.vn/wp-content/uploads/2017/10/c&ocirc;ng-ty-vịnh-nha-trang-768x513.jpg 768w, http://thearenacamranh.vn/wp-content/uploads/2017/10/c&ocirc;ng-ty-vịnh-nha-trang-120x80.jpg 120w" alt="" width="800" height="534" /></p>\r\n<p>Chủ đầu tư Vịnh Nha Trang đ&atilde; s&aacute;ng suốt được t&iacute;n nhiệm v&agrave;o vị tr&iacute; c&aacute;c giai thưởng lớn trong nước v&agrave; to&agrave;n Ch&acirc;u &Aacute; như:</p>\r\n<ul>\r\n<li>Giải thưởng Ph&aacute;t triển Căn hộ tốt nhất</li>\r\n<li>Giải thưởng kiến tr&uacute;c kh&aacute;ch sạn ấn tượng nhất Việt Nam 2017 (Asia Pacific Property Award)</li>\r\n<li>Giải thưởng thiết kế kiến tr&uacute;c căn hộ tốt ấn tượng nhất tại Việt Nam (Vietnam Property Award)</li>\r\n<li>Giải thưởng đơn vị ph&aacute;t triển nh&agrave; ở tốt nhất Nha Trang 2017 (Vietnam Property Award )</li>\r\n</ul>\r\n<h2><span id="Nhin_lai_nhung_du_an_tam_co_cua_chu_dau_tu_Vinh_Nha_Trang"><strong>Nh&igrave;n lại những dự &aacute;n tầm cỡ của chủ đầu tư Vịnh Nha Trang</strong></span></h2>\r\n<p>Trước đ&oacute;, đơn vị đ&atilde; sớm sở hữu ri&ecirc;ng những dự &aacute;n lớn như : đ&ocirc; thị Venesia ph&iacute;a T&acirc;y th&agrave;nh phố Nha Trang với quy m&ocirc; 108 ha c&ugrave;ng c&aacute;c khu biệt thự, hộ d&acirc;n cư, chuỗi kh&aacute;ch sạn biệt thự nghỉ dưỡng, c&acirc;u lạc bộ du thuyền. Tiếp đến l&agrave; c&aacute;c dự &aacute;n đ&atilde; đi v&agrave;o hoạt động với 100 % lượng căn hộ được l&agrave;m chủ như:</p>\r\n<p><strong>Dự &aacute;n Panorama Nha Trang</strong></p>\r\n<p><strong>Tổ hợp nghỉ dưỡng Cam Ranh City Gate</strong></p>\r\n<p><strong>Căn hộ cao cấp Panorama City Nha Trang</strong></p>\r\n<p><strong>Dự &aacute;n phức hợp nghỉ dưỡng The Arena Cam Ranh</strong></p>\r\n<p><strong>Căn hộ cao cấp Panorama H&agrave; Nội</strong></p>\r\n<p>Tận dụng tiềm năng tại v&ugrave;ng đất hoang sơ c&aacute;t v&agrave;ng lung linh xinh đẹp, Vinh Nha Trang đ&atilde; chiếm trọn phần đất đẹp nhất B&atilde;i D&agrave;i, Cam Ranh để bắt đầu với dự &aacute;n Arena Cam Ranh đang được rất nhiều nh&agrave; đầu tư mong đợi.</p>\r\n<h2><span id="Ben_duyen_cung_du_an_Arena_Cam_Ranh"><strong>B&eacute;n duy&ecirc;n c&ugrave;ng dự &aacute;n Arena Cam Ranh</strong></span></h2>\r\n<p>Tiếp nối th&agrave;nh c&ocirc;ng v&agrave; uy t&iacute;n tr&ecirc;n thị trường, dự &aacute;n Arena Cam Ranh đ&atilde; được chủ đầu tư Vịnh Nha Trang x&acirc;y dựng v&agrave;o qu&yacute; III năm 2017, dự kiến b&agrave;n giao v&agrave;o qu&yacute; II/2019. Đ&acirc;y l&agrave; một dự &aacute;n Condotel đầu ti&ecirc;n tại B&atilde;i D&agrave;i, Cam Ranh.</p>\r\n<p><img class="aligncenter wp-image-686" src="http://thearenacamranh.vn/wp-content/uploads/2017/09/anh-du-an-the-anrena-cam-ranh-1.jpg" sizes="(max-width: 800px) 100vw, 800px" srcset="http://thearenacamranh.vn/wp-content/uploads/2017/09/anh-du-an-the-anrena-cam-ranh-1.jpg 1800w, http://thearenacamranh.vn/wp-content/uploads/2017/09/anh-du-an-the-anrena-cam-ranh-1-300x167.jpg 300w, http://thearenacamranh.vn/wp-content/uploads/2017/09/anh-du-an-the-anrena-cam-ranh-1-768x427.jpg 768w, http://thearenacamranh.vn/wp-content/uploads/2017/09/anh-du-an-the-anrena-cam-ranh-1-1024x569.jpg 1024w, http://thearenacamranh.vn/wp-content/uploads/2017/09/anh-du-an-the-anrena-cam-ranh-1-144x80.jpg 144w" alt="" width="800" height="444" /></p>\r\n<p style="text-align: center;"><span style="color: #dd0055;"><em>Mặt bằng tổng quan dự &aacute;n arena cam ranh</em></span></p>\r\n<p>C&ugrave;ng sự kết hợp của c&aacute;c đơn vị đối t&aacute;c lớn:</p>\r\n<ul>\r\n<li><span style="color: #dd0055;"><strong>Đơn vị thiết kế: C&ocirc;ng ty TNHH Li&ecirc;n Minh Thiết Kế QUốc Tế Finko</strong></span></li>\r\n<li><span style="color: #dd0055;"><strong>Đơn vị gi&aacute;m s&aacute;t: C&ocirc;ng ty TNHH Artelia Việt Nam</strong></span></li>\r\n<li><span style="color: #dd0055;"><strong>Đơn vị thi c&ocirc;ng: C&ocirc;ng ty TNHH X&acirc;y Dựng AN Phong</strong></span></li>\r\n<li><span style="color: #dd0055;"><strong>Đơn vị vận h&agrave;nh: Tập đo&agrave;n Absolute Hotels Services</strong></span></li>\r\n<li><span style="color: #dd0055;"><strong>Đơn vị truyền th&ocirc;ng: C&ocirc;ng ty TNHH L&ecirc; v&agrave; Anh Em</strong></span></li>\r\n<li><span style="color: #dd0055;"><strong>Ng&acirc;n h&agrave;ng: Viettinbank</strong></span></li>\r\n</ul>\r\n<p>Bằng sự kết hợp ho&agrave;n hảo chuy&ecirc;n nghiệp tr&ecirc;n, hứa hẹn một arena cam ranh đầu ti&ecirc;n tại B&atilde;i D&agrave;i v&ocirc; c&ugrave;ng đăng cấp, hướng tới gi&aacute; trị đ&iacute;ch thực cho du kh&aacute;ch.</p>\r\n<p>Hiện nay, chủ đầu tư dự &aacute;n Arena Cam Ranh đang xem x&eacute;t v&agrave; đưa ra những ch&iacute;nh s&aacute;ch mới nhất d&agrave;nh cho nh&agrave; đầu tư dự &aacute;n Arena Cam Ranh. Qu&yacute; vị quan t&acirc;m li&ecirc;n hệ tới ch&uacute;ng t&ocirc;i để nhận sự tư vấn miễn ph&iacute; qua hotline:&nbsp;<a title="0968.893.096" href="tel:0968893096">0968.893.096</a></p>\r\n<p><em>C&aacute;c th&ocirc;ng tin chi tiết về tiến độ dự &aacute;n sẽ được cập nhật thường xuy&ecirc;n, bạn c&oacute; thể đăng k&yacute; để cập nhật li&ecirc;n tục c&aacute;c th&ocirc;ng tin của ch&uacute;ng t&ocirc;i về dự &aacute;n Condotel The Arena Cam ranh.<br /></em><em>Xin cảm ơn!</em></p>\r\n<p><em>&lt;div class="form-detail&gt;&lt;/div&gt;</em></p>\r\n<p><em>Ch&uacute;ng t&ocirc;i l&agrave; đại l&yacute; ph&acirc;n phối ch&iacute;nh thức dự &aacute;n Condotel The Arena Cam ranh, c&oacute; đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; t&acirc;m huyết trong c&ocirc;ng việc. H&atilde;y đến với ch&uacute;ng t&ocirc;i nắm bắt cơ hội &ldquo;v&agrave;ng&rdquo; của ch&iacute;nh s&aacute;ch ưu đ&atilde;i mới để t&igrave;m được ng&ocirc;i nh&agrave; l&yacute; tưởng ph&ugrave; hợp y&ecirc;u cầu v&agrave; điều kiện t&agrave;i ch&iacute;nh ngay h&ocirc;m nay</em></p>\r\n<p><em><strong>Hotline: &nbsp;0906.212.388 - 0902.252.584</strong></em></p>\r\n<p>&nbsp;<strong>&gt;&gt;&gt;&nbsp;<a title=" Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng si&ecirc;u hấp dẫn HTLS l&ecirc;n đến 70%" href="/mat-bang.html">Mặt bằng dự &aacute;n The Arena Cam Ranh</a></strong></p>\r\n<p><strong>&gt;&gt;&gt;&nbsp;<a href="/tin-tuc/condotel-la-gi-tai-sao-lai-dau-tu-vao-condotel-33.html">Condotel l&agrave; g&igrave;, tại sao đầu tư v&agrave;o condotel l&agrave; xu hướng ?</a></strong></p>', 'nhung-thong-tin-can-thiet-ve-chu-dau-tu-arena-cam-ranh-36', '/photos/shares/1509443531.jpg', 69, 'Chủ đầu tư Arena Cam Ranh', 'Chủ đầu tư Arena Cam ranh', 0, '1', '0', '2017-10-31 02:52:11', '2017-11-20 02:20:56', 1, 2),
(37, 'LỢI ÍCH ĐẦU TƯ VÀ PHƯƠNG ÁN KINH DOANH THE ARENA CAM RANH', '<section id="poka_html-7" class="widget widget_poka_html">\r\n<div id="LoiIchDauTu" class="screen-section condotel-5 padding-50 loi-ich-home">\r\n<div class="screen-overlay ">\r\n<div class="ui stackable grid container">\r\n<div class=" two column row middle-content">\r\n<div class=" column">\r\n<div class="content">\r\n<h2 class="widget-header">&nbsp; &nbsp;LỢI &Iacute;CH ĐẦU TƯ THE ARENA CAM RANH</h2>\r\n<ul class="normal-list">\r\n<li>\r\n<div class="loi-ich-home-icon">1</div>\r\n<div class="loi-ich-home-content">\r\n<h3>VỊ TR&Iacute; T&Ocirc;N VINH ĐẲNG CẤP</h3>\r\n<div class="loi-ich-home-content-small">\r\n<p>&nbsp;Tọa lạc vị tr&iacute; đắc địa b&ecirc;n vịnh Cam Ranh,&nbsp;<strong>The Arena Cam Ranh&nbsp;</strong>như &ldquo; h&ograve;n ngọc&rdquo; đang được m&agrave;i dũa v&agrave; khai hoang mang đến những gi&aacute; trị tiềm năng.</p>\r\n<p>&nbsp;C&aacute;ch s&acirc;n bay quốc tế Cam Ranh&nbsp;<strong>9 ph&uacute;t</strong></p>\r\n<p>&nbsp;C&aacute;ch trung t&acirc;m TP. Cam Ranh&nbsp;<strong>20 ph&uacute;t</strong></p>\r\n<p>&nbsp;C&aacute;ch trung t&acirc;m TP. Nha Trang&nbsp;<strong>35 ph&uacute;t</strong></p>\r\n</div>\r\n</div>\r\n</li>\r\n<li>\r\n<div class="loi-ich-home-icon">2</div>\r\n<div class="loi-ich-home-content">\r\n<h3>THIẾT KẾ HO&Agrave;N HẢO &amp; ĐỘC Đ&Aacute;O</h3>\r\n<div class="loi-ich-home-content-small">\r\n<p>&nbsp;Dưới b&agrave;n tay t&agrave;i hoa của nh&agrave; kiến tr&uacute;c sư thuộc đơn vị thiết kế&nbsp;<strong>C&ocirc;ng Ty TNHH Li&ecirc;n Minh Thiết Kế Quốc Tế Finko (Finko).</strong>&nbsp;<strong>The Arena Cam Ranh</strong>&nbsp;kế thừa n&eacute;t thiết kế đặc biệt của hai phong c&aacute;ch thiết kế căn hộ kh&aacute;ch sạn v&agrave; biệt thự nghỉ dưỡng.</p>\r\n</div>\r\n</div>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section id="poka_html-36" class="widget widget_poka_html">\r\n<div id="" class="screen-section condotel-5 loi-ich-home">\r\n<div class="screen-overlay ">\r\n<div class="ui stackable grid container">\r\n<div class=" two column row middle-content">\r\n<div class=" column">\r\n<div class="content">\r\n<ul class="normal-list">\r\n<li>\r\n<div class="loi-ich-home-icon">3</div>\r\n<div class="loi-ich-home-content">\r\n<h3>HẠ TẦNG CƠ SỞ HO&Agrave;N THIỆN</h3>\r\n<div class="loi-ich-home-content-small">\r\n<p>&nbsp;B&atilde;i D&agrave;i, Cam Ranh được định hướng sẽ l&agrave; trung t&acirc;m du lịch mới của Kh&aacute;nh H&ograve;a, được kỳ vọng sẽ trở th&agrave;nh &ldquo;c&aacute;i rốn&rdquo; du lịch thu h&uacute;t kh&aacute;ch bậc nhất Kh&aacute;nh H&ograve;a kh&ocirc;ng k&eacute;m g&igrave; b&atilde;i biển Nha Trang</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li>\r\n<div class="loi-ich-home-icon">4</div>\r\n<div class="loi-ich-home-content">\r\n<h3>SỞ HỮU NG&Agrave;N TIỆN &Iacute;CH ĐẲNG CẤP 5*</h3>\r\n<div class="loi-ich-home-content-small">\r\n<p>&nbsp;Nội khu&nbsp;<strong>The Arena Cam Ranh</strong>&nbsp;sẽ được t&iacute;ch hợp tổ hợp nghỉ dưỡng v&agrave; giải tr&iacute; s&ocirc;i động hiện đại, bậc nhất bao gồm: K&igrave; quan Arena, quảng trường trung t&acirc;m, đ&agrave;i phun nước, phố đi bộ, Seafood market, Bể bơi Olypic d&agrave;i 500m dọc b&atilde;i biển&hellip;.</p>\r\n<p><img src="/photos/shares/vi-tri-the-arena-cam-ranh-01-min.jpg" alt="tổng quan dự &aacute;n" width="800" /></p>\r\n<p style="text-align: center;"><span style="color: #dd0055;"><em>Tổng qua dự &aacute;n condotel arena cam ranh</em></span></p>\r\n<p>&nbsp;<strong>PHƯƠNG &Aacute;N KHAI TH&Aacute;C &ndash; KINH DOANH</strong></p>\r\n<ol>\r\n<li>ĐỂ Ở :</li>\r\n</ol>\r\n<p>Mua để ở, tự chăm s&oacute;c căn hộ:&nbsp;Sau khi mua, kh&aacute;ch h&agrave;ng chỉ chịu chi ph&iacute; quản l&yacute;, chi ph&iacute; chung như bao căn hộ để ở kh&aacute;c. Chủ sở hữu cũng c&oacute; thể linh động sử dụng hoặc cho thu&ecirc; căn hộ tự do căn hộ&hellip;Hoặc kh&aacute;ch h&agrave;ng c&oacute; thể k&yacute; gửi cho thu&ecirc; 1 thời gian sau hết thời gian k&yacute; gửi c&oacute; thể lấy lại để ở được&hellip;</p>\r\n<ol start="2">\r\n<li>KINH DOANH :</li>\r\n</ol>\r\n<p>Mua v&agrave; hợp đồng ủy thác cho thu&ecirc; lại&nbsp;bởi Đơn vị quản lý v&acirc;̣n hành Tập Đo&agrave;n Absolute Hotels Services (AHS), thời hạn t&ocirc;́i thi&ecirc;̉u 5 năm. H&igrave;nh thức n&agrave;y giống đ&acirc;̀u tư Condotel, chia sẻ lợi nhu&acirc;̣n giữa KH và đơn vị v&acirc;̣n hành 90/10. Sau khi thanh lý hợp đồng, kh&aacute;ch h&agrave;ng c&oacute; thể sử dụng lại căn hộ tự do như t&agrave;i sản của m&igrave;nh&hellip;</p>\r\n<ol start="3">\r\n<li>CHO THU&Ecirc; :</li>\r\n</ol>\r\n<p>Mua v&agrave; sử dụng dịch vụ chăm s&oacute;c của b&ecirc;n cung c&acirc;́p dịch vụ, duy tr&igrave; để đảm bảo căn hộ lu&ocirc;n đạt ti&ecirc;u chuẩn 5 sao. Sau đó Kh&aacute;ch h&agrave;ng tự do kinh doanh hoặc cho thu&ecirc; t&ugrave;y &yacute;. Gợi &yacute;: Kh&aacute;ch h&agrave;ng c&oacute; thể k&yacute; gửi c&aacute;c đơn vị lữ h&agrave;nh k&yacute; gửi cho thu&ecirc;. Hợp đồng do kh&aacute;ch h&agrave;ng thỏa thuận với c&aacute;c đơn vị lữ h&agrave;nh.</p>\r\n<p><em>C&aacute;c th&ocirc;ng tin chi tiết về tiến độ dự &aacute;n sẽ được cập nhật thường xuy&ecirc;n, bạn c&oacute; thể đăng k&yacute; để cập nhật li&ecirc;n tục c&aacute;c th&ocirc;ng tin của ch&uacute;ng t&ocirc;i về dự &aacute;n Condotel The Arena Cam ranh.<br /></em><em>Xin cảm ơn!</em></p>\r\n<div class="form-detail">&nbsp;</div>\r\n<p><em>Ch&uacute;ng t&ocirc;i l&agrave; đại l&yacute; ph&acirc;n phối ch&iacute;nh thức dự &aacute;n Condotel The Arena Cam ranh, c&oacute; đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; t&acirc;m huyết trong c&ocirc;ng việc. H&atilde;y đến với ch&uacute;ng t&ocirc;i nắm bắt cơ hội &ldquo;v&agrave;ng&rdquo; của ch&iacute;nh s&aacute;ch ưu đ&atilde;i mới để t&igrave;m được ng&ocirc;i nh&agrave; l&yacute; tưởng ph&ugrave; hợp y&ecirc;u cầu v&agrave; điều kiện t&agrave;i ch&iacute;nh ngay h&ocirc;m nay</em></p>\r\n<p><em><strong>Hotline: &nbsp;0906.212.388 - 0902.252.584</strong></em></p>\r\n</div>\r\n</div>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'loi-ich-dau-tu-va-phuong-an-kinh-doanh-the-arena-cam-ranh-37', '/photos/shares/1509525442.jpg', 57, 'LỢI ÍCH ĐẦU TƯ VÀ PHƯƠNG ÁN KINH DOANH THE ARENA CAM RANH', 'LỢI ÍCH ĐẦU TƯ VÀ PHƯƠNG ÁN KINH DOANH THE ARENA CAM RANH', 0, '0', '0', '2017-11-01 01:37:22', '2017-11-20 02:49:41', 1, 2);
INSERT INTO `posts` (`id`, `post`, `description`, `slug`, `avatar`, `views`, `seo_title`, `seo_description`, `is_hidden`, `hot`, `news`, `created_at`, `updated_at`, `category_id`, `user_id`) VALUES
(38, 'Tập đoàn Absolute Hotel Services (AHS) là ai ?', '<h3 class="post-title entry-title">Tập đo&agrave;n Absolute Hotel Services (AHS)- Đơn Vị Quản L&yacute; Arena Cam Ranh l&agrave; ai ?</h3>\r\n<p style="font-weight: 400;">Tập đo&agrave;n&nbsp;Abslute&nbsp;&nbsp;Hotel Services&nbsp;(<a href="http://www.absolutehotelservices.com/">www.absolutehotelservices.com</a>)&nbsp;cung cấp c&aacute;c dịch vụ tư vấn v&agrave; quản l&yacute; kh&aacute;ch sạn độc đ&aacute;o theo từng y&ecirc;u cầu ri&ecirc;ng biệt, bao gồm: Dịch vụ Tư vấn về Marketing v&agrave; Nghi&ecirc;n cứu Khả thi t&ugrave;y theo y&ecirc;u cầu của mỗi kh&aacute;ch h&agrave;ng, bao gồm ba lựa chọn: Nghi&ecirc;n cứu định hướng thị trường kh&aacute;ch sạn, nghi&ecirc;n cứu thị trường v&agrave; t&iacute;nh khả thi về phương diện t&agrave;i ch&iacute;nh, nghi&ecirc;n cứu t&iacute;nh khả thi của thị trường v&agrave; thương hiệu; Đại diện cho Chủ đầu tư; Tư vấn Quy hoạch Tổng thể; Tư vấn Trước Khai trương; Tư vấn x&acirc;y dựng thương hiệu/ Nhận dạng thương hiệu; Dịch vụ quản l&yacute; Kh&aacute;ch sạn từ khi cung cấp c&aacute;c dịch vụ Trợ gi&uacute;p Kỹ thuật v&agrave; Hỗ trợ Trước Khai trương đến khi quản l&yacute; kh&aacute;ch sạn cho c&aacute;c kh&aacute;ch sạn v&agrave; khu nghỉ dưỡng c&oacute; sử dụng hoặc kh&ocirc;ng sử dụng thương hiệu.&nbsp;C&ocirc;ng ty hiện đang&nbsp;sở hữu&nbsp;c&aacute;c thương hiệu&nbsp;kh&aacute;ch sạn&nbsp;như: Arena Cam Ranh, U&nbsp;Hotels &amp; Resorts,&nbsp;Eastin Hotels, Eastin Residences&nbsp;v&agrave;&nbsp;Eastin&nbsp;Easy&nbsp;v&agrave; trực tiếp&nbsp;quản l&yacute;&nbsp;c&aacute;c&nbsp;kh&aacute;ch sạn&nbsp;theo thương hiệu.&nbsp;Absolute Hotel Services c&oacute; trụ sở ch&iacute;nh tại Bangkok, Th&aacute;i lan; văn ph&ograve;ng Absolute Hotel Services Indochina tại H&agrave; Nội phụ tr&aacute;ch thị trường Việt Nam, Campuchia v&agrave; L&agrave;o. Văn ph&ograve;ng Absolute Hotel Services India tại Mumbai phụ tr&aacute;ch thị trường Ấn độ, Maldives, Nepal, Bangladesh, Mauritius, Sri Lanka v&agrave; Trung Đ&ocirc;ng.&nbsp;Theo d&otilde;i trang Facebook của tập đo&agrave;n tại</p>\r\n<p style="font-weight: 400;"><a href="http://www.facebook.com/absolutehotelservices">www.facebook.com/absolutehotelservices</a></p>\r\n<p style="font-weight: 400;"><strong>Vế chuỗi Kh&aacute;ch sạn v&agrave; Khu nghỉ dưỡng U Hotels &amp; Resorts</strong></p>\r\n<p style="font-weight: 400;">(<a href="/">Condotel Arena Cam Ranh</a>)</p>\r\n<p style="font-weight: 400;"><span style="font-weight: 400;">Thương hiệu&nbsp;<strong>Condotel Arena Cam Ranh</strong>&nbsp;hướng tới việc đ&aacute;p ứng mối quan t&acirc;m v&agrave; sự kỳ vọng của kh&aacute;ch h&agrave;ng hiện nay. </span><strong>Area Cam Ranh</strong>&nbsp;l&agrave; một thương hiệu kh&aacute;ch sạn cao cấp với 90% view biển m&agrave; ở đ&oacute; du kh&aacute;ch c&oacute; thể nhận ra n&eacute;t đẹp đẳng c&acirc;p trong từng chi tiết thiết kế hiện đại, đồng thời chất lượng dịch vụ v&agrave; c&aacute;c tiện &iacute;ch thỏa m&atilde;n tr&iacute; t&ograve; m&ograve; của những ai muốn kh&aacute;m ph&aacute; v&agrave; tận hưởng cảnh quan nơi đến.</p>\r\n<p style="font-weight: 400;">Sự độc đ&aacute;o trong dịch vụ của thương hiệu <strong>Arena</strong> bao gồm: dịch vụ ph&ograve;ng 24 giờ, cho ph&eacute;p kh&aacute;ch sử dụng ph&ograve;ng 24 giờ t&iacute;nh từ l&uacute;c nhận ph&ograve;ng; bữa s&aacute;ng được phục vụ theo y&ecirc;u cầu của kh&aacute;ch, v&agrave;o bất kỳ l&uacute;c n&agrave;o, ở bất kỳ nơi đ&acirc;u; kh&ocirc;ng t&iacute;nh ph&iacute; phụ trội cước ph&iacute; gọi điện thoại trong nước v&agrave; quốc tế, lựa chọn trước c&aacute;c tiện nghi như gối, tr&agrave;, nhạc v&agrave; x&agrave; ph&ograve;ng từ chương tr&igrave;nh &ldquo;bạn chọn&rdquo; trực tuyến. C&aacute;c dịch vụ n&agrave;y được cung cấp nhằm đảm bảo cho du kh&aacute;ch c&oacute; được kỳ nghỉ ho&agrave;n to&agrave;n thoải m&atilde;i v&agrave; thư gi&atilde;n để nạp lại năng lượng v&agrave; kết nối với cuộc sống, m&ocirc;i trường địa phương nơi kh&aacute;ch đến du lịch, mang lại những khoảnh khắc đ&aacute;ng nhớ nhất của cu&ocirc;c sống. Theo d&otilde;i trang Facebook của ch&uacute;ng t&ocirc;i tại</p>\r\n<p style="font-weight: 400;"><a href="https://www.facebook.com/condotelarenacamranh.com.vn/">www.facebook.com/condotelarenacamranh.com.vn/</a></p>\r\n<p style="font-weight: 400;">&nbsp;</p>\r\n<p style="font-weight: 400;"><em>C&aacute;c th&ocirc;ng tin chi tiết về tiến độ dự &aacute;n sẽ được cập nhật thường xuy&ecirc;n, bạn c&oacute; thể đăng k&yacute; để cập nhật li&ecirc;n tục c&aacute;c th&ocirc;ng tin của ch&uacute;ng t&ocirc;i về dự &aacute;n Condotel The Arena Cam ranh.<br /></em><em>Xin cảm ơn!</em></p>\r\n<p style="font-weight: 400;"><em>&lt;div class="form-detail"&gt;&lt;/div&gt;</em></p>\r\n<p><em>Ch&uacute;ng t&ocirc;i l&agrave; đại l&yacute; ph&acirc;n phối ch&iacute;nh thức dự &aacute;n Condotel The Arena Cam ranh, c&oacute; đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; t&acirc;m huyết trong c&ocirc;ng việc. H&atilde;y đến với ch&uacute;ng t&ocirc;i nắm bắt cơ hội &ldquo;v&agrave;ng&rdquo; của ch&iacute;nh s&aacute;ch ưu đ&atilde;i mới để t&igrave;m được ng&ocirc;i nh&agrave; l&yacute; tưởng ph&ugrave; hợp y&ecirc;u cầu v&agrave; điều kiện t&agrave;i ch&iacute;nh ngay h&ocirc;m nay</em></p>\r\n<p><em><strong>Hotline: &nbsp;0906.212.388 - 0902.252.584</strong></em></p>\r\n<p>&nbsp;<strong>&gt;&gt;&gt;&nbsp;<a title=" Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng si&ecirc;u hấp dẫn HTLS l&ecirc;n đến 70%" href="/mat-bang.html">Mặt bằng dự &aacute;n The Arena Cam Ranh</a></strong></p>\r\n<p><strong>&gt;&gt;&gt;&nbsp;<a href="/tin-tuc/condotel-la-gi-tai-sao-lai-dau-tu-vao-condotel-33.html">Condotel l&agrave; g&igrave;, tại sao đầu tư v&agrave;o condotel l&agrave; xu hướng ?</a></strong></p>', 'tap-doan-absolute-hotel-services-ahs-la-ai-38', '/photos/shares/1509851910.jpg', 67, 'Tập đoàn Absolute Hotel Services (AHS) là ai ?', 'Tập đoàn Absolute Hotel Services (AHS) là ai ?', 0, NULL, NULL, '2017-11-04 20:18:30', '2017-11-20 01:21:51', 1, 2),
(39, 'Kiến Trúc Sư Của Dòng Limited', '<p><strong>SỰ KH&Aacute;C BIẾT GIỮA C&Aacute;C ĐƠN VỊ THIẾT KẾ</strong></p>\r\n<p><strong>FINKO&nbsp;</strong> l&agrave; c&ocirc;ng ty đầu ti&ecirc;n đưa ra kh&aacute;i niệm &ldquo;li&ecirc;n minh thiết kế&rdquo; với sự đề cao việc phối hợp của kiến tr&uacute;c sư v&agrave; nhiều nh&agrave; tư vấn kh&aacute;c về vận h&agrave;nh quản l&yacute;, giao th&ocirc;ng, cảnh quan, chiếu s&aacute;ng, nh&agrave; thầu XD, nh&agrave; cung cấp vật liệu, nh&agrave; thầu nội thất.</p>\r\n<p><strong><em><a href="/tin-tuc/tap-doan-absolute-hotel-services-ahs-la-ai-38.html">TẬP ĐO&Agrave;N ABSOLUTE HOTEL SERVICES (AHS) L&Agrave; AI ?</a></em></strong></p>\r\n<p><strong><em><a href="/tin-tuc/nhung-thong-tin-can-thiet-ve-chu-dau-tu-arena-cam-ranh-36.html">NHỮNG TH&Ocirc;NG TIN CẦN THIẾT VỀ CHỦ ĐẦU TƯ ARENA CAM RANH</a></em></strong></p>\r\n<p>Điều n&agrave;y dường như kh&aacute;c biệt ho&agrave;n to&agrave;n với c&aacute;c c&ocirc;ng ty kiến tr&uacute;c truyền thống hiện nay khi Kiến tr&uacute;c sư chỉ vẽ ra c&ocirc;ng tr&igrave;nh lung linh ho&agrave;ng tr&aacute;ng ở dạng 3D v&agrave; sau đ&oacute; &ldquo;hết nhiệm vụ&rdquo;. Với <strong>FINKO</strong>, Kiến tr&uacute;c sư kh&ocirc;ng phải l&agrave; thần th&aacute;nh v&agrave; c&ocirc;ng tr&igrave;nh Kiến tr&uacute;c kh&ocirc;ng phải l&agrave; bản vẽ 3D, n&oacute; cần c&oacute; lối v&agrave;o ra an to&agrave;n, cần c&oacute; nền m&oacute;ng vững chắc, cần được x&acirc;y dựng v&agrave; ho&agrave;n thiện bằng vật liệu tốt, cần tho&aacute;ng m&aacute;t v&agrave; ấm &aacute;p, cần c&oacute; c&acirc;y xanh hoa l&aacute;, cần được t&ocirc;n vinh bằng &aacute;nh s&aacute;ng. C&ocirc;ng tr&igrave;nh chỉ thật sự ho&agrave;n hảo khi c&oacute; sự li&ecirc;n minh n&agrave;y</p>\r\n<p>&ldquo;Ở FINKO, cung cấp dịch vụ từ khi bắt đầu đến khi ho&agrave;n th&agrave;nh c&ocirc;ng tr&igrave;nh v&agrave; thấy c&oacute; tr&aacute;ch nhiệm kiểm so&aacute;t chi ph&iacute; ở mức hợp l&yacute; nhất. C&aacute;c kiến tr&uacute;c sư FINKO thường xuy&ecirc;n l&agrave;m việc với nh&agrave; thầu v&agrave; nh&agrave; cung cấp vật liệu từ giai đoạn &yacute; tưởng v&igrave; việc chọn lựa vật liệu quyết định nhan sắc của c&ocirc;ng tr&igrave;nh. Tự đề nghị đi c&ugrave;ng với Chủ đầu tư sang nước ngo&agrave;i chọn vật liệu v&agrave; đồ nội thất cho dự &aacute;n <strong>The Arena Cam Ranh Nha Trang&nbsp;</strong>v&igrave; thấy đấy hiển nhi&ecirc;n l&agrave; tr&aacute;ch nhiệm của người thiết kế".</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="/photos/shares/1508563363.jpg" alt="tổng qua the arena " width="800" /></p>\r\n<p style="text-align: center;"><span style="color: #dd0055;"><em>tổng quan dự &aacute;n the arena được Finko thiết kế</em></span></p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p>Địa chỉ c&ocirc;ng ty:</p>\r\n<p>Văn ph&ograve;ng Berlin:</p>\r\n<p>82 Kurfuerstenstr. 82</p>\r\n<p>10787 Berlin Germany</p>\r\n<p>Văn ph&ograve;ng TPHCM:</p>\r\n<p>307-4&nbsp;Nguyen Van Troi Str,</p>\r\n<p>1st Ward, Dist. Tan BInh</p>\r\n<p>D&nbsp;+84 8 3844 0143; 3844 0144</p>\r\n<p><a href="mailto:finko@finko-ida.org">finko@finko-ida.org</a></p>\r\n<p><em>C&aacute;c th&ocirc;ng tin chi tiết về tiến độ dự &aacute;n sẽ được cập nhật thường xuy&ecirc;n, bạn c&oacute; thể đăng k&yacute; để cập nhật li&ecirc;n tục c&aacute;c th&ocirc;ng tin của ch&uacute;ng t&ocirc;i về dự &aacute;n Condotel The Arena Cam ranh.<br /></em><em>Xin cảm ơn!</em></p>\r\n<div class="form-detail">&nbsp;</div>\r\n<p><em>Ch&uacute;ng t&ocirc;i l&agrave; đại l&yacute; ph&acirc;n phối ch&iacute;nh thức dự &aacute;n Condotel The Arena Cam ranh, c&oacute; đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; t&acirc;m huyết trong c&ocirc;ng việc. H&atilde;y đến với ch&uacute;ng t&ocirc;i nắm bắt cơ hội &ldquo;v&agrave;ng&rdquo; của ch&iacute;nh s&aacute;ch ưu đ&atilde;i mới để t&igrave;m được ng&ocirc;i nh&agrave; l&yacute; tưởng ph&ugrave; hợp y&ecirc;u cầu v&agrave; điều kiện t&agrave;i ch&iacute;nh ngay h&ocirc;m nay</em></p>\r\n<p><em><strong>Hotline: &nbsp;0906.212.388 - 0902.252.584</strong></em></p>\r\n<p>&nbsp;</p>', 'kien-truc-su-cua-dong-limited-39', '/photos/shares/1510239660.jpg', 24, 'Kiến Trúc Sư Của Dòng Limited', 'Kiến Trúc Sư Của Dòng Limited', 0, '0', '0', '2017-11-09 08:01:03', '2017-11-20 00:40:37', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'User', 'A normal user', '2017-10-16 10:07:38', '2017-10-16 10:07:38'),
(2, 'Author', 'Blog Author', '2017-10-16 10:07:38', '2017-10-16 10:07:38'),
(3, 'Admin', 'Administrator', '2017-10-16 10:07:38', '2017-10-16 10:07:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '/photos/shares/queenland.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mặt bằng tổng quan Condotel The Arena Cam Ranh', 'Mặt bằng tổng quan Condotel The Arena Cam Ranh', '/photos/shares/1508563363.jpg', '2017-10-16 20:07:20', '2017-10-20 22:22:44'),
(2, 'bể bơi nước mặn tiêu chuẩn olympic', 'bể bơi nước mặn tiêu chuẩn olympic', '/photos/shares/1508563276.jpg', '2017-10-20 22:21:17', '2017-10-20 22:21:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'vietdh', 'donghuyviet.bds@gmail.com', '$2y$10$lw3i807hw4JTQhThV2xrn.HKhaVD9ofxY1G.x.Gzcg.woUWX6d5Ye', 'MvK3dAkXnSXqFi0vqp2fZ76fdWCNLLYRk5qkciSxefv8gl6IVHg9aJqa6mZR', '2017-10-16 10:52:35', '2017-10-16 10:52:35'),
(3, 'Nguyen Xuan Phuc', 'phucxuannguyen2468@gmail.com', '$2y$10$xLFGCTJK/TmMPgwkdlyBZ.QCflXKO9cdgeGpnwkcXnH9I8gdNG/SG', 'sMotSfMlXd6OWHTjvkDFQo3LDWtl3DmyyTx1AymiN6sXhX9nZA87CbChYOyB', '2017-10-23 00:55:23', '2017-10-23 00:55:23'),
(4, 'Nguyen Hang', 'nguyenhang2784@gmail.com', '$2y$10$SY7U0tyJhJtmLhjbGu1afehuuMF/Tp.KCfL0H51sZE6ZBxvq9DGhK', 'eJ4sIkh9vPTH6l1lgJt5gbtGc1NDwvzpSLVUFlpTRJ5s715fP31fmR6StcGo', '2017-10-30 19:57:59', '2017-10-30 19:57:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 2, 1, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 2, 3, NULL, NULL),
(8, 1, 1, NULL, NULL),
(15, 3, 2, NULL, NULL),
(16, 3, 3, NULL, NULL),
(23, 4, 2, NULL, NULL),
(24, 4, 3, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD UNIQUE KEY `categories_position_unique` (`position`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
