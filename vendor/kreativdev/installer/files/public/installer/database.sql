-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2024 at 05:11 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superv`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `username`, `email`, `first_name`, `last_name`, `image`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@gmail.com', 'Justin', 'Langer', '5f5797dbc520b.png', '$2y$10$UmZ3nP0JIUOI0CxLG/175efcigYJDbfg45Ga4cYz/YdZOshZ0GPMm', 1, NULL, '2023-05-30 10:57:03'),
(10, 7, 'delivery', 'delivery@gmail.com', 'Delivery', 'Manager', '5f6c395833e14.jpg', '$2y$10$658kJ38abUEn.d46DmYhQ.wNIy9fRE2TPDrNzeMODbxDWHWOwrqRS', 1, '2020-09-24 00:14:48', '2020-09-28 11:24:32'),
(11, 8, 'kitchen', 'kitchen@gmail.com', 'Kitchen', 'Manager', '60a934a18ff49.jpg', '$2y$10$PTTKwbg5AEHm4BBVUaes1uhlx1eZKeTJzD7M5pIQjPrDmGYaVzul2', 1, '2020-09-28 11:23:39', '2021-05-23 01:43:13'),
(12, 9, 'test', 'saifislamfci@gmail.com', 'Saiful Islam', 'Sharif', '6402c0c90904c.jpg', '$2y$10$7mmLn1fWdaYUkNQY8fEwY.QB6csIcv9WpFo5zLDvYy4UFZvuqq48W', 1, '2023-03-04 03:53:45', '2023-03-04 03:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint UNSIGNED NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backups`
--

INSERT INTO `backups` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(3, '2022-04-24-121935-dump-superv.sql', '2022-04-24 06:19:35', '2022-04-24 06:19:35'),
(4, '2023-03-29-114729-dump-superv.sql', '2023-03-29 05:47:29', '2023-03-29 05:47:29'),
(5, '2023-03-29-115159-dump-superv.sql', '2023-03-29 05:51:59', '2023-03-29 05:51:59'),
(6, '2023-03-29-115326-dump-superv.sql', '2023-03-29 05:53:26', '2023-03-29 05:53:26'),
(7, '2023-03-29-115431-dump-superv.sql', '2023-03-29 05:54:32', '2023-03-29 05:54:32'),
(8, '2023-03-29-115433-dump-superv.sql', '2023-03-29 05:54:33', '2023-03-29 05:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `basic_extendeds`
--

CREATE TABLE `basic_extendeds` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `cookie_alert_status` tinyint NOT NULL DEFAULT '1',
  `cookie_alert_text` blob,
  `cookie_alert_button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language_direction` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `blogs_meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogs_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_facebook_pexel` tinyint NOT NULL DEFAULT '0',
  `facebook_pexel_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `theme_version` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default_service_category',
  `from_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint NOT NULL DEFAULT '0',
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_shape_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_bottom_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_bottom_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_bg_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_symbol` blob,
  `base_currency_symbol_position` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_text_position` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT '0.00',
  `hero_bg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text_font_size` int NOT NULL DEFAULT '60',
  `hero_section_bold_text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_text_font_size` int NOT NULL DEFAULT '18',
  `hero_section_text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_text` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_text_font_size` int NOT NULL DEFAULT '14',
  `hero_section_button_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hero_section_button2_text` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button2_text_font_size` int DEFAULT '14',
  `hero_section_button2_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hero_shape_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bottom_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_side_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_details_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_bg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_version` tinyint NOT NULL DEFAULT '1' COMMENT '1 - menu with col-6, 2 - menu with col-12',
  `qrcode_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qrcode_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pusher_app_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_secret` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_cluster` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_facebook_login` tinyint NOT NULL DEFAULT '1' COMMENT '1 - Active, 0 - Deactive',
  `facebook_app_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_app_secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_google_login` tinyint NOT NULL DEFAULT '1' COMMENT '1 - Active, 0 - Deactive',
  `google_client_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'UTC',
  `delivery_date_time_status` tinyint NOT NULL DEFAULT '0',
  `delivery_date_time_required` tinyint NOT NULL DEFAULT '0',
  `qr_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `qr_size` int NOT NULL DEFAULT '250',
  `qr_style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_eye_style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_margin` int NOT NULL DEFAULT '0',
  `qr_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_text_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `qr_text_size` int NOT NULL DEFAULT '15',
  `qr_text_x` int NOT NULL DEFAULT '50',
  `qr_text_y` int NOT NULL DEFAULT '50',
  `qr_inserted_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_inserted_image_size` int NOT NULL DEFAULT '20',
  `qr_inserted_image_x` int NOT NULL DEFAULT '50',
  `qr_inserted_image_y` int NOT NULL DEFAULT '50',
  `qr_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text',
  `order_close` tinyint NOT NULL DEFAULT '0' COMMENT '1 - order closed, 0 - order open',
  `order_close_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Order is closed now!',
  `testimonial_side_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_section_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_two_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_designation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_section_top_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_section_bottom_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_water_shape_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_water_shape_text_font_size` int DEFAULT NULL,
  `hero_section_water_shape_text_color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_extendeds`
--

INSERT INTO `basic_extendeds` (`id`, `language_id`, `cookie_alert_status`, `cookie_alert_text`, `cookie_alert_button_text`, `to_mail`, `default_language_direction`, `blogs_meta_keywords`, `blogs_meta_description`, `is_facebook_pexel`, `facebook_pexel_script`, `theme_version`, `from_mail`, `from_name`, `is_smtp`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `slider_shape_img`, `slider_bottom_img`, `footer_bottom_img`, `menu_section_title`, `menu_section_subtitle`, `menu_section_img`, `special_section_title`, `special_section_subtitle`, `testimonial_bg_img`, `table_section_title`, `table_section_subtitle`, `table_section_img`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `hero_bg`, `hero_section_bold_text`, `hero_section_bold_text_font_size`, `hero_section_bold_text_color`, `hero_section_text`, `hero_section_text_font_size`, `hero_section_text_color`, `hero_section_button_text`, `hero_section_button_text_font_size`, `hero_section_button_color`, `hero_section_button_url`, `hero_section_button2_text`, `hero_section_button2_text_font_size`, `hero_section_button2_url`, `hero_shape_img`, `hero_bottom_img`, `hero_section_video_link`, `hero_side_img`, `faq_title`, `career_title`, `career_details_title`, `special_section_bg`, `menu_version`, `qrcode_url`, `qrcode_color`, `pusher_app_id`, `pusher_app_key`, `pusher_app_secret`, `pusher_app_cluster`, `is_facebook_login`, `facebook_app_id`, `facebook_app_secret`, `is_google_login`, `google_client_id`, `google_client_secret`, `timezone`, `delivery_date_time_status`, `delivery_date_time_required`, `qr_image`, `qr_color`, `qr_size`, `qr_style`, `qr_eye_style`, `qr_margin`, `qr_text`, `qr_text_color`, `qr_text_size`, `qr_text_x`, `qr_text_y`, `qr_inserted_image`, `qr_inserted_image_size`, `qr_inserted_image_x`, `qr_inserted_image_y`, `qr_type`, `order_close`, `order_close_message`, `testimonial_side_img`, `feature_section_bg_image`, `special_section_bg_image`, `footer_section_bg_image`, `hero_section_button_two_color`, `hero_section_author_name`, `hero_section_author_image`, `hero_section_author_designation`, `intro_bg_image`, `testimonial_section_top_shape_image`, `testimonial_section_bottom_shape_image`, `blog_section_bg_image`, `hero_section_water_shape_text`, `hero_section_water_shape_text_font_size`, `hero_section_water_shape_text_color`) VALUES
(147, 176, 1, 0x596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e, 'Allow Cookies', 'pratik.anwar@gmail.com', 'ltr', 'lorem, dolor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s)\r\n{if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\nif(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\nn.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];\r\ns.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'2723323421236702\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=2723323421236702&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->', 'default_service_category', 'test@kreativdev.com', 'Superv', 1, 'nl1-sr12.supercp.com', '587', 'TLS', 'test@kreativdev.com', 'xh=wf[%(GD!{', '5f5a03b9351d9.png', '5fec644e710b9.png', '5f5b45239066f.png', 'Our Menus', 'Discover Food Menus', '1599809670.png', 'Our Special Offered Items Price', 'VIEW ALL MENU LIST', '6460784cda617.jpg', 'Table Reservation', 'Reserve Your Table', '1683098625.png', 0x24, 'left', 'INR', 'right', 1.00, '6460656344753.jpg', 'Mexican Chicken Cheese Toaster Pizza', 60, 'FFFFFF', 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 18, 'FFFFFF', 'View Details', 18, 'FFFFFF', 'https://codecanyon8.kreativdev.com/superv/menus', 'Book A Table', 14, 'https://codecanyon8.kreativdev.com/superv/reservation/form', '64606531f13f4.png', '5fec641428443.png', 'https://www.youtube.com/watch?v=ZDQn-9cdx9Q', '6460653ae8d2d.png', 'F.A.Q.', 'Career', 'Job Details', '1600010997.jpg', 1, 'https://codecanyon.kreativdev.com/superv/qr-menu', '3851FF', '1655440', '4272df0efaa4e8f2f4f5', '5597064d60701548ae4f', 'ap2', 1, '188100859706337', '73dc84a95f12657de1b1ebaa6cc7ba94', 1, '81856165251-cd0s41jcep43b3a33i3rc7pnp3jdvo0p.apps.googleusercontent.com', 'nLCYVG30u-bVIvhzSg-z52pi', 'Asia/Dhaka', 1, 1, '6475d6bd2b006.png', '18173D', 263, 'square', 'circle', 0, 'Kreativ', '114C05', 14, 50, 50, '60a92611aca0a.png', 20, 50, 50, 'text', 0, 'Order is closed now!', '1680940275.png', '6432711301a4f.jpg', '6432710879569.jpg', '643270decd777.jpg', 'D3A971', 'Hames Rodrigo', '642916deb895f.jpg', 'Founder & Ceo', '6412f4bbf028b.png', '1678963129.png', '1678948560.png', '641a9269c1419.png', 'Orange juccice', 50, 'FFD854'),
(148, 177, 1, 0xd8b3d98ad8aad98520d8aad8add8b3d98ad98620d8aad8acd8b1d8a8d8aad98320d8b9d984d98920d987d8b0d8a720d8a7d984d985d988d982d8b920d985d98620d8aed984d8a7d98420d8a7d984d8b3d985d8a7d8ad20d8a8d985d984d981d8a7d8aa20d8aad8b9d8b1d98ad98120d8a7d984d8a7d8b1d8aad8a8d8a7d8b7, 'السماح للكوكيز', 'pratik.anwar@gmail.com', 'ltr', 'lorem, dolor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s)\r\n{if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\nif(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\nn.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];\r\ns.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'2723323421236702\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=2723323421236702&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->', 'default_service_category', 'test@kreativdev.com', 'Superv', 1, 'nl1-sr12.supercp.com', '587', 'TLS', 'test@kreativdev.com', 'xh=wf[%(GD!{', '5f3e41b24e6dd.png', '5fec665e8e248.png', '5f449d8ad6e85.png', 'eeeeeeeeeeeeمنا', NULL, '1599809810.png', 'سعر العناصر المعروضة الخاصة بنا', 'عرض كل قائمة القائمة', '641e9e7ed921a.png', 'طاولة حجز', 'احجز طاولتك', '1599810481.jpg', 0x24, 'left', 'INR', 'right', 1.00, '642548e042435.jpg', 'أفضل مكان لإصلاح سيارتك', 60, 'FFFFFF', 'سيلون لك في طائر الدجاجة قائلا الهيمنة البلدات الوحش على علاج الأعشاب الداكنة والظلمة التي صنعها والتي تواجه اللحوم.', 18, 'FFB05D', 'اطلب الان', 14, 'FFAA52', 'https://codecanyon.megasoft.biz/superv/menu/Beef-Cheese-Burger/25', 'اطلب الان', 16, 'https://codecanyon.megasoft.biz/superv/menu/Beef-Cheese-Burger/25', '641eac689ae78.png', '5f58bc10650ff.png', 'https://www.youtube.com/watch?v=ZDQn-9cdx9Q', '641ec9bba0465.png', 'أسئلة مكررة', 'وظائف', 'تفاصيل الوظيفة', '1600010986.jpg', 1, 'https://codecanyon.kreativdev.com/superv/qr-menu', '3851FF', '1655440', '4272df0efaa4e8f2f4f5', '5597064d60701548ae4f', 'ap2', 1, '188100859706337', '73dc84a95f12657de1b1ebaa6cc7ba94', 1, '81856165251-cd0s41jcep43b3a33i3rc7pnp3jdvo0p.apps.googleusercontent.com', 'nLCYVG30u-bVIvhzSg-z52pi', 'Asia/Dhaka', 1, 1, '6475d6bd2b006.png', '18173D', 263, 'square', 'circle', 0, 'Kreativ', '114C05', 14, 50, 50, '60a92611aca0a.png', 20, 50, 50, 'text', 0, 'Order is closed now!', '1679736605.png', NULL, '641ec97ee2775.png', '641ebecb7301b.png', 'FFFFFF', 'Hames Rodrigo', '641eb7cf98f2f.jpg', 'Founder & Ceo', '641e9a620c612.png', NULL, NULL, NULL, 'أفضل مكان لإصلاح سيارتك', 80, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `basic_extras`
--

CREATE TABLE `basic_extras` (
  `id` bigint UNSIGNED NOT NULL,
  `whatsapp_order_status_notification` tinyint NOT NULL DEFAULT '0' COMMENT '0 - disable, 1 - enable',
  `whatsapp_home_delivery` tinyint NOT NULL DEFAULT '0' COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_pickup` tinyint NOT NULL DEFAULT '0' COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_on_table` tinyint NOT NULL DEFAULT '0' COMMENT '0 - enabled, 1 - disabled',
  `twilio_sid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_phone_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_extras`
--

INSERT INTO `basic_extras` (`id`, `whatsapp_order_status_notification`, `whatsapp_home_delivery`, `whatsapp_pickup`, `whatsapp_on_table`, `twilio_sid`, `twilio_token`, `twilio_phone_number`) VALUES
(1, 1, 0, 0, 0, 'ACc85b045911333bd6520d46ce4d0278d8', '7809d2f5cd5165ebe9005b5ecf9a9d8f', '+12183947871');

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `favicon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader_status` tinyint NOT NULL COMMENT '0 - deactive, 1 - active',
  `preloader` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_base_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` blob,
  `intro_section_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `intro_contact_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_signature` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_main_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_mails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int NOT NULL DEFAULT '10',
  `contact_info_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_analytics_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_recaptcha` tinyint NOT NULL DEFAULT '0',
  `google_recaptcha_site_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawkto` tinyint NOT NULL DEFAULT '1',
  `is_disqus` tinyint NOT NULL DEFAULT '1',
  `disqus_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_analytics` tinyint NOT NULL DEFAULT '1',
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - active, 0 - deactive',
  `maintenance_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ips` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonial_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_details_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_details_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_version` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section` tinyint NOT NULL DEFAULT '1',
  `intro_section` tinyint NOT NULL DEFAULT '1',
  `testimonial_section` tinyint NOT NULL DEFAULT '1',
  `team_section` tinyint NOT NULL DEFAULT '1',
  `news_section` tinyint NOT NULL DEFAULT '1',
  `menu_section` int NOT NULL DEFAULT '1',
  `special_section` int NOT NULL DEFAULT '1',
  `instagram_section` int NOT NULL DEFAULT '1',
  `table_section` int NOT NULL DEFAULT '1',
  `top_footer_section` tinyint NOT NULL DEFAULT '1',
  `copyright_section` tinyint NOT NULL DEFAULT '1',
  `is_quote` tinyint NOT NULL DEFAULT '1',
  `office_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_appzi` tinyint NOT NULL DEFAULT '0',
  `appzi_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_addthis` tinyint NOT NULL DEFAULT '0',
  `addthis_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `token_no_start` int NOT NULL DEFAULT '1',
  `token_no` int NOT NULL DEFAULT '0',
  `postal_code` tinyint NOT NULL DEFAULT '1' COMMENT '1 - enabled, 0 - disabled',
  `qr_call_waiter` tinyint NOT NULL DEFAULT '1',
  `website_call_waiter` tinyint NOT NULL DEFAULT '1',
  `is_whatsapp` tinyint NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `whatsapp_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_header_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Chat with us on WhatsApp!',
  `whatsapp_popup_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whatsapp_popup` tinyint NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `feature_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonial_section_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `intro_section_button_text` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_video_button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `intro_section_video_button_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_video_button_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_highlight_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `intro_section_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_designation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_top_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_bottom_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_bg_color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_top_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_bottom_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'multipurpose'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `language_id`, `favicon`, `logo`, `preloader_status`, `preloader`, `website_title`, `base_color`, `secondary_base_color`, `support_email`, `support_phone`, `breadcrumb`, `footer_logo`, `footer_text`, `newsletter_text`, `copyright_text`, `intro_section_title`, `intro_title`, `intro_text`, `intro_contact_text`, `intro_contact_number`, `intro_video_image`, `intro_signature`, `intro_video_link`, `intro_main_image`, `team_section_title`, `team_section_subtitle`, `contact_form_title`, `contact_address`, `contact_number`, `contact_mails`, `contact_text`, `latitude`, `longitude`, `map_zoom`, `contact_info_title`, `tawk_to_script`, `google_analytics_script`, `is_recaptcha`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_tawkto`, `is_disqus`, `disqus_script`, `is_analytics`, `maintenance_mode`, `maintenance_text`, `ips`, `testimonial_title`, `blog_section_title`, `blog_section_subtitle`, `blog_title`, `blog_details_title`, `gallery_title`, `team_title`, `contact_title`, `menu_title`, `reservation_title`, `items_title`, `menu_details_title`, `cart_title`, `checkout_title`, `error_title`, `home_version`, `feature_section`, `intro_section`, `testimonial_section`, `team_section`, `news_section`, `menu_section`, `special_section`, `instagram_section`, `table_section`, `top_footer_section`, `copyright_section`, `is_quote`, `office_time`, `is_appzi`, `appzi_script`, `is_addthis`, `addthis_script`, `token_no_start`, `token_no`, `postal_code`, `qr_call_waiter`, `website_call_waiter`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`, `feature_title`, `testimonial_section_text`, `category_section_title`, `intro_section_button_url`, `intro_section_button_text`, `intro_section_video_button_url`, `intro_section_video_button_text`, `intro_section_video_button_title`, `intro_section_highlight_text`, `intro_section_bg_image`, `intro_section_author_image`, `intro_section_author_name`, `intro_section_author_designation`, `intro_section_top_shape_image`, `intro_section_bottom_shape_image`, `features_section_bg_color`, `features_section_top_shape_image`, `features_section_bottom_shape_image`, `theme`) VALUES
(153, 176, '5f4b444b9e646.png', '624b0780275ea.png', 1, '64608323542b9.gif', 'Superv Cafe', 'D3A971', '0A3041', 'info@geotechit.com', '+44 078 9101 1714', '6242eeb240b73.jpg', '5f3fa657c123f.png', 'We are a awward winning multinaitonal Company. We Believe quality and standard worlwidex Consider.', 'Subscribe to gate Latest News, Offer and connect With Us.', 0x436f7079726967687420c2a920323032332e20416c6c20726967687473207265736572766564206279205375706572762e, 'Our Story', 'Our Cafe 20 years working experience.', 'Donec scelerisque dolor id nunc dictum, interdum gravida mauris rhoncus. Aliquam at ultrices nunc. In sem leo, fermentum at lorem in, porta finibus mauris. Aliquam consectetur, ex in gravida porttitor,', 'Our 24/7 Phone Services', '555 666 999 00', '64607433ed3e4.jpg', '5f5b0ee606923.png', 'https://www.youtube.com/watch?v=GlrxcuEDyF8', '64607625d29cd.png', 'Our Team', 'Our Expert Members', 'Leave Reply', '143 castle road 517 district, kiyev port south Canada\r\nNew South Wales, Australia.\r\nJuventus, Italia', '+3 123 456 789,00066668888,+75920057926', 'contact@superv.com,info@superv.com,contact@plusagency.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum.', '100', '110', 0, 'CONTACT INFO', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137437974-2\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-137437974-2\');\r\n</script>', 1, '6LcNapgfAAAAANlRx0HEcRXhjzD5ZzAV7FPpKmds', '6LcNapgfAAAAAHz1D4vlw3Qto7HFKPtmmW_T2nOR', 0, 1, '<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://superv-1.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>', 0, 0, ']]]]]', 'testing2fgfgddd', 'What Our client Saying ?', 'Our Blog', 'Latest News Feeds', 'Latest Blog', 'Blog Details', 'Our Gallery', 'Team Members', 'Contact Us', 'Our Menu', 'Reserve Table', 'Our Items', 'Item Details', 'Cart', 'Checkout', '404 Not Found', 'static', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Mon to Friday  9Am - 11 Pm', 0, '<!-- Appzi: Capture Insightful Feedback -->\r\n<script async src=\"https://w.appzi.io/w.js?token=p5cpm\"></script>\r\n<!-- End Appzi -->', 0, '<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5e74e0cf10c08cfa\"></script>', 1, 369, 1, 1, 1, 0, '+8801766199298', 'Chat with us on WhatsApp!', 'Admin can also disable WhatsApp Chat\r\n& enable Tawk.to chat\r\n(Admin can set any message here)', 1, 'Explore Our Most Popular Bakery & Pestry Itemsdd', 'ssffffffffffffffff', 'Discover Your Favorite Bakery And Pastry Foods', 'https://www.youtube.com/watch?v=GlrxcuEDyF8', 'Order Now', NULL, 'How To Place Order', 'fff', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, '640efc12b3d40.jpg', 'dfdff test', 'sdfdd test', '64313d1503aa7.png', '641ea69a4b116.png', '62401A', '64252e50659d6.png', '64252e5065dcb.png', 'multipurpose'),
(154, 177, '5f4b444b9e646.png', '624b0780275ea.png', 1, '64608323542b9.gif', 'Superv Cafe', 'D3A971', '0A3041', 'info@geotechit.com', '+44 078 9101 1714', '6242eeb240b73.jpg', '5f4b477743017.png', 'نحن شركة متعددة الأطراف فائزة بشكل كبير. نحن نؤمن بالجودة والمعايير التي نأخذها بعين الاعتبار.', 'Subscribe to gate Latest News, Offer and connect With Us.', 0xd8acd985d98ad8b920d8a7d984d8add982d988d98220d985d8add981d988d8b8d8a920c2a920323032302e, 'قصتنا', 'لدينا 20 عاما من الخبرة العملية في مقهى.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام', 'خدماتنا الهاتفية 24/7', '555 666 999 00', '5f3e498da6634.jpg', '5f3e498da6301.png', 'https://www.youtube.com/watch?v=GlrxcuEDyF8', '641eca72199ca.png', 'فريقنا', 'الأعضاء الخبراء لدينا', 'اترك الرد', '143 طريق القلعة 517 حي,ميناء كييف جنوب كندا', '+3 123 456 789,00066668888', NULL, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل', '1.00000', '45425', 10, 'معلومات الاتصال', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137437974-2\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-137437974-2\');\r\n</script>', 1, '6LcNapgfAAAAANlRx0HEcRXhjzD5ZzAV7FPpKmds', '6LcNapgfAAAAAHz1D4vlw3Qto7HFKPtmmW_T2nOR', 0, 1, '<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://superv-1.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>', 0, 0, ']]]]]', 'testing2fgfgddd', 'ماذا يقول عملائنا؟', 'أحدث الأخبار', 'تعرف على فريق الخبراء التنفيذيين لدينا ..', 'أحدث المدونات', 'تفاصيل المدونة', 'معرضنا', 'أعضاء الفريق', 'اتصل بنا', 'القائمة لدينا', 'حجز', 'العناصر لدينا', 'تفاصيل العنصر', 'عربة التسوق', 'الدفع', '404 غير موجود', 'static', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Mon to Friday  9Am - 11 Pm', 0, '<!-- Appzi: Capture Insightful Feedback -->\r\n<script async src=\"https://w.appzi.io/w.js?token=p5cpm\"></script>\r\n<!-- End Appzi -->', 0, '<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5e74e0cf10c08cfa\"></script>', 1, 11, 1, 1, 1, 0, '+8801766199298', 'Chat with us on WhatsApp!', 'Admin can also disable WhatsApp Chat\r\n& enable Tawk.to chat\r\n(Admin can set any message here)', 1, 'وجبات خفيفة ساخنة', NULL, 'dfdfs', 'https://www.youtube.com/watch?v=GlrxcuEDyF8', 'اطلب الان', NULL, 'لفقرات في الصفحة التي', 'لفقرات في الصفحة التي', NULL, NULL, '641eca7219e17.jpg', 'لفقرات في الصفحة التي', 'لفقرات في الصفحة التي', '641eacf9245fa.png', '641eacf92481e.png', NULL, NULL, NULL, 'multipurpose');

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `status`, `serial_number`) VALUES
(1, 176, 'Cooking', 1, 1),
(3, 176, 'Foods', 1, 2),
(4, 176, 'Burgers', 1, 3),
(5, 176, 'Fun & Jamming', 1, 4),
(6, 176, 'Recipes', 1, 5),
(7, 177, 'طبخ', 1, 1),
(8, 177, 'أغذية', 1, 2),
(9, 177, 'برجر', 1, 3),
(10, 177, 'المرح والتشويش', 1, 4),
(11, 177, 'وصفات', 1, 5),
(12, 176, 'Shop Manager', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `bcategory_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `main_image`, `content`, `tags`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(66, 176, 1, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', '1598694784.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 1, '2020-08-29 03:47:49', '2020-08-29 03:53:04'),
(67, 176, 3, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', '1598694802.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 2, '2020-08-29 03:50:37', '2020-08-29 03:53:22'),
(68, 176, 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', 'Lorem-ipsum-dolor-sit-amet,-consectetur-adipiscing-elit,-sed-do-eiusmod-tempor', '1598694694.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 3, '2020-08-29 03:51:34', '2020-08-29 03:51:34'),
(69, 176, 3, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', '1598694769.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 4, '2020-08-29 03:52:49', '2020-08-29 03:52:49'),
(70, 176, 1, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', '1598694837.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 5, '2020-08-29 03:53:57', '2020-08-29 03:53:57'),
(71, 176, 5, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', '1598694875.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 6, '2020-08-29 03:54:35', '2020-08-29 03:54:35'),
(72, 176, 3, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', '1598694928.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 7, '2020-08-29 03:55:28', '2020-08-29 03:55:28'),
(73, 176, 3, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', '1598694962.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 8, '2020-08-29 03:56:02', '2020-08-29 03:56:02'),
(74, 176, 1, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', '1598695007.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 9, '2020-08-29 03:56:47', '2020-08-29 03:56:47'),
(75, 177, 7, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز', '1598773516.jpg', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, NULL, NULL, NULL, 1, '2020-08-30 01:45:16', '2020-08-30 01:45:16'),
(76, 177, 8, 'المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص', 'المحتوى)-ويُستخدم-في-صناعات-المطابع-ودور-النشر.-كان-لوريم-إيبسوم-ولايزال-المعيار-للنص', '1598773566.jpg', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, NULL, NULL, NULL, 2, '2020-08-30 01:46:06', '2020-08-30 01:46:06'),
(77, 177, 11, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز', '1598773612.jpg', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, NULL, NULL, NULL, 3, '2020-08-30 01:46:52', '2020-08-30 01:46:52'),
(78, 177, 8, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس', 'لوريم-إيبسوم(Lorem-Ipsum)-هو-ببساطة-نص-شكلي-(بمعنى-أن-الغاية-هي-الشكل-وليس', '1598773671.jpg', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, NULL, NULL, NULL, 4, '2020-08-30 01:47:51', '2020-08-30 01:47:51');
INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `main_image`, `content`, `tags`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(79, 177, 7, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز', '1598773736.jpg', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, NULL, NULL, NULL, 5, '2020-08-30 01:48:56', '2020-08-30 01:48:56'),
(80, 177, 10, 'المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص', 'المحتوى)-ويُستخدم-في-صناعات-المطابع-ودور-النشر.-كان-لوريم-إيبسوم-ولايزال-المعيار-للنص', '1598773784.jpg', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, NULL, NULL, NULL, 6, '2020-08-30 01:49:44', '2020-08-30 01:49:44'),
(81, 177, 8, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز', '1598773832.jpg', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, NULL, NULL, NULL, 7, '2020-08-30 01:50:32', '2020-08-30 01:50:32'),
(82, 177, 8, 'المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص', 'المحتوى)-ويُستخدم-في-صناعات-المطابع-ودور-النشر.-كان-لوريم-إيبسوم-ولايزال-المعيار-للنص', '1598773871.jpg', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, NULL, NULL, NULL, 8, '2020-08-30 01:51:11', '2020-08-30 01:51:11'),
(83, 177, 7, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز', 'هناك-حقيقة-مثبتة-منذ-زمن-طويل-وهي-أن-المحتوى-المقروء-لصفحة-ما-سيلهي-القارئ-عن-التركيز', '1598773908.jpg', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, NULL, NULL, NULL, 9, '2020-08-30 01:51:48', '2020-08-30 01:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `bottomlinks`
--

CREATE TABLE `bottomlinks` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bottomlinks`
--

INSERT INTO `bottomlinks` (`id`, `language_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(11, 169, 'Career', 'https://megasoft.biz/plusagency/services?category=9', NULL, NULL),
(12, 169, 'Terms of service', 'https://megasoft.biz/plusagency/services?category=9', NULL, NULL),
(13, 169, 'Refund policy', 'https://megasoft.biz/plusagency/services?category=9', NULL, NULL),
(14, 176, 'Privacy Policy', 'https://codecanyon.megasoft.biz/superv/Privacy-Policy/4/page', NULL, NULL),
(15, 176, 'Terms & Conditions', 'https://codecanyon.megasoft.biz/superv/Terms-&-Conditions/3/page', NULL, NULL),
(16, 176, 'About', 'https://codecanyon.megasoft.biz/superv/About-Us/1/page', NULL, NULL),
(17, 177, 'link 1', 'https://megasoft.biz/alphasoft/', NULL, NULL),
(18, 177, 'link 2', 'https://megasoft.biz/alphasoft/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'percentage, fixed',
  `value` decimal(11,2) DEFAULT NULL,
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `start_date`, `end_date`, `minimum_spend`, `created_at`, `updated_at`) VALUES
(2, 'KHABO60', 'KHABO60', 'fixed', 60.00, '12/24/2020', '12/30/2020', 180.00, '2020-12-23 02:23:36', '2020-12-23 02:23:36'),
(3, 'Victory Day', 'BIJOY16', 'percentage', 16.00, '12/16/2020', '01/07/2021', 10.00, '2020-12-23 02:32:55', '2020-12-24 04:54:59'),
(4, 'Special', 'Special14', 'percentage', 14.00, '12/29/2020', '01/09/2021', 400.00, '2020-12-23 03:54:07', '2020-12-24 08:54:42'),
(5, 'Shop Manager', '123456789', 'percentage', 10.00, '04/01/2023', '05/31/2023', 1.00, '2023-05-04 04:33:42', '2023-05-04 04:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(49, 'jahoyam684 jahoyam684', 'faltusone@gmail.com', '1766199298', NULL, '2024-07-15 13:54:43', '2024-09-22 07:23:45'),
(50, 'Samiul Alim Pratik', 'pratik.anwar@gmail.com', '08722619267', NULL, '2024-07-15 17:16:51', '2024-09-10 16:45:44'),
(51, 'Spartan Sara', 'faltusone@gmail.com', '3423423', NULL, '2024-07-15 17:17:37', '2024-07-15 17:17:37'),
(52, 'ffdsfsd', 'faltusone@gmail.com', '03148815473', NULL, '2024-07-15 17:22:45', '2024-07-15 17:22:45'),
(53, 'Samiul Alim Pratik', 'pratik.anwar@gmail.com', '03133145193', NULL, '2024-08-28 12:02:25', '2024-09-23 11:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `email_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_body` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`) VALUES
(2, 'email_verification', 'Verify Your Email', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f3c623e207b637573746f6d65725f6e616d657d3c2f623e2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b20746865206c696e6b2062656c6f7720746f2076657269667920796f757220656d61696c2e3c2f703e3c703e7b766572696669636174696f6e5f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c2f703e3c703e7b776562736974655f7469746c657d3c2f703e),
(3, 'order_received', 'Order Received', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e2072656365697665642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(4, 'order_preparing', 'Preparing Your Order', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e4368656620686173207374617274656420707265706172696e6720796f7572206f72646572656420666f6f64732e3c62723e4f72646572204e756d6265723a266e6273703b20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(5, 'order_ready_to_pickup', 'Your Order is Ready to Pickup', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220697320726561647920746f207069636b75702e204f75722064656c6976657279206d616e2077696c6c207069636b20757020746865206f7264657220736f6f6e2e3c62723e4f72646572204e756d6265723a266e6273703b20237b6f726465725f6e756d6265727d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(6, 'order_ready_to_pickup_pick_up', 'Your order is ready to pick up', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220697320726561647920746f207069636b75702e20506c65617365207069636b757020796f7572206f7264657220617420796f75722063686f73656e206461746520262074696d652e3c62723e4f72646572204e756d6265723a266e6273703b20237b6f726465725f6e756d6265727d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(7, 'order_pickedup', 'Order has been pickedup', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f7572206f72646572206973207069636b656420757020666f722064656c69766572792e2049742077696c6c206265206172726976656420696e206120666577206d6f6d656e74732e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(8, 'order_pickedup_pick_up', 'You have picked up Ordered Food', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f75722068617665207069636b656420757020796f7572206f72646572656420466f6f642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(9, 'order_delivered', 'Order has been Delivered', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e2064656c6976657265642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(10, 'order_cancelled', 'Order is Cancelled', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f203c623e7b637573746f6d65725f6e616d657d3c2f623e2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e2063616e63656c6c65642e3c62723e4f72646572204e756d6265723a207b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e3c623e7b776562736974655f7469746c657d3c2f623e3c2f703e),
(11, 'order_ready_to_serve', 'Your order is ready to serve on table', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f7572206f7264657220697320726561647920746f207365727665206f6e207461626c652e205761697465722077696c6c2073657276657220746865206f7264657220696e2061206d6f6d656e742e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(12, 'order_served', 'You order is served on table', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f7572206f7264657220697320736572766564206f6e20796f7572207461626c652e20456e6a6f7920796f757220466f6f642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(13, 'food_checkout', 'Order has been placed', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e20706c61636564207375636365737366756c6c792e205765206861766520617474616368656420616e20696e766f69636520696e2074686973206d61696c2e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(14, 'reservation_accept', 'Reservation Request Accepted', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f75207265736572766174696f6e207265717565737420686173206265656e2061636365707465642e3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(15, 'reservation_reject', 'Reservation Request Rejected', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f75207265736572766174696f6e207265717565737420686173206265656e2072656a65637465642e3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `question`, `answer`, `serial_number`) VALUES
(20, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 1),
(21, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 2),
(22, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 3),
(23, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 4),
(24, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 5),
(25, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 6),
(26, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 7),
(27, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 8),
(28, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 9),
(29, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 10),
(50, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 1),
(51, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 2),
(52, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 3),
(53, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 4),
(54, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 5),
(55, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 6),
(56, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 7),
(57, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 8),
(58, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 9),
(59, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `image`, `title`, `serial_number`, `created_at`, `updated_at`) VALUES
(38, 176, '1599804681.png', 'Fresh Items', 2, NULL, NULL),
(42, 176, '1598681208.png', 'Tasty Foods', 3, NULL, NULL),
(43, 176, '1598681487.png', 'Sweet Cheeses', 4, NULL, NULL),
(50, 176, '1598681561.jpg', 'Best Pizzas', 5, NULL, NULL),
(51, 176, '1598681630.jpg', 'Hot Snacks', 6, NULL, NULL),
(52, 177, '1598709367.png', 'أغذية صحية', 1, NULL, NULL),
(53, 177, '1598709399.png', 'الأصناف الطازجة', 2, NULL, NULL),
(54, 177, '1598709420.png', 'Tasty Foods', 3, NULL, NULL),
(55, 177, '1598709446.png', 'جبن حلو', 4, NULL, NULL),
(56, 177, '1598709473.jpg', 'أفضل بيتزا', 5, NULL, NULL),
(57, 177, '1598709494.jpg', 'وجبات خفيفة ساخنة', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `language_id`, `title`, `image`, `serial_number`, `created_at`, `updated_at`) VALUES
(78, 176, 'Boti Kabab', '1598075956.jpg', 1, '2020-08-21 23:59:16', '2020-08-21 23:59:16'),
(79, 176, 'Chef Cooking', '1598076003.jpg', 2, '2020-08-22 00:00:03', '2020-08-22 00:00:03'),
(80, 176, 'Blackberry', '1598076734.jpg', 3, '2020-08-22 00:12:14', '2020-08-22 00:12:14'),
(81, 176, 'Cutting Vegetables', '1598076779.jpg', 4, '2020-08-22 00:12:59', '2020-08-22 00:12:59'),
(82, 176, 'Black Burger', '1598076815.jpg', 5, '2020-08-22 00:13:35', '2020-08-22 00:13:35'),
(83, 176, 'Wine Glasses', '1598076856.jpg', 6, '2020-08-22 00:14:16', '2020-08-22 00:14:16'),
(84, 176, 'Tomatoes', '1598076946.jpg', 7, '2020-08-22 00:15:46', '2020-08-22 00:15:46'),
(85, 177, 'بوتي كباب', '1598770469.jpg', 1, '2020-08-30 00:54:29', '2020-08-30 00:54:29'),
(86, 177, 'طاه الطبخ', '1598770506.jpg', 2, '2020-08-30 00:55:06', '2020-08-30 00:55:06'),
(87, 177, 'بلاك بيري', '1598770535.jpg', 3, '2020-08-30 00:55:35', '2020-08-30 00:55:35'),
(88, 177, 'تقطيع الخضار', '1598770563.jpg', 4, '2020-08-30 00:56:03', '2020-08-30 00:56:03'),
(89, 177, 'بلاك برجر', '1598770590.jpg', 5, '2020-08-30 00:56:30', '2020-08-30 00:56:30'),
(90, 177, 'كؤوس النبيذ', '1598770685.jpg', 6, '2020-08-30 00:58:05', '2020-08-30 00:58:05'),
(91, 177, 'طماطم', '1598770727.jpg', 7, '2020-08-30 00:58:47', '2020-08-30 00:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint UNSIGNED NOT NULL,
  `endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `endpoint`, `created_at`, `updated_at`) VALUES
(3, 'https://fcm.googleapis.com/fcm/send/dRDyV7OmiFg:APA91bHVyRIr4Fex43DVFIM_CC6Ldo9hieQFcgewtgoLNGfK_fpIzFgGAAP_INoOTjnmOzSjg5K1qJUKKLefZuz5uQBj3YFFuyREw5YqWVQt7AJTeAfo-bfiFEz6-BytS3JoYseML_wt', '2020-12-26 07:38:28', '2020-12-26 07:38:28'),
(4, 'https://fcm.googleapis.com/fcm/send/dt--VeNXQpk:APA91bEXROqytusuQiBN-WidokRxoe_IH7kR6Qi6zXD1Ajx-XyQ4EtEoJxg62WwI-j0RFq2xUjBe-Is7h17zlUMntaf4mgCUeDFtLiW98h8xoOfL3ynutkpMHmyqoldRHVZDZGOQY98X', '2020-12-26 10:04:17', '2020-12-26 10:04:17'),
(5, 'https://fcm.googleapis.com/fcm/send/fetLuDtmxNg:APA91bHqqBZBZzCuFd8Ae3hGHo5q972ktIjfZuRzek59nJXiwdn88UBtnuU9IwaxVznCJGxn1SdhlOFZ8sIsGyVBoK-GIm6KCk0iTuvwc1e3o0H4hfunWZe-o98HQpIXpYDAkan0DiAy', '2021-03-24 07:37:03', '2021-03-24 07:37:03'),
(6, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgXhAyYoUVkJ8ymIaucMN78o9LdNIJ2ZhWATCMTUa79O7Q_6IWuwZlWOkNi33elgKb73GjntPc0ErLR7FF9b0UU0BNiDpJdsEv0uqcGKdNWkiYlAdlmNPaR0rKI8VivAkeCPzjYhykXGdYpXVpR3TxceTSpWBzxivvTpCTLQlUq72QNO8', '2021-03-26 11:47:44', '2021-03-26 11:47:44'),
(7, 'https://fcm.googleapis.com/fcm/send/cmWvhqu3tv8:APA91bFobMGJpxJvuqHpFU7Y5vtVZNcvsykv_So9xDDoCqKLewXINW8QbmIkpha9i7CJZPAoaZjST1cJPnwwa0rbp-VCk8LOWRoxcuIyyUlsOIFCMCOwysBSFZm_1eBbVV9aeyLSENGc', '2021-04-03 00:02:31', '2021-04-03 00:02:31'),
(8, 'https://fcm.googleapis.com/fcm/send/eh4uTNYjL8g:APA91bEX1UoNIWd9wkORCAREAofoRcvvbmRdDNMQwd1d-EZ0lbfCU5CUXewaZucNBK81XO0z6h0LnUaBFPHRlEDrUGm90vu_GHDd5lrndy3l6Otqf5i921YWUa-Xwn4i0MSW5uoPAeMQ', '2021-04-16 11:36:28', '2021-04-16 11:36:28'),
(9, 'https://fcm.googleapis.com/fcm/send/dObB80OmAaw:APA91bFv7cirSdv3z2G0IU7AlDsIylsVt5C2Z3q53ZUNLMlvlOIfQiOshMF-xKknu8706NDLq9PJyhl7eCdOZlzw-pxRrgsW-p2PjU9N1bePkHnYSIPnTp5a4g1N1tDQQQQWNDjy9slX', '2021-05-06 09:40:57', '2021-05-06 09:40:57'),
(10, 'https://fcm.googleapis.com/fcm/send/eZKf01giLZc:APA91bH4tmbQ3s4Lv-B9nztPSZW3yd7Y2uXC-60sHsGIhKkOlUxP6oC68n37Vtq-FBk-OlTVlU76weuJ_vrW0BliQoqvrNRb8xstdCONgBIs47-5fgbphTiuONZgUp1nDtX8LfcFM-Iy', '2021-05-23 00:31:34', '2021-05-23 00:31:34'),
(11, 'https://fcm.googleapis.com/fcm/send/cPVrToqh8P0:APA91bEiMbgqN8bDAhr0mbdzXPcFOvc77t1WzG17LnxbEo7shs1OJ-UhjuXbKMj71Nx0_EjBlZNmj4Nl44WiksfgkV3COShKvj02S_ZpkTe5fD6WFwtIlPZ6LO-IrH57t-lVOinUQkHw', '2022-03-08 11:07:58', '2022-03-08 11:07:58'),
(12, 'https://fcm.googleapis.com/fcm/send/eSdjeQS-6ec:APA91bFUxeQX0vknYUYO5cF4Bau2chgFvbcNkVDiWxQzJFCC-koRWSuqHWlB-CNygN8YDUgGxCLD5EVEx8MpSGHTxkTpypT7lCxo9MiYVJdRjmLkxlLilJmyI2277FKumLhLbQM55CmZ', '2022-03-25 09:37:15', '2022-03-25 09:37:15'),
(13, 'https://fcm.googleapis.com/fcm/send/fVC8cace-fw:APA91bEWCMtj2rRSwKQ1q6JQKrdw5X4JAk8FKP6kbWS9Zr7koUH_yRlG7mVwaycVt20EO7UYs0xe3DP26Xba3xGo4tPhS3Rjapa3i-2MNewsDloDPsDppAFkm-X4FKqpWqS_Vk6L9XMS', '2022-03-25 15:10:08', '2022-03-25 15:10:08'),
(14, 'https://fcm.googleapis.com/fcm/send/eAFjl2NwK-s:APA91bEp8b2PiBhmwX_zmnbBUTHukeW5vNABILeBOl5rsDHvN95kgd_3ywilHH9NfNnYpm7a7aJgNPXUc0gJ_7uaFuYjitNc-QRbXz7ys5ZGdtfSKOnGpiuyegInmd4Gzk2SpknKc4wc', '2022-03-26 05:55:51', '2022-03-26 05:55:51'),
(15, 'https://fcm.googleapis.com/fcm/send/cYxO9t_xdXE:APA91bGQ1gBBBwp_ci8cdd_QyMhpiNn_YQHz5T7jYq_Rpy361fJn38T1n4_JepcLWvTVcWKS0_rKSxDZwj98j4tcKJ4WDTYftcpmHSOwzZ_wHMo-DbmOg7OCmo1H5bmM_qzs1JwSsKq3', '2022-03-26 06:11:44', '2022-03-26 06:11:44'),
(16, 'https://fcm.googleapis.com/fcm/send/fL9PPVT6jlM:APA91bF1dsI1uMzo_fGgOiP-6G_LSRBmOpdao8C9sSPUtd4Pu9bvcJbOcFmiCbEKxdD2TGk6elsRlMa44pw4m73kcZy1Z6dWdk4uFxoqwF542pO4ZgneVD6DT1-2cCiMcadxvdHmQAQv', '2022-03-26 06:11:59', '2022-03-26 06:11:59'),
(17, 'https://fcm.googleapis.com/fcm/send/dvFmtOYkKOE:APA91bHpWKVtET2wBSGnEvLtLXpy5S150lRksdlSMTIDfiUNahnnOsJErkgga8EjvraIjSHkSe_epQEiN7naxS7w8vz9PmnOURQi4Bu4dBQj--WhHTyH50BPXBF_ZIVKcaOIlo3KVadt', '2022-03-26 06:33:01', '2022-03-26 06:33:01'),
(18, 'https://fcm.googleapis.com/fcm/send/fVc8RLnHZ6M:APA91bG2us8fW833NzlJ1ilqh8kkVoNrbKck6JZezNXegKjw8NwAm8vDovgpLndAmHNJA6gRfznPD_Rc8vwJ7XXOE3pE0KBokTaozkMq5M4UbPp8MReZ3ho6_iyqx9FrnXjnpxR9wxpa', '2022-03-28 13:24:40', '2022-03-28 13:24:40'),
(19, 'https://fcm.googleapis.com/fcm/send/fgbnPkwsCU8:APA91bGJfLBxkTgEtJePLRIsyfSu2BIPQ22BYwHpAhVrA4whhAdsiHpOSOVr4Vcmp_pTLgRfP2PisJm_fG7so9YU0lNjbXEYHQJ24RkHcDf2eI3mP_5_BM9ALtjdM78nUxodMPYY4k5x', '2022-03-29 07:23:02', '2022-03-29 07:23:02'),
(20, 'https://fcm.googleapis.com/fcm/send/ePVbno9kWtA:APA91bHQi13UwmBnf_z9erJ2VBB78MK_hfeRvQ2tDeLiDgHC4Sl71dDktuhYtjOEamBq_w75T9_Nu0tJqw3YPRPqKW09ObMCn9LiA6pbQKWNYnJujatjDFL0VzZAhB_RLPo8KAdadkqz', '2022-03-29 07:26:21', '2022-03-29 07:26:21'),
(21, 'https://fcm.googleapis.com/fcm/send/dgvxW5cNw5g:APA91bH8Au63veVx1bkKpGB0g_MxoQICgJ3bWaP-QtyowdorZUGcayo5xASkTEFjJri6IjOyvRP7WKCv4jbr4RxT4PD_zr-3AwHlpG00d8rDd-bTvzyvTK2Aj0r59zpKtNSEw8a99VlZ', '2022-03-29 09:33:41', '2022-03-29 09:33:41'),
(22, 'https://fcm.googleapis.com/fcm/send/dH8KnORYEVQ:APA91bEJFuFWl1iloiH44Fuot4Gnoh5p0aUxs_mtrPVsm7O3Dkjd8vELa2DeW9ETdHFcSBkyZt8g0dERLI7jZU3sz5Kv0UP8S2UuDgkRGHC3hRIDp9PdYR8srv-7y_EitmUEY8kBhE9M', '2022-03-29 09:49:54', '2022-03-29 09:49:54'),
(23, 'https://fcm.googleapis.com/fcm/send/eV2Fy6cICFg:APA91bH64deQsEs8og6oMqWSN0IV80-6IJtBR0MmRHwpm6vNvyY1Q-mVU8IK9x_BvxPuTNje_k1Ur6G1WhNqi_kmlCXQZoikKjkeOuLzQ0JjcoT5enML53YCw__PX9i_yathf5ajux8x', '2022-03-29 11:31:26', '2022-03-29 11:31:26'),
(24, 'https://fcm.googleapis.com/fcm/send/fjhrX4tX4Cc:APA91bGSxATfx2askizSwnj_XEEe1dirC38jMXFsCL-Nip69CVioMNbApRMS8_A3RzlWDBXI1sUm2DdSq0-OnXsqO1fror-THjD3R107bF_OBsJWSy4YfrBCdlqD_KZVP_MO3FJbIyIO', '2022-04-04 14:22:56', '2022-04-04 14:22:56'),
(25, 'https://fcm.googleapis.com/fcm/send/dMfJBWeK59g:APA91bHVx8OoUaqqaZROwpYLGi0oL_hpP27-BHhKWcsb_Cf3JhO_0nfblhoeyZWsntig9h4yIv20-lwaiIUVaKQcZ_GtyC1P4DWizrLSkGtYLUtO1Erv9Q5SN1gPfGFy9BN9-J9M17Qi', '2022-04-06 14:45:27', '2022-04-06 14:45:27'),
(26, 'https://fcm.googleapis.com/fcm/send/eFLG-3oEzKI:APA91bF934GtVfeJ3I-0pekZ3k2uYGQyExkei8SLug9CuMb0uXNj8p0kkc_kGPuzAbW0oVt3hlOWdNKmChP2aAWkPRwfGtkxgnDodUhkEZamoo92yi50N6Q65AOOGJVrydcjfVmWFoWF', '2022-05-25 12:10:23', '2022-05-25 12:10:23'),
(27, 'https://fcm.googleapis.com/fcm/send/ddjYk0PfZN4:APA91bHrypeB-IsqioQhnJ5YUV1nZxv-bIK5tKRJppgC4q2mcmEib9ng0gFFlm3_xs8jiHbzQ_KnQPxthBm3qaMnEyRFuv2r-jjs_xE5ie6kVK1zCKjNL1wE0nDC8Ftu-vlA0qtCDYs7', '2023-04-10 05:35:33', '2023-04-10 05:35:33'),
(28, 'https://fcm.googleapis.com/fcm/send/c6z1jcd4ug8:APA91bHU62xxRJMvKKsE2hAVbIP5aHsYN5kNXcyMJ1MJ7LU16BG1IJiHmangsq9yWPlFoIpPhKB_uIzldr7lr4jh01AqC5NS4tZVHYBZn_zrkZuWh1uOWPxtQQGudUwEc5XGFv_M1THK', '2023-04-10 07:46:43', '2023-04-10 07:46:43'),
(29, 'https://fcm.googleapis.com/fcm/send/eZJp6IVs6lo:APA91bHggwA-gOtuZj-610cq9vO2dR3OuTKsklGG4bHXztdyX4tIQsDX--944xanSG3DWa2wkq6EflFM0i-r-OXQCsFa2nGloFQCyDvOwTWPGaXSbD3LCXAzvqJ-K2SFOvvsMSFq8h-7', '2023-05-30 10:54:57', '2023-05-30 10:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `intro_points`
--

CREATE TABLE `intro_points` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `intro_section_rating_point` int DEFAULT NULL,
  `intro_section_rating_symbol` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intro_points`
--

INSERT INTO `intro_points` (`id`, `language_id`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`, `intro_section_rating_point`, `intro_section_rating_symbol`) VALUES
(3, 176, 'fab fa-accessible-icon', '100% Pure Food', 'We provide 100& Pure & handmade foods', 2, NULL, NULL, 74, '%'),
(7, 177, 'fab fa-accusoft', 'اطلب الان', 'اطلب الاناطلب الانلصفح', 2, NULL, NULL, NULL, NULL),
(8, 177, 'fab fa-accessible-icon', 'اطلب الان', 'اطلب الاناطلب الاناطلب الان', 3, NULL, NULL, NULL, NULL),
(9, 176, 'fab fa-accusoft', '100% Pure Foods', 'We provide 100& Pure & handmade foods', 10, NULL, NULL, 100, '%'),
(19, 176, 'fab fa-accessible-icon', '111', NULL, 10, NULL, NULL, 10000, '%');

-- --------------------------------------------------------

--
-- Table structure for table `jcategories`
--

CREATE TABLE `jcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jcategories`
--

INSERT INTO `jcategories` (`id`, `language_id`, `name`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(22, 176, 'Web Developer', 1, 1, '2019-12-21 20:34:11', '2020-02-10 21:01:36'),
(23, 176, 'Web Designer', 1, 2, '2019-12-21 20:34:22', '2020-02-10 21:01:30'),
(24, 176, 'Team Leader', 1, 3, '2019-12-21 20:35:02', '2020-02-10 21:39:34'),
(25, 176, 'IOS Developer', 1, 4, NULL, NULL),
(26, 176, 'Andriod Developer', 1, 5, '2019-12-21 20:35:27', '2020-02-10 21:39:34'),
(34, 177, 'مطور ويب', 1, 1, '2019-12-29 23:49:09', '2020-02-10 21:40:10'),
(35, 177, 'مصمم الويب', 1, 2, '2019-12-29 23:49:23', '2020-02-10 21:40:10'),
(36, 177, 'رئيس الفريق', 1, 3, '2019-12-29 23:49:41', '2020-02-10 21:40:10'),
(37, 177, 'مطور IOS', 1, 4, '2019-12-29 23:49:54', '2020-02-10 21:40:10'),
(38, 177, 'الروبوت المطور', 1, 5, '2019-12-29 23:50:07', '2020-02-10 21:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `jcategory_id` int DEFAULT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` int DEFAULT NULL,
  `deadline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibilities` blob,
  `employment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_requirements` blob,
  `experience_requirements` blob,
  `additional_requirements` blob,
  `job_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` blob,
  `benefits` blob,
  `read_before_apply` blob,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jcategory_id`, `language_id`, `title`, `slug`, `vacancy`, `deadline`, `experience`, `job_responsibilities`, `employment_status`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `job_location`, `salary`, `benefits`, `read_before_apply`, `email`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(17, 22, 176, 'Software Engineer - Laravel, Vue JS', 'software-engineer-laravel-vue-js', 3, '12/31/2019', '3 to 4 year(s)', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'Full-time', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'Remote Job', 0x3c7370616e207374796c653d22666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e24323030303c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c62723e, 'drop_your_cv@plusagency.com', 1, NULL, NULL, '2019-12-21 20:44:00', '2020-02-10 21:49:54'),
(18, 22, 176, 'PHP Developer - Laravel, Codeigniter', 'php-developer-laravel-codeigniter', 2, '12/31/2019', '2 to 3 year(s)', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'Full-time', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'California, USA', 0x3c7370616e207374796c653d22666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e2431303030202d2024313530303c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c666f6e7420636f6c6f723d2223666633623330223e2a50686f746f67726170683c2f666f6e743e266e6273703b6d75737420626520656e636c6f73656420776974682074686520726573756d652e3c62723e, 'drop_your_cv@plusagency.com', 2, NULL, NULL, '2019-12-21 21:14:03', '2020-02-10 21:49:54');
INSERT INTO `jobs` (`id`, `jcategory_id`, `language_id`, `title`, `slug`, `vacancy`, `deadline`, `experience`, `job_responsibilities`, `employment_status`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `job_location`, `salary`, `benefits`, `read_before_apply`, `email`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(19, 23, 176, 'Front End Software Engineer', 'Front-End-Software-Engineer', 5, '12/27/2019', '2 to 5 year(s)', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'Full-time', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3120746f20332079656172733c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c62723e, 'Paris, France', 0x3c7370616e207374796c653d22666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269662c20736f6c61696d616e6c6970693b223e4e65676f746961626c653c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c7370616e207374796c653d226261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c62723e3c7370616e207374796c653d226261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c62723e3c7370616e207374796c653d226261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c62723e3c7370616e207374796c653d226261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c62723e, 'drop_your_cv@plusagency.com', 3, NULL, NULL, '2019-12-21 21:15:20', '2020-02-10 21:49:54'),
(20, 24, 176, 'Agriculture Market Systems Leader', 'agriculture-market-systems-leader', 4, '12/28/2019', 'At least 7 year(s)', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'Full-time', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'California, USA', 0x2431303030202d2024313530303c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c62723e, 'drop_your_cv@plusagency.com', 4, NULL, NULL, '2019-12-21 21:16:28', '2020-02-10 21:49:54'),
(25, 34, 177, 'مهندس برمجيات - Laravel ، Vue JS', 'مهندس-برمجيات---Laravel-،-Vue-JS', 3, '01/07/2020', '3 الى 4 سنوات', 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed984d8afd98ad98320d981d987d98520d985d8aad8b9d985d98220d984d984d8aad988d8a7d981d98220d8b9d8a8d8b120d8a7d984d985d8b3d8aad8b9d8b1d8b620d988d984d98520d8aad982d98520d8a8d8a5d986d8b4d8a7d8a120d8a3d8aed8b7d8a7d8a120d984d987d8b0d98720d8a7d984d8a3d8b3d8a8d8a7d8a82e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8a3d986d8aa20d985d8abd8a7d984d98a20d984d984d8a8d98ad983d8b3d98420d981d98a20d8aad8add988d98ad984d8a7d8aa20d8a7d984d8aad8b5d985d98ad98520d988d8aad981d983d8b120d981d98a20d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d985d8add985d988d98420d8a7d984d8a3d988d984d9892e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d985d8b9d8b1d981d8a920d8a8d985d8b9d8a7d984d8acd8a7d8aa2043535320d8a7d984d8a3d988d984d98ad8a920d988d8a7d8b3d8aad8b9d984d8a7d985d8a7d8aa20d8a7d984d988d8b3d8a7d8a6d8b720d988d8b6d8bad8b720d8a7d984d8b5d988d8b120d988d8aad983d988d98620d8acd98ad8afd98bd8a720d981d98a20d8aad8b5d8add98ad8ad20d8a7d984d8a3d8aed8b7d8a7d8a12e3c2f666f6e743e3c2f6469763e, 'وقت كامل', 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed984d8afd98ad98320d981d987d98520d985d8aad8b9d985d98220d984d984d8aad988d8a7d981d98220d8b9d8a8d8b120d8a7d984d985d8b3d8aad8b9d8b1d8b620d988d984d98520d8aad982d98520d8a8d8a5d986d8b4d8a7d8a120d8a3d8aed8b7d8a7d8a120d984d987d8b0d98720d8a7d984d8a3d8b3d8a8d8a7d8a82e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8a3d986d8aa20d985d8abd8a7d984d98a20d984d984d8a8d98ad983d8b3d98420d981d98a20d8aad8add988d98ad984d8a7d8aa20d8a7d984d8aad8b5d985d98ad98520d988d8aad981d983d8b120d981d98a20d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d985d8add985d988d98420d8a7d984d8a3d988d984d9892e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d985d8b9d8b1d981d8a920d8a8d985d8b9d8a7d984d8acd8a7d8aa2043535320d8a7d984d8a3d988d984d98ad8a920d988d8a7d8b3d8aad8b9d984d8a7d985d8a7d8aa20d8a7d984d988d8b3d8a7d8a6d8b720d988d8b6d8bad8b720d8a7d984d8b5d988d8b120d988d8aad983d988d98620d8acd98ad8afd98bd8a720d981d98a20d8aad8b5d8add98ad8ad20d8a7d984d8a3d8aed8b7d8a7d8a12e3c2f666f6e743e3c2f6469763e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e, 'وظيفة عن بعد', 0x2420323030303c62723e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e, 0x3c62723e, 'drop_your_cv@plusagency.com', 1, NULL, NULL, '2020-01-01 21:24:25', '2020-02-10 21:50:44');
INSERT INTO `jobs` (`id`, `jcategory_id`, `language_id`, `title`, `slug`, `vacancy`, `deadline`, `experience`, `job_responsibilities`, `employment_status`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `job_location`, `salary`, `benefits`, `read_before_apply`, `email`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(26, 34, 177, 'مطور PHP - لارافيل', 'مطور-PHP---لارافيل', 2, '01/28/2020', '2 إلى 3 سنوات', 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed984d8afd98ad98320d981d987d98520d985d8aad8b9d985d98220d984d984d8aad988d8a7d981d98220d8b9d8a8d8b120d8a7d984d985d8b3d8aad8b9d8b1d8b620d988d984d98520d8aad982d98520d8a8d8a5d986d8b4d8a7d8a120d8a3d8aed8b7d8a7d8a120d984d987d8b0d98720d8a7d984d8a3d8b3d8a8d8a7d8a82e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8a3d986d8aa20d985d8abd8a7d984d98a20d984d984d8a8d98ad983d8b3d98420d981d98a20d8aad8add988d98ad984d8a7d8aa20d8a7d984d8aad8b5d985d98ad98520d988d8aad981d983d8b120d981d98a20d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d985d8add985d988d98420d8a7d984d8a3d988d984d9892e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d985d8b9d8b1d981d8a920d8a8d985d8b9d8a7d984d8acd8a7d8aa2043535320d8a7d984d8a3d988d984d98ad8a920d988d8a7d8b3d8aad8b9d984d8a7d985d8a7d8aa20d8a7d984d988d8b3d8a7d8a6d8b720d988d8b6d8bad8b720d8a7d984d8b5d988d8b120d988d8aad983d988d98620d8acd98ad8afd98bd8a720d981d98a20d8aad8b5d8add98ad8ad20d8a7d984d8a3d8aed8b7d8a7d8a12e3c2f666f6e743e3c2f6469763e, 'تعاقدي', 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed984d8afd98ad98320d981d987d98520d985d8aad8b9d985d98220d984d984d8aad988d8a7d981d98220d8b9d8a8d8b120d8a7d984d985d8b3d8aad8b9d8b1d8b620d988d984d98520d8aad982d98520d8a8d8a5d986d8b4d8a7d8a120d8a3d8aed8b7d8a7d8a120d984d987d8b0d98720d8a7d984d8a3d8b3d8a8d8a7d8a82e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8a3d986d8aa20d985d8abd8a7d984d98a20d984d984d8a8d98ad983d8b3d98420d981d98a20d8aad8add988d98ad984d8a7d8aa20d8a7d984d8aad8b5d985d98ad98520d988d8aad981d983d8b120d981d98a20d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d985d8add985d988d98420d8a7d984d8a3d988d984d9892e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d985d8b9d8b1d981d8a920d8a8d985d8b9d8a7d984d8acd8a7d8aa2043535320d8a7d984d8a3d988d984d98ad8a920d988d8a7d8b3d8aad8b9d984d8a7d985d8a7d8aa20d8a7d984d988d8b3d8a7d8a6d8b720d988d8b6d8bad8b720d8a7d984d8b5d988d8b120d988d8aad983d988d98620d8acd98ad8afd98bd8a720d981d98a20d8aad8b5d8add98ad8ad20d8a7d984d8a3d8aed8b7d8a7d8a12e3c2f666f6e743e3c2f6469763e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f666f6e743e3c2f6469763e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f666f6e743e3c2f6469763e, 'كاليفورنيا، الولايات المتحدة الأمريكية', 0x3130303020d8afd988d984d8a7d8b1202d203135303020d8afd988d984d8a7d8b13c62723e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f666f6e743e3c2f6469763e, 0x2a20d98ad8acd8a820d8a5d8b1d981d8a7d98220d8a7d984d8b5d988d8b1d8a920d985d8b920d8a7d984d8b3d98ad8b1d8a920d8a7d984d8b0d8a7d8aad98ad8a92e3c62723e, 'drop_your_cv@plusagency.com', 2, NULL, NULL, '2020-01-01 21:28:01', '2020-02-10 21:50:44'),
(27, 35, 177, 'مهندس برمجيات الواجهة الأمامية', 'مهندس-برمجيات-الواجهة-الأمامية', 5, '01/31/2020', '2 إلى 5 سنوات', 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed984d8afd98ad98320d981d987d98520d985d8aad8b9d985d98220d984d984d8aad988d8a7d981d98220d8b9d8a8d8b120d8a7d984d985d8b3d8aad8b9d8b1d8b620d988d984d98520d8aad982d98520d8a8d8a5d986d8b4d8a7d8a120d8a3d8aed8b7d8a7d8a120d984d987d8b0d98720d8a7d984d8a3d8b3d8a8d8a7d8a82e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8a3d986d8aa20d985d8abd8a7d984d98a20d984d984d8a8d98ad983d8b3d98420d981d98a20d8aad8add988d98ad984d8a7d8aa20d8a7d984d8aad8b5d985d98ad98520d988d8aad981d983d8b120d981d98a20d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d985d8add985d988d98420d8a7d984d8a3d988d984d9892e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d985d8b9d8b1d981d8a920d8a8d985d8b9d8a7d984d8acd8a7d8aa2043535320d8a7d984d8a3d988d984d98ad8a920d988d8a7d8b3d8aad8b9d984d8a7d985d8a7d8aa20d8a7d984d988d8b3d8a7d8a6d8b720d988d8b6d8bad8b720d8a7d984d8b5d988d8b120d988d8aad983d988d98620d8acd98ad8afd98bd8a720d981d98a20d8aad8b5d8add98ad8ad20d8a7d984d8a3d8aed8b7d8a7d8a12e3c2f666f6e743e3c2f6469763e, 'وقت كامل', 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c62723e3c2f6469763e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c62723e3c2f6469763e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c62723e3c2f6469763e, 'باريس، فرنسا', 0x3120d8a5d984d989203320d8b3d986d988d8a7d8aa3c62723e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c62723e3c2f6469763e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f666f6e743e3c2f6469763e, 'drop_your_cv@plusagency.com', 3, NULL, NULL, '2020-01-01 21:32:47', '2020-02-10 21:50:44'),
(28, 36, 177, 'زعيم نظم السوق الزراعية', 'زعيم-نظم-السوق-الزراعية', 4, '02/05/2020', 'على الأقل 7 سنوات', 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d98ad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d8b9d985d984d98ad8a920d981d98a204e6f64652e6a7320d988205479706553637269707420d988207765627061636b20d988d985d983d8aad8a8d8a920d8a7d984d8b7d8b1d98120d8a7d984d8abd8a7d984d8ab2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed984d8afd98ad98320d981d987d98520d985d8aad8b9d985d98220d984d984d8aad988d8a7d981d98220d8b9d8a8d8b120d8a7d984d985d8b3d8aad8b9d8b1d8b620d988d984d98520d8aad982d98520d8a8d8a5d986d8b4d8a7d8a120d8a3d8aed8b7d8a7d8a120d984d987d8b0d98720d8a7d984d8a3d8b3d8a8d8a7d8a82e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8a3d986d8aa20d985d8abd8a7d984d98a20d984d984d8a8d98ad983d8b3d98420d981d98a20d8aad8add988d98ad984d8a7d8aa20d8a7d984d8aad8b5d985d98ad98520d988d8aad981d983d8b120d981d98a20d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d985d8add985d988d98420d8a7d984d8a3d988d984d9892e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d985d8b9d8b1d981d8a920d8a8d985d8b9d8a7d984d8acd8a7d8aa2043535320d8a7d984d8a3d988d984d98ad8a920d988d8a7d8b3d8aad8b9d984d8a7d985d8a7d8aa20d8a7d984d988d8b3d8a7d8a6d8b720d988d8b6d8bad8b720d8a7d984d8b5d988d8b120d988d8aad983d988d98620d8acd98ad8afd98bd8a720d981d98a20d8aad8b5d8add98ad8ad20d8a7d984d8a3d8aed8b7d8a7d8a12e3c2f666f6e743e3c2f6469763e, 'وقت كامل', 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d9813c2f666f6e743e3c2f6469763e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e, 'كاليفورنيا، الولايات المتحدة الأمريكية', 0x3130303020d8afd988d984d8a7d8b1202d203135303020d8afd988d984d8a7d8b13c62723e, 0x3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d985d8aad985d8b1d8b3d98bd8a720d981d98a20d8a3d8b7d8b120d8b9d985d98420d988d8a7d8acd987d8a920d8a7d984d985d8b3d8aad8aed8afd98520d8a8d8b4d983d98420d8b9d8a7d98520d89b20d986d8add98620d986d8add8a820d8a7d984d8b2d8a7d988d98a20d988d8a7d984d985d988d8a7d8af20d8a7d984d8b2d8a7d988d98a2e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed98ad8acd8a820d8a3d98620d8aad983d988d98620d984d8afd98ad98320d8aed8a8d8b1d8a920d981d98a20d8a5d986d8b4d8a7d8a120d8aad8b7d8a8d98ad982d8a7d8aa20d8b5d981d8add8a920d988d8a7d8add8afd8a920285350412920d988d8afd985d8ac20d988d8a7d8acd987d8a920d8a8d8b1d985d8acd8a920d8aad8b7d8a8d98ad982d8a7d8aa20d8a7d984d988d98ad8a82028d8a7d984d8b1d8a7d8add8a9292e3c2f666f6e743e3c2f6469763e3c6469763e3c666f6e742073697a653d2234223ed8b6d984d98ad8b9d8a720d981d98a20d988d8add8afd8a7d8aa20d8a7d984d8b2d8a7d988d98a20d8a3d98820d982d985d8aa20d8a8d8a5d986d8b4d8a7d8a120d985d983d988d986d8a7d8aa20d985d8aed8b5d8b5d8a920d988d8b4d8a8d983d8a920d8a7d984d8a5d986d8aad8b1d986d8aa20d985d98620d982d8a8d98420d986d981d8b3d9832e3c2f666f6e743e3c2f6469763e, 0x3c62723e, 'drop_your_cv@plusagency.com', 4, NULL, NULL, '2020-01-01 21:35:15', '2020-02-24 00:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint NOT NULL DEFAULT '1',
  `rtl` tinyint NOT NULL DEFAULT '0' COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
(176, 'English', 'en', 1, 0, '2020-08-07 04:43:05', '2023-05-02 11:03:24'),
(177, 'عربى', 'ar', 0, 1, '2020-08-07 04:51:17', '2023-05-02 11:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `language_id`, `name`, `rank`, `image`, `twitter`, `facebook`, `instagram`, `linkedin`, `feature`, `created_at`, `updated_at`) VALUES
(54, 176, 'Andress Pirlo', 'Manager, Superv', '1597749461.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(55, 176, 'Christina Grimmie', 'Master Chef', '1597749478.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(56, 176, 'Roza Bela', 'Burger Chef', '1597749496.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(57, 176, 'Cesc Fabrigus', 'Set Menu Chef', '1597749511.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 0, NULL, NULL),
(58, 177, 'سيلينا غوميز', 'الرئيس التنفيذي والمؤسس', '1597919376.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 1, NULL, NULL),
(59, 177, 'أندريس بيرلو', 'مدير ، مشرف', '1597919908.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 1, NULL, NULL),
(60, 177, 'كريستينا جريمي', 'رئيس الطباخين', '1597919925.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 1, NULL, NULL),
(61, 177, 'روزا بيلا', 'برجر شيف', '1597919942.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 0, NULL, NULL),
(62, 176, 'Gondon Ramsay', 'Dessert Chef', '1598691630.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 0, NULL, NULL),
(63, 176, 'Frank Lampard', 'Beverage Chef', '1598691925.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 0, NULL, NULL),
(64, 176, 'Chistopher Helen', 'Waiter, Superv', '1598691992.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 0, NULL, NULL),
(65, 176, 'Chrissy Costanza', 'Waiter, Superv', '1598692028.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 0, NULL, NULL),
(66, 177, 'سيسك فابريجاس', 'تعيين رئيس الطهاة', '1598772306.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com', 'https://www.linkedin.com/', 0, NULL, NULL),
(67, 177, 'غوردون رامزي', 'شيف حلويات', '1598772340.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com', 'https://www.linkedin.com/', 0, NULL, NULL),
(68, 177, 'فرانك لامبارد', 'الشيف المشروبات', '1598772371.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com', 'https://www.linkedin.com/', 0, NULL, NULL),
(69, 177, 'شيستوفر هيلين', 'نادل مشرف', '1598772405.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com', 'https://www.linkedin.com/', 0, NULL, NULL),
(70, 177, 'كريسى كوستانزا', 'نادل مشرف', '1598772435.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com', 'https://www.linkedin.com/', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `menus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(107, 177, '[{\"text\":\"الصفحة الرئيسية\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"قائمة طعام\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu_1\"},{\"text\":\"أغذية\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"العناصر\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"عربة التسوق\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"الدفع\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"}]},{\"text\":\"حول\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"صفحات ديناميكية\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"معلومات عنا\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"5\"},{\"text\":\"البنود و الظروف\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"6\"},{\"text\":\"سياسة خاصة\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"7\"}]},{\"text\":\"صالة عرض\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"التعليمات\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"وظائف\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"أعضاء الفريق\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"حجز\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"reservation\"},{\"text\":\"مستويات غير محدودة\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"المستوى 3-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"المستوى 3-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"المستوى 4-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"المستوى 4-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"المستوى 4-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"المستوى 5-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"المستوى 5-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"المستوى 5-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"}]}]},{\"text\":\"المستوى 3-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"}]}]},{\"type\":\"blogs\",\"text\":\"المدونات\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"contact\",\"text\":\"اتصل\",\"href\":\"\",\"target\":\"_self\"}]', '2020-12-31 06:36:17', '2020-12-31 06:36:17'),
(117, 176, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Items\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Foods\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"},{\"text\":\"Cart\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"cart\"},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"}]},{\"text\":\"About\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Dynamic Pages\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"About Us\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"1\"},{\"text\":\"Privacy Policy\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"4\"},{\"text\":\"Terms & Conditions\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"3\"}]},{\"text\":\"Gallery\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"Team Members\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Reservation\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"reservation\"},{\"text\":\"Unlimited Levels\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Level 3-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Level 3-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Level 4-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Level 4-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Level 4-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Level 5-1\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Level 5-2\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Level 5-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"}]}]},{\"text\":\"Level 3-3\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\"}]}]},{\"text\":\"Blogs\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blogs\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"},{\"type\":\"menu_1\",\"text\":\"Menu\",\"href\":\"\",\"target\":\"_self\"}]', '2023-05-03 06:14:15', '2023-05-03 06:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_04_10_155226_add_pos_to_serving_methods', 1),
(5, '2021_04_10_161129_create_pos_payment_methods', 2),
(6, '2021_04_11_075502_create_customers_table', 3),
(7, '2021_04_11_151305_create_tables_table', 4),
(8, '2021_04_16_175547_add_qr_image_to_tables', 5),
(10, '2021_04_16_184950_add_qr_cols_to_table', 6),
(11, '2021_05_06_172702_add_image_to_tables', 7),
(12, '2021_05_06_182658_add_image_size_to_tables', 8),
(13, '2021_05_07_141846_change_defailt_image_size', 9),
(14, '2021_05_07_165729_drop_background_color_from_tables', 10),
(15, '2021_05_07_170622_add_image_position_cols_to_tables', 11),
(17, '2021_05_08_104914_add_type_and_text_cols_to_tables', 12),
(18, '2021_05_08_113457_add_default_value_to_text_color_in_tables', 13),
(19, '2021_05_08_174437_add_default_value_to_text_size_in_tables', 14),
(20, '2021_05_08_194033_add_qr_image_cols_to_basic_extendeds', 15),
(21, '2021_05_10_155349_add_gateway_type_to_product_orders', 16),
(24, '2021_05_11_180827_add_token_no_in_basic_settings', 17),
(25, '2021_05_11_181941_add_token_no_after_order_number_in_product_orders', 17),
(28, '2021_05_13_083313_create_postal_codes_table', 18),
(29, '2021_05_13_101831_add_postal_code_to_basic_settings', 19),
(32, '2021_05_16_105019_add_postal_code_to_product_orders', 20),
(33, '2021_05_18_130916_add_call_waiter_status_to_basic_settings', 21),
(34, '2021_05_18_194729_add_contact_infos_to_basic_settings', 22),
(36, '2021_05_19_081335_create_popups_table', 23),
(37, '2021_05_19_122217_drop_announcement_cols_from_basic_settings', 24),
(38, '2021_05_19_125220_drop_parent_link_col_from_basic_settings', 25),
(40, '2021_05_19_125534_add_whatsapp_chat_cols_to_basic_settings', 26),
(41, '2021_05_20_120604_add_order_close_cols_to_basic_extendeds', 27),
(42, '2022_03_13_165621_create_psub_categories_table', 28),
(43, '2022_03_13_180650_add_subcategory_id_to_products_table', 28),
(44, '2022_03_17_131144_add_free_delivery_amount_to_postal_codes', 29),
(45, '2022_03_17_194525_add_free_delivery_amount_to_shipping_charges', 30),
(46, '2022_04_18_133021_create_basic_extras', 31),
(49, '2022_04_19_155032_add_country_code_to_users_table', 32),
(51, '2022_04_21_120742_add_country_code_in_product_orders', 33),
(52, '2022_04_23_124847_add_whatsapp_order_notification_based_on_serving_methods', 34),
(53, '2022_04_23_144354_add_twilio_credentials_in_basic_extras', 35),
(54, '2022_05_25_195401_add_is_feature_in_psub_categories', 36),
(65, '2023_03_04_165637_create_intro_points_table', 37),
(66, '2023_03_05_124128_create_titles_table', 37),
(67, '2023_03_05_132538_add_column_to_basic_settings', 38),
(69, '2023_03_05_161748_add_column_testimonial_side_image_to_basic_extendeds', 39),
(71, '2023_03_05_171212_add_column_testimonial_section_text_to_basic_settings_table', 40),
(72, '2023_03_05_173430_add_column_category_section_title_and_special_section_title_to_basic_settings_table', 41),
(73, '2023_03_06_105842_add_column_background_image_to_basic_extendeds', 42),
(74, '2023_03_11_160511_add_column_hero_section_button_two_color_to_basic_extendeds', 43),
(76, '2023_03_11_163039_add_column_hero_section_autor_name_to_basic_extendeds', 44),
(77, '2023_03_13_103439_add_column_pricing_to_basic_extendeds', 45),
(84, '2023_03_13_130121_add_column_intro_to_basic_settings', 46),
(85, '2023_03_13_132216_add_column_rating_to_intro_points', 46),
(86, '2023_03_14_102250_add_column_intro_bg_image_to_basic_extendeds', 47),
(87, '2023_03_14_111304_alter_column_testimonial_bg_img_to_basic_extendeds', 48),
(89, '2023_03_14_130444_remove_column_special_section_title_to_basic_settings', 49),
(90, '2023_03_16_121332_add_column_top_bottom_shape_to_basic_extendeds', 50),
(91, '2023_03_16_161727_add_column_intro_section_shape_image_to_basic_settings', 51),
(93, '2023_03_20_110357_add_column_intro_section_coffee_theme_to_basic_settings', 52),
(94, '2023_03_22_111823_add_column_blog_section_bg_image_basic_extendeds', 53),
(95, '2023_03_25_145040_alter_column_hero_section_button_2_text_font_size_to_basic_extendeds', 54),
(96, '2023_03_30_130615_ad_column_water_shape_to_basic_extededs', 55),
(97, '2023_04_09_123201_alter_column_maintainance_to_basic_settings', 56),
(98, '2023_04_11_112615_delete_column_intro_section_button_font_size_and_intro_section_button_text_color_to_basic_settings', 57),
(99, '2023_04_11_124905_delete_column_to_hero_section_starting_price_and_hero_section_ending_price_to_basic_extendeds', 58),
(100, '2023_05_02_131139_alter_column_intro_title_to_basic_settings', 59),
(101, '2023_05_25_124230_add_colum_theme_to_basic_settings', 60),
(102, '2024_06_02_222450_add_conversation_id_to_product_orders_table', 61);

-- --------------------------------------------------------

--
-- Table structure for table `offline_gateways`
--

CREATE TABLE `offline_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instructions` blob,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  `is_receipt` tinyint NOT NULL DEFAULT '1',
  `receipt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_gateways`
--

INSERT INTO `offline_gateways` (`id`, `name`, `short_description`, `instructions`, `status`, `serial_number`, `is_receipt`, `receipt`, `created_at`, `updated_at`) VALUES
(1, 'Offline Gateway 1', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c666f6e7420666163653d2243697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d7365726966223e43686173652042616e6b2069732074686520636f6e73756d65722062616e6b696e67206469766973696f6e206f66204a504d6f7267616e2043686173652e20556e6c696b652069747320636f6d70657469746f72732c2043686173652069732074616b696e6720737465707320746f20657870616e6420697473206272616e6368206e6574776f726b20696e206b6579206d61726b6574732e205468652062616e6b2063757272656e746c7920686173206e6561726c7920352c303030206272616e6368657320616e642031362c3030302041544d732e204163636f7264696e6720746f207468652062616e6b2c206e6561726c792068616c66206f662074686520636f756e747279e280997320686f757365686f6c64732061726520436861736520637573746f6d6572732e3c2f666f6e743e3c62723e3c2f703e, 1, 1, 1, NULL, '2020-09-17 01:06:39', '2023-04-11 04:42:23'),
(2, 'Offline Gateway 2', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c7370616e207374796c653d22666f6e742d66616d696c793a2043697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e42616e6b206f6620416d6572696361207365727665732061626f7574203636206d696c6c696f6e20636f6e73756d65727320616e6420736d616c6c20627573696e65737320636c69656e747320776f726c64776964652e204c696b65206d616e79206f662074686520626967676573742062616e6b732c2042616e6b206f6620416d6572696361206973206b6e6f776e20666f7220697473206469676974616c20696e6e6f766174696f6e2e20497420686173206d6f7265207468616e203337206d696c6c696f6e206469676974616c20636c69656e747320616e6420697320657870657269656e63696e67207375636365737320616674657220696e74726f647563696e6720697473207669727475616c20617373697374616e742c2045726963612c20746861742061737369737473206163636f756e7420686f6c64657273207769746820766172696f7573207461736b733c2f7370616e3e3c62723e3c2f703e, 1, 2, 0, NULL, '2020-09-17 01:07:37', '2021-01-01 02:12:22'),
(3, 'Cash On Delivery', 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 0x3c703e7979797979797979797979797979797979797979797979797979797979797979797979797979793c2f703e, 1, 3, 0, NULL, '2020-09-17 02:05:36', '2024-06-23 16:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `variations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `addons` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variations_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `addons_price` decimal(11,2) NOT NULL,
  `product_price` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_order_id`, `product_id`, `user_id`, `title`, `qty`, `image`, `variations`, `addons`, `variations_price`, `addons_price`, `product_price`, `total`, `created_at`, `updated_at`) VALUES
(485, 345, 37, NULL, 'Milk Shakes', 1, '1598688750.jpg', '\"\"', '\"\"', 0.00, 0.00, 4.00, 4.00, '2024-09-10 16:40:23', NULL),
(487, 347, 16, NULL, 'Set Menu - 2', 1, '1598684755.jpg', '{\"Ratio\":{\"name\":\"1:1\",\"price\":0}}', '\"\"', 0.00, 0.00, 3.00, 3.00, '2024-09-10 16:43:33', NULL),
(488, 348, 36, NULL, 'Organic Fruit Juice', 1, '1598688600.jpg', '{\"Size\":{\"name\":\"Small\",\"price\":0}}', '\"\"', 0.00, 0.00, 3.00, 3.00, '2024-09-10 16:45:44', NULL),
(489, 349, 36, NULL, 'Organic Fruit Juice', 1, '1598688600.jpg', '{\"Size\":{\"name\":\"Small\",\"price\":0}}', '\"\"', 0.00, 0.00, 3.00, 3.00, '2024-09-10 16:58:42', NULL),
(490, 350, 36, NULL, 'Organic Fruit Juice', 1, '1598688600.jpg', '{\"Size\":{\"name\":\"Small\",\"price\":0}}', '\"\"', 0.00, 0.00, 3.00, 3.00, '2024-09-10 17:06:05', NULL),
(491, 351, 36, NULL, 'Organic Fruit Juice', 1, '1598688600.jpg', '{\"Size\":{\"name\":\"Small\",\"price\":0}}', '\"\"', 0.00, 0.00, 3.00, 3.00, '2024-09-10 17:38:04', NULL),
(492, 352, 37, NULL, 'Milk Shakes', 1, '1598688750.jpg', '\"\"', '\"\"', 0.00, 0.00, 4.00, 4.00, '2024-09-22 07:23:45', NULL),
(493, 353, 37, NULL, 'Milk Shakes', 1, '1598688750.jpg', '\"\"', '\"\"', 0.00, 0.00, 4.00, 4.00, '2024-09-23 11:38:55', NULL),
(494, 354, 37, NULL, 'Milk Shakes', 1, '1598688750.jpg', '\"\"', '\"\"', 0.00, 0.00, 4.00, 4.00, '2024-09-23 11:53:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_times`
--

CREATE TABLE `order_times` (
  `id` int NOT NULL,
  `day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_times`
--

INSERT INTO `order_times` (`id`, `day`, `start_time`, `end_time`) VALUES
(1, 'monday', '8:00 AM', '11:59 PM'),
(2, 'tuesday', '10:00 AM', '11:59 PM'),
(3, 'wednesday', '12:00 AM', '11:59 PM'),
(4, 'thursday', '8:00 AM', '11:59 PM'),
(5, 'friday', '4:00 PM', '9:00 PM'),
(6, 'saturday', '12:00 AM', '11:59 PM'),
(7, 'sunday', '12:00 AM', '11:59 PM');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 176, 'About Us', 'About Us', 'About Us', 'About-Us', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, 1, 1, NULL, NULL, '2020-08-21 04:06:16', '2020-08-29 04:27:29'),
(3, 176, 'Terms & Conditions', 'Terms & Conditions', 'Terms & Conditions', 'Terms-&-Conditions', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b, 1, 2, NULL, NULL, '2020-08-21 04:06:16', '2020-08-30 02:06:33'),
(4, 176, 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 'Privacy-Policy', 0x3c703e4c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e672020696e6475737472792e200a0a4c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e200a0a4c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e0a0a204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b3c2f703e, 1, 3, NULL, NULL, '2020-08-21 04:06:16', '2020-09-07 18:47:30'),
(5, 177, 'معلومات عنا', 'معلومات عنا', 'معلومات عنا', 'معلومات-عنا', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, 1, 1, NULL, NULL, '2020-08-30 02:07:32', '2020-08-30 02:07:32'),
(6, 177, 'البنود و الظروف', 'البنود و الظروف', 'البنود و الظروف', 'البنود-و-الظروف', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, 1, 2, NULL, NULL, '2020-08-30 02:09:42', '2020-08-30 02:09:42'),
(7, 177, 'سياسة خاصة', 'سياسة خاصة', 'سياسة خاصة', 'سياسة-خاصة', 0xd987d986d8a7d98320d8add982d98ad982d8a920d985d8abd8a8d8aad8a920d985d986d8b020d8b2d985d98620d8b7d988d98ad98420d988d987d98a20d8a3d98620d8a7d984d985d8add8aad988d98920d8a7d984d985d982d8b1d988d8a120d984d8b5d981d8add8a920d985d8a720d8b3d98ad984d987d98a20d8a7d984d982d8a7d8b1d8a620d8b9d98620d8a7d984d8aad8b1d983d98ad8b220d8b9d984d98920d8a7d984d8b4d983d98420d8a7d984d8aed8a7d8b1d8acd98a20d984d984d986d8b520d8a3d98820d8b4d983d98420d8aad988d8b6d8b920d8a7d984d981d982d8b1d8a7d8aa20d981d98a20d8a7d984d8b5d981d8add8a920d8a7d984d8aad98a20d98ad982d8b1d8a3d987d8a72e20d988d984d8b0d984d98320d98ad8aad98520d8a7d8b3d8aad8aed8afd8a7d98520d8b7d8b1d98ad982d8a920d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d8a3d986d987d8a720d8aad8b9d8b7d98a20d8aad988d8b2d98ad8b9d8a7d98e20d8b7d8a8d98ad8b9d98ad8a7d98e202dd8a5d984d98920d8add8af20d985d8a72d20d984d984d8a3d8add8b1d98120d8b9d988d8b6d8a7d98b20d8b9d98620d8a7d8b3d8aad8aed8afd8a7d9852022d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98ad88c20d987d986d8a720d98ad988d8acd8af20d985d8add8aad988d98920d986d8b5d98a2220d981d8aad8acd8b9d984d987d8a720d8aad8a8d8afd9882028d8a3d98a20d8a7d984d8a3d8add8b1d9812920d988d983d8a3d986d987d8a720d986d8b520d985d982d8b1d988d8a12e20d8a7d984d8b9d8afd98ad8af20d985d98620d8a8d8b1d8a7d985d8ad20d8a7d984d986d8b4d8b120d8a7d984d985d983d8aad8a8d98a20d988d8a8d8b1d8a7d985d8ad20d8aad8add8b1d98ad8b120d8b5d981d8add8a7d8aa20d8a7d984d988d98ad8a820d8aad8b3d8aad8aed8afd98520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8a8d8b4d983d98420d8a5d981d8aad8b1d8a7d8b6d98a20d983d986d985d988d8b0d8ac20d8b9d98620d8a7d984d986d8b5d88c20d988d8a5d8b0d8a720d982d985d8aa20d8a8d8a5d8afd8aed8a7d98420226c6f72656d20697073756d2220d981d98a20d8a3d98a20d985d8add8b1d98320d8a8d8add8ab20d8b3d8aad8b8d987d8b120d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d985d988d8a7d982d8b920d8a7d984d8add8afd98ad8abd8a920d8a7d984d8b9d987d8af20d981d98a20d986d8aad8a7d8a6d8ac20d8a7d984d8a8d8add8ab2e20d8b9d984d98920d985d8afd98920d8a7d984d8b3d986d98ad98620d8b8d987d8b1d8aa20d986d8b3d8ae20d8acd8afd98ad8afd8a920d988d985d8aed8aad984d981d8a920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b7d8b1d98ad98220d8a7d984d8b5d8afd981d8a9d88c20d988d8a3d8add98ad8a7d986d8a7d98b20d8b9d98620d8b9d985d8af20d983d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d8b9d8a8d8a7d8b1d8a7d8aa20d8a7d984d981d983d8a7d987d98ad8a920d8a5d984d98ad987d8a72e20d987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e20, 1, 3, NULL, NULL, '2020-08-30 02:10:07', '2020-08-30 02:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `status`) VALUES
(6, NULL, NULL, NULL, 'Flutterwave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-54e1bcf960a5364fa3365240fe555615-X\",\"secret_key\":\"FLWSECK_TEST-85dc3d03f924083034da3af27ec45b39-X\",\"text\":\"Pay via your Flutterwave account.\"}', 'flutterwave', 1),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_fV9dM9URYbqjm7\",\"secret\":\"nickxZ1du2ojPYVVRTDif2Xr\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', 1),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your paytm account.\"}', 'paytm', 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"sk_test_45b0b207ffa006eeb5fc74ea35d01e673be15ade\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit account.\"}', 'stripe', 1),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AVYKFEw63FtDt9aeYOe9biyifNI56s2Hc2F1Us11hWoY5GMuegipJRQBfWLiIKNbwQ5tmqKSrQTU3zB3\",\"client_secret\":\"EJY0qOKliVg7wKsR3uPN7lngr9rL1N7q4WV0FulT1h4Fw3_e5Itv1mxSdbtSUwAaQoXQFgq-RLlk_sQu\",\"sandbox_check\":\"1\",\"text\":\"Pay via your PayPal account.\"}', 'paypal', 1),
(17, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_m6BAuk4mJ7asBP52AtCWn3WjpK4Tv3\",\"text\":\"Pay via your Mollie Payment account.\"}', 'mollie', 1),
(19, NULL, NULL, NULL, 'Mercado Pago', 'automatic', '{\"token\":\"TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Mercado Pago account.\"}', 'mercadopago', 1),
(29, NULL, NULL, NULL, 'Midtrans', 'automatic', '{\"midtrans_status\":\"1\",\"mindtrans_test_mode\":\"1\",\"midtrans_server_key\":\"SB-Mid-server-w4Ihfmt0iPijcKkEfa8X2e-9\"}', 'midtrans', 1),
(30, NULL, NULL, NULL, 'Iyzico', 'automatic', '{\"iyzico_sandbox_status\":\"1\",\"api_key\":\"sandbox-nhwvNYFN8EdyUm0MXVon9u9wNt6HTKrl\",\"secret_key\":\"sandbox-nZ69wQYaUbxqKbOoHJmc9CjQZtgcSloC\"}', 'iyzico', 0),
(31, NULL, NULL, NULL, 'Paytabs', 'automatic', '{\"paytabs_status\":\"1\",\"profile_id\":\"125178\",\"server_key\":\"SKJ9LL6R92-J6NRR9LDNM-J9JHHMDHMR\",\"country\":\"global\",\"api_endpoint\":\"https:\\/\\/secure-global.paytabs.com\\/payment\\/request\"}', 'paytabs', 1),
(32, NULL, NULL, NULL, 'Toyyibpay', 'automatic', '{\"toyyibpay_secret_key\":\"5zcr9cl4-3aak-8vzl-5ahm-6f1k6z1lvjw3\",\"category_code\":\"m1plpg99\",\"toyyibpay_sandbox_status\":\"1\"}', 'toyyibpay', 1),
(33, NULL, NULL, NULL, 'Phonepe', 'automatic', '{\"phonepe_merchant_id\":\"PGTESTPAYUAT\",\"salt_key\":\"099eb0cd-02cf-4e2a-8aca-3e6c6aff0399\",\"phonepe_sandbox_status\":\"1\",\"salt_index\":\"1\"}', 'phonepe', 1),
(34, NULL, NULL, NULL, 'Yoco', 'automatic', '{\"yoco_secret_key\":\"sk_test_960bfde0VBrLlpK098e4ffeb53e1\"}', 'yoco', 1),
(35, NULL, NULL, NULL, 'Myfatoorah', 'automatic', '{\"myfatoorah_status\":\"1\",\"token\":\"rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL\",\"myfatoorah_sandbox_status\":\"1\"}', 'myfatoorah', 1),
(36, NULL, NULL, NULL, 'Xendit', 'automatic', '{\"secret_api_key\":\"xnd_development_xJnvoJSaiPLhSzwB23Xmzu6Fcayjou9e8qpaoExzfj3UWfmM4GvaY1eBgzcABxyr\"}', 'xendit', 1),
(37, NULL, NULL, NULL, 'Perfect Money', 'automatic', '{\"perfect_money_wallet_id\":\"U46170978\"}', 'perfect_money', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pcategories`
--

CREATE TABLE `pcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `is_feature` int DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcategories`
--

INSERT INTO `pcategories` (`id`, `language_id`, `name`, `slug`, `image`, `status`, `is_feature`, `tax`, `created_at`, `updated_at`) VALUES
(12, 176, 'Set Menu', 'Set-Menu', '5f49f32b3e7f6.png', 1, 1, 5.00, '2020-08-29 00:18:19', '2020-12-24 04:35:31'),
(13, 176, 'Burger', 'Burger', '5f49f35703c25.png', 1, 1, 2.00, '2020-08-29 00:19:03', '2021-05-20 07:36:29'),
(14, 176, 'Dessert', 'Dessert', '5f49f38d9b272.png', 1, 1, 3.00, '2020-08-29 00:19:57', '2020-12-24 04:35:52'),
(15, 176, 'Beverage', 'Beverage', '5f5b1abeb9848.png', 1, 1, 1.00, '2020-08-29 00:20:17', '2021-05-20 07:35:52'),
(16, 177, 'قائمة الضبط', 'قائمة-الضبط', '5f4a6202bf8c7.png', 1, 1, 0.00, '2020-08-29 08:11:14', '2020-08-29 08:19:32'),
(17, 177, 'برجر', 'برجر', '5f4a63a389c5c.png', 1, 1, 0.00, '2020-08-29 08:18:11', '2020-08-29 08:19:28'),
(18, 177, 'الحلوى', 'الحلوى', '5f4a63c72bdf7.png', 1, 1, 0.00, '2020-08-29 08:18:47', '2020-08-29 08:19:26'),
(19, 177, 'مشروب', 'مشروب', '5f4a63de44351.png', 1, 1, 0.00, '2020-08-29 08:19:10', '2020-08-29 08:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_opacity` decimal(8,2) NOT NULL DEFAULT '1.00',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delay` int NOT NULL DEFAULT '1000' COMMENT 'in milisconds',
  `serial_number` int NOT NULL DEFAULT '0',
  `type` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popups`
--

INSERT INTO `popups` (`id`, `language_id`, `name`, `image`, `background_image`, `background_color`, `background_opacity`, `title`, `text`, `button_text`, `button_url`, `button_color`, `end_date`, `end_time`, `delay`, `serial_number`, `type`, `status`, `created_at`, `updated_at`) VALUES
(11, 176, 'Black Friday', '606d41536fa81.jpg', NULL, NULL, 1.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500, 1, 1, 0, '2021-04-06 19:21:23', '2021-05-23 00:53:12'),
(12, 176, 'Monthend Sale', NULL, '606d41d50dd28.jpg', '451D53', 0.80, 'ENJOY 10% OFF', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Shop Now', 'http://example.com/', '451D53', NULL, NULL, 2000, 2, 2, 0, '2021-04-06 19:23:33', '2021-05-23 00:53:32'),
(13, 176, 'Summer Sale', NULL, '606d42e66ee81.jpg', 'FF2865', 0.70, 'Newsletter', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Subscribe', NULL, 'FF2865', NULL, NULL, 2000, 3, 3, 0, '2021-04-06 19:28:06', '2021-05-23 00:53:22'),
(14, 176, 'Winter Offer', '606d43711d16a.jpg', NULL, NULL, 1.00, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Shop Now', 'http://example.com/', 'FF2865', NULL, NULL, 1500, 4, 4, 0, '2021-04-06 19:30:25', '2021-05-23 00:53:46'),
(15, 176, 'Winter Sale', '606d43dfad35b.jpg', NULL, NULL, 1.00, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Subscribe', NULL, 'F8960D', NULL, NULL, 2000, 6, 5, 0, '2021-04-06 19:32:15', '2024-05-20 01:31:23'),
(16, 176, 'New Arrivals Saleu', NULL, '609a5fc14a725.jpg', NULL, 1.00, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes,I Want to Save 30%', 'http://example.com/', '29A19C', '03/14/2022', '3:00 AM', 1500, 7, 6, 0, '2021-04-06 19:34:08', '2024-05-20 01:31:20'),
(17, 176, 'Flash Sale', '606d5691a51bf.jpg', NULL, '930077', 1.00, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes,I Want to Save 30%', 'http://example.com/', 'FA00CA', '04/09/2022', '10:00 AM', 1500, 8, 7, 0, '2021-04-06 19:36:04', '2021-05-23 00:53:51'),
(33, 177, 'Black Friday', '606d41536fa81.jpg', NULL, NULL, 1.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500, 1, 1, 0, '2021-04-06 19:21:23', '2021-04-07 22:06:58'),
(34, 177, 'Monthend Sale', NULL, '606d41d50dd28.jpg', '451D53', 0.80, 'ENJOY 10% OFF', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Shop Now', 'http://example.com/', '451D53', NULL, NULL, 2000, 2, 2, 0, '2021-04-06 19:23:33', '2021-04-07 22:06:21'),
(35, 177, 'Summer Sale', NULL, '606d42e66ee81.jpg', 'FF2865', 0.70, 'Newsletter', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Subscribe', NULL, 'FF2865', NULL, NULL, 2000, 3, 3, 0, '2021-04-06 19:28:06', '2021-04-07 22:06:18'),
(36, 177, 'Winter Offer', '606d43711d16a.jpg', NULL, NULL, 1.00, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Shop Now', 'http://example.com/', 'FF2865', NULL, NULL, 1500, 4, 4, 0, '2021-04-06 19:30:25', '2021-04-25 04:18:04'),
(37, 177, 'Winter Sale', '606d43dfad35b.jpg', NULL, NULL, 1.00, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Subscribe', NULL, 'F8960D', NULL, NULL, 2000, 6, 5, 0, '2021-04-06 19:32:15', '2021-04-07 22:06:09'),
(38, 177, 'New Arrivals Saleu', NULL, '606d55f99176d.jpg', NULL, 1.00, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes,I Want to Save 30%', 'http://example.com/', '29A19C', '03/14/2022', '3:00 AM', 1500, 7, 6, 0, '2021-04-06 19:34:08', '2021-05-23 01:00:12'),
(39, 177, 'Flash Sale', '606d5691a51bf.jpg', NULL, '930077', 1.00, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes,I Want to Save 30%', 'http://example.com/', 'FA00CA', '04/09/2022', '10:00 AM', 1500, 8, 7, 0, '2021-04-06 19:36:04', '2021-04-07 22:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `postal_codes`
--

CREATE TABLE `postal_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT '0.00',
  `free_delivery_amount` decimal(11,2) DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_codes`
--

INSERT INTO `postal_codes` (`id`, `language_id`, `title`, `postcode`, `charge`, `free_delivery_amount`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 176, 'Croton On Hudson', '10520', 2.00, NULL, 1, '2021-05-13 03:59:27', '2022-03-17 13:43:15'),
(2, 176, 'Scarsdale', '10583', 1.00, NULL, 2, '2021-05-13 04:10:31', '2021-05-13 04:10:31'),
(3, 176, 'Washington', '20036', 0.00, NULL, 3, '2021-05-13 04:11:01', '2021-05-13 04:11:58'),
(4, 176, 'Williamsburg', '23185', 2.50, NULL, 4, '2021-05-13 04:11:43', '2022-03-17 13:42:26'),
(5, 176, 'Bynum', '36253', 2.00, 30.00, 1, '2022-03-17 09:06:19', '2022-03-17 09:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `pos_payment_methods`
--

CREATE TABLE `pos_payment_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_payment_methods`
--

INSERT INTO `pos_payment_methods` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'On Cash', 1, '2021-04-11 00:57:46', '2021-04-11 00:57:57'),
(4, 'Paypal', 1, '2021-05-10 11:30:28', '2021-05-10 11:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `feature_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `addons` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `current_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `previous_price` decimal(11,2) DEFAULT '0.00',
  `rating` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '1',
  `is_feature` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_special` tinyint NOT NULL DEFAULT '0',
  `subcategory_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `language_id`, `title`, `slug`, `category_id`, `feature_image`, `summary`, `description`, `variations`, `addons`, `current_price`, `previous_price`, `rating`, `status`, `is_feature`, `created_at`, `updated_at`, `is_special`, `subcategory_id`) VALUES
(15, 176, 'Set Menu - 1', 'Set-Menu---1', 12, '1598683808.jpg', 'Consists of egg fried rice, chicken chili onion & 2 pcs of chicken fry.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}],\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}', '[{\"name\":\"1pc Chicken\",\"price\":1},{\"name\":\"Vegetable\",\"price\":0.5},{\"name\":\"Egg\",\"price\":0.2}]', 2.00, NULL, 4.67, 1, 1, '2020-08-29 00:50:08', '2023-05-08 10:01:53', 0, 22),
(16, 176, 'Set Menu - 2', 'Set-Menu---2', 12, '1598684755.jpg', 'Consists of egg fried rice, mixed vegetable & 2 pcs of chicken fry.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}', '[{\"name\":\"1 PC Chicken\",\"price\":1},{\"name\":\"Coke\",\"price\":0.5},{\"name\":\"French Fries\",\"price\":1}]', 3.00, 3.25, 4.00, 1, 1, '2020-08-29 01:05:55', '2022-05-29 07:16:13', 1, 23),
(17, 176, 'Set Menu - 3', 'Set-Menu---3', 12, '1598684875.jpg', 'Consists of egg fried rice, chicken chili onion & 2 pcs of chicken fry.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, '[{\"name\":\"1pc Chicken\",\"price\":2},{\"name\":\"Vegetable\",\"price\":1},{\"name\":\"Egg\",\"price\":0}]', 3.50, 4.00, 4.00, 1, 1, '2020-08-29 01:07:55', '2020-12-15 01:16:53', 1, 22),
(18, 176, 'Set Menu - 4', 'Set-Menu---4', 12, '1598685027.jpg', 'Consists of egg fried rice, mixed vegetable & chicken masala.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}]}', NULL, 4.00, NULL, 3.00, 1, 1, '2020-08-29 01:10:27', '2022-05-29 07:16:28', 0, 23),
(19, 176, 'Set Menu - 5', 'Set-Menu---5', 12, '1598685627.jpg', 'Consists of egg fried rice, mixed vegetable, chicken chili onion & 2 pcs of chicken fry.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL, 4.75, NULL, 4.00, 1, 1, '2020-08-29 01:20:27', '2020-09-14 03:48:13', 0, 22),
(20, 176, 'Set Menu - 6', 'Set-Menu---6', 12, '1598685694.jpg', 'Consists of egg fried rice, mixed vegetable, chicken chili onion, Coke & 2 pcs of chicken fry.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}],\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}', '[{\"name\":\"1pc Chicken\",\"price\":2},{\"name\":\"Vegetable\",\"price\":1},{\"name\":\"Egg\",\"price\":0}]', 5.00, NULL, 5.00, 1, 1, '2020-08-29 01:21:34', '2022-03-16 12:15:13', 0, 23),
(21, 176, 'Regular Chicken Burger', 'Regular-Chicken-Burger', 13, '1598686135.jpg', 'These chicken burgers are seasoned with bread crumbs, onion, chicken,crumbs, olive oil,garlic', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}', '[{\"name\":\"Cheesee\",\"price\":0.3},{\"name\":\"BBQ Sauce\",\"price\":0.2},{\"name\":\"Patty\",\"price\":1},{\"name\":\"Sausage\",\"price\":0.4},{\"name\":\"Egg\",\"price\":0.2}]', 3.00, NULL, 0.00, 1, 1, '2020-08-29 01:28:55', '2022-05-29 07:00:11', 0, 8),
(22, 176, 'Regular Beef Burger', 'Regular-Beef-Burger', 13, '1598686395.jpg', 'Ground beef, bread crumbs, black pepper,House special sauce.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}', '[{\"name\":\"1pc Chicken\",\"price\":2},{\"name\":\"Vegetable\",\"price\":1},{\"name\":\"Egg\",\"price\":0}]', 3.50, NULL, 0.00, 1, 1, '2020-08-29 01:33:15', '2022-05-29 07:02:36', 0, 9),
(23, 176, 'Crispy Chicken Burger', 'Crispy-Chicken-Burger', 13, '1598687093.jpg', 'Gouda cheese, chicken breasts, little gem, white cabbage. These fried chicken burgers are ultra crispy and absolutely bursting with flavor.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}]}', NULL, 4.00, 4.50, 0.00, 1, 1, '2020-08-29 01:38:51', '2022-05-29 07:02:51', 1, 8),
(24, 176, 'Chicken Cheese Burger', 'Chicken-Cheese-Burger', 13, '1598686797.jpg', 'Ranch dressing, chicken breasts, loose leaf, salsa sauce, cheese. Chicken Cheese Burgers taste the best', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, '[{\"name\":\"Cheesee\",\"price\":0.3},{\"name\":\"BBQ Sauce\",\"price\":0.2},{\"name\":\"Patty\",\"price\":1},{\"name\":\"Sausage\",\"price\":0.4},{\"name\":\"Egg\",\"price\":0.2}]', 5.00, NULL, 0.00, 1, 1, '2020-08-29 01:39:57', '2022-05-29 07:03:04', 0, 8),
(25, 176, 'Beef Cheese Burger', 'Beef-Cheese-Burger', 13, '1598686962.jpg', 'Ground Beef, buns, split slices cheese, lettuce leaves. tomato slices.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}', '[{\"name\":\"1pc Chicken\",\"price\":2},{\"name\":\"Vegetable\",\"price\":1},{\"name\":\"Egg\",\"price\":0}]', 5.50, 6.00, 0.00, 1, 1, '2020-08-29 01:42:42', '2020-09-15 05:24:04', 0, 9),
(26, 176, 'Grilled Chicken Burger', 'Grilled-Chicken-Burger', 13, '1598687072.jpg', 'Ranch dressing, grilled chicken breasts, loose leaf, salsa sauce, cheese. Chicken Cheese Burgers taste the best', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}', '[{\"name\":\"Cheesee\",\"price\":0.3},{\"name\":\"BBQ Sauce\",\"price\":0.2},{\"name\":\"Patty\",\"price\":1},{\"name\":\"Sausage\",\"price\":0.4},{\"name\":\"Egg\",\"price\":0.2}]', 6.00, 6.25, 0.00, 1, 1, '2020-08-29 01:44:32', '2020-09-14 05:29:36', 0, 8),
(27, 176, 'Nutella Chocolates', 'Nutella-Chocolates', 14, '1598687635.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, '[{\"name\":\"Bread\",\"price\":1}]', 2.00, NULL, 0.00, 1, 1, '2020-08-29 01:53:55', '2022-03-16 11:16:02', 0, 3),
(28, 176, 'Gulapjamun Sweets', 'Gulapjamun-Sweets', 14, '1598687730.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Amount\":[{\"name\":\"400g\",\"price\":0},{\"name\":\"1kg\",\"price\":2}]}', NULL, 3.00, NULL, 0.00, 1, 1, '2020-08-29 01:55:30', '2022-05-29 07:28:43', 0, 4),
(29, 176, 'Almond Chocolate Cookies', 'Almond-Chocolate-Cookies', 14, '1598687797.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL, 3.00, 3.50, 0.00, 1, 1, '2020-08-29 01:56:37', '2020-09-15 03:25:54', 1, 3),
(30, 176, 'Vanilla Ice Cream', 'Vanilla-Ice-Cream', 14, '1598687936.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Amount\":[{\"name\":\"500 ML\",\"price\":0},{\"name\":\"1 L\",\"price\":2.5}]}', NULL, 3.50, 3.75, 4.00, 1, 1, '2020-08-29 01:58:56', '2022-05-29 07:30:04', 1, 6),
(31, 176, 'Strawberry Creamed Donut', 'Strawberry-Creamed-Donut', 14, '1598688010.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL, 2.50, NULL, 1.50, 1, 1, '2020-08-29 02:00:10', '2020-09-15 03:28:01', 0, 5),
(32, 176, 'Regular Donut', 'Regular-Donut', 14, '1598688096.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL, 1.50, 2.00, 1.50, 1, 1, '2020-08-29 02:01:36', '2020-09-16 11:38:51', 0, 5),
(33, 176, 'Iced CocaCola', 'Iced-CocaCola', 15, '1598688347.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Size\":[{\"name\":\"600ML\",\"price\":0.6},{\"name\":\"1L\",\"price\":1}]}', '[{\"name\":\"Ice\",\"price\":0},{\"name\":\"Sugar\",\"price\":0.5}]', 1.00, NULL, 3.50, 1, 1, '2020-08-29 02:05:47', '2022-05-29 07:34:48', 0, 12),
(34, 176, 'Lemon Juice', 'Lemon-Juice', 15, '1598688432.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Size\":[{\"name\":\"Small\",\"price\":0},{\"name\":\"Regular\",\"price\":1},{\"name\":\"Large\",\"price\":1.5}]}', '[{\"name\":\"Ice\",\"price\":0},{\"name\":\"Sugar\",\"price\":0.5}]', 2.00, 3.00, 3.00, 1, 1, '2020-08-29 02:07:12', '2020-09-28 02:29:48', 1, 10),
(35, 176, 'Orange Juice', 'Orange-Juice', 15, '1598688532.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, '[{\"name\":\"Ice\",\"price\":0},{\"name\":\"Sugar\",\"price\":0.5}]', 2.25, 2.50, 5.00, 1, 1, '2020-08-29 02:08:52', '2020-09-14 03:44:56', 0, 10),
(36, 176, 'Organic Fruit Juice', 'Organic-Fruit-Juice', 15, '1598688600.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '{\"Size\":[{\"name\":\"Small\",\"price\":0},{\"name\":\"Regular\",\"price\":1},{\"name\":\"Large\",\"price\":1.5}]}', '[{\"name\":\"Ice\",\"price\":0},{\"name\":\"Sugar\",\"price\":0.5}]', 3.00, NULL, 5.00, 1, 1, '2020-08-29 02:10:00', '2020-09-18 01:20:24', 0, 10),
(37, 176, 'Milk Shakes', 'Milk-Shakes', 15, '1598688750.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL, 4.00, 4.50, 4.50, 1, 1, '2020-08-29 02:12:30', '2021-05-20 07:44:45', 1, 11),
(39, 177, 'ضبط القائمة - 1', 'ضبط-القائمة---1', 16, '1598712240.jpg', 'يتكون من أرز مقلي بالبيض ، دجاج مقلي ، بصل و 2 قطعة دجاج مقلي.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}],\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}', '[{\"name\":\"1 \\u0642\\u0637\\u0639\\u0629 \\u062f\\u062c\\u0627\\u062c\",\"price\":1},{\"name\":\"\\u0627\\u0644\\u062e\\u0636\\u0631\\u0648\\u0627\\u062a\",\"price\":0.5},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]', 2.00, NULL, 0.00, 1, 1, '2020-08-29 08:44:00', '2020-09-28 03:30:56', 0, 24),
(40, 177, 'ضبط القائمة - 2', 'ضبط-القائمة---2', 16, '1598712334.jpg', 'يتكون من أرز مقلي بالبيض وخضروات مشكلة و 2 قطعة دجاج مقلي.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}', '[{\"name\":\"1 \\u0642\\u0637\\u0639\\u0629 \\u062f\\u062c\\u0627\\u062c\",\"price\":1},{\"name\":\"\\u0627\\u0644\\u062e\\u0636\\u0631\\u0648\\u0627\\u062a\",\"price\":0.5},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]', 3.00, 3.25, 0.00, 1, 1, '2020-08-29 08:45:34', '2020-08-29 22:37:00', 1, 25),
(41, 177, 'ضبط القائمة - 3', 'ضبط-القائمة---3', 16, '1598712404.jpg', 'يتكون من أرز مقلي بالبيض ، دجاج مقلي ، بصل و 2 قطعة دجاج مقلي.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', NULL, NULL, 3.50, 4.00, 0.00, 1, 1, '2020-08-29 08:46:44', '2020-08-30 03:56:52', 1, 24),
(42, 177, 'تعيين القائمة - 4', 'تعيين-القائمة---4', 16, '1598712465.jpg', 'يتكون من أرز مقلي بالبيض وخضروات مشكلة ودجاج ماسالا.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}]}', '[{\"name\":\"1 \\u0642\\u0637\\u0639\\u0629 \\u062f\\u062c\\u0627\\u062c\",\"price\":1},{\"name\":\"\\u0627\\u0644\\u062e\\u0636\\u0631\\u0648\\u0627\\u062a\",\"price\":0.5},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]', 4.00, NULL, 0.00, 1, 1, '2020-08-29 08:47:45', '2020-08-29 22:36:43', 0, 25);
INSERT INTO `products` (`id`, `language_id`, `title`, `slug`, `category_id`, `feature_image`, `summary`, `description`, `variations`, `addons`, `current_price`, `previous_price`, `rating`, `status`, `is_feature`, `created_at`, `updated_at`, `is_special`, `subcategory_id`) VALUES
(43, 177, 'تعيين القائمة - 5', 'تعيين-القائمة---5', 16, '1598712526.jpg', 'يتكون من أرز مقلي بالبيض ، خضار مشكلة ، دجاج حار ، بصل و 2 قطعة دجاج مقلي.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', NULL, NULL, 4.75, NULL, 0.00, 1, 1, '2020-08-29 08:48:46', '2020-08-29 22:37:30', 0, 24),
(44, 177, 'تعيين القائمة - 6', 'تعيين-القائمة---6', 16, '1598712590.jpg', 'يتكون من أرز مقلي بالبيض ، خضار مشكلة ، دجاج بصل حار ، كوكاكولا و 2 قطعة دجاج مقلي.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0.5}],\"Ratio\":[{\"name\":\"1:1\",\"price\":0},{\"name\":\"1:2\",\"price\":1},{\"name\":\"1:3\",\"price\":2}]}', NULL, 5.00, NULL, 0.00, 1, 1, '2020-08-29 08:49:50', '2020-08-29 22:37:29', 0, 25),
(45, 177, 'برجر دجاج عادي', 'برجر-دجاج-عادي', 17, '1598713312.jpg', 'هذا البرجر الدجاج متبل بفتات الخبز والبصل والدجاج والفتات وزيت الزيتون والثوم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}', '[{\"name\":\"\\u062c\\u0628\\u0646\",\"price\":0.3},{\"name\":\"\\u0635\\u0644\\u0635\\u0629 \\u0634\\u0648\\u0627\\u0621\",\"price\":0.2},{\"name\":\"\\u0641\\u0637\\u064a\\u0631\\u0629\",\"price\":1},{\"name\":\"\\u0633\\u062c\\u0642\",\"price\":0.4},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]', 3.00, NULL, 0.00, 1, 1, '2020-08-29 09:01:52', '2020-08-29 22:37:27', 0, 17),
(46, 177, 'برجر لحم عادي', 'برجر-لحم-عادي', 17, '1598713396.jpg', 'لحم مفروم ، بقسماط ، فلفل أسود ، صلصة هاوس الخاصة.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.', '{\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}', '[{\"name\":\"\\u062c\\u0628\\u0646\",\"price\":0.3},{\"name\":\"\\u0635\\u0644\\u0635\\u0629 \\u0634\\u0648\\u0627\\u0621\",\"price\":0.2},{\"name\":\"\\u0641\\u0637\\u064a\\u0631\\u0629\",\"price\":1},{\"name\":\"\\u0633\\u062c\\u0642\",\"price\":0.4},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]', 3.50, NULL, 0.00, 1, 1, '2020-08-29 09:03:16', '2020-09-28 03:35:02', 0, 18),
(47, 177, 'برجر دجاج مقرمش', 'برجر-دجاج-مقرمش', 17, '1598714296.jpg', 'جبنة جودة ، صدور دجاج ، جوهرة صغيرة ، ملفوف أبيض. برجر الدجاج المقلي مقرمش للغاية ومليء بالنكهة.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}]}', NULL, 4.00, 4.50, 0.00, 1, 1, '2020-08-29 09:18:16', '2020-08-29 22:38:20', 1, 17),
(48, 177, 'برجر دجاج بالجبنة', 'برجر-دجاج-بالجبنة', 17, '1598714456.jpg', 'صلصة رانش ، صدور دجاج ، أوراق سائبة ، صلصة صلصة ، جبن. الدجاج والجبن الذوق هو الأفضل', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', NULL, '[{\"name\":\"\\u062c\\u0628\\u0646\",\"price\":0.3},{\"name\":\"\\u0635\\u0644\\u0635\\u0629 \\u0634\\u0648\\u0627\\u0621\",\"price\":0.2},{\"name\":\"\\u0641\\u0637\\u064a\\u0631\\u0629\",\"price\":1},{\"name\":\"\\u0633\\u062c\\u0642\",\"price\":0.4},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]', 5.00, NULL, 0.00, 1, 1, '2020-08-29 09:20:56', '2020-08-29 22:37:21', 0, 17),
(49, 177, 'برجر لحم بالجبنة', 'برجر-لحم-بالجبنة', 17, '1598714525.jpg', 'لحم مفروم ، خبز ، شرائح جبن ، أوراق خس. شرائح الطماطم.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}', NULL, 5.50, 6.00, 0.00, 1, 1, '2020-08-29 09:22:05', '2020-08-29 22:37:19', 0, 18),
(50, 177, 'برجر دجاج مشوي', 'برجر-دجاج-مشوي', 17, '1598714584.jpg', 'صلصة رانش ، صدور دجاج مشوية ، أوراق سائبة ، صلصة صلصة ، جبن. الدجاج والجبن الذوق هو الأفضل', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Spice_Level\":[{\"name\":\"Mild\",\"price\":0},{\"name\":\"Medium\",\"price\":0},{\"name\":\"Spicy\",\"price\":0}],\"Size\":[{\"name\":\"Regular\",\"price\":0},{\"name\":\"Large\",\"price\":1}]}', '[{\"name\":\"\\u062c\\u0628\\u0646\",\"price\":0.3},{\"name\":\"\\u0635\\u0644\\u0635\\u0629 \\u0634\\u0648\\u0627\\u0621\",\"price\":0.2},{\"name\":\"\\u0641\\u0637\\u064a\\u0631\\u0629\",\"price\":1},{\"name\":\"\\u0633\\u062c\\u0642\",\"price\":0.4},{\"name\":\"\\u0628\\u064a\\u0636\\u0629\",\"price\":0.2}]', 6.00, 6.25, 0.00, 1, 1, '2020-08-29 09:23:04', '2020-08-29 22:37:18', 0, 17),
(51, 177, 'شوكولاتة نوتيلا', 'شوكولاتة-نوتيلا', 18, '1598761013.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', NULL, NULL, 2.00, NULL, 0.00, 1, 1, '2020-08-29 22:16:53', '2020-08-29 22:37:16', 0, 13),
(52, 177, 'حلويات جولابجامون', 'حلويات-جولابجامون', 18, '1598761088.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Amount\":[{\"name\":\"400g\",\"price\":0},{\"name\":\"1kg\",\"price\":2}]}', NULL, 3.00, NULL, 0.00, 1, 1, '2020-08-29 22:18:08', '2020-08-29 22:37:15', 0, 14),
(53, 177, 'كوكيز شوكولاتة اللوز', 'كوكيز-شوكولاتة-اللوز', 18, '1598761155.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', NULL, NULL, 3.00, 3.50, 0.00, 1, 1, '2020-08-29 22:19:15', '2020-08-29 22:38:07', 1, 13),
(54, 177, 'مثلجات الفانيليا', 'مثلجات-الفانيليا', 18, '1598761462.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.', '{\"Amount\":[{\"name\":\"500 ML\",\"price\":0},{\"name\":\"1 L\",\"price\":2.5}]}', NULL, 3.50, 3.75, 0.00, 1, 1, '2020-08-29 22:24:22', '2020-08-30 03:34:35', 1, 16),
(55, 177, 'دونات كريمة الفراولة', 'دونات-كريمة-الفراولة', 18, '1598761527.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', NULL, NULL, 2.50, NULL, 0.00, 1, 1, '2020-08-29 22:25:27', '2020-08-29 22:37:45', 0, 15),
(56, 177, 'دونات عادي', 'دونات-عادي', 18, '1598761579.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', NULL, NULL, 1.50, 2.00, 0.00, 1, 1, '2020-08-29 22:26:19', '2020-08-29 22:37:43', 0, 15),
(57, 177, 'مثلج كوكاكولا', 'مثلج-كوكاكولا', 19, '1598761672.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Size\":[{\"name\":\"600ML\",\"price\":0.6},{\"name\":\"1L\",\"price\":1}]}', '[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]', 1.00, NULL, 0.00, 1, 1, '2020-08-29 22:27:52', '2020-08-29 22:37:42', 0, 21),
(58, 177, 'عصير ليمون', 'عصير-ليمون', 19, '1598761890.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Size\":[{\"name\":\"Small\",\"price\":0},{\"name\":\"Regular\",\"price\":1},{\"name\":\"Large\",\"price\":1.5}]}', '[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]', 2.00, 3.00, 0.00, 1, 1, '2020-08-29 22:28:43', '2020-08-30 03:34:44', 1, 19),
(59, 177, 'عصير البرتقال', 'عصير-البرتقال', 19, '1598761975.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', NULL, '[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]', 2.25, 2.50, 0.00, 1, 1, '2020-08-29 22:32:55', '2020-08-29 22:37:39', 0, 19),
(60, 177, 'عصير فواكه عضوي', 'عصير-فواكه-عضوي', 19, '1598762025.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', '{\"Size\":[{\"name\":\"Small\",\"price\":0},{\"name\":\"Regular\",\"price\":1},{\"name\":\"Large\",\"price\":1.5}]}', '[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]', 3.00, NULL, 0.00, 1, 1, '2020-08-29 22:33:45', '2020-08-29 22:37:38', 0, 19),
(61, 177, 'ميلك شيك', 'ميلك-شيك', 19, '1598762118.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت. ', NULL, '[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]', 4.00, 4.50, 5.00, 1, 1, '2020-08-29 22:35:18', '2023-05-13 05:59:33', 1, 20),
(62, 177, 'ليمونادة بالنعناع', 'ليمونادة-بالنعناع', 19, '1598762182.jpg', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.', '{\"Size\":[{\"name\":\"Small\",\"price\":0},{\"name\":\"Regular\",\"price\":1},{\"name\":\"Large\",\"price\":1.5}]}', '[{\"name\":\"\\u062c\\u0644\\u064a\\u062f\",\"price\":0},{\"name\":\"\\u0627\\u0644\\u0633\\u0643\\u0631\",\"price\":0.5}]', 2.00, NULL, 0.00, 1, 1, '2020-08-29 22:36:22', '2020-09-28 03:43:58', 0, 19),
(68, 177, '444455', '444455', 18, '1683008331.png', '10', '<p>10</p>', '[]', '[{\"name\":\"20\",\"price\":0}]', 10.00, 10.00, 0.00, 0, 0, '2023-05-02 06:18:51', '2023-05-02 06:18:51', 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(46, 15, '5f49f71d3e143.jpg', '2020-08-29 00:35:09', '2020-08-29 00:50:08'),
(47, 15, '5f49f71d55108.jpg', '2020-08-29 00:35:09', '2020-08-29 00:50:08'),
(48, 15, '5f49f71dc6ba6.jpg', '2020-08-29 00:35:09', '2020-08-29 00:50:08'),
(49, 15, '5f49f71dd6ec1.jpg', '2020-08-29 00:35:09', '2020-08-29 00:50:08'),
(50, 15, '5f49f71e2f633.jpg', '2020-08-29 00:35:10', '2020-08-29 00:50:08'),
(51, 15, '5f49f71e42478.jpg', '2020-08-29 00:35:10', '2020-08-29 00:50:08'),
(52, 16, '5f49fded6d5b2.jpg', '2020-08-29 01:04:13', '2020-08-29 01:05:55'),
(53, 16, '5f49fded8b2ff.jpg', '2020-08-29 01:04:13', '2020-08-29 01:05:55'),
(54, 16, '5f49fdedee30b.jpg', '2020-08-29 01:04:13', '2020-08-29 01:05:55'),
(55, 16, '5f49fdee1fb13.jpg', '2020-08-29 01:04:14', '2020-08-29 01:05:55'),
(56, 16, '5f49fdef73578.jpg', '2020-08-29 01:04:15', '2020-08-29 01:05:55'),
(57, 16, '5f49fdef7f5df.jpg', '2020-08-29 01:04:15', '2020-08-29 01:05:55'),
(58, 17, '5f49fe8727bdd.jpg', '2020-08-29 01:06:47', '2020-08-29 01:07:55'),
(59, 17, '5f49fe872b59b.jpg', '2020-08-29 01:06:47', '2020-08-29 01:07:55'),
(60, 17, '5f49fe879e5ef.jpg', '2020-08-29 01:06:47', '2020-08-29 01:07:55'),
(61, 17, '5f49fe87a12f7.jpg', '2020-08-29 01:06:47', '2020-08-29 01:07:55'),
(62, 17, '5f49fe880dc20.jpg', '2020-08-29 01:06:48', '2020-08-29 01:07:55'),
(63, 17, '5f49fe8813908.jpg', '2020-08-29 01:06:48', '2020-08-29 01:07:55'),
(64, 18, '5f49ff519ac98.jpg', '2020-08-29 01:10:09', '2020-08-29 01:10:27'),
(65, 18, '5f49ff519ae30.jpg', '2020-08-29 01:10:09', '2020-08-29 01:10:27'),
(66, 18, '5f49ff51ed17a.jpg', '2020-08-29 01:10:09', '2020-08-29 01:10:27'),
(67, 18, '5f49ff5202028.jpg', '2020-08-29 01:10:10', '2020-08-29 01:10:27'),
(68, 18, '5f49ff524eea1.jpg', '2020-08-29 01:10:10', '2020-08-29 01:10:27'),
(69, 18, '5f49ff5252441.jpg', '2020-08-29 01:10:10', '2020-08-29 01:10:27'),
(70, 19, '5f4a01291c821.jpg', '2020-08-29 01:18:01', '2020-08-29 01:20:27'),
(71, 19, '5f4a012922549.jpg', '2020-08-29 01:18:01', '2020-08-29 01:20:27'),
(72, 19, '5f4a012999765.jpg', '2020-08-29 01:18:01', '2020-08-29 01:20:27'),
(73, 19, '5f4a0129a1e11.jpg', '2020-08-29 01:18:01', '2020-08-29 01:20:27'),
(74, 19, '5f4a012a0afb0.jpg', '2020-08-29 01:18:02', '2020-08-29 01:20:27'),
(75, 19, '5f4a012a19c1a.jpg', '2020-08-29 01:18:02', '2020-08-29 01:20:27'),
(76, 20, '5f4a01c74d254.jpg', '2020-08-29 01:20:39', '2020-08-29 01:21:34'),
(77, 20, '5f4a01c751162.jpg', '2020-08-29 01:20:39', '2020-08-29 01:21:34'),
(78, 20, '5f4a01c79ed20.jpg', '2020-08-29 01:20:39', '2020-08-29 01:21:34'),
(79, 20, '5f4a01c7a43ff.jpg', '2020-08-29 01:20:39', '2020-08-29 01:21:34'),
(80, 20, '5f4a01c800d53.jpg', '2020-08-29 01:20:40', '2020-08-29 01:21:34'),
(81, 20, '5f4a01c80a3e0.jpg', '2020-08-29 01:20:40', '2020-08-29 01:21:34'),
(82, 21, '5f4a037b6863d.jpg', '2020-08-29 01:27:55', '2020-08-29 01:28:55'),
(83, 21, '5f4a037b6b021.jpg', '2020-08-29 01:27:55', '2020-08-29 01:28:55'),
(84, 21, '5f4a037c15972.jpg', '2020-08-29 01:27:56', '2020-08-29 01:28:55'),
(85, 21, '5f4a037c22754.jpg', '2020-08-29 01:27:56', '2020-08-29 01:28:55'),
(86, 21, '5f4a037c72b86.jpg', '2020-08-29 01:27:56', '2020-08-29 01:28:55'),
(87, 21, '5f4a037c74ebf.jpg', '2020-08-29 01:27:56', '2020-08-29 01:28:55'),
(88, 22, '5f4a04b809578.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(89, 22, '5f4a04b809f46.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(90, 22, '5f4a04b85664d.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(91, 22, '5f4a04b8585c8.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(92, 22, '5f4a04b8aac60.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(93, 22, '5f4a04b8ac060.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(94, 23, '5f4a05dd9711f.jpg', '2020-08-29 01:38:05', '2020-08-29 01:38:51'),
(95, 23, '5f4a05dd9bcdb.jpg', '2020-08-29 01:38:05', '2020-08-29 01:38:51'),
(96, 23, '5f4a05de52f5a.jpg', '2020-08-29 01:38:06', '2020-08-29 01:38:51'),
(97, 23, '5f4a05de69582.jpg', '2020-08-29 01:38:06', '2020-08-29 01:38:51'),
(98, 23, '5f4a05e04463c.jpg', '2020-08-29 01:38:08', '2020-08-29 01:38:51'),
(99, 23, '5f4a05e044bff.jpg', '2020-08-29 01:38:08', '2020-08-29 01:38:51'),
(100, 24, '5f4a061889d00.jpg', '2020-08-29 01:39:04', '2020-08-29 01:39:57'),
(101, 24, '5f4a0618aa724.jpg', '2020-08-29 01:39:04', '2020-08-29 01:39:57'),
(102, 24, '5f4a06191dde9.jpg', '2020-08-29 01:39:05', '2020-08-29 01:39:57'),
(103, 24, '5f4a06191d50e.jpg', '2020-08-29 01:39:05', '2020-08-29 01:39:57'),
(104, 24, '5f4a061968d00.jpg', '2020-08-29 01:39:05', '2020-08-29 01:39:57'),
(105, 24, '5f4a0619690fd.jpg', '2020-08-29 01:39:05', '2020-08-29 01:39:57'),
(106, 25, '5f4a06c5a0358.jpg', '2020-08-29 01:41:57', '2020-08-29 01:42:42'),
(107, 25, '5f4a06c5a2754.jpg', '2020-08-29 01:41:57', '2020-08-29 01:42:42'),
(108, 25, '5f4a06c606a64.jpg', '2020-08-29 01:41:58', '2020-08-29 01:42:42'),
(109, 25, '5f4a06c60966e.jpg', '2020-08-29 01:41:58', '2020-08-29 01:42:42'),
(110, 25, '5f4a06c64f8bd.jpg', '2020-08-29 01:41:58', '2020-08-29 01:42:42'),
(111, 25, '5f4a06c653d62.jpg', '2020-08-29 01:41:58', '2020-08-29 01:42:42'),
(112, 26, '5f4a07054dae3.jpg', '2020-08-29 01:43:01', '2020-08-29 01:44:32'),
(113, 26, '5f4a07058abce.jpg', '2020-08-29 01:43:01', '2020-08-29 01:44:32'),
(114, 26, '5f4a070632ac7.jpg', '2020-08-29 01:43:02', '2020-08-29 01:44:32'),
(115, 26, '5f4a070674ed0.jpg', '2020-08-29 01:43:02', '2020-08-29 01:44:32'),
(116, 26, '5f4a0706d92e5.jpg', '2020-08-29 01:43:02', '2020-08-29 01:44:32'),
(117, 26, '5f4a0706f13e7.jpg', '2020-08-29 01:43:02', '2020-08-29 01:44:32'),
(118, 27, '5f4a08969cfa5.jpg', '2020-08-29 01:49:42', '2020-08-29 01:53:55'),
(119, 27, '5f4a0896c48c7.jpg', '2020-08-29 01:49:42', '2020-08-29 01:53:55'),
(120, 27, '5f4a08972892b.jpg', '2020-08-29 01:49:43', '2020-08-29 01:53:55'),
(121, 27, '5f4a08974ce00.jpg', '2020-08-29 01:49:43', '2020-08-29 01:53:55'),
(122, 27, '5f4a089781191.jpg', '2020-08-29 01:49:43', '2020-08-29 01:53:55'),
(123, 27, '5f4a089795b4b.jpg', '2020-08-29 01:49:43', '2020-08-29 01:53:55'),
(125, 28, '5f4a09ba77c85.jpg', '2020-08-29 01:54:34', '2020-08-29 01:55:30'),
(126, 28, '5f4a09ba8bbdb.jpg', '2020-08-29 01:54:34', '2020-08-29 01:55:30'),
(127, 28, '5f4a09bab8d8b.jpg', '2020-08-29 01:54:34', '2020-08-29 01:55:30'),
(128, 28, '5f4a09bace806.jpg', '2020-08-29 01:54:34', '2020-08-29 01:55:30'),
(129, 28, '5f4a09bb1a543.jpg', '2020-08-29 01:54:35', '2020-08-29 01:55:30'),
(130, 28, '5f4a09bb2ae1b.jpg', '2020-08-29 01:54:35', '2020-08-29 01:55:30'),
(131, 29, '5f4a0a0001078.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(132, 29, '5f4a0a0008941.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(133, 29, '5f4a0a0046b52.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(134, 29, '5f4a0a005230d.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(135, 29, '5f4a0a0093455.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(136, 29, '5f4a0a009b5fb.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(137, 30, '5f4a0a5f82da3.jpg', '2020-08-29 01:57:19', '2020-08-29 01:58:56'),
(138, 30, '5f4a0a5f8deb4.jpg', '2020-08-29 01:57:19', '2020-08-29 01:58:56'),
(139, 30, '5f4a0a61094ab.jpg', '2020-08-29 01:57:21', '2020-08-29 01:58:56'),
(140, 30, '5f4a0a610a3ff.jpg', '2020-08-29 01:57:21', '2020-08-29 01:58:56'),
(141, 30, '5f4a0a614d32c.jpg', '2020-08-29 01:57:21', '2020-08-29 01:58:56'),
(142, 30, '5f4a0a614d5f1.jpg', '2020-08-29 01:57:21', '2020-08-29 01:58:56'),
(143, 31, '5f4a0ad4d5e81.jpg', '2020-08-29 01:59:16', '2020-08-29 02:00:10'),
(144, 31, '5f4a0ad4d72e7.jpg', '2020-08-29 01:59:16', '2020-08-29 02:00:10'),
(145, 31, '5f4a0ad53a175.jpg', '2020-08-29 01:59:17', '2020-08-29 02:00:10'),
(146, 31, '5f4a0ad54226c.jpg', '2020-08-29 01:59:17', '2020-08-29 02:00:10'),
(147, 31, '5f4a0ad586a4d.jpg', '2020-08-29 01:59:17', '2020-08-29 02:00:10'),
(148, 31, '5f4a0ad589b04.jpg', '2020-08-29 01:59:17', '2020-08-29 02:00:10'),
(149, 32, '5f4a0b377bda5.jpg', '2020-08-29 02:00:55', '2020-08-29 02:01:36'),
(150, 32, '5f4a0b378e9e2.jpg', '2020-08-29 02:00:55', '2020-08-29 02:01:36'),
(151, 32, '5f4a0b37c8f82.jpg', '2020-08-29 02:00:55', '2020-08-29 02:01:36'),
(152, 32, '5f4a0b37dc0e3.jpg', '2020-08-29 02:00:55', '2020-08-29 02:01:36'),
(153, 32, '5f4a0b3822f08.jpg', '2020-08-29 02:00:56', '2020-08-29 02:01:36'),
(154, 32, '5f4a0b38333f8.jpg', '2020-08-29 02:00:56', '2020-08-29 02:01:36'),
(155, 33, '5f4a0c1700047.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(156, 33, '5f4a0c1717ac2.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(157, 33, '5f4a0c174ea7f.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(158, 33, '5f4a0c175bf91.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(159, 33, '5f4a0c179799d.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(160, 33, '5f4a0c17a19a0.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(162, 34, '5f4a0c7e26013.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(163, 34, '5f4a0c7e34d52.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(164, 34, '5f4a0c7e69e61.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(165, 34, '5f4a0c7e7bbc9.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(166, 34, '5f4a0c7ec05e8.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(167, 34, '5f4a0c7ece222.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(168, 35, '5f4a0ce4ec541.jpg', '2020-08-29 02:08:04', '2020-08-29 02:08:52'),
(169, 35, '5f4a0ce5070e1.jpg', '2020-08-29 02:08:05', '2020-08-29 02:08:52'),
(170, 35, '5f4a0ce588b80.jpg', '2020-08-29 02:08:05', '2020-08-29 02:08:52'),
(171, 35, '5f4a0ce5963da.jpg', '2020-08-29 02:08:05', '2020-08-29 02:08:52'),
(172, 35, '5f4a0ce5cfd49.jpg', '2020-08-29 02:08:05', '2020-08-29 02:08:52'),
(173, 35, '5f4a0ce5e8329.jpg', '2020-08-29 02:08:05', '2020-08-29 02:08:52'),
(174, 36, '5f4a0d32821ba.jpg', '2020-08-29 02:09:22', '2020-08-29 02:10:00'),
(175, 36, '5f4a0d32895a9.jpg', '2020-08-29 02:09:22', '2020-08-29 02:10:00'),
(176, 36, '5f4a0d32c62e4.jpg', '2020-08-29 02:09:22', '2020-08-29 02:10:00'),
(177, 36, '5f4a0d32ca3e5.jpg', '2020-08-29 02:09:22', '2020-08-29 02:10:00'),
(178, 36, '5f4a0d3321a7b.jpg', '2020-08-29 02:09:23', '2020-08-29 02:10:00'),
(179, 36, '5f4a0d3328ae6.jpg', '2020-08-29 02:09:23', '2020-08-29 02:10:00'),
(182, 37, '5f4a0dc41b3c0.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(183, 37, '5f4a0dc431759.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(184, 37, '5f4a0dc473774.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(185, 37, '5f4a0dc486595.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(186, 37, '5f4a0dc4bf74e.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(187, 37, '5f4a0dc4c9bdd.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(194, 39, '5f4a68d955137.jpg', '2020-08-29 08:40:25', '2020-08-29 08:44:00'),
(195, 39, '5f4a68d96bb93.jpg', '2020-08-29 08:40:25', '2020-08-29 08:44:00'),
(196, 39, '5f4a68d9d9e62.jpg', '2020-08-29 08:40:25', '2020-08-29 08:44:00'),
(197, 39, '5f4a68d9ea812.jpg', '2020-08-29 08:40:25', '2020-08-29 08:44:00'),
(198, 39, '5f4a68da465d1.jpg', '2020-08-29 08:40:26', '2020-08-29 08:44:00'),
(199, 39, '5f4a68da543df.jpg', '2020-08-29 08:40:26', '2020-08-29 08:44:00'),
(200, 40, '5f4a69caeb230.jpg', '2020-08-29 08:44:26', '2020-08-29 08:45:34'),
(201, 40, '5f4a69caeb005.jpg', '2020-08-29 08:44:26', '2020-08-29 08:45:34'),
(202, 40, '5f4a69cb49e17.jpg', '2020-08-29 08:44:27', '2020-08-29 08:45:34'),
(203, 40, '5f4a69cb4f29e.jpg', '2020-08-29 08:44:27', '2020-08-29 08:45:34'),
(204, 40, '5f4a69cb97268.jpg', '2020-08-29 08:44:27', '2020-08-29 08:45:34'),
(205, 40, '5f4a69cb9ca9c.jpg', '2020-08-29 08:44:27', '2020-08-29 08:45:34'),
(206, 41, '5f4a6a2e1b842.jpg', '2020-08-29 08:46:06', '2020-08-29 08:46:44'),
(207, 41, '5f4a6a2e210a5.jpg', '2020-08-29 08:46:06', '2020-08-29 08:46:44'),
(208, 41, '5f4a6a2e67648.jpg', '2020-08-29 08:46:06', '2020-08-29 08:46:44'),
(209, 41, '5f4a6a2e6bfc9.jpg', '2020-08-29 08:46:06', '2020-08-29 08:46:44'),
(210, 41, '5f4a6a2eacd18.jpg', '2020-08-29 08:46:06', '2020-08-29 08:46:44'),
(211, 41, '5f4a6a2eae388.jpg', '2020-08-29 08:46:06', '2020-08-29 08:46:44'),
(212, 42, '5f4a6a6cc242b.jpg', '2020-08-29 08:47:08', '2020-08-29 08:47:45'),
(213, 42, '5f4a6a6cc2f5b.jpg', '2020-08-29 08:47:08', '2020-08-29 08:47:45'),
(214, 42, '5f4a6a6d1ee00.jpg', '2020-08-29 08:47:09', '2020-08-29 08:47:45'),
(215, 42, '5f4a6a6d2230c.jpg', '2020-08-29 08:47:09', '2020-08-29 08:47:45'),
(216, 42, '5f4a6a6d6aa9f.jpg', '2020-08-29 08:47:09', '2020-08-29 08:47:45'),
(217, 42, '5f4a6a6d6cb4e.jpg', '2020-08-29 08:47:09', '2020-08-29 08:47:45'),
(218, 43, '5f4a6aa87eb54.jpg', '2020-08-29 08:48:08', '2020-08-29 08:48:46'),
(219, 43, '5f4a6aa88b874.jpg', '2020-08-29 08:48:08', '2020-08-29 08:48:46'),
(220, 43, '5f4a6aa8d80dc.jpg', '2020-08-29 08:48:08', '2020-08-29 08:48:46'),
(221, 43, '5f4a6aa8e3900.jpg', '2020-08-29 08:48:08', '2020-08-29 08:48:46'),
(222, 43, '5f4a6aa95ede7.jpg', '2020-08-29 08:48:09', '2020-08-29 08:48:46'),
(223, 43, '5f4a6aa96034a.jpg', '2020-08-29 08:48:09', '2020-08-29 08:48:46'),
(224, 44, '5f4a6ae3d18f9.jpg', '2020-08-29 08:49:07', '2020-08-29 08:49:50'),
(225, 44, '5f4a6ae3d4b99.jpg', '2020-08-29 08:49:07', '2020-08-29 08:49:50'),
(226, 44, '5f4a6ae4759ad.jpg', '2020-08-29 08:49:08', '2020-08-29 08:49:50'),
(227, 44, '5f4a6ae47852e.jpg', '2020-08-29 08:49:08', '2020-08-29 08:49:50'),
(228, 44, '5f4a6ae4b05c0.jpg', '2020-08-29 08:49:08', '2020-08-29 08:49:50'),
(229, 44, '5f4a6ae4b3e2f.jpg', '2020-08-29 08:49:08', '2020-08-29 08:49:50'),
(230, 45, '5f4a6da3ca69b.jpg', '2020-08-29 09:00:51', '2020-08-29 09:01:52'),
(231, 45, '5f4a6da3e8058.jpg', '2020-08-29 09:00:51', '2020-08-29 09:01:52'),
(232, 45, '5f4a6da490c90.jpg', '2020-08-29 09:00:52', '2020-08-29 09:01:52'),
(233, 45, '5f4a6da49aaf1.jpg', '2020-08-29 09:00:52', '2020-08-29 09:01:52'),
(234, 45, '5f4a6da4dcedc.jpg', '2020-08-29 09:00:52', '2020-08-29 09:01:52'),
(235, 45, '5f4a6da4dff5c.jpg', '2020-08-29 09:00:52', '2020-08-29 09:01:52'),
(236, 46, '5f4a6e0253cfe.jpg', '2020-08-29 09:02:26', '2020-08-29 09:03:16'),
(237, 46, '5f4a6e0284cba.jpg', '2020-08-29 09:02:26', '2020-08-29 09:03:16'),
(238, 46, '5f4a6e02ec82d.jpg', '2020-08-29 09:02:26', '2020-08-29 09:03:16'),
(239, 46, '5f4a6e033477f.jpg', '2020-08-29 09:02:27', '2020-08-29 09:03:16'),
(240, 46, '5f4a6e035ff2d.jpg', '2020-08-29 09:02:27', '2020-08-29 09:03:16'),
(241, 47, '5f4a718bd9351.jpg', '2020-08-29 09:17:31', '2020-08-29 09:18:16'),
(242, 47, '5f4a718bda9a3.jpg', '2020-08-29 09:17:31', '2020-08-29 09:18:16'),
(243, 47, '5f4a718c2e0b9.jpg', '2020-08-29 09:17:32', '2020-08-29 09:18:16'),
(244, 47, '5f4a718c2eca7.jpg', '2020-08-29 09:17:32', '2020-08-29 09:18:16'),
(245, 47, '5f4a718c7ef05.jpg', '2020-08-29 09:17:32', '2020-08-29 09:18:16'),
(246, 47, '5f4a718c809f7.jpg', '2020-08-29 09:17:32', '2020-08-29 09:18:16'),
(247, 48, '5f4a7239b9b28.jpg', '2020-08-29 09:20:25', '2020-08-29 09:20:56'),
(248, 48, '5f4a7239bf231.jpg', '2020-08-29 09:20:25', '2020-08-29 09:20:56'),
(249, 48, '5f4a723a31b64.jpg', '2020-08-29 09:20:26', '2020-08-29 09:20:56'),
(250, 48, '5f4a723a4d102.jpg', '2020-08-29 09:20:26', '2020-08-29 09:20:56'),
(251, 48, '5f4a723aa7333.jpg', '2020-08-29 09:20:26', '2020-08-29 09:20:56'),
(252, 48, '5f4a723ace80a.jpg', '2020-08-29 09:20:26', '2020-08-29 09:20:56'),
(253, 49, '5f4a7278a313a.jpg', '2020-08-29 09:21:28', '2020-08-29 09:22:05'),
(254, 49, '5f4a7278b21d0.jpg', '2020-08-29 09:21:28', '2020-08-29 09:22:05'),
(255, 49, '5f4a7278e4908.jpg', '2020-08-29 09:21:28', '2020-08-29 09:22:05'),
(256, 49, '5f4a727903f5b.jpg', '2020-08-29 09:21:29', '2020-08-29 09:22:05'),
(257, 49, '5f4a72793dd44.jpg', '2020-08-29 09:21:29', '2020-08-29 09:22:05'),
(258, 49, '5f4a72794d5a9.jpg', '2020-08-29 09:21:29', '2020-08-29 09:22:05'),
(259, 50, '5f4a72b6e15d5.jpg', '2020-08-29 09:22:30', '2020-08-29 09:23:04'),
(260, 50, '5f4a72b70ad3f.jpg', '2020-08-29 09:22:31', '2020-08-29 09:23:04'),
(261, 50, '5f4a72b74a024.jpg', '2020-08-29 09:22:31', '2020-08-29 09:23:04'),
(262, 50, '5f4a72b75d446.jpg', '2020-08-29 09:22:31', '2020-08-29 09:23:04'),
(263, 50, '5f4a72b7a1f37.jpg', '2020-08-29 09:22:31', '2020-08-29 09:23:04'),
(264, 50, '5f4a72b7b3754.jpg', '2020-08-29 09:22:31', '2020-08-29 09:23:04'),
(265, 51, '5f4b27e87bd5f.jpg', '2020-08-29 22:15:36', '2020-08-29 22:16:53'),
(266, 51, '5f4b27e88316b.jpg', '2020-08-29 22:15:36', '2020-08-29 22:16:53'),
(267, 51, '5f4b27e8edba3.jpg', '2020-08-29 22:15:36', '2020-08-29 22:16:53'),
(268, 51, '5f4b27e900425.jpg', '2020-08-29 22:15:37', '2020-08-29 22:16:53'),
(269, 51, '5f4b27e9516b3.jpg', '2020-08-29 22:15:37', '2020-08-29 22:16:53'),
(270, 51, '5f4b27e951d77.jpg', '2020-08-29 22:15:37', '2020-08-29 22:16:53'),
(271, 52, '5f4b285c274a7.jpg', '2020-08-29 22:17:32', '2020-08-29 22:18:08'),
(272, 52, '5f4b285c2f7cc.jpg', '2020-08-29 22:17:32', '2020-08-29 22:18:08'),
(273, 52, '5f4b285c7e026.jpg', '2020-08-29 22:17:32', '2020-08-29 22:18:08'),
(274, 52, '5f4b285c880b5.jpg', '2020-08-29 22:17:32', '2020-08-29 22:18:08'),
(275, 52, '5f4b285cdfd06.jpg', '2020-08-29 22:17:32', '2020-08-29 22:18:08'),
(276, 52, '5f4b285ce7a4a.jpg', '2020-08-29 22:17:32', '2020-08-29 22:18:08'),
(277, 53, '5f4b289f862a9.jpg', '2020-08-29 22:18:39', '2020-08-29 22:19:15'),
(278, 53, '5f4b289f8649c.jpg', '2020-08-29 22:18:39', '2020-08-29 22:19:15'),
(279, 53, '5f4b289fcabeb.jpg', '2020-08-29 22:18:39', '2020-08-29 22:19:15'),
(280, 53, '5f4b289fd0a2e.jpg', '2020-08-29 22:18:39', '2020-08-29 22:19:15'),
(281, 53, '5f4b28a0238ce.jpg', '2020-08-29 22:18:40', '2020-08-29 22:19:15'),
(282, 53, '5f4b28a024363.jpg', '2020-08-29 22:18:40', '2020-08-29 22:19:15'),
(283, 54, '5f4b299bb4425.jpg', '2020-08-29 22:22:51', '2020-08-29 22:24:22'),
(284, 54, '5f4b299bb65ea.jpg', '2020-08-29 22:22:51', '2020-08-29 22:24:22'),
(285, 54, '5f4b299c3180e.jpg', '2020-08-29 22:22:52', '2020-08-29 22:24:22'),
(286, 54, '5f4b299c313e7.jpg', '2020-08-29 22:22:52', '2020-08-29 22:24:22'),
(287, 54, '5f4b299c8e154.jpg', '2020-08-29 22:22:52', '2020-08-29 22:24:22'),
(288, 54, '5f4b299c91e1b.jpg', '2020-08-29 22:22:52', '2020-08-29 22:24:22'),
(289, 55, '5f4b2a1b96496.jpg', '2020-08-29 22:24:59', '2020-08-29 22:25:27'),
(290, 55, '5f4b2a1b96d57.jpg', '2020-08-29 22:24:59', '2020-08-29 22:25:27'),
(291, 55, '5f4b2a1c04f45.jpg', '2020-08-29 22:25:00', '2020-08-29 22:25:27'),
(292, 55, '5f4b2a1c10526.jpg', '2020-08-29 22:25:00', '2020-08-29 22:25:27'),
(293, 55, '5f4b2a1c6b51c.jpg', '2020-08-29 22:25:00', '2020-08-29 22:25:27'),
(294, 55, '5f4b2a1c6db56.jpg', '2020-08-29 22:25:00', '2020-08-29 22:25:27'),
(295, 56, '5f4b2a505ec75.jpg', '2020-08-29 22:25:52', '2020-08-29 22:26:19'),
(296, 56, '5f4b2a506c7f9.jpg', '2020-08-29 22:25:52', '2020-08-29 22:26:19'),
(297, 56, '5f4b2a50ae311.jpg', '2020-08-29 22:25:52', '2020-08-29 22:26:19'),
(298, 56, '5f4b2a50bcafe.jpg', '2020-08-29 22:25:52', '2020-08-29 22:26:19'),
(299, 56, '5f4b2a51247f6.jpg', '2020-08-29 22:25:53', '2020-08-29 22:26:19'),
(300, 56, '5f4b2a512c12e.jpg', '2020-08-29 22:25:53', '2020-08-29 22:26:19'),
(308, 57, '5f4b2a9f73eb7.jpg', '2020-08-29 22:27:11', '2020-08-29 22:27:52'),
(309, 57, '5f4b2a9f75219.jpg', '2020-08-29 22:27:11', '2020-08-29 22:27:52'),
(310, 57, '5f4b2a9fd974b.jpg', '2020-08-29 22:27:11', '2020-08-29 22:27:52'),
(311, 57, '5f4b2a9fe1379.jpg', '2020-08-29 22:27:11', '2020-08-29 22:27:52'),
(312, 57, '5f4b2aa044d29.jpg', '2020-08-29 22:27:12', '2020-08-29 22:27:52'),
(313, 57, '5f4b2aa058bc1.jpg', '2020-08-29 22:27:12', '2020-08-29 22:27:52'),
(314, 58, '5f4b2acef13c5.jpg', '2020-08-29 22:27:58', '2020-08-29 22:28:43'),
(315, 58, '5f4b2acef1588.jpg', '2020-08-29 22:27:58', '2020-08-29 22:28:43'),
(316, 58, '5f4b2acf49269.jpg', '2020-08-29 22:27:59', '2020-08-29 22:28:43'),
(317, 58, '5f4b2acf4b7b7.jpg', '2020-08-29 22:27:59', '2020-08-29 22:28:43'),
(318, 58, '5f4b2acf81d65.jpg', '2020-08-29 22:27:59', '2020-08-29 22:28:43'),
(319, 58, '5f4b2acf867ef.jpg', '2020-08-29 22:27:59', '2020-08-29 22:28:43'),
(320, 59, '5f4b2bbee254c.jpg', '2020-08-29 22:31:58', '2020-08-29 22:32:55'),
(321, 59, '5f4b2bbeee61c.jpg', '2020-08-29 22:31:58', '2020-08-29 22:32:55'),
(322, 59, '5f4b2bbf52165.jpg', '2020-08-29 22:31:59', '2020-08-29 22:32:55'),
(323, 59, '5f4b2bbf5cd0c.jpg', '2020-08-29 22:31:59', '2020-08-29 22:32:55'),
(324, 59, '5f4b2bbfaa38b.jpg', '2020-08-29 22:31:59', '2020-08-29 22:32:55'),
(325, 59, '5f4b2bbfb7893.jpg', '2020-08-29 22:31:59', '2020-08-29 22:32:55'),
(326, 60, '5f4b2bff27214.jpg', '2020-08-29 22:33:03', '2020-08-29 22:33:45'),
(327, 60, '5f4b2bff4038b.jpg', '2020-08-29 22:33:03', '2020-08-29 22:33:45'),
(328, 60, '5f4b2bffb3e9b.jpg', '2020-08-29 22:33:03', '2020-08-29 22:33:45'),
(329, 60, '5f4b2bffc5894.jpg', '2020-08-29 22:33:03', '2020-08-29 22:33:45'),
(330, 60, '5f4b2c0022c9c.jpg', '2020-08-29 22:33:04', '2020-08-29 22:33:45'),
(331, 60, '5f4b2c003b127.jpg', '2020-08-29 22:33:04', '2020-08-29 22:33:45'),
(333, 61, '5f4b2c4b18612.jpg', '2020-08-29 22:34:19', '2020-08-29 22:35:18'),
(334, 61, '5f4b2c4b18663.jpg', '2020-08-29 22:34:19', '2020-08-29 22:35:18'),
(335, 61, '5f4b2c4b6b852.jpg', '2020-08-29 22:34:19', '2020-08-29 22:35:18'),
(336, 61, '5f4b2c4b6eccf.jpg', '2020-08-29 22:34:19', '2020-08-29 22:35:18'),
(337, 61, '5f4b2c4bc4329.jpg', '2020-08-29 22:34:19', '2020-08-29 22:35:18'),
(338, 61, '5f4b2c4bcd1c6.jpg', '2020-08-29 22:34:19', '2020-08-29 22:35:18'),
(339, 62, '5f4b2c8d416fa.jpg', '2020-08-29 22:35:25', '2020-08-29 22:36:22'),
(340, 62, '5f4b2c8d54c58.jpg', '2020-08-29 22:35:25', '2020-08-29 22:36:22'),
(341, 62, '5f4b2c8d91745.jpg', '2020-08-29 22:35:25', '2020-08-29 22:36:22'),
(342, 62, '5f4b2c8d9cf34.jpg', '2020-08-29 22:35:25', '2020-08-29 22:36:22'),
(343, 62, '5f4b2c8dd7bf6.jpg', '2020-08-29 22:35:25', '2020-08-29 22:36:22'),
(344, 62, '5f4b2c8de3157.jpg', '2020-08-29 22:35:25', '2020-08-29 22:36:22'),
(391, 68, '6450ab1556a4f.jpg', '2023-05-02 06:17:57', '2023-05-02 06:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `billing_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code_position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` blob,
  `currency_symbol_position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_no` int DEFAULT NULL,
  `shipping_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` decimal(11,2) DEFAULT NULL,
  `postal_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `postal_code_status` tinyint NOT NULL DEFAULT '0' COMMENT '1 - post code based delivery enabled, 0 - post code based delivery disabled',
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `completed` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serving_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waiter_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `coupon` decimal(11,2) NOT NULL DEFAULT '0.00',
  `delivery_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time_start` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time_end` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `user_id`, `billing_country`, `billing_fname`, `billing_lname`, `billing_address`, `billing_city`, `billing_email`, `billing_country_code`, `billing_number`, `shpping_country`, `shpping_fname`, `shpping_lname`, `shpping_address`, `shpping_city`, `shpping_email`, `shpping_country_code`, `shpping_number`, `total`, `method`, `gateway_type`, `currency_code`, `currency_code_position`, `currency_symbol`, `currency_symbol_position`, `order_number`, `token_no`, `shipping_method`, `shipping_charge`, `postal_code`, `postal_code_status`, `payment_status`, `order_status`, `txnid`, `charge_id`, `invoice_number`, `created_at`, `updated_at`, `receipt`, `order_notes`, `completed`, `type`, `serving_method`, `pick_up_date`, `pick_up_time`, `waiter_name`, `table_number`, `tax`, `coupon`, `delivery_date`, `delivery_time_start`, `delivery_time_end`, `conversation_id`) VALUES
(345, NULL, NULL, 'Samiul Alim Pratik', NULL, NULL, NULL, 'pratik.anwar@gmail.com', '+93', '1766199298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.04, 'xendit', 'online', 'PHP', 'right', 0x24, 'left', 'rzpQ-1725986423', 360, NULL, NULL, NULL, 0, 'Completed', 'pending', NULL, NULL, 'YHyL1725986511.pdf', '2024-09-10 16:40:23', '2024-09-10 16:41:53', NULL, NULL, 'no', 'website', 'on_table', NULL, NULL, NULL, '33', 0.04, 0.00, NULL, NULL, NULL, ''),
(347, NULL, NULL, 'Samiul Alim Pratik', NULL, NULL, NULL, 'pratik.anwar@gmail.com', '+1441', '1766199298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.15, 'xendit', 'online', 'PHP', 'right', 0x24, 'left', 'rKoh-1725986613', 362, NULL, NULL, NULL, 0, 'Completed', 'pending', NULL, NULL, 'kxvC1725986637.pdf', '2024-09-10 16:43:33', '2024-09-10 16:43:58', NULL, NULL, 'no', 'qr', 'on_table', NULL, NULL, NULL, '213', 0.15, 0.00, NULL, NULL, NULL, ''),
(348, NULL, NULL, 'Samiul Alim Pratik', NULL, NULL, NULL, 'pratik.anwar@gmail.com', '+355', '08722619267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.03, 'perfect_money', 'online', 'USD', 'right', 0x24, 'left', '1afw-1725986744', 363, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2024-09-10 16:45:44', '2024-09-10 16:45:44', NULL, NULL, 'no', 'website', 'on_table', NULL, NULL, NULL, '22', 0.03, 0.00, NULL, NULL, NULL, ''),
(349, NULL, NULL, 'jahoyam684 jahoyam684', NULL, NULL, NULL, 'bohisix690@eazenity.com', '+93', '1766199298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.03, 'iyzico', 'online', 'TRY', 'right', 0x24, 'left', 'MoJS-1725987522', 364, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2024-09-10 16:58:42', '2024-09-10 16:58:42', NULL, NULL, 'no', 'website', 'on_table', NULL, NULL, NULL, '2', 0.03, 0.00, NULL, NULL, NULL, '999966e07ac2afcff7.86108599'),
(350, NULL, NULL, 'Samiul Alim Pratik', NULL, NULL, NULL, 'pratik.anwar@gmail.com', '+93', '1766199298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.03, 'iyzico', 'online', 'TRY', 'right', 0x24, 'left', '3utr-1725987965', 365, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2024-09-10 17:06:05', '2024-09-10 17:06:05', NULL, NULL, 'no', 'website', 'on_table', NULL, NULL, NULL, '43', 0.03, 0.00, NULL, NULL, NULL, '999966e07c7d93b230.64846813'),
(351, NULL, NULL, 'Samiul Alim Pratik', NULL, NULL, NULL, 'pratik.anwar@gmail.com', '+93', '1766199298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.03, 'iyzico', 'online', 'TRY', 'right', 0x24, 'left', 'D3u1-1725989884', 366, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2024-09-10 17:38:04', '2024-09-10 17:38:04', NULL, NULL, 'no', 'website', 'on_table', NULL, NULL, NULL, '32', 0.03, 0.00, NULL, NULL, NULL, '999966e083fc6ec2d7.97258819'),
(352, NULL, NULL, 'jahoyam684 jahoyam684', NULL, NULL, NULL, 'faltusone@gmail.com', '+93', '1766199298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.04, 'toyyibpay', 'online', 'RM', 'right', 0x24, 'left', 'iylR-1726989825', 367, NULL, NULL, NULL, 0, 'Completed', 'pending', NULL, NULL, 'CrxN1726989847.pdf', '2024-09-22 07:23:45', '2024-09-22 07:24:08', NULL, NULL, 'no', 'website', 'on_table', NULL, NULL, NULL, '2', 0.04, 0.00, NULL, NULL, NULL, ''),
(353, NULL, NULL, 'Samiul Alim Pratik', NULL, NULL, NULL, 'pratik.anwar@gmail.com', '+93', '03133145193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.04, 'phonepe', 'online', 'INR', 'right', 0x24, 'left', '1zvr-1727091535', 368, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2024-09-23 11:38:55', '2024-09-23 11:38:55', NULL, NULL, 'no', 'website', 'on_table', NULL, NULL, NULL, '3', 0.04, 0.00, NULL, NULL, NULL, ''),
(354, NULL, NULL, 'Samiul Alim Pratik', NULL, NULL, NULL, 'pratik.anwar@gmail.com', '+93', '08722619267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.04, 'phonepe', 'online', 'INR', 'right', 0x24, 'left', '121O-1727092421', 369, NULL, NULL, NULL, 0, 'Pending', 'pending', NULL, NULL, NULL, '2024-09-23 11:53:41', '2024-09-23 11:53:41', NULL, NULL, 'no', 'website', 'on_table', NULL, NULL, NULL, '3', 0.04, 0.00, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `review` int DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `review`, `comment`, `created_at`, `updated_at`) VALUES
(6, 1, 6, 4, 'Hi', '2020-07-20 07:49:41', '2020-07-20 08:46:57'),
(7, 1, 11, 5, 'Great!', '2020-08-24 04:23:58', '2020-08-24 04:42:16'),
(8, 1, 13, 3, 'hello', '2020-08-25 00:45:14', '2020-08-25 00:45:14'),
(9, 2, 15, 5, 'Great product & Excellent service !! 5 Starsssss!', '2020-08-30 10:06:17', '2020-08-30 10:06:17'),
(10, 2, 17, 4, 'Good Quality but not satisfied with the delivery speed :(', '2020-08-30 10:07:05', '2020-08-30 10:07:05'),
(11, 2, 19, 3, 'Good product but there are chances to improve their services.', '2020-08-30 10:07:42', '2020-08-30 10:07:42'),
(12, 2, 20, 5, 'Really happy with my order, will order again & again !!!', '2020-08-30 10:08:19', '2020-08-30 10:08:19'),
(13, 2, 18, 1, 'Very unhygenic, not happy with their delivery service too !!', '2020-08-30 10:09:05', '2020-08-30 10:09:05'),
(14, 2, 16, 5, 'Very Tasty set menu, I am gonna refer this item to my friends too. Thanks a lot !!!!', '2020-08-30 10:09:49', '2020-08-30 10:09:49'),
(15, 2, 37, 5, 'Never drunk any tasty cold drink like this one !! Keep it up guys!!!', '2020-08-30 10:11:51', '2020-08-30 10:11:51'),
(16, 2, 34, 4, 'Very cold & fresh lemon Juice. But please maintain the level of salt . It was too saltyyy!!', '2020-08-30 10:13:08', '2020-08-30 10:13:08'),
(17, 2, 31, 1, 'Worst donut ever !!!!! Cannot believe what I just ate.', '2020-08-30 10:13:53', '2020-08-30 10:13:53'),
(18, 2, 38, 5, 'The mint flavor is awesome, great mixture of the mint & lemon !!!', '2020-08-31 00:47:52', '2020-08-31 00:47:52'),
(19, 2, 35, 5, 'Never drank a orange juice like this ! Awesome guys !!! Keep it up.', '2020-08-31 00:49:58', '2020-08-31 00:49:58'),
(20, 2, 32, 2, 'That is more like a biscuit than cookie. very bad !!!', '2020-08-31 00:50:41', '2020-08-31 00:50:41'),
(21, 2, 30, 4, 'Good but there are place to improve the item more.', '2020-08-31 00:53:21', '2020-08-31 00:53:21'),
(22, 2, 33, 3, 'The amount is ice is too much that it reduces the amount of coke !!!', '2020-08-31 00:53:59', '2020-08-31 00:53:59'),
(23, 2, 36, 5, 'Very fresh, healthy, tasty & organic juice. I will order again !!!', '2020-08-31 00:54:45', '2020-08-31 00:54:45'),
(24, 1, 38, 3, 'Awesome taste & quality but the delivery service is poor !!', '2020-08-31 00:59:56', '2020-08-31 00:59:56'),
(25, 1, 35, 5, 'Very fresh, hygenic, healthy & tasty juice. Proper mixture of salt, sugar & orange !!!', '2020-08-31 01:00:55', '2020-08-31 01:00:55'),
(26, 1, 32, 1, 'So bad taste & you guys need to improve the delivery service too !!!', '2020-08-31 01:01:31', '2020-08-31 01:01:31'),
(27, 1, 37, 4, 'Good shakes but please increase the amount of cream at the top', '2020-08-31 01:02:30', '2020-08-31 01:02:30'),
(28, 1, 34, 5, 'Very good & very fast delivery. Loved it !! gonna refer my friends too !', '2020-08-31 01:03:15', '2020-08-31 01:03:15'),
(29, 1, 31, 2, 'strawberry amount is too less, tastes like a biscuit.', '2020-08-31 01:03:55', '2020-08-31 01:04:16'),
(30, 1, 30, 4, 'You can add some chocolate at the top to make it better !!', '2020-08-31 01:04:52', '2020-08-31 01:04:52'),
(31, 1, 33, 4, 'Reduce the amount of ice & improve the delivery service please !', '2020-08-31 01:05:23', '2020-08-31 01:05:23'),
(32, 1, 36, 5, 'Decided to drink it regular, so fresh , healthy & tasty !!!', '2020-08-31 01:05:55', '2020-08-31 01:05:55'),
(33, 1, 20, 5, 'Never been disappointed with their products, will order again & again !!', '2020-08-31 01:08:51', '2020-08-31 01:08:51'),
(34, 1, 19, 5, 'Very fast delivery, the amount of the rice & chicken is more than enough <3 !', '2020-08-31 01:09:37', '2020-08-31 01:09:37'),
(35, 1, 18, 5, 'Loved it, superb taste. Want to rate more than 5 stars actually !!', '2020-08-31 01:10:21', '2020-08-31 01:10:21'),
(36, 1, 17, 4, 'Try to improve the delivery service, the food is good :)', '2020-08-31 01:11:06', '2020-08-31 01:11:06'),
(37, 1, 16, 3, 'The quality has dropped please make it like before :)', '2020-08-31 01:11:34', '2020-08-31 01:11:34'),
(38, 1, 15, 4, 'Very good & tasty food but the food amount is less than the price :(', '2020-08-31 01:12:35', '2020-08-31 01:12:35'),
(39, 1, 26, 5, 'Good one ! Loved the taste !!!', '2020-09-01 12:01:41', '2020-09-01 12:01:41'),
(40, 1, 25, 4, 'Burger is great but improve the delivery service !', '2020-09-01 12:02:14', '2020-09-01 12:02:14'),
(41, 1, 24, 1, 'Really disappointed with their behavior !', '2020-09-01 12:02:42', '2020-09-01 12:02:42'),
(42, 1, 23, 5, 'Great combination of fried chicken & Burger <3', '2020-09-01 12:03:16', '2020-09-01 12:03:16'),
(43, 1, 22, 4, 'The bun quality is poor. Overally, good', '2020-09-01 12:03:47', '2020-09-01 12:03:47'),
(44, 1, 21, 4, 'Too much onion instead increase the amount of cheese !', '2020-09-01 12:04:24', '2020-09-01 12:04:24'),
(45, 9, 17, 4, 'Liked the food', '2020-12-15 01:16:52', '2020-12-15 01:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `psub_categories`
--

CREATE TABLE `psub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `is_feature` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psub_categories`
--

INSERT INTO `psub_categories` (`id`, `language_id`, `category_id`, `name`, `slug`, `status`, `is_feature`, `created_at`, `updated_at`) VALUES
(3, 176, 14, 'Chocolates', NULL, 1, 1, '2022-05-29 03:39:05', '2022-05-29 05:09:50'),
(4, 176, 14, 'Sweets', NULL, 1, 1, '2022-05-29 03:39:15', '2022-05-29 05:09:52'),
(5, 176, 14, 'Donuts', NULL, 1, 1, '2022-05-29 03:39:26', '2022-05-29 05:09:54'),
(6, 176, 14, 'Ice Creams', NULL, 1, 1, '2022-05-29 03:39:57', '2022-05-29 05:09:57'),
(8, 176, 13, 'Chicken Burger', NULL, 1, 1, '2022-05-29 03:41:08', '2022-05-29 05:09:58'),
(9, 176, 13, 'Beef Burger', NULL, 1, 1, '2022-05-29 03:41:22', '2022-05-29 05:10:00'),
(10, 176, 15, 'Juice', NULL, 1, 1, '2022-05-29 03:42:30', '2022-05-29 05:10:02'),
(11, 176, 15, 'Shakes', NULL, 1, 1, '2022-05-29 03:42:41', '2022-05-29 05:10:04'),
(12, 176, 15, 'Soft Drinks', NULL, 1, 1, '2022-05-29 03:42:56', '2022-05-29 05:10:06'),
(13, 177, 18, 'الشوكولاتة', NULL, 1, 1, '2022-05-29 03:39:05', '2022-05-29 05:10:11'),
(14, 177, 18, 'حلويات', NULL, 1, 1, '2022-05-29 03:39:15', '2022-05-29 05:10:13'),
(15, 177, 18, 'دونات', NULL, 1, 1, '2022-05-29 03:39:26', '2022-05-29 05:10:15'),
(16, 177, 18, 'مثلجات', NULL, 1, 1, '2022-05-29 03:39:57', '2022-05-29 05:10:17'),
(17, 177, 17, 'برغر الدجاج', NULL, 1, 1, '2022-05-29 03:41:08', '2022-05-29 05:10:19'),
(18, 177, 17, 'برجر لحم', NULL, 1, 1, '2022-05-29 03:41:22', '2022-05-29 05:10:21'),
(19, 177, 19, 'عصير', NULL, 1, 1, '2022-05-29 03:42:30', '2022-05-29 05:10:23'),
(20, 177, 19, 'يهز', NULL, 1, 1, '2022-05-29 03:42:41', '2022-05-29 05:10:25'),
(21, 177, 19, 'المشروبات الغازية', NULL, 1, 1, '2022-05-29 03:42:56', '2022-05-29 05:10:29'),
(22, 176, 12, 'Family', 'Family', 1, 1, '2022-05-29 05:13:55', '2022-05-29 05:17:44'),
(23, 176, 12, 'Individual', 'Individual', 1, 1, '2022-05-29 05:14:06', '2022-05-29 05:18:00'),
(24, 177, 16, 'عائلة', 'عائلة', 1, 1, '2022-05-29 05:13:55', '2022-05-29 05:17:44'),
(25, 177, 16, 'الفرد', 'الفرد', 1, 1, '2022-05-29 05:14:06', '2022-05-29 05:18:00'),
(26, 177, 16, 'sssss', NULL, 1, 0, '2023-05-02 05:50:52', '2023-05-02 05:50:52'),
(27, 176, 15, 'test 1', NULL, 1, 1, '2023-05-02 05:51:19', '2023-05-02 05:51:25'),
(28, 177, 16, 'test1 AR', NULL, 1, 1, '2023-05-02 05:51:55', '2023-05-02 05:52:06'),
(29, 178, 20, 'demo subcategory', NULL, 1, 0, '2023-05-02 06:07:27', '2023-05-02 06:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int UNSIGNED NOT NULL,
  `subscribable_id` int DEFAULT NULL,
  `subscribable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endpoint` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_subscriptions`
--

INSERT INTO `push_subscriptions` (`id`, `subscribable_id`, `subscribable_type`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(3, 4, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dt--VeNXQpk:APA91bEXROqytusuQiBN-WidokRxoe_IH7kR6Qi6zXD1Ajx-XyQ4EtEoJxg62WwI-j0RFq2xUjBe-Is7h17zlUMntaf4mgCUeDFtLiW98h8xoOfL3ynutkpMHmyqoldRHVZDZGOQY98X', 'BEXtiHSUjJseqePlRDOqeeCDVSFvZdAyI8BupOIw0bIztqWL3W_pduNUd91A-3RzEHIYfmSfKjusX8B0JG1gOdk', 'GsDOuT4NTf6KGQt9RRVq0Q', NULL, '2020-12-26 10:04:17', '2020-12-26 10:04:17'),
(4, 5, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fetLuDtmxNg:APA91bHqqBZBZzCuFd8Ae3hGHo5q972ktIjfZuRzek59nJXiwdn88UBtnuU9IwaxVznCJGxn1SdhlOFZ8sIsGyVBoK-GIm6KCk0iTuvwc1e3o0H4hfunWZe-o98HQpIXpYDAkan0DiAy', 'BBBfXhMcnTWXOPHP4l2UObEUf7RGMkxoOK5_G4nGhLC8kkXcBdMWNcuhxk0BsSIEdw0jWcZTQ_i_569oZDqEnc0', 'k-yJKI5UjvvHbYQACv-Nrw', NULL, '2021-03-24 07:37:03', '2021-03-24 07:37:03'),
(5, 6, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgXhAyYoUVkJ8ymIaucMN78o9LdNIJ2ZhWATCMTUa79O7Q_6IWuwZlWOkNi33elgKb73GjntPc0ErLR7FF9b0UU0BNiDpJdsEv0uqcGKdNWkiYlAdlmNPaR0rKI8VivAkeCPzjYhykXGdYpXVpR3TxceTSpWBzxivvTpCTLQlUq72QNO8', 'BP6E_WEMY_Gq-nWKfidLIo4fI4kDlWB3XgnAPevTYRa8niS4TB0_OknMpwML1r_i-dWxE69eDU6e_TnUgufsd5E', 'yzcj6vcUg0WgFcQH6kC7kA', NULL, '2021-03-26 11:47:44', '2021-03-26 11:47:44'),
(6, 7, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cmWvhqu3tv8:APA91bFobMGJpxJvuqHpFU7Y5vtVZNcvsykv_So9xDDoCqKLewXINW8QbmIkpha9i7CJZPAoaZjST1cJPnwwa0rbp-VCk8LOWRoxcuIyyUlsOIFCMCOwysBSFZm_1eBbVV9aeyLSENGc', 'BHKiK1CUzfBe51go0MhzpcrTdsa0qaLhyS4v-S-3U7p7piNG31Lv_awN0wHHqn4tK3KMACk1xiBS8d9vB1cgLKI', 'fgFmWWEiO9fQ1m-IDBOW3w', NULL, '2021-04-03 00:02:31', '2021-04-03 00:02:31'),
(7, 8, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eh4uTNYjL8g:APA91bEX1UoNIWd9wkORCAREAofoRcvvbmRdDNMQwd1d-EZ0lbfCU5CUXewaZucNBK81XO0z6h0LnUaBFPHRlEDrUGm90vu_GHDd5lrndy3l6Otqf5i921YWUa-Xwn4i0MSW5uoPAeMQ', 'BMH-f875_KRifObIrwG57s-C4FT-X6NaQ0s8rTDEOK5kxlS_eCYT77cJjM2UsxuR3xAT49H_2ErlUPE1YnRtBUQ', 'x5mQe5dLhNw2H_x6j4jaOA', NULL, '2021-04-16 11:36:28', '2021-04-16 11:36:28'),
(8, 9, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dObB80OmAaw:APA91bFv7cirSdv3z2G0IU7AlDsIylsVt5C2Z3q53ZUNLMlvlOIfQiOshMF-xKknu8706NDLq9PJyhl7eCdOZlzw-pxRrgsW-p2PjU9N1bePkHnYSIPnTp5a4g1N1tDQQQQWNDjy9slX', 'BD6AiJcjC3gwlLEYPJ2WBaozmaxp9-Q2XBtJOa9NvggCIhT2jN-cjkpGJS2uFMudkJJsvaxfQXpuhKjfYYrba3g', 'YywnXPOaIAiGmM_zru-29Q', NULL, '2021-05-06 09:40:57', '2021-05-06 09:40:57'),
(9, 10, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZKf01giLZc:APA91bH4tmbQ3s4Lv-B9nztPSZW3yd7Y2uXC-60sHsGIhKkOlUxP6oC68n37Vtq-FBk-OlTVlU76weuJ_vrW0BliQoqvrNRb8xstdCONgBIs47-5fgbphTiuONZgUp1nDtX8LfcFM-Iy', 'BB27dE5e2Bm7GTRujTwXihSJFtX1rwSXl1BUgLLWwI3jFdV5m-gvmSmbsVURyhtmbFmJrdUOAB4T8aVXJrUQsVo', 'gl9nLuDpTn82DcL_hIjndw', NULL, '2021-05-23 00:31:34', '2021-05-23 00:31:34'),
(10, 11, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cPVrToqh8P0:APA91bEiMbgqN8bDAhr0mbdzXPcFOvc77t1WzG17LnxbEo7shs1OJ-UhjuXbKMj71Nx0_EjBlZNmj4Nl44WiksfgkV3COShKvj02S_ZpkTe5fD6WFwtIlPZ6LO-IrH57t-lVOinUQkHw', 'BFkWNoEXEsV0OhL7ry_yJngdJ9nSAuXv89yIgABu39xh53VUfgZqpaMNiz5w_yLqFcZ935BVRJ1h0tEm3QmqjaY', 'ozwxzjykXazMuvf1RxBK3w', NULL, '2022-03-08 11:07:58', '2022-03-08 11:07:58'),
(11, 12, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eSdjeQS-6ec:APA91bFUxeQX0vknYUYO5cF4Bau2chgFvbcNkVDiWxQzJFCC-koRWSuqHWlB-CNygN8YDUgGxCLD5EVEx8MpSGHTxkTpypT7lCxo9MiYVJdRjmLkxlLilJmyI2277FKumLhLbQM55CmZ', 'BCe9VF_iGITjvarsEaQ0f22fLX8lLZbXeQPscs4JQyT2iW_w6NallOMSkeiSk9tnEJc2Grzt4dvbOis9YS2GyFk', 'fVnvCzgIc24uKKVwF6b0rA', NULL, '2022-03-25 09:37:15', '2022-03-25 09:37:15'),
(12, 13, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fVC8cace-fw:APA91bEWCMtj2rRSwKQ1q6JQKrdw5X4JAk8FKP6kbWS9Zr7koUH_yRlG7mVwaycVt20EO7UYs0xe3DP26Xba3xGo4tPhS3Rjapa3i-2MNewsDloDPsDppAFkm-X4FKqpWqS_Vk6L9XMS', 'BLW-a2b-CPlH0E43datHyflA6OxN0IIpVKNh3_ITsz3H5XKsD_0GrS_JEW_CxnLnrFqO7SMjSAA7niVvvKzPwEw', 'IHXSSIH3ujQohnNsTkeqvw', NULL, '2022-03-25 15:10:08', '2022-03-25 15:10:08'),
(13, 14, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eAFjl2NwK-s:APA91bEp8b2PiBhmwX_zmnbBUTHukeW5vNABILeBOl5rsDHvN95kgd_3ywilHH9NfNnYpm7a7aJgNPXUc0gJ_7uaFuYjitNc-QRbXz7ys5ZGdtfSKOnGpiuyegInmd4Gzk2SpknKc4wc', 'BE0Jighn2izrgHO7NzhtdaOCAw9GMFmTGmRkx84bmXevQvLyG-60cF1XPDIVRhjI2AmaU5UkXQ21Tzey3isS_1E', 'U_cZTnEOkcCl-JNn74xpGg', NULL, '2022-03-26 05:55:51', '2022-03-26 05:55:51'),
(14, 15, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cYxO9t_xdXE:APA91bGQ1gBBBwp_ci8cdd_QyMhpiNn_YQHz5T7jYq_Rpy361fJn38T1n4_JepcLWvTVcWKS0_rKSxDZwj98j4tcKJ4WDTYftcpmHSOwzZ_wHMo-DbmOg7OCmo1H5bmM_qzs1JwSsKq3', 'BP7hrBFjwTu4WgVg2cRCQsTQqZWQVsNqqyaC1BOtpJreNbAHYy3_gY_UDojsdWqwiOnFEoNOoTcmTn13PxvR2cw', 'QumnEVX8v9ijINcYNHcXkg', NULL, '2022-03-26 06:11:44', '2022-03-26 06:11:44'),
(15, 16, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fL9PPVT6jlM:APA91bF1dsI1uMzo_fGgOiP-6G_LSRBmOpdao8C9sSPUtd4Pu9bvcJbOcFmiCbEKxdD2TGk6elsRlMa44pw4m73kcZy1Z6dWdk4uFxoqwF542pO4ZgneVD6DT1-2cCiMcadxvdHmQAQv', 'BAS6X7QsadHhhmu6d9Vw3EaCWJj2b2Wy9YITG0MFStEV4Gb8VDZFhiIm1qIE9Ni-OP3krftkgYTE6M4Bg4WOReQ', 'CxwoglDSONZr0rYK-AR4LA', NULL, '2022-03-26 06:11:59', '2022-03-26 06:11:59'),
(16, 17, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dvFmtOYkKOE:APA91bHpWKVtET2wBSGnEvLtLXpy5S150lRksdlSMTIDfiUNahnnOsJErkgga8EjvraIjSHkSe_epQEiN7naxS7w8vz9PmnOURQi4Bu4dBQj--WhHTyH50BPXBF_ZIVKcaOIlo3KVadt', 'BI33xxQv8EJZFF80Hyx-P4e8D8M5iMhPi6olDtwM_yQ2TXLuUMgoC2EK8fYfEsR2c32z0C2PssTuk14tEHAYHHY', 'bIvD5b7qsbv6mqcftsSyWQ', NULL, '2022-03-26 06:33:01', '2022-03-26 06:33:01'),
(17, 18, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fVc8RLnHZ6M:APA91bG2us8fW833NzlJ1ilqh8kkVoNrbKck6JZezNXegKjw8NwAm8vDovgpLndAmHNJA6gRfznPD_Rc8vwJ7XXOE3pE0KBokTaozkMq5M4UbPp8MReZ3ho6_iyqx9FrnXjnpxR9wxpa', 'BI4KhyzTEY70WmY4jZchN0M4klUqNIsbGos7lIk6SMhkweV5P5qtWdw2z5GXVFZn3vgkPbl-ozGZ6zgJBQIP_kA', 'mZDMBSqnZpW-X6OEWsdt1Q', NULL, '2022-03-28 13:24:40', '2022-03-28 13:24:40'),
(18, 19, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fgbnPkwsCU8:APA91bGJfLBxkTgEtJePLRIsyfSu2BIPQ22BYwHpAhVrA4whhAdsiHpOSOVr4Vcmp_pTLgRfP2PisJm_fG7so9YU0lNjbXEYHQJ24RkHcDf2eI3mP_5_BM9ALtjdM78nUxodMPYY4k5x', 'BMSdDc5maYAbAa8F3L-Vd1USadABzEWcUztaWRxgBk1Mz4ClvTrg8mQzXV_q7NUkYoCbC3vZ8CjfblbJlaVYDQg', 'JYpTiwRkwmPWtu0t5BEvng', NULL, '2022-03-29 07:23:02', '2022-03-29 07:23:02'),
(19, 20, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ePVbno9kWtA:APA91bHQi13UwmBnf_z9erJ2VBB78MK_hfeRvQ2tDeLiDgHC4Sl71dDktuhYtjOEamBq_w75T9_Nu0tJqw3YPRPqKW09ObMCn9LiA6pbQKWNYnJujatjDFL0VzZAhB_RLPo8KAdadkqz', 'BJYVyojs6MHZ322rE7rCQmoqeF9BHfOmbPG2c_U7Pv9BVTAiZM1IoUGw9gixoZuCaMHmuCO_GyrYsVDOHZ5bq1M', 'EbkcDvNrbLb31wyxyMgxyg', NULL, '2022-03-29 07:26:21', '2022-03-29 07:26:21'),
(20, 21, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dgvxW5cNw5g:APA91bH8Au63veVx1bkKpGB0g_MxoQICgJ3bWaP-QtyowdorZUGcayo5xASkTEFjJri6IjOyvRP7WKCv4jbr4RxT4PD_zr-3AwHlpG00d8rDd-bTvzyvTK2Aj0r59zpKtNSEw8a99VlZ', 'BMz4LqfWJZcdcEPgXJccF1ao7kxQ5176SUTI_nE6_2kcDGX2bHYeb1Q__2I8Vx0poSOvFSJhZckR28N5oc_XRII', 'FKpeggtAtAG-Fr2HYW1UDQ', NULL, '2022-03-29 09:33:41', '2022-03-29 09:33:41'),
(21, 22, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dH8KnORYEVQ:APA91bEJFuFWl1iloiH44Fuot4Gnoh5p0aUxs_mtrPVsm7O3Dkjd8vELa2DeW9ETdHFcSBkyZt8g0dERLI7jZU3sz5Kv0UP8S2UuDgkRGHC3hRIDp9PdYR8srv-7y_EitmUEY8kBhE9M', 'BGYGP4RPbx_ItA6mesKRIpYMuilij5XV7aKNj4u0VhWX2L5eL1PgV4qlS6Rp8ruvy04J0JA5nV8GfatnmkyxpEg', 'J13QxHa4fFtWFbcofgxp0Q', NULL, '2022-03-29 09:49:54', '2022-03-29 09:49:54'),
(22, 23, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eV2Fy6cICFg:APA91bH64deQsEs8og6oMqWSN0IV80-6IJtBR0MmRHwpm6vNvyY1Q-mVU8IK9x_BvxPuTNje_k1Ur6G1WhNqi_kmlCXQZoikKjkeOuLzQ0JjcoT5enML53YCw__PX9i_yathf5ajux8x', 'BJSRrN5bqx-Q0ZJAmPkZD6HraYwjGKo-Ls79nO-wTkiiJK4B87ocIw1xSGy4NplL7DPrviGevUPinoW95rH9FGo', 'wo-kNkXLQpNqbqUdvvxlRw', NULL, '2022-03-29 11:31:26', '2022-03-29 11:31:26'),
(23, 24, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fjhrX4tX4Cc:APA91bGSxATfx2askizSwnj_XEEe1dirC38jMXFsCL-Nip69CVioMNbApRMS8_A3RzlWDBXI1sUm2DdSq0-OnXsqO1fror-THjD3R107bF_OBsJWSy4YfrBCdlqD_KZVP_MO3FJbIyIO', 'BCv7R4fibTLn5GeBd9ItJtSk3pAXtoy0_vGdDcYqD1OAVqP-we7doNBGyb5kwmoFWuNrYcqcDK4j9nmqtat2jS8', 'F4Bh1BXCJ4ElCNUYhlYEpw', NULL, '2022-04-04 14:22:56', '2022-04-04 14:22:56'),
(24, 25, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dMfJBWeK59g:APA91bHVx8OoUaqqaZROwpYLGi0oL_hpP27-BHhKWcsb_Cf3JhO_0nfblhoeyZWsntig9h4yIv20-lwaiIUVaKQcZ_GtyC1P4DWizrLSkGtYLUtO1Erv9Q5SN1gPfGFy9BN9-J9M17Qi', 'BFnEhSqjkzRKNzObnvrebeVoy_RhIVnpxhKQ3H5ACaXK5gfbdkwxXhgLQtwTGypp6_stQ7xdXd5LlIQpv44YBZs', '8WigyorhUXnwfrUXwAi26A', NULL, '2022-04-06 14:45:27', '2022-04-06 14:45:27'),
(25, 26, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eFLG-3oEzKI:APA91bF934GtVfeJ3I-0pekZ3k2uYGQyExkei8SLug9CuMb0uXNj8p0kkc_kGPuzAbW0oVt3hlOWdNKmChP2aAWkPRwfGtkxgnDodUhkEZamoo92yi50N6Q65AOOGJVrydcjfVmWFoWF', 'BNhbs0yBnUjiWbiLhQsXjR4QKSL4XgnPG90SUs5gtkHD4FrOwn1V62gOUBO1bjIGj5oqR8j-3zKjGHLaPCEZuCI', 'NoxAW9LgVmrUxNOcIePDww', NULL, '2022-05-25 12:10:23', '2022-05-25 12:10:23'),
(26, 27, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ddjYk0PfZN4:APA91bHrypeB-IsqioQhnJ5YUV1nZxv-bIK5tKRJppgC4q2mcmEib9ng0gFFlm3_xs8jiHbzQ_KnQPxthBm3qaMnEyRFuv2r-jjs_xE5ie6kVK1zCKjNL1wE0nDC8Ftu-vlA0qtCDYs7', 'BMbq5BZB64P6zkalym9HtYBaHk_D2-HfF4cewQKD54CdVfmu-axKqPuBt1S6z2zKMOyxoTgamAJj_r68zAXkarY', '0L3fcWHSQ0EUNTPJ1U5o8w', NULL, '2023-04-10 05:35:33', '2023-04-10 05:35:33'),
(27, 28, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/c6z1jcd4ug8:APA91bHU62xxRJMvKKsE2hAVbIP5aHsYN5kNXcyMJ1MJ7LU16BG1IJiHmangsq9yWPlFoIpPhKB_uIzldr7lr4jh01AqC5NS4tZVHYBZn_zrkZuWh1uOWPxtQQGudUwEc5XGFv_M1THK', 'BP8wsKuMUhGdPmNWoyMJVFcEEISFpqpb6q4GWjh_nXdqVrLhLMyjCYehZOa4zYwTPakUoFR9peaS2jt10fxQUHk', '_-t7eG5DZKzXwEcwoaA2xQ', NULL, '2023-04-10 07:46:43', '2023-04-10 07:46:43'),
(28, 29, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZJp6IVs6lo:APA91bHggwA-gOtuZj-610cq9vO2dR3OuTKsklGG4bHXztdyX4tIQsDX--944xanSG3DWa2wkq6EflFM0i-r-OXQCsFa2nGloFQCyDvOwTWPGaXSbD3LCXAzvqJ-K2SFOvvsMSFq8h-7', 'BEbOX-LoYumTFSCNdDrIUg90a9SYUcom7clsKBbU00kKGtDfoLUoevn9GgLLuvsdYPkuAgoGkvAWhhJNhB8aK0o', 'AcUgE_pVVYgUXK8M0Uc2gw', NULL, '2023-05-30 10:54:57', '2023-05-30 10:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_inputs`
--

CREATE TABLE `reservation_inputs` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `type` tinyint DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-datepicker, 6-timepicker',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint NOT NULL DEFAULT '0' COMMENT '1 - required, 0 - optional',
  `order_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation_inputs`
--

INSERT INTO `reservation_inputs` (`id`, `language_id`, `type`, `label`, `name`, `placeholder`, `required`, `order_number`, `created_at`, `updated_at`) VALUES
(17, 177, 1, 'هاتف', 'هاتف', 'أدخل رقم الهاتف', 1, 1, '2020-09-13 04:12:46', '2020-09-13 04:12:46'),
(23, 177, 6, 'زمن', 'زمن', 'أدخل تاريخ الوصول', 1, 2, '2020-09-13 04:36:59', '2020-09-13 04:36:59'),
(24, 177, 5, 'تاريخ', 'تاريخ', 'أدخل تاريخ الوصول', 1, 3, '2020-09-13 08:28:11', '2020-09-13 08:28:11'),
(25, 177, 7, 'شخص', 'شخص', 'أدخل عدد الأشخاص', 1, 4, '2020-09-13 08:28:43', '2020-09-13 08:28:43'),
(30, 176, 1, 'Phone', 'Phone', 'Enter Phone Number', 1, 2, '2021-05-17 05:34:42', '2023-04-01 08:24:17'),
(31, 176, 1, 'Number of Persons', 'Number_of_Persons', 'Enter Number of Persons', 1, 1, '2021-05-17 05:34:53', '2023-04-01 08:24:17'),
(36, 176, 5, 'Check-in Date', 'Check-in_Date', 'Enter Check-in Date', 1, 3, '2021-05-17 05:58:05', '2021-05-17 05:58:05'),
(37, 176, 6, 'Check-in Time', 'Check-in_Time', 'Enter Check-in Time', 1, 4, '2021-05-17 05:58:16', '2021-05-17 05:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_input_options`
--

CREATE TABLE `reservation_input_options` (
  `id` bigint UNSIGNED NOT NULL,
  `reservation_input_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(7, 'Delivery Manager', '[\"Dashboard\",\"Order Management\"]', '2020-09-24 00:13:52', '2021-05-21 05:28:11'),
(8, 'Kitchen Manager', '[\"Dashboard\",\"Table Reservation\",\"Product Management\",\"Order Management\"]', '2020-09-28 11:23:56', '2020-12-31 05:45:18'),
(9, 'Shop Manager', '[\"Dashboard\",\"POS\"]', '2023-03-04 03:48:36', '2023-03-04 03:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `serving_methods`
--

CREATE TABLE `serving_methods` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateways` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website_menu` tinyint NOT NULL DEFAULT '1' COMMENT '0 - deactive on website menu, 1 - active on website menu',
  `qr_menu` tinyint NOT NULL DEFAULT '1' COMMENT '0 - deactive on qr menu, 1 - active on qr menu',
  `qr_payment` tinyint NOT NULL DEFAULT '0' COMMENT '0 - deactive, 1 - active',
  `pos` tinyint NOT NULL DEFAULT '1' COMMENT '1 - active for POS, 0 - deactive for POS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serving_methods`
--

INSERT INTO `serving_methods` (`id`, `name`, `value`, `gateways`, `serial_number`, `note`, `website_menu`, `qr_menu`, `qr_payment`, `pos`) VALUES
(1, 'On Table', 'on_table', '[\"1\",\"2\",\"3\"]', 1, 'Choose this method, if you are in restaurant', 1, 1, 1, 1),
(2, 'Pick Up', 'pick_up', '[\"1\",\"2\",\"3\"]', 2, 'Choose this, if you want to pick up the food from Restaurant', 1, 1, 1, 1),
(3, 'Home Delivery', 'home_delivery', '[\"1\",\"2\",\"3\"]', 3, 'Choose this, if you want the order to be served at your doorstep.', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `free_delivery_amount` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `title`, `language_id`, `text`, `charge`, `created_at`, `updated_at`, `free_delivery_amount`) VALUES
(7, 'Within 2 days', 176, 'Come & take a seat in Superv Restaurant', 1.00, '2020-08-30 07:51:46', '2022-03-17 14:13:10', 45.00),
(8, 'Within 4 days', 176, 'Come & grab your orders from Superv Restaurant', 2.00, '2020-08-30 07:52:30', '2020-12-13 07:16:23', NULL),
(9, 'Urgent Delivery', 176, 'Order & your order will be arrived to your doorstep', 5.00, '2020-08-30 07:53:51', '2020-12-13 07:15:53', NULL),
(10, 'تناول الطعام في', 177, 'تعال واجلس في مطعم SUPERV', 0.00, '2020-08-30 07:57:04', '2020-08-30 07:57:04', NULL),
(11, 'يبعد', 177, 'تعال واحصل على طلباتك من مطعم Superv Restaurant', 0.00, '2020-08-30 07:57:28', '2020-08-30 07:57:28', NULL),
(12, 'توصيل منزلي', 177, 'اطلب و سيصلك طلبك إلى عتبة داركم', 1.00, '2020-08-30 07:57:52', '2020-08-30 07:57:52', NULL),
(13, 'Inside Dhaka', 176, 'custom', 1.25, '2022-03-17 13:47:40', '2022-03-17 14:07:46', 40.00);

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitemaps`
--

INSERT INTO `sitemaps` (`id`, `sitemap_url`, `filename`, `created_at`, `updated_at`) VALUES
(2, 'http://localhost/superv/without_license/superv-1.2/', 'sitemap5f5e377957033.xml', '2020-09-13 09:15:26', '2020-09-13 09:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_font_size` int NOT NULL DEFAULT '60',
  `text_font_size` int NOT NULL DEFAULT '18',
  `button_text_font_size` int NOT NULL DEFAULT '14',
  `button_text1_font_size` int NOT NULL DEFAULT '14'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `text`, `title`, `button_text`, `button_url`, `button_text1`, `button_url1`, `image`, `bg_image`, `serial_number`, `created_at`, `updated_at`, `title_color`, `text_color`, `button_color`, `title_font_size`, `text_font_size`, `button_text_font_size`, `button_text1_font_size`) VALUES
(24, 176, 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 'Mexican Grilled Chicken Sub Sandwich...', 'Add to Cart', 'https://gizmoder.com/demo/html/omnivus/omnivus/index.html', 'Book a Table', 'https://gizmoder.com/demo/html/omnivus/omnivus/index.html', '1598069700.png', '1609328203.jpg', 3, '2020-08-17 03:49:17', '2020-12-30 11:36:43', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(26, 177, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف', 'برجر كنج برجر دجاج مشوي ...', 'أضف إلى السلة', 'https://megasoft.biz/plusagency/about-us/page', 'احجز طاولة', 'https://megasoft.biz/plusagency/about-us/page', '1597915383.png', '1609328255.jpg', 2, '2020-08-20 03:23:03', '2020-12-30 11:37:35', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(27, 177, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف', 'صب ساندوتش دجاج مشوي مكسيكي ...', 'أضف إلى السلة', 'https://megasoft.biz/plusagency/about-us/page', 'احجز طاولة', 'https://megasoft.biz/plusagency/about-us/page', '1598709117.png', '1609328243.jpg', 3, '2020-08-20 03:23:03', '2020-12-30 11:37:23', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(28, 176, 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 'Burger King Grilled Chicken Burger...', 'Add to Cart', 'https://megasoft.biz/plusagency/about-us/page', 'Book a Table', 'https://megasoft.biz/plusagency/about-us/page', '1598069651.png', '1609328189.jpg', 2, '2020-08-20 23:41:41', '2020-12-30 11:36:29', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(29, 176, 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 'Mexican Chicken Cheese Toaster Pizza', 'Add to Cart', 'https://megasoft.biz/plusagency/about-us/page', 'Book a Table', 'https://megasoft.biz/plusagency/about-us/page', '1598680778.png', '1609328176.jpg', 1, '2020-08-20 23:41:41', '2020-12-30 11:36:16', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(30, 177, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف', 'بيتزا محمصة دجاج مكسيكي بالجبن', 'أضف إلى السلة', 'https://megasoft.biz/plusagency/about-us/page', 'احجز طاولة', 'https://megasoft.biz/plusagency/about-us/page', '1598708979.png', '1609328232.jpg', 1, '2020-08-29 07:43:18', '2020-12-30 11:37:12', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`) VALUES
(1, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(2, 'fab fa-twitter', 'https://twitter.com/', 2),
(3, 'fab fa-linkedin-in', 'https://bd.linkedin.com/', 3),
(4, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(5, 'fab fa-dribbble', 'https://dribbble.com/', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'user1@gmail.com', NULL, NULL),
(2, 'user5@gmail.com', NULL, NULL),
(8, 'ben@gmail.com', NULL, NULL),
(9, 'drop_your_cv@plusagency.com', NULL, NULL),
(10, 'user34@gmail.com', NULL, NULL),
(12, 'client@gmail.com', NULL, NULL),
(14, 'user@gmail.com', NULL, NULL),
(15, 'saifislamfci@gmail.com', NULL, NULL),
(16, 'dfd@gmail.com', NULL, NULL),
(17, 'saifislamdf@gmail.com', NULL, NULL),
(38, 'faltusone@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint UNSIGNED NOT NULL,
  `table_no` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `qr_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `size` int NOT NULL DEFAULT '250',
  `style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `eye_style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `margin` int NOT NULL DEFAULT '0',
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '000000',
  `text_size` int DEFAULT '15',
  `text_x` int NOT NULL DEFAULT '50',
  `text_y` int NOT NULL DEFAULT '50',
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int NOT NULL DEFAULT '20',
  `image_x` int NOT NULL DEFAULT '50',
  `image_y` int NOT NULL DEFAULT '50',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_no`, `status`, `qr_image`, `color`, `size`, `style`, `eye_style`, `margin`, `text`, `text_color`, `text_size`, `text_x`, `text_y`, `image`, `image_size`, `image_x`, `image_y`, `type`) VALUES
(7, 1, 1, '60a926ef3406d.png', '520606', 272, 'square', 'circle', 0, NULL, NULL, NULL, 50, 50, '60a926ea0a451.png', 20, 50, 50, 'text'),
(8, 2, 1, '60a92703adfed.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'text'),
(10, 3, 1, '60a9262e62d6b.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(11, 4, 1, '60a9263865d0b.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(12, 5, 1, '60a9263ea193e.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(13, 6, 1, '60a9264514cdb.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(14, 7, 1, '60a9264bc926e.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(15, 8, 1, '60a92651a1323.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(16, 9, 1, '60a92658b0ffd.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(17, 10, 1, '60a9265ec7cd9.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(18, 11, 1, '60a9266999054.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(19, 12, 1, '60a92674c0125.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `table_books`
--

CREATE TABLE `table_books` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_books`
--

INSERT INTO `table_books` (`id`, `name`, `email`, `fields`, `status`, `created_at`, `updated_at`) VALUES
(17, 'Johnson', 'johnson@gmail.com', '{\"Phone\":\"12536236\",\"Time\":\"01:00 AM\",\"Date\":\"09/17/2020\",\"Person\":\"5\"}', 1, '2020-09-28 04:26:07', '2020-09-28 04:26:07'),
(18, 'Shop Manager', 'geniustest11@gmail.com', '{\"Phone\":\"0000\",\"Number_of_Persons\":\"dd\",\"Check-in_Date\":\"04/28/2023\",\"Check-in_Time\":\"12:30 AM\"}', 2, '2023-04-01 07:16:37', '2023-04-01 09:54:57'),
(19, 'saif', 'saifislamfci@gmail.com', '{\"Phone\":\"+1 (325) 953-9791\",\"Number_of_Persons\":\"367\",\"Check-in_Date\":\"04/28/2023\",\"Check-in_Time\":\"12:30 AM\"}', 1, '2023-04-01 07:23:08', '2023-04-01 07:23:08'),
(20, 'Colleen Quinn', 'xozuvasyb@mailinator.com', '{\"Phone\":\"+1 (661) 231-4055\",\"Number_of_Persons\":\"745\",\"Check-in_Date\":\"09-Jan-2019\",\"Check-in_Time\":\"Natus cumque vitae c\"}', 1, '2023-04-01 08:39:42', '2023-04-01 08:39:42'),
(21, 'Forrest Schneider', 'luzes@mailinator.com', '{\"Phone\":\"+1 (568) 155-7075\",\"Number_of_Persons\":\"843\",\"Check-in_Date\":\"26-Dec-2010\",\"Check-in_Time\":\"Nulla ea in in repel\"}', 1, '2023-04-01 08:39:57', '2023-04-01 08:39:57'),
(22, 'Margaret Mcintosh', 'xutipiket@mailinator.com', '{\"Phone\":\"+1 (293) 968-7159\",\"Number_of_Persons\":\"442\",\"Check-in_Date\":\"01-Jul-1998\",\"Check-in_Time\":\"Id enim labore a cil\"}', 1, '2023-04-01 08:40:06', '2023-04-01 08:40:06'),
(23, 'Sebastian Bates', 'rozuzyru@mailinator.com', '{\"Phone\":\"+1 (696) 469-4161\",\"Number_of_Persons\":\"273\",\"Check-in_Date\":\"14-Feb-1994\",\"Check-in_Time\":\"Quis mollitia blandi\"}', 1, '2023-04-01 08:41:58', '2023-04-01 08:41:58'),
(24, 'Shop Manager', 'saifislamfci@gmail.com', '{\"Phone\":\"+1 (325) 953-9791\",\"Number_of_Persons\":\"367\",\"Check-in_Date\":\"04/18/2023\",\"Check-in_Time\":\"12:00 AM\"}', 1, '2023-04-01 08:46:46', '2023-04-01 08:46:46'),
(25, 'Noelani Cash', 'vumetinuki@mailinator.com', '{\"Phone\":\"+1 (851) 394-4129\",\"Number_of_Persons\":\"778\",\"Check-in_Date\":\"05-Mar-1980\",\"Check-in_Time\":\"Fuga Aut saepe ipsu\"}', 1, '2023-04-01 08:47:23', '2023-04-01 08:47:23'),
(26, 'Jordan Knapp', 'tibala@mailinator.com', '{\"Phone\":\"+1 (741) 169-1304\",\"Number_of_Persons\":\"45\",\"Check-in_Date\":\"17-Dec-2009\",\"Check-in_Time\":\"Nemo quidem non ulla\"}', 1, '2023-04-01 08:47:49', '2023-04-01 08:47:49'),
(27, 'Velma Barron', 'xyxuseb@mailinator.com', '{\"Phone\":\"+1 (311) 658-7908\",\"Number_of_Persons\":\"894\",\"Check-in_Date\":\"23-Oct-2002\",\"Check-in_Time\":\"Qui praesentium cons\"}', 2, '2023-04-01 08:49:23', '2023-04-01 09:55:25'),
(28, 'Herrod Nash', 'mytevo@mailinator.com', '{\"Phone\":\"+1 (823) 799-6105\",\"Number_of_Persons\":\"852\",\"Check-in_Date\":\"22-Mar-2014\",\"Check-in_Time\":\"Quia culpa molestiae\"}', 2, '2023-04-01 08:49:29', '2023-04-01 09:55:14'),
(29, 'Nolan Lynch', 'kydod@mailinator.com', '{\"Phone\":\"+1 (557) 477-3754\",\"Number_of_Persons\":\"540\",\"Check-in_Date\":\"09-Nov-1984\",\"Check-in_Time\":\"Dolorum aut fugiat v\"}', 2, '2023-04-01 08:49:45', '2023-04-01 09:54:48'),
(30, 'Randall Hinton', 'tuwopimare@mailinator.com', '{\"Phone\":\"+1 (635) 895-6164\",\"Number_of_Persons\":\"593\",\"Check-in_Date\":\"28-Apr-2002\",\"Check-in_Time\":\"Quis in amet delect\"}', 1, '2023-04-02 05:31:31', '2023-04-02 05:31:31'),
(31, 'Yoshi Houston', 'majyzymo@mailinator.com', '{\"Phone\":\"+1 (385) 518-3457\",\"Number_of_Persons\":\"864\",\"Check-in_Date\":\"12-May-1984\",\"Check-in_Time\":\"Quae fuga Dolor ill\"}', 1, '2023-04-02 05:31:39', '2023-04-02 05:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `serial_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `image`, `comment`, `name`, `rank`, `rating`, `serial_number`, `created_at`, `updated_at`) VALUES
(24, 176, '1597736067.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Emma Watson', 'CEO, PlusAgency', 5, 1, NULL, NULL),
(25, 176, '1597749691.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Amelia Hanna', 'Manager, PlusAgency', 5, 4, NULL, NULL),
(28, 176, '1598692556.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Marcos Reus', 'Software Engineer', 4, 2, NULL, NULL),
(29, 176, '1598692612.png', 'Donec ac quam non elit hendrerit placerat. Pellentesque a est id diam lacinia convallis. Etiam non quam sit amet odio pharetra lacinia. Donec purus enim, ornare ac imperdiet', 'Rebeca Isabella', 'CTO, PlusAgency', 1, 3, NULL, NULL),
(30, 177, '1598772950.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'إيما واتسون', 'الرئيس التنفيذي لشركة PlusAgency', 5, 1, NULL, NULL),
(31, 177, '1598772999.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'اميليا حنا', 'مدير PlusAgency', 5, 2, NULL, NULL),
(32, 177, '1598773050.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'ماركوس ريوس', 'مهندس برمجيات', 5, 3, NULL, NULL),
(33, 177, '1598773091.png', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', 'ريبيكا إيزابيلا', 'CTO ، PlusAgency', 5, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `country_code` char(3) NOT NULL,
  `timezone` varchar(125) NOT NULL DEFAULT '',
  `gmt_offset` float(10,2) DEFAULT NULL,
  `dst_offset` float(10,2) DEFAULT NULL,
  `raw_offset` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`country_code`, `timezone`, `gmt_offset`, `dst_offset`, `raw_offset`) VALUES
('AD', 'Europe/Andorra', 1.00, 2.00, 1.00),
('AE', 'Asia/Dubai', 4.00, 4.00, 4.00),
('AF', 'Asia/Kabul', 4.50, 4.50, 4.50),
('AG', 'America/Antigua', -4.00, -4.00, -4.00),
('AI', 'America/Anguilla', -4.00, -4.00, -4.00),
('AL', 'Europe/Tirane', 1.00, 2.00, 1.00),
('AM', 'Asia/Yerevan', 4.00, 4.00, 4.00),
('AO', 'Africa/Luanda', 1.00, 1.00, 1.00),
('AQ', 'Antarctica/Casey', 8.00, 8.00, 8.00),
('AQ', 'Antarctica/Davis', 7.00, 7.00, 7.00),
('AQ', 'Antarctica/DumontDUrville', 10.00, 10.00, 10.00),
('AQ', 'Antarctica/Mawson', 5.00, 5.00, 5.00),
('AQ', 'Antarctica/McMurdo', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Palmer', -3.00, -4.00, -4.00),
('AQ', 'Antarctica/Rothera', -3.00, -3.00, -3.00),
('AQ', 'Antarctica/South_Pole', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Syowa', 3.00, 3.00, 3.00),
('AQ', 'Antarctica/Vostok', 6.00, 6.00, 6.00),
('AR', 'America/Argentina/Buenos_Aires', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Catamarca', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Cordoba', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Jujuy', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/La_Rioja', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Mendoza', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Rio_Gallegos', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Salta', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Juan', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Luis', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Tucuman', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Ushuaia', -3.00, -3.00, -3.00),
('AS', 'Pacific/Pago_Pago', -11.00, -11.00, -11.00),
('AT', 'Europe/Vienna', 1.00, 2.00, 1.00),
('AU', 'Antarctica/Macquarie', 11.00, 11.00, 11.00),
('AU', 'Australia/Adelaide', 10.50, 9.50, 9.50),
('AU', 'Australia/Brisbane', 10.00, 10.00, 10.00),
('AU', 'Australia/Broken_Hill', 10.50, 9.50, 9.50),
('AU', 'Australia/Currie', 11.00, 10.00, 10.00),
('AU', 'Australia/Darwin', 9.50, 9.50, 9.50),
('AU', 'Australia/Eucla', 8.75, 8.75, 8.75),
('AU', 'Australia/Hobart', 11.00, 10.00, 10.00),
('AU', 'Australia/Lindeman', 10.00, 10.00, 10.00),
('AU', 'Australia/Lord_Howe', 11.00, 10.50, 10.50),
('AU', 'Australia/Melbourne', 11.00, 10.00, 10.00),
('AU', 'Australia/Perth', 8.00, 8.00, 8.00),
('AU', 'Australia/Sydney', 11.00, 10.00, 10.00),
('AW', 'America/Aruba', -4.00, -4.00, -4.00),
('AX', 'Europe/Mariehamn', 2.00, 3.00, 2.00),
('AZ', 'Asia/Baku', 4.00, 5.00, 4.00),
('BA', 'Europe/Sarajevo', 1.00, 2.00, 1.00),
('BB', 'America/Barbados', -4.00, -4.00, -4.00),
('BD', 'Asia/Dhaka', 6.00, 6.00, 6.00),
('BE', 'Europe/Brussels', 1.00, 2.00, 1.00),
('BF', 'Africa/Ouagadougou', 0.00, 0.00, 0.00),
('BG', 'Europe/Sofia', 2.00, 3.00, 2.00),
('BH', 'Asia/Bahrain', 3.00, 3.00, 3.00),
('BI', 'Africa/Bujumbura', 2.00, 2.00, 2.00),
('BJ', 'Africa/Porto-Novo', 1.00, 1.00, 1.00),
('BL', 'America/St_Barthelemy', -4.00, -4.00, -4.00),
('BM', 'Atlantic/Bermuda', -4.00, -3.00, -4.00),
('BN', 'Asia/Brunei', 8.00, 8.00, 8.00),
('BO', 'America/La_Paz', -4.00, -4.00, -4.00),
('BQ', 'America/Kralendijk', -4.00, -4.00, -4.00),
('BR', 'America/Araguaina', -3.00, -3.00, -3.00),
('BR', 'America/Bahia', -3.00, -3.00, -3.00),
('BR', 'America/Belem', -3.00, -3.00, -3.00),
('BR', 'America/Boa_Vista', -4.00, -4.00, -4.00),
('BR', 'America/Campo_Grande', -3.00, -4.00, -4.00),
('BR', 'America/Cuiaba', -3.00, -4.00, -4.00),
('BR', 'America/Eirunepe', -5.00, -5.00, -5.00),
('BR', 'America/Fortaleza', -3.00, -3.00, -3.00),
('BR', 'America/Maceio', -3.00, -3.00, -3.00),
('BR', 'America/Manaus', -4.00, -4.00, -4.00),
('BR', 'America/Noronha', -2.00, -2.00, -2.00),
('BR', 'America/Porto_Velho', -4.00, -4.00, -4.00),
('BR', 'America/Recife', -3.00, -3.00, -3.00),
('BR', 'America/Rio_Branco', -5.00, -5.00, -5.00),
('BR', 'America/Santarem', -3.00, -3.00, -3.00),
('BR', 'America/Sao_Paulo', -2.00, -3.00, -3.00),
('BS', 'America/Nassau', -5.00, -4.00, -5.00),
('BT', 'Asia/Thimphu', 6.00, 6.00, 6.00),
('BW', 'Africa/Gaborone', 2.00, 2.00, 2.00),
('BY', 'Europe/Minsk', 3.00, 3.00, 3.00),
('BZ', 'America/Belize', -6.00, -6.00, -6.00),
('CA', 'America/Atikokan', -5.00, -5.00, -5.00),
('CA', 'America/Blanc-Sablon', -4.00, -4.00, -4.00),
('CA', 'America/Cambridge_Bay', -7.00, -6.00, -7.00),
('CA', 'America/Creston', -7.00, -7.00, -7.00),
('CA', 'America/Dawson', -8.00, -7.00, -8.00),
('CA', 'America/Dawson_Creek', -7.00, -7.00, -7.00),
('CA', 'America/Edmonton', -7.00, -6.00, -7.00),
('CA', 'America/Glace_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Goose_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Halifax', -4.00, -3.00, -4.00),
('CA', 'America/Inuvik', -7.00, -6.00, -7.00),
('CA', 'America/Iqaluit', -5.00, -4.00, -5.00),
('CA', 'America/Moncton', -4.00, -3.00, -4.00),
('CA', 'America/Montreal', -5.00, -4.00, -5.00),
('CA', 'America/Nipigon', -5.00, -4.00, -5.00),
('CA', 'America/Pangnirtung', -5.00, -4.00, -5.00),
('CA', 'America/Rainy_River', -6.00, -5.00, -6.00),
('CA', 'America/Rankin_Inlet', -6.00, -5.00, -6.00),
('CA', 'America/Regina', -6.00, -6.00, -6.00),
('CA', 'America/Resolute', -6.00, -5.00, -6.00),
('CA', 'America/St_Johns', -3.50, -2.50, -3.50),
('CA', 'America/Swift_Current', -6.00, -6.00, -6.00),
('CA', 'America/Thunder_Bay', -5.00, -4.00, -5.00),
('CA', 'America/Toronto', -5.00, -4.00, -5.00),
('CA', 'America/Vancouver', -8.00, -7.00, -8.00),
('CA', 'America/Whitehorse', -8.00, -7.00, -8.00),
('CA', 'America/Winnipeg', -6.00, -5.00, -6.00),
('CA', 'America/Yellowknife', -7.00, -6.00, -7.00),
('CC', 'Indian/Cocos', 6.50, 6.50, 6.50),
('CD', 'Africa/Kinshasa', 1.00, 1.00, 1.00),
('CD', 'Africa/Lubumbashi', 2.00, 2.00, 2.00),
('CF', 'Africa/Bangui', 1.00, 1.00, 1.00),
('CG', 'Africa/Brazzaville', 1.00, 1.00, 1.00),
('CH', 'Europe/Zurich', 1.00, 2.00, 1.00),
('CI', 'Africa/Abidjan', 0.00, 0.00, 0.00),
('CK', 'Pacific/Rarotonga', -10.00, -10.00, -10.00),
('CL', 'America/Santiago', -3.00, -4.00, -4.00),
('CL', 'Pacific/Easter', -5.00, -6.00, -6.00),
('CM', 'Africa/Douala', 1.00, 1.00, 1.00),
('CN', 'Asia/Chongqing', 8.00, 8.00, 8.00),
('CN', 'Asia/Harbin', 8.00, 8.00, 8.00),
('CN', 'Asia/Kashgar', 8.00, 8.00, 8.00),
('CN', 'Asia/Shanghai', 8.00, 8.00, 8.00),
('CN', 'Asia/Urumqi', 8.00, 8.00, 8.00),
('CO', 'America/Bogota', -5.00, -5.00, -5.00),
('CR', 'America/Costa_Rica', -6.00, -6.00, -6.00),
('CU', 'America/Havana', -5.00, -4.00, -5.00),
('CV', 'Atlantic/Cape_Verde', -1.00, -1.00, -1.00),
('CW', 'America/Curacao', -4.00, -4.00, -4.00),
('CX', 'Indian/Christmas', 7.00, 7.00, 7.00),
('CY', 'Asia/Nicosia', 2.00, 3.00, 2.00),
('CZ', 'Europe/Prague', 1.00, 2.00, 1.00),
('DE', 'Europe/Berlin', 1.00, 2.00, 1.00),
('DE', 'Europe/Busingen', 1.00, 2.00, 1.00),
('DJ', 'Africa/Djibouti', 3.00, 3.00, 3.00),
('DK', 'Europe/Copenhagen', 1.00, 2.00, 1.00),
('DM', 'America/Dominica', -4.00, -4.00, -4.00),
('DO', 'America/Santo_Domingo', -4.00, -4.00, -4.00),
('DZ', 'Africa/Algiers', 1.00, 1.00, 1.00),
('EC', 'America/Guayaquil', -5.00, -5.00, -5.00),
('EC', 'Pacific/Galapagos', -6.00, -6.00, -6.00),
('EE', 'Europe/Tallinn', 2.00, 3.00, 2.00),
('EG', 'Africa/Cairo', 2.00, 2.00, 2.00),
('EH', 'Africa/El_Aaiun', 0.00, 0.00, 0.00),
('ER', 'Africa/Asmara', 3.00, 3.00, 3.00),
('ES', 'Africa/Ceuta', 1.00, 2.00, 1.00),
('ES', 'Atlantic/Canary', 0.00, 1.00, 0.00),
('ES', 'Europe/Madrid', 1.00, 2.00, 1.00),
('ET', 'Africa/Addis_Ababa', 3.00, 3.00, 3.00),
('FI', 'Europe/Helsinki', 2.00, 3.00, 2.00),
('FJ', 'Pacific/Fiji', 13.00, 12.00, 12.00),
('FK', 'Atlantic/Stanley', -3.00, -3.00, -3.00),
('FM', 'Pacific/Chuuk', 10.00, 10.00, 10.00),
('FM', 'Pacific/Kosrae', 11.00, 11.00, 11.00),
('FM', 'Pacific/Pohnpei', 11.00, 11.00, 11.00),
('FO', 'Atlantic/Faroe', 0.00, 1.00, 0.00),
('FR', 'Europe/Paris', 1.00, 2.00, 1.00),
('GA', 'Africa/Libreville', 1.00, 1.00, 1.00),
('GB', 'Europe/London', 0.00, 1.00, 0.00),
('GD', 'America/Grenada', -4.00, -4.00, -4.00),
('GE', 'Asia/Tbilisi', 4.00, 4.00, 4.00),
('GF', 'America/Cayenne', -3.00, -3.00, -3.00),
('GG', 'Europe/Guernsey', 0.00, 1.00, 0.00),
('GH', 'Africa/Accra', 0.00, 0.00, 0.00),
('GI', 'Europe/Gibraltar', 1.00, 2.00, 1.00),
('GL', 'America/Danmarkshavn', 0.00, 0.00, 0.00),
('GL', 'America/Godthab', -3.00, -2.00, -3.00),
('GL', 'America/Scoresbysund', -1.00, 0.00, -1.00),
('GL', 'America/Thule', -4.00, -3.00, -4.00),
('GM', 'Africa/Banjul', 0.00, 0.00, 0.00),
('GN', 'Africa/Conakry', 0.00, 0.00, 0.00),
('GP', 'America/Guadeloupe', -4.00, -4.00, -4.00),
('GQ', 'Africa/Malabo', 1.00, 1.00, 1.00),
('GR', 'Europe/Athens', 2.00, 3.00, 2.00),
('GS', 'Atlantic/South_Georgia', -2.00, -2.00, -2.00),
('GT', 'America/Guatemala', -6.00, -6.00, -6.00),
('GU', 'Pacific/Guam', 10.00, 10.00, 10.00),
('GW', 'Africa/Bissau', 0.00, 0.00, 0.00),
('GY', 'America/Guyana', -4.00, -4.00, -4.00),
('HK', 'Asia/Hong_Kong', 8.00, 8.00, 8.00),
('HN', 'America/Tegucigalpa', -6.00, -6.00, -6.00),
('HR', 'Europe/Zagreb', 1.00, 2.00, 1.00),
('HT', 'America/Port-au-Prince', -5.00, -4.00, -5.00),
('HU', 'Europe/Budapest', 1.00, 2.00, 1.00),
('ID', 'Asia/Jakarta', 7.00, 7.00, 7.00),
('ID', 'Asia/Jayapura', 9.00, 9.00, 9.00),
('ID', 'Asia/Makassar', 8.00, 8.00, 8.00),
('ID', 'Asia/Pontianak', 7.00, 7.00, 7.00),
('IE', 'Europe/Dublin', 0.00, 1.00, 0.00),
('IL', 'Asia/Jerusalem', 2.00, 3.00, 2.00),
('IM', 'Europe/Isle_of_Man', 0.00, 1.00, 0.00),
('IN', 'Asia/Kolkata', 5.50, 5.50, 5.50),
('IO', 'Indian/Chagos', 6.00, 6.00, 6.00),
('IQ', 'Asia/Baghdad', 3.00, 3.00, 3.00),
('IR', 'Asia/Tehran', 3.50, 4.50, 3.50),
('IS', 'Atlantic/Reykjavik', 0.00, 0.00, 0.00),
('IT', 'Europe/Rome', 1.00, 2.00, 1.00),
('JE', 'Europe/Jersey', 0.00, 1.00, 0.00),
('JM', 'America/Jamaica', -5.00, -5.00, -5.00),
('JO', 'Asia/Amman', 2.00, 3.00, 2.00),
('JP', 'Asia/Tokyo', 9.00, 9.00, 9.00),
('KE', 'Africa/Nairobi', 3.00, 3.00, 3.00),
('KG', 'Asia/Bishkek', 6.00, 6.00, 6.00),
('KH', 'Asia/Phnom_Penh', 7.00, 7.00, 7.00),
('KI', 'Pacific/Enderbury', 13.00, 13.00, 13.00),
('KI', 'Pacific/Kiritimati', 14.00, 14.00, 14.00),
('KI', 'Pacific/Tarawa', 12.00, 12.00, 12.00),
('KM', 'Indian/Comoro', 3.00, 3.00, 3.00),
('KN', 'America/St_Kitts', -4.00, -4.00, -4.00),
('KP', 'Asia/Pyongyang', 9.00, 9.00, 9.00),
('KR', 'Asia/Seoul', 9.00, 9.00, 9.00),
('KW', 'Asia/Kuwait', 3.00, 3.00, 3.00),
('KY', 'America/Cayman', -5.00, -5.00, -5.00),
('KZ', 'Asia/Almaty', 6.00, 6.00, 6.00),
('KZ', 'Asia/Aqtau', 5.00, 5.00, 5.00),
('KZ', 'Asia/Aqtobe', 5.00, 5.00, 5.00),
('KZ', 'Asia/Oral', 5.00, 5.00, 5.00),
('KZ', 'Asia/Qyzylorda', 6.00, 6.00, 6.00),
('LA', 'Asia/Vientiane', 7.00, 7.00, 7.00),
('LB', 'Asia/Beirut', 2.00, 3.00, 2.00),
('LC', 'America/St_Lucia', -4.00, -4.00, -4.00),
('LI', 'Europe/Vaduz', 1.00, 2.00, 1.00),
('LK', 'Asia/Colombo', 5.50, 5.50, 5.50),
('LR', 'Africa/Monrovia', 0.00, 0.00, 0.00),
('LS', 'Africa/Maseru', 2.00, 2.00, 2.00),
('LT', 'Europe/Vilnius', 2.00, 3.00, 2.00),
('LU', 'Europe/Luxembourg', 1.00, 2.00, 1.00),
('LV', 'Europe/Riga', 2.00, 3.00, 2.00),
('LY', 'Africa/Tripoli', 2.00, 2.00, 2.00),
('MA', 'Africa/Casablanca', 0.00, 0.00, 0.00),
('MC', 'Europe/Monaco', 1.00, 2.00, 1.00),
('MD', 'Europe/Chisinau', 2.00, 3.00, 2.00),
('ME', 'Europe/Podgorica', 1.00, 2.00, 1.00),
('MF', 'America/Marigot', -4.00, -4.00, -4.00),
('MG', 'Indian/Antananarivo', 3.00, 3.00, 3.00),
('MH', 'Pacific/Kwajalein', 12.00, 12.00, 12.00),
('MH', 'Pacific/Majuro', 12.00, 12.00, 12.00),
('MK', 'Europe/Skopje', 1.00, 2.00, 1.00),
('ML', 'Africa/Bamako', 0.00, 0.00, 0.00),
('MM', 'Asia/Rangoon', 6.50, 6.50, 6.50),
('MN', 'Asia/Choibalsan', 8.00, 8.00, 8.00),
('MN', 'Asia/Hovd', 7.00, 7.00, 7.00),
('MN', 'Asia/Ulaanbaatar', 8.00, 8.00, 8.00),
('MO', 'Asia/Macau', 8.00, 8.00, 8.00),
('MP', 'Pacific/Saipan', 10.00, 10.00, 10.00),
('MQ', 'America/Martinique', -4.00, -4.00, -4.00),
('MR', 'Africa/Nouakchott', 0.00, 0.00, 0.00),
('MS', 'America/Montserrat', -4.00, -4.00, -4.00),
('MT', 'Europe/Malta', 1.00, 2.00, 1.00),
('MU', 'Indian/Mauritius', 4.00, 4.00, 4.00),
('MV', 'Indian/Maldives', 5.00, 5.00, 5.00),
('MW', 'Africa/Blantyre', 2.00, 2.00, 2.00),
('MX', 'America/Bahia_Banderas', -6.00, -5.00, -6.00),
('MX', 'America/Cancun', -6.00, -5.00, -6.00),
('MX', 'America/Chihuahua', -7.00, -6.00, -7.00),
('MX', 'America/Hermosillo', -7.00, -7.00, -7.00),
('MX', 'America/Matamoros', -6.00, -5.00, -6.00),
('MX', 'America/Mazatlan', -7.00, -6.00, -7.00),
('MX', 'America/Merida', -6.00, -5.00, -6.00),
('MX', 'America/Mexico_City', -6.00, -5.00, -6.00),
('MX', 'America/Monterrey', -6.00, -5.00, -6.00),
('MX', 'America/Ojinaga', -7.00, -6.00, -7.00),
('MX', 'America/Santa_Isabel', -8.00, -7.00, -8.00),
('MX', 'America/Tijuana', -8.00, -7.00, -8.00),
('MY', 'Asia/Kuala_Lumpur', 8.00, 8.00, 8.00),
('MY', 'Asia/Kuching', 8.00, 8.00, 8.00),
('MZ', 'Africa/Maputo', 2.00, 2.00, 2.00),
('NA', 'Africa/Windhoek', 2.00, 1.00, 1.00),
('NC', 'Pacific/Noumea', 11.00, 11.00, 11.00),
('NE', 'Africa/Niamey', 1.00, 1.00, 1.00),
('NF', 'Pacific/Norfolk', 11.50, 11.50, 11.50),
('NG', 'Africa/Lagos', 1.00, 1.00, 1.00),
('NI', 'America/Managua', -6.00, -6.00, -6.00),
('NL', 'Europe/Amsterdam', 1.00, 2.00, 1.00),
('NO', 'Europe/Oslo', 1.00, 2.00, 1.00),
('NP', 'Asia/Kathmandu', 5.75, 5.75, 5.75),
('NR', 'Pacific/Nauru', 12.00, 12.00, 12.00),
('NU', 'Pacific/Niue', -11.00, -11.00, -11.00),
('NZ', 'Pacific/Auckland', 13.00, 12.00, 12.00),
('NZ', 'Pacific/Chatham', 13.75, 12.75, 12.75),
('OM', 'Asia/Muscat', 4.00, 4.00, 4.00),
('PA', 'America/Panama', -5.00, -5.00, -5.00),
('PE', 'America/Lima', -5.00, -5.00, -5.00),
('PF', 'Pacific/Gambier', -9.00, -9.00, -9.00),
('PF', 'Pacific/Marquesas', -9.50, -9.50, -9.50),
('PF', 'Pacific/Tahiti', -10.00, -10.00, -10.00),
('PG', 'Pacific/Port_Moresby', 10.00, 10.00, 10.00),
('PH', 'Asia/Manila', 8.00, 8.00, 8.00),
('PK', 'Asia/Karachi', 5.00, 5.00, 5.00),
('PL', 'Europe/Warsaw', 1.00, 2.00, 1.00),
('PM', 'America/Miquelon', -3.00, -2.00, -3.00),
('PN', 'Pacific/Pitcairn', -8.00, -8.00, -8.00),
('PR', 'America/Puerto_Rico', -4.00, -4.00, -4.00),
('PS', 'Asia/Gaza', 2.00, 3.00, 2.00),
('PS', 'Asia/Hebron', 2.00, 3.00, 2.00),
('PT', 'Atlantic/Azores', -1.00, 0.00, -1.00),
('PT', 'Atlantic/Madeira', 0.00, 1.00, 0.00),
('PT', 'Europe/Lisbon', 0.00, 1.00, 0.00),
('PW', 'Pacific/Palau', 9.00, 9.00, 9.00),
('PY', 'America/Asuncion', -3.00, -4.00, -4.00),
('QA', 'Asia/Qatar', 3.00, 3.00, 3.00),
('RE', 'Indian/Reunion', 4.00, 4.00, 4.00),
('RO', 'Europe/Bucharest', 2.00, 3.00, 2.00),
('RS', 'Europe/Belgrade', 1.00, 2.00, 1.00),
('RU', 'Asia/Anadyr', 12.00, 12.00, 12.00),
('RU', 'Asia/Irkutsk', 9.00, 9.00, 9.00),
('RU', 'Asia/Kamchatka', 12.00, 12.00, 12.00),
('RU', 'Asia/Khandyga', 10.00, 10.00, 10.00),
('RU', 'Asia/Krasnoyarsk', 8.00, 8.00, 8.00),
('RU', 'Asia/Magadan', 12.00, 12.00, 12.00),
('RU', 'Asia/Novokuznetsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Novosibirsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Omsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Sakhalin', 11.00, 11.00, 11.00),
('RU', 'Asia/Ust-Nera', 11.00, 11.00, 11.00),
('RU', 'Asia/Vladivostok', 11.00, 11.00, 11.00),
('RU', 'Asia/Yakutsk', 10.00, 10.00, 10.00),
('RU', 'Asia/Yekaterinburg', 6.00, 6.00, 6.00),
('RU', 'Europe/Kaliningrad', 3.00, 3.00, 3.00),
('RU', 'Europe/Moscow', 4.00, 4.00, 4.00),
('RU', 'Europe/Samara', 4.00, 4.00, 4.00),
('RU', 'Europe/Volgograd', 4.00, 4.00, 4.00),
('RW', 'Africa/Kigali', 2.00, 2.00, 2.00),
('SA', 'Asia/Riyadh', 3.00, 3.00, 3.00),
('SB', 'Pacific/Guadalcanal', 11.00, 11.00, 11.00),
('SC', 'Indian/Mahe', 4.00, 4.00, 4.00),
('SD', 'Africa/Khartoum', 3.00, 3.00, 3.00),
('SE', 'Europe/Stockholm', 1.00, 2.00, 1.00),
('SG', 'Asia/Singapore', 8.00, 8.00, 8.00),
('SH', 'Atlantic/St_Helena', 0.00, 0.00, 0.00),
('SI', 'Europe/Ljubljana', 1.00, 2.00, 1.00),
('SJ', 'Arctic/Longyearbyen', 1.00, 2.00, 1.00),
('SK', 'Europe/Bratislava', 1.00, 2.00, 1.00),
('SL', 'Africa/Freetown', 0.00, 0.00, 0.00),
('SM', 'Europe/San_Marino', 1.00, 2.00, 1.00),
('SN', 'Africa/Dakar', 0.00, 0.00, 0.00),
('SO', 'Africa/Mogadishu', 3.00, 3.00, 3.00),
('SR', 'America/Paramaribo', -3.00, -3.00, -3.00),
('SS', 'Africa/Juba', 3.00, 3.00, 3.00),
('ST', 'Africa/Sao_Tome', 0.00, 0.00, 0.00),
('SV', 'America/El_Salvador', -6.00, -6.00, -6.00),
('SX', 'America/Lower_Princes', -4.00, -4.00, -4.00),
('SY', 'Asia/Damascus', 2.00, 3.00, 2.00),
('SZ', 'Africa/Mbabane', 2.00, 2.00, 2.00),
('TC', 'America/Grand_Turk', -5.00, -4.00, -5.00),
('TD', 'Africa/Ndjamena', 1.00, 1.00, 1.00),
('TF', 'Indian/Kerguelen', 5.00, 5.00, 5.00),
('TG', 'Africa/Lome', 0.00, 0.00, 0.00),
('TH', 'Asia/Bangkok', 7.00, 7.00, 7.00),
('TJ', 'Asia/Dushanbe', 5.00, 5.00, 5.00),
('TK', 'Pacific/Fakaofo', 13.00, 13.00, 13.00),
('TL', 'Asia/Dili', 9.00, 9.00, 9.00),
('TM', 'Asia/Ashgabat', 5.00, 5.00, 5.00),
('TN', 'Africa/Tunis', 1.00, 1.00, 1.00),
('TO', 'Pacific/Tongatapu', 13.00, 13.00, 13.00),
('TR', 'Europe/Istanbul', 2.00, 3.00, 2.00),
('TT', 'America/Port_of_Spain', -4.00, -4.00, -4.00),
('TV', 'Pacific/Funafuti', 12.00, 12.00, 12.00),
('TW', 'Asia/Taipei', 8.00, 8.00, 8.00),
('TZ', 'Africa/Dar_es_Salaam', 3.00, 3.00, 3.00),
('UA', 'Europe/Kiev', 2.00, 3.00, 2.00),
('UA', 'Europe/Simferopol', 2.00, 4.00, 4.00),
('UA', 'Europe/Uzhgorod', 2.00, 3.00, 2.00),
('UA', 'Europe/Zaporozhye', 2.00, 3.00, 2.00),
('UG', 'Africa/Kampala', 3.00, 3.00, 3.00),
('UM', 'Pacific/Johnston', -10.00, -10.00, -10.00),
('UM', 'Pacific/Midway', -11.00, -11.00, -11.00),
('UM', 'Pacific/Wake', 12.00, 12.00, 12.00),
('US', 'America/Adak', -10.00, -9.00, -10.00),
('US', 'America/Anchorage', -9.00, -8.00, -9.00),
('US', 'America/Boise', -7.00, -6.00, -7.00),
('US', 'America/Chicago', -6.00, -5.00, -6.00),
('US', 'America/Denver', -7.00, -6.00, -7.00),
('US', 'America/Detroit', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Indianapolis', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Knox', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Marengo', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Petersburg', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Tell_City', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Vevay', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Vincennes', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Winamac', -5.00, -4.00, -5.00),
('US', 'America/Juneau', -9.00, -8.00, -9.00),
('US', 'America/Kentucky/Louisville', -5.00, -4.00, -5.00),
('US', 'America/Kentucky/Monticello', -5.00, -4.00, -5.00),
('US', 'America/Los_Angeles', -8.00, -7.00, -8.00),
('US', 'America/Menominee', -6.00, -5.00, -6.00),
('US', 'America/Metlakatla', -8.00, -8.00, -8.00),
('US', 'America/New_York', -5.00, -4.00, -5.00),
('US', 'America/Nome', -9.00, -8.00, -9.00),
('US', 'America/North_Dakota/Beulah', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/Center', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/New_Salem', -6.00, -5.00, -6.00),
('US', 'America/Phoenix', -7.00, -7.00, -7.00),
('US', 'America/Shiprock', -7.00, -6.00, -7.00),
('US', 'America/Sitka', -9.00, -8.00, -9.00),
('US', 'America/Yakutat', -9.00, -8.00, -9.00),
('US', 'Pacific/Honolulu', -10.00, -10.00, -10.00),
('UY', 'America/Montevideo', -2.00, -3.00, -3.00),
('UZ', 'Asia/Samarkand', 5.00, 5.00, 5.00),
('UZ', 'Asia/Tashkent', 5.00, 5.00, 5.00),
('VA', 'Europe/Vatican', 1.00, 2.00, 1.00),
('VC', 'America/St_Vincent', -4.00, -4.00, -4.00),
('VE', 'America/Caracas', -4.50, -4.50, -4.50),
('VG', 'America/Tortola', -4.00, -4.00, -4.00),
('VI', 'America/St_Thomas', -4.00, -4.00, -4.00),
('VN', 'Asia/Ho_Chi_Minh', 7.00, 7.00, 7.00),
('VU', 'Pacific/Efate', 11.00, 11.00, 11.00),
('WF', 'Pacific/Wallis', 12.00, 12.00, 12.00),
('WS', 'Pacific/Apia', 14.00, 13.00, 13.00),
('YE', 'Asia/Aden', 3.00, 3.00, 3.00),
('YT', 'Indian/Mayotte', 3.00, 3.00, 3.00),
('ZA', 'Africa/Johannesburg', 2.00, 2.00, 2.00),
('ZM', 'Africa/Lusaka', 2.00, 2.00, 2.00),
('ZW', 'Africa/Harare', 2.00, 2.00, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `time_frames`
--

CREATE TABLE `time_frames` (
  `id` int NOT NULL,
  `day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_orders` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_frames`
--

INSERT INTO `time_frames` (`id`, `day`, `start`, `end`, `max_orders`) VALUES
(1, 'monday', '10:00 AM', '11:00 AM', 20),
(3, 'monday', '02:00 PM', '03:00 PM', 7),
(4, 'wednesday', '10:00 AM', '12:00 PM', 30);

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ulinks`
--

CREATE TABLE `ulinks` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ulinks`
--

INSERT INTO `ulinks` (`id`, `language_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(36, 176, 'Contact', 'https://codecanyon.megasoft.biz/superv/contact', NULL, NULL),
(37, 176, 'Blogs', 'https://codecanyon.megasoft.biz/superv/blogs', NULL, NULL),
(38, 176, 'Team', 'https://codecanyon.megasoft.biz/superv/team', NULL, NULL),
(39, 176, 'Gallery', 'https://codecanyon.megasoft.biz/superv/gallery', NULL, NULL),
(40, 177, 'الرابط 1', 'https://megasoft.biz/alphasoft/', NULL, NULL),
(41, 177, 'الرابط 2', 'https://megasoft.biz/alphasoft/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `verification_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_verified` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `photo`, `username`, `email`, `password`, `number`, `city`, `state`, `address`, `country`, `remember_token`, `billing_fname`, `billing_lname`, `billing_photo`, `billing_username`, `billing_email`, `billing_number`, `billing_city`, `billing_state`, `billing_address`, `billing_country`, `shpping_fname`, `shpping_lname`, `shpping_photo`, `shpping_username`, `shpping_email`, `shpping_number`, `shpping_city`, `shpping_state`, `shpping_address`, `shpping_country`, `status`, `verification_link`, `email_verified`, `created_at`, `updated_at`, `provider`, `provider_id`, `billing_country_code`, `shipping_country_code`) VALUES
(1, 'Samiul Alim', 'Pratik', '16507803311597919925.jpg', 'Pratik11', 'geniustest11@gmail.com', '$2y$10$Mt3Z6/TlW/xwLEBKmr4WwuEJdIXYZL6FN/ckbvEzQ3ozvqEibHAV2', '+8801689583182', 'California', 'California', 'Address America, Inc.\r\n5454 I 55 North\r\nJackson, Mississippi 39211', 'USA', 'UPjmspW9t9GoAdS0IjRh9q3heoWwGrSSWKBUv8IATiFBS3CHJvF7hij2OL7x', 'jhon', 'due', NULL, 'jhon due', 'jhon@gmail.com', '1689583182', 'USA', 'USA', 'America', 'America', 'jhon', 'due', NULL, 'jhondue', 'jhon@gmail.com', '16895831821', 'US', 'US', 'Amarica', 'America', 1, 'fe76220b5388111d003a1058d5e40ac3', 'Yes', '2020-06-22 04:48:05', '2023-05-13 06:44:41', NULL, NULL, '+880', '+880'),
(2, 'John', 'Mikel', '15988000003.png', 'Mikel007', 'mikel@gmail.com', '$2y$10$OHlZWozb9quLWem6bhCVn.bbmTskN1b6zrJX54Stx0FVMe85n71gq', '67097604344', 'Oklahoma', 'Oklahoma', 'Oklahoma, USA', 'United States', 'r0zQPdDnXFMDktXEmuFAmAcCswO1QeEXdVmN8qy4YFEMyftMF8sarv9Q60Z3', 'John', 'Mikel', NULL, NULL, 'john@gmail.com', '36473871339', 'New York', 'New York', 'New York, USA', 'USA', 'John', 'Mikel', NULL, NULL, 'mikel@gmail.com', '36237343742', 'California', 'California', 'California, USA', 'USA', 1, '18cbbab1fde0cff2579803dd8de1d0ec', 'Yes', '2020-08-30 09:03:54', '2020-08-30 09:12:03', NULL, NULL, NULL, NULL),
(9, 'Samiul', 'Pratik', '1608015525rp01.jpg', 'KreativDev', 'kreativdev.envato@gmail.com', '$2a$12$q3ufqQBuDkVaHvu4/cftYe1ic2/HqCMd6hI9TNyBbMXAO745y2V5a', '01689583182', 'Dhaka', 'Dhaka', 'House - 44, Road - 3, Sector - 11, Uttara, Dhaka', 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Yes', '2020-12-13 02:24:28', '2020-12-15 00:59:55', 'google', '112335104463784291574', NULL, NULL),
(10, NULL, NULL, NULL, 'pratik', 'pratik.anwar@gmail.com', '$2y$10$GEdJL7IR/Fo5nC.khvYDBuhX89MVLwQen.RoDd7jU1WQsN4QtO2OS', NULL, NULL, NULL, NULL, NULL, '1VXRjtx32XTwcvWQMrZZPfnysdw9w85UwN9LdTWgQN1lUnfssbnPxKOKJcYX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'b2a8101879aa4253970ff74dbd4fc351', 'Yes', '2022-04-24 09:06:28', '2022-04-24 09:10:26', NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, 'ruzygu', 'ganarimapu@mailinator.com', '$2y$10$TPUu9qlp6VhVDpti0S0YLuK7zlyVHkPBY2UiVRymdBa5EvuSywP4u', NULL, NULL, NULL, NULL, NULL, 'p0SWm1oZueNEd9Ynzd1MiCllJWg3e3fLJYUEGzaRui3iGAD1bO224r5zkpPU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4c8cca308fbe7821540c3a202b15e1df', 'Yes', '2023-03-11 05:22:59', '2023-03-26 04:15:22', NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, 'ramuqeb', 'saifislamfci@gmail.com', '$2y$10$LrywN6ZFKdkHGuGC7eYWBexIKDhe3A1IykGoNHnU8Gd8kp0XA8Gz2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '03e3a81d2689981c977336ebeb3b34e7', 'Yes', '2023-03-11 05:23:37', '2023-03-26 04:15:30', NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, 'saiful islam Sharif', 'saifislamfci22@gmail.com', '$2y$10$hXeWtn6xqJuC8e1E4nI1YeyFLdzoXqT8ccsVqkx/d9PYHxI8q12HS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ad4f44ad5dbaf2a3595c699330df5b46', 'Yes', '2023-04-02 05:42:18', '2023-04-02 05:42:18', NULL, NULL, NULL, NULL),
(14, 'dd', 'ss', '1681102866blog-13.jpg', 'saiful islam Sharif 33', 'saifislamfci33@gmail.com', '$2a$12$u3nhn3ZONGwvy624ah2R1.qQRMgr3OAkNNiy4BXBjglf7Dhl34Sha', '0187336555', 'Consectetur repudian', 'dd', 'dd', 'dd', NULL, 'saiful Isalam', 'Sharif', NULL, NULL, 'saifulislamsharif@gmail.com', '01872330', 'ss', 'aaa', 'aa', 'aaa', 'sss', 'dd', NULL, NULL, 'ddd@gmail.com', '0456654425', 'sss', 'ddd', 'ss', 'ddd', 1, 'fedd874526d313ddc5ff5deaa6c55bb9', 'yes', '2023-04-02 05:42:50', '2023-04-10 05:01:06', NULL, NULL, '+7840', '+7840'),
(15, NULL, NULL, NULL, 'akash', 'akesh@gmail.com', '$2y$10$OwF9qy.u.eb4kqFOEvBznOAC/YnfwoADBNMxq19Sh/Jca5GYnUxa6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6ed50b907822b58b54e756cd7e7a1da4', 'yes', '2023-04-16 10:29:53', '2023-04-16 10:29:53', NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, 'user', 'faltusone@gmail.com', '$2y$10$AgmMYuI5vPBp1yw8NdVaeembXvatyECGhBMgHrpiVtjZNxXmBnVeK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9d25567db2901a3080b07d7ed6e21cc5', 'Yes', '2024-07-15 17:25:17', '2024-07-15 17:25:57', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_extras`
--
ALTER TABLE `basic_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bottomlinks`
--
ALTER TABLE `bottomlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_endpoint_unique` (`endpoint`);

--
-- Indexes for table `intro_points`
--
ALTER TABLE `intro_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jcategories`
--
ALTER TABLE `jcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_times`
--
ALTER TABLE `order_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcategories`
--
ALTER TABLE `pcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indexes for table `postal_codes`
--
ALTER TABLE `postal_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postal_codes_language_id_foreign` (`language_id`);

--
-- Indexes for table `pos_payment_methods`
--
ALTER TABLE `pos_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psub_categories`
--
ALTER TABLE `psub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`);

--
-- Indexes for table `reservation_inputs`
--
ALTER TABLE `reservation_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation_input_options`
--
ALTER TABLE `reservation_input_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serving_methods`
--
ALTER TABLE `serving_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_books`
--
ALTER TABLE `table_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`country_code`,`timezone`);

--
-- Indexes for table `time_frames`
--
ALTER TABLE `time_frames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulinks`
--
ALTER TABLE `ulinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `basic_extras`
--
ALTER TABLE `basic_extras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `bottomlinks`
--
ALTER TABLE `bottomlinks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `intro_points`
--
ALTER TABLE `intro_points`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jcategories`
--
ALTER TABLE `jcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT for table `order_times`
--
ALTER TABLE `order_times`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pcategories`
--
ALTER TABLE `pcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `postal_codes`
--
ALTER TABLE `postal_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pos_payment_methods`
--
ALTER TABLE `pos_payment_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `psub_categories`
--
ALTER TABLE `psub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reservation_inputs`
--
ALTER TABLE `reservation_inputs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `reservation_input_options`
--
ALTER TABLE `reservation_input_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `serving_methods`
--
ALTER TABLE `serving_methods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `table_books`
--
ALTER TABLE `table_books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `time_frames`
--
ALTER TABLE `time_frames`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ulinks`
--
ALTER TABLE `ulinks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `popups`
--
ALTER TABLE `popups`
  ADD CONSTRAINT `popups_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postal_codes`
--
ALTER TABLE `postal_codes`
  ADD CONSTRAINT `postal_codes_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
