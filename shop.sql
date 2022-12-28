-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2022 at 08:16 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blsanpham`
--
-- Error reading structure for table shop.blsanpham: #1932 - Table &#039;shop.blsanpham&#039; doesn&#039;t exist in engine
-- Error reading data for table shop.blsanpham: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `shop`.`blsanpham`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `dmsanpham`
--
-- Error reading structure for table shop.dmsanpham: #1932 - Table &#039;shop.dmsanpham&#039; doesn&#039;t exist in engine
-- Error reading data for table shop.dmsanpham: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `shop`.`dmsanpham`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `dmsanpham1`
--

CREATE TABLE `dmsanpham1` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dmsanpham1`
--

INSERT INTO `dmsanpham1` (`id`, `name`) VALUES
(1, 'Smartphone'),
(2, 'Tablet'),
(3, 'Laptop'),
(4, 'Phụ kiện điện thoại'),
(5, 'Phụ kiện máy tính'),
(6, 'Điện gia dụng'),
(7, 'Hàng đổi trả giá rẻ'),
(8, 'Thiết bị làm đẹp');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--
-- Error reading structure for table shop.sanpham: #1932 - Table &#039;shop.sanpham&#039; doesn&#039;t exist in engine
-- Error reading data for table shop.sanpham: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `shop`.`sanpham`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `sanpham1`
--

CREATE TABLE `sanpham1` (
  `product_id` int(10) NOT NULL,
  `id_dm` int(10) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `price` int(30) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `update_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham1`
--

INSERT INTO `sanpham1` (`product_id`, `id_dm`, `productname`, `price`, `thumbnail`, `content`, `update_at`) VALUES
(1, 2, 'Samsung tablet 3Acc', 6000000, 'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-p619nzaaxxv/gallery/vn-galaxy-tab-s6-lite-p615-426026-sm-p619nzaaxxv-532709950?$650_519_PNG$', 'Sản phẩm mới nhất của Sam sung 2017', '2022-11-15'),
(2, 2, 'Samsung tablet 3A', 6000000, 'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-p619nzaaxxv/gallery/vn-galaxy-tab-s6-lite-p615-426026-sm-p619nzaaxxv-532709950?$650_519_PNG$', 'Sản phẩm mới nhất của Sam sung 2017', '2022-11-11'),
(3, 6, 'Máy giặt Toshiba', 5000000, 'https://cdn.tgdd.vn/Products/Images/1944/197893/toshiba-tw-bh95s2v-wk-10-300x300.jpg', 'Máy giặt 2022', '2022-11-14'),
(4, 3, 'Laptop HP', 17000000, 'https://cdn.tgdd.vn/Files/2022/07/05/1444877/co-nen-mua-laptop-hp-pavilion-goi-y-4-mau-dong-la.jpg', 'Laptop thế hệ mới', '2022-11-14'),
(5, 1, 'Iphone 12', 12000000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/t/_/t_m_12.png', 'Màn hình	6.1 inch, OLED, Super Retina XDR, 2532 x 1170 Pixels\r\nCamera sau	12.0 MP + 12.0 MP\r\nCamera Selfie	12.0 MP\r\nRAM	4 GB\r\nBộ nhớ trong	64 GB\r\nCPU	Apple A14 Bionic\r\nDung lượng pin	2815 mAh\r\nThẻ sim	2 - 1 eSIM, 1 Nano SIM\r\nHệ điều hành	iOS 14\r\nXuất xứ	Trung Quốc\r\nThời gian ra mắt	10/2020', '2022-12-01'),
(6, 2, 'Samsung tablet 3A', 6000000, 'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-p619nzaaxxv/gallery/vn-galaxy-tab-s6-lite-p615-426026-sm-p619nzaaxxv-532709950?$650_519_PNG$', 'Sản phẩm mới nhất của Sam sung 2017', '2022-11-15'),
(7, 2, 'Samsung tablet 3A1', 6000000, 'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-p619nzaaxxv/gallery/vn-galaxy-tab-s6-lite-p615-426026-sm-p619nzaaxxv-532709950?$650_519_PNG$', 'Sản phẩm mới nhất của Sam sung 2017', '2022-11-15'),
(8, 6, 'Máy giặt Toshiba A1', 5000000, 'https://cdn.tgdd.vn/Products/Images/1944/197893/toshiba-tw-bh95s2v-wk-10-300x300.jpg', 'Máy giặt 2022', '2022-11-15'),
(9, 1, 'Iphone 12', 12000000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/t/_/t_m_12.png', '', '2022-11-15'),
(10, 2, 'Samsung tablet 3A', 6000000, 'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-p619nzaaxxv/gallery/vn-galaxy-tab-s6-lite-p615-426026-sm-p619nzaaxxv-532709950?$650_519_PNG$', 'Sản phẩm mới nhất của Sam sung 2017', '2022-11-15'),
(11, 1, 'Iphone 13 pro max 128G', 24200000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/t/_/t_m_12.png', '', '2022-11-17'),
(12, 2, 'Ipad mini 3', 8000000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/3/_/3_229.jpg', 'Ipad nhỏ gọn 2020', '2022-11-15'),
(13, 1, 'Iphone X', 11000000, 'https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-hh-600x600.jpg', '<p>Sản phẩm của Apple 2010</p>', '2022-11-16'),
(14, 4, 'Tai nghe có dây Remax RM-598 âm hay chống ồn', 300000, 'https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/tainghe/RM-598/slide/tai-nghe-co-day-remax-rm-598-1-19042021.jpg', '<h2 class=\"text-h2\" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 600; line-height: 1.1; color: rgb(0, 166, 82); margin-top: 10px; margin-bottom: 10px; font-size: 18px; padding: 20px 10px 0px; text-align: center;\">Giới thiệu sản phẩm</h2><div class=\"progress\" style=\"background-color: rgb(245, 245, 245); border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 2px inset; height: 1px; margin: 0px auto 20px; width: 232px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span class=\"sr-only\" style=\"background: rgb(245, 169, 5); border-width: 1px; border-style: solid; border-color: rgb(245, 169, 5); border-radius: 100%; height: 8px; margin-top: -4px; width: 8px;\"></span><div class=\"progress-bar progress-bar-success\" style=\"background-color: rgb(254, 215, 0); box-shadow: rgba(0, 0, 0, 0.15) 0px -1px 0px inset; float: left; font-size: 12px; height: 1px; width: 116px;\"></div></div><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; text-align: center;\"><strong style=\"font-weight: bold;\">Trang bị ngay một chiếc tai nghe có dây Remax RM-598 sở hữu thiết kế cực kỳ chắc chắn, bền bỉ cùng khả năng khử ồn tốt, cho chất lượng âm thanh không thua kém bất cứ một sản phẩm cùng phân khúc nào.&nbsp;</strong></h2><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><img alt=\"Tai nghe có dây Remax RM-598 1\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/tainghe/RM-598/bai-viet/tai-nghe-co-day-remax-rm-598-1-19042021.jpg\" style=\"border: 0px; margin-left: auto; margin-right: auto; display: block; max-width: 100%; height: auto;\"></p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; text-align: justify;\"><strong style=\"font-weight: bold;\"><span style=\"color: rgb(255, 102, 0);\">Đánh giá thiết kế tai nghe</span></strong></h3><div style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><h4 style=\"font-family: inherit; line-height: 1.1; color: inherit; margin-top: 10px; margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">1. Hiện đại và tinh tế</strong></h4><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Điểm nhấn đầu tiên với chiếc&nbsp;<a href=\"https://remaxvietnam.vn/tai-nghe\" style=\"color: rgb(51, 122, 183);\">tai nghe có dây</a>&nbsp;này chính là thiết kế cực kỳ hiện đại, chắc chắn và bền bỉ. Toàn bộ phần dây cáp được làm từ chất liệu TPE đàn hồi, không rối, không thắt nút, bạn có thể cuộn tròn để lưu giữ mà không ảnh hưởng đến kiểu dáng.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><img alt=\"Tai nghe có dây Remax RM-598 2\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/tainghe/RM-598/bai-viet/tai-nghe-co-day-remax-rm-598-7-19042021.jpg\" style=\"border: 0px; margin-left: auto; margin-right: auto; display: block; max-width: 100%; height: auto;\"></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Housing được hoàn thiện một cách chi tiết với các góc cạnh được bo tròn, mềm mại, vừa tạo sự chắc chắn vừa cho khả năng cầm nắm hay đeo dễ chịu, thoải mái. Thiết kế kiểu dáng in-ear với các tips slicone không gây bí tai hoặc khó chịu khi đeo trong thời gian dài.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><img alt=\"Tai nghe có dây Remax RM-598 3\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/tainghe/RM-598/bai-viet/tai-nghe-co-day-remax-rm-598-5-19042021.jpg\" style=\"border: 0px; margin-left: auto; margin-right: auto; display: block; max-width: 100%; height: auto;\"></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Jack cắm 3.5mm phổ biến, chất lượng cao, được mạ vàng sáng bóng tạo nên sự cao cấp cũng như giúp tăng khả năng truyền dẫn tín hiệu âm thanh nhanh chóng, ổn định cho tai nghe.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Sản phẩm cũng được trang bị hệ thống phím điều khiển đa chức ăng siêu tiện lợi ngay trên dây. Phím tăng giảm âm lượng ở 2 đầu cho phép người sử dụng có thể tăng hoặc giảm mức âm lượng. Ngoài ra, còn có nút phát/tạm dừng đối diện giúp cho việc thao tác dễ dàng và tiện lợi hơn rất nhiều.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><img alt=\"Tai nghe có dây Remax RM-598 4\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/tainghe/RM-598/bai-viet/tai-nghe-co-day-remax-rm-598-3-19042021.jpg\" style=\"border: 0px; margin-left: auto; margin-right: auto; display: block; max-width: 100%; height: auto;\"></p><blockquote style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; padding: 15px 20px 15px 45px; margin-bottom: 20px; position: relative; line-height: 1.2; color: rgb(102, 102, 102); box-shadow: rgb(204, 204, 204) 2px 2px 15px; border-left: 15px solid rgb(255, 205, 105); border-right: 2px solid rgb(246, 186, 89);\">Tham khảo thêm tai nghe iPhone chống ồn chân Lightning WK Y31,&nbsp;<a href=\"https://remaxvietnam.vn/thiet-bi-am-thanh/tai-nghe-co-day-chan-lightning-wk-y31.html\" style=\"color: rgb(51, 122, 183);\">tại đây</a>.</blockquote><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Bên trong cable được cấu trúc từ những sợi đồng chất lượng cao, chống oxy hóa cho đường dẫn âm thanh tốt nhất, đem lại chất âm ấn tượng.&nbsp;Nếu để ý, bạn sẽ thấy RM-598 không sở hữu bất cứ chi tiết thừa nào cả, đảm bảo việc sử dụng tiện lợi và dễ dàng lưu trữ khi mang theo.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><img alt=\"Tai nghe có dây Remax RM-598 5\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/tainghe/RM-598/bai-viet/tai-nghe-co-day-remax-rm-598-2-19042021.jpg\" style=\"border: 0px; margin-left: auto; margin-right: auto; display: block; max-width: 100%; height: auto;\"></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">&nbsp;</p><h4 style=\"font-family: inherit; line-height: 1.1; color: inherit; margin-top: 10px; margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">2. Trải nghiệm khi đeo</strong></h4></div><div style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Tai nghe có dây Remax RM-598 đem lại cảm giác đeo cực kỳ thoải mái, dễ dàng. Việc trang bị các tips silicone khác nhau đảm bảo vừa khít với mọi đôi tai của người dùng.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Các cạnh vát của tai nghe được hoàn thiện chi tiết, kết hợp với cấu trúc thuôn dài và ống tai nghiêng sẽ hỗ trợ rất tốt cho người đeo có được cảm giác thoải mái nhất.</p><div><h3 style=\"font-family: inherit; line-height: 1.1; color: inherit; margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(255, 102, 0);\"><strong style=\"font-weight: bold;\">Đánh giá chất lượng âm thanh</strong></span></h3><div><h4 style=\"font-family: inherit; line-height: 1.1; color: inherit; margin-top: 10px; margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">1. Chất âm tổng thể</strong></h4><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Nói đến trải nghiệm âm thanh chất lượng cao, bạn chắc chắn không thể không nhắc đến Remax RM-598. Theo đánh giá thì chiếc tai nghe có dây này sở hữu âm trầm mạnh mẽ, thỏa mãn thính giác.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><img alt=\"Tai nghe có dây Remax RM-598 6\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/tainghe/RM-598/bai-viet/tai-nghe-co-day-remax-rm-598-8-19042021.jpg\" style=\"border: 0px; margin-left: auto; margin-right: auto; display: block; max-width: 100%; height: auto;\"></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Hiệu ứng âm thanh độc đáo, tạo được âm trầm mạnh mẽ khiến bạn cảm nhận được âm thanh tái tạo nguyên bản trực tiếp, khoang tai được làm bằng hợp kim nhôm và viền kim loại được làm thủ công cho chất lượng âm thanh được nâng cấp rõ ràng hơn và hiệu ứng âm thanh trong trẻo hơn với độ méo cực thấp.&nbsp;<br></p></div><h4 style=\"font-family: inherit; line-height: 1.1; color: inherit; margin-top: 10px; margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">2. Khả năng chống ồn</strong></h4><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Điểm thú vị của chiếc tai nghe Remax RM-598 chính là khả năng giảm tiếng ồn cực kỳ hiệu quả. Dù bạn có đang đeo tai nghe trong một môi trường nhiều tạp âm đi nữa thì âm thanh ra vẫn rõ ràng, chi tiết và cực kỳ đảm bảo.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><img alt=\"Tai nghe có dây Remax RM-598 7\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/tainghe/RM-598/bai-viet/tai-nghe-co-day-remax-rm-598-6-19042021.jpg\" style=\"border: 0px; margin-left: auto; margin-right: auto; display: block; max-width: 100%; height: auto;\"></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Ngoài khả năng nghe nhạc, chiếc tai nghe có dây này còn tích hợp micro trên dây cho cuộc gọi rảnh tay với chất lượng âm đàm thoại to, rõ ràng trong nhiều môi trường khác nhau. Khả năng chống ồn cực tốt giúp bạn có thể trả lời cuộc gọi ở mọi không gian, dù có tiếng ồn hay không.</p><h3 style=\"font-family: inherit; line-height: 1.1; color: inherit; margin-top: 10px; margin-bottom: 10px;\"><span style=\"color: rgb(255, 102, 0);\"><strong style=\"font-weight: bold;\">Tương thích rộng rãi</strong></span><br></h3></div><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Việc sử dụng jack cắm 3.5mm đồng nghĩa với việc chiếc tai nghe này có khả năng tương thích cực kỳ rộng. Bạn hoàn toàn có thể sử dụng sản phẩm để nghe nhạc hoặc đàm thoại trên tất cả các thiết bị có cổng cắm 3.5mm như máy tính, laptop, máy tính bảng, điện thoại...</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><img alt=\"Tai nghe có dây Remax RM-598 8\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/tainghe/RM-598/bai-viet/tai-nghe-co-day-remax-rm-598-4-19042021.jpg\" style=\"border: 0px; margin-left: auto; margin-right: auto; display: block; max-width: 100%; height: auto;\"></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Nhìn chung, Remax RM-598 sở hữu thiết kế đơn giản, nhưng cực kỳ hiện đại, đặc biệt chất lượng âm thanh rõ ràng, chi tiết và chân thực, mang đến những trải nghiệm âm thanh sống động nhất. Với chiều dài lên đến 1.2m, chiếc tai nghe này có thể đáp ứng mọi nhu cầu sử dụng của người dùng.</p></div><div style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\">Sản phẩm hiện đang được phân phối chính hãng tại hệ thống&nbsp;<a href=\"https://remaxvietnam.vn/\" style=\"color: rgb(51, 122, 183);\">Remax Vietnam</a>&nbsp;với cơ chế bảo hành 12 tháng, lỗi 1 đổi 1. Bạn có thể ghé thăm trực tiếp tại các cửa hàng của Remax Vietnam để được trải nghiệm sản phẩm hoặc liên hệ qua hotline để được tư vấn và giải đáp thắc mắc một cách nhanh chóng và chi tiết nhất.</p></div>', '2022-11-17'),
(15, 7, 'Macbook Air M12020', 20000000, 'https://cafefcdn.com/203337114487263232/2022/4/26/-1650946691118602991150.jpg', '<p>Hàng new like 99% vẫn dùng tốt.</p>', '2022-11-17'),
(16, 5, 'Chuột Apple Magic Mouse Mouse 2 MLA02 Trắng', 2490000, 'https://danhgiatot.cdn.vccloud.vn/wp-content/uploads/2021/09/chuot-khong-day-cho-macbook.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Oxygen-Sans, sans-serif;\">Điểm ấn tượng của&nbsp;</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; font-family: Roboto, &quot;Helvetica Neue&quot;, -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Oxygen-Sans, sans-serif; vertical-align: baseline; color: rgb(51, 51, 51);\">chuột Apple Magic Mouse 2</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Oxygen-Sans, sans-serif;\">&nbsp;đến từ việc toàn bộ thao tác trên chuột đều hoàn toàn là cảm ứng. Vì thế, sản phẩm sẽ mang đến cho bạn một trải nghiệm hoàn toàn mới lạ so với việc sử dụng những “chú chuột” thông thường khác trên thị trường. Hơn nữa, cả 2 sản phẩm cùng đến từ hệ sinh thái Apple nên việc trải nghiệm chuột không dây Apple Magic Mouse 2 sẽ được tối ưu tốt nhất. Nhờ đó mà sẽ đem lại trải nghiệm mượt mà nhất trên chiếc Macbook của bạn.</span><br></p>', '2022-11-17'),
(89, 1, 'Iphone 14 pro 128G', 32000000, 'https://images.macrumors.com/t/0C6wYB_3EthkuTbpKBclDq5DGNI=/1920x/article-new/2022/09/iPhone-14-vs-iPhone-14-Pro-Feature.jpg', 'Iphone mới nhất 2022', '0000-00-00'),
(90, 1, 'Iphone 14 pro 128G', 32000000, 'https://images.macrumors.com/t/0C6wYB_3EthkuTbpKBclDq5DGNI=/1920x/article-new/2022/09/iPhone-14-vs-iPhone-14-Pro-Feature.jpg', 'Iphone mới nhất 2022', '0000-00-00'),
(91, 1, 'Iphone 14 pro 256G', 35000000, 'https://images.macrumors.com/t/0C6wYB_3EthkuTbpKBclDq5DGNI=/1920x/article-new/2022/09/iPhone-14-vs-iPhone-14-Pro-Feature.jpg', 'Iphone mới nhất 2022', '0000-00-00'),
(92, 1, 'Iphone 7 plus', 8000000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/_/0/_0000_iphone-7-plus-2_1_4_1_1_2.jpg', '<p>Iphone 2017</p>', '2022-11-30'),
(93, 1, 'Iphone 6', 5000000, 'https://cdn.tgdd.vn/Products/Images/42/92962/iphone-6-32gb-gold-hh-600x600-600x600-600x600.jpg', '<p>Iphone 2017</p>', '2022-11-30'),
(94, 1, 'Iphone X', 10000000, 'https://kwingy.com/wp-content/uploads/2022/06/apple-iphone-x-new-1.jpg', '<p>Iphone 2020</p>', '2022-11-30'),
(95, 1, 'Iphone 8', 9000000, 'https://kwingy.com/wp-content/uploads/2022/06/apple-iphone-x-new-1.jpg', '<p>Iphone 2019</p>', '2022-11-30'),
(96, 1, 'Samsung tablet 3A', 6000000, 'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-p619nzaaxxv/gallery/vn-galaxy-tab-s6-lite-p615-426026-sm-p619nzaaxxv-532709950?$650_519_PNG$', 'aaaa', '2022-12-09'),
(97, 1, 'Samsung tablet 3A', 6000000, 'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-p619nzaaxxv/gallery/vn-galaxy-tab-s6-lite-p615-426026-sm-p619nzaaxxv-532709950?$650_519_PNG$', 'aaaa', '2022-12-09'),
(104, 8, 'Máy xông tinh dầu', 500000, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgWFRYZGBgaGBoaGBkYGhgYGBkcGBgaGRgYGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHBISGjQhISE0NDQ0NDQ0MTQ0NDQ0NDQ0NDQ0NDQ0NDE0NDQ0MTQ0NDQ0MTQ0NDQ0NDQ0NDQ0NDE1NP/AABEIAOEA4QMBIgACEQEDEQH/', '', '2022-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `thanh_vien`
--
-- Error reading structure for table shop.thanh_vien: #1932 - Table &#039;shop.thanh_vien&#039; doesn&#039;t exist in engine
-- Error reading data for table shop.thanh_vien: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `shop`.`thanh_vien`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dmsanpham1`
--
ALTER TABLE `dmsanpham1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sanpham1`
--
ALTER TABLE `sanpham1`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dmsanpham1`
--
ALTER TABLE `dmsanpham1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham1`
--
ALTER TABLE `sanpham1`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
