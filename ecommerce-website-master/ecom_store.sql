

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--


CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--

--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'Cửa hàng chúng tôi', '\r\nMột thực tế đã có từ lâu là người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng Lorem Ipsum là nó có sự phân phối các chữ cái bình thường ít nhiều, \ r \ n ',' Rhone là tầm nhìn chung của một nhóm nhỏ các chiến binh trong tuần. Trong nhiều năm, chúng tôi đã thất vọng vì thiếu quần áo năng động được thiết kế cho nam giới và muốn một cái gì đó tốt hơn. Với ý nghĩ đó, chúng tôi bắt đầu thiết kế trang phục cao cấp dành cho chuyển động và được thiết kế để bền bỉ. \ R \ n \ r \ n Chất liệu tiên tiến và công nghệ hiện đại được kết hợp với tay nghề thủ công truyền thống để tạo ra một tiêu chuẩn mới trong trang phục năng động. Mỗi sản phẩm đều kể một câu chuyện về hiệu suất cao cấp, nhắc nhở người đeo nỗ lực về thể chất mà không cần phải hy sinh sự thoải mái và phong cách. \ R \ n \ r \ n Ngoài việc cung cấp sản phẩm của chúng tôi, Rhone được thành lập dựa trên nguyên tắc tiến bộ và chính trực. Cũng như mục tiêu trở nên tốt hơn với tư cách là một công ty, chúng tôi mời những người đàn ông ở khắp mọi nơi nâng cao tiêu chí và tham gia cùng chúng tôi khi chúng tôi phát triển Forever Forward.');

-- --------------------------------------------------------

--
--  `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Yasser Dalouzi', 'admin@ave.com', '123', 'admin.jpg', '077885221', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');

-- --------------------------------------------------------

--
--  `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(8, 'jacket bundle relation -1', 4, 11),
(9, 'jacket bundle relation -2', 5, 11),
(10, 'jacket bundle relation -3', 6, 11);

-- --------------------------------------------------------

--
-- `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
--  `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Feminine', 'no', 'zinta_preity.jpg'),
(3, 'Kids', 'no', 'image10.jpg'),
(4, 'Others', 'yes', 'cat_image.jpg'),
(5, 'Men', 'yes', 'image11.jpg');

-- --------------------------------------------------------

--
--  `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'Thuonghavan2000@gmail.com', 'Liên hệ chúng tôi', 'Nếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ với chúng tôi, trung tâm dịch vụ khách hàng của chúng tôi làm việc cho bạn 24/7.');

-- --------------------------------------------------------

--
-- `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, 9, 'Remind T-shirt', '40', '333444', 5, 1);

-- --------------------------------------------------------

--
--  `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'user', 'user@ave.com', '123', 'United State', 'New York', '0092334566931', 'new york', 'user.jpg', '::1', '');
INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(3, 'user', 'hvt@ave.com', '123', 'VietNam', 'HCM', '0902417563', 'hcm', 'user_2', '::1', '');
-- --------------------------------------------------------

--
-- `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(16, 2, 207, 1715523401, 3, 'Small', '2017-02-20 08:21:42', 'pending'),
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(18, 2, 300, 1715523401, 1, 'Medium', '2017-02-20 08:21:42', 'pending'),
(19, 2, 150, 1068059025, 1, 'Medium', '2017-02-20 08:26:47', 'pending'),
(20, 2, 288, 909940689, 3, 'Large', '2017-02-27 11:06:32', 'complete'),
(21, 2, 400, 909940689, 2, 'Meduim', '2017-02-27 11:06:37', 'complete');

-- --------------------------------------------------------

--
-- `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Adidas', 'no', 'image2.jpg'),
(3, 'Nike', 'no', 'image3.jpg'),
(4, 'Philip Plein', 'no', 'manufacturer.jpg'),
(5, 'Lacost', 'no', 'image6.jpg'),
(6, 'Gucci', 'yes', 'akshay-kumar.jpg');

-- --------------------------------------------------------

--
-- `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni Paisa', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni Paisa', 443, 865, '11/1/2016');

-- --------------------------------------------------------

--
-- `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(16, 2, 1715523401, '2', 3, 'Small', 'pending'),
(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
(18, 2, 1715523401, '11', 1, 'Medium', 'pending'),
(19, 2, 1068059025, '7', 1, 'Medium', 'pending'),
(20, 2, 909940689, '6', 3, 'Large', 'complete'),
(21, 2, 909940689, '11', 2, 'Meduim', 'complete');

-- --------------------------------------------------------

--
-- `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(1, 5, 4, 3, '2017-02-15 10:48:40', 'New T-Shirt', 'new-t-shirt', 'img1.jpg', 'img2.jpg', 'img3.jpg', 70, 50, '<p>Integer sapien buồn và váy. Cư dân dinh dưỡng bóng đá netus et malesuada già nua và xấu xí đói nghèo. Tuy nhiên, tài chính và sâu, nhưng CNN rượu. Ngày mai các nhà phát triển xe khí phát triển bóng đá Lò vi sóng hoặc mang thai trước đó. Các nhà phát triển một số người chơi. Nhưng tôi ước có một số người tìm kiếm cà rốt, tác giả truyền hình zero </ p> ',' <p> Có một thực tế lâu đời rằng người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng lorem ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều,</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/watch?v=Degbj6iTpmw" frameborder=\"0\" allowfullscreen></iframe>', 'T-Shirts', 'Sale', 'product'),
(2, 5, 3, 2, '2017-02-15 10:48:48', 'U.S. Polo Assn. Blue Polos shirt', 'product-url-2', 'U-S--Polo-Assn--Blue-Polos-0266-586842-1-pdp_slider_l.jpg', 'U-S--Polo-Assn--Blue-Polos-0268-586842-2-pdp_slider_l.jpg', 'U-S--Polo-Assn--Blue-Polos-0271-586842-3-pdp_slider_l.jpg', 69, 45, '<p>Integer sapien buồn và váy. Cư dân dinh dưỡng bóng đá netus et malesuada già nua và xấu xí đói nghèo. Tuy nhiên, tài chính và sâu, nhưng CNN rượu. Ngày mai các nhà phát triển xe khí phát triển bóng đá Lò vi sóng hoặc mang thai trước đó. Các nhà phát triển một số người chơi. Nhưng tôi ước gì có một số người tìm kiếm cà rốt, tác giả truyền hình của số 0. </ p> ',' Có một thực tế lâu đời rằng người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng lorem ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều,', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'T-Shirt', 'Gift', 'product'),
(3, 5, 3, 6, '2017-02-15 10:48:52', 'BENETTON White Polo Shirt', 'product-url-3', 'United-Colors-of-Benetton-White-Polo-Shirt-0608-0914361-1-pdp_slider_l.jpg', 'United-Colors-of-Benetton-White-Polo-Shirt-0608-0914361-2-pdp_slider_l.jpg', 'United-Colors-of-Benetton-White-Polo-Shirt-0609-0914361-3-pdp_slider_l.jpg', 98, 0, '<p>
Integer sapien buồn và váy. Cư dân dinh dưỡng bóng đá netus et malesuada già nua và xấu xí đói nghèo. Tuy nhiên, tài chính và sâu, nhưng CNN rượu. Ngày mai các nhà phát triển xe khí phát triển bóng đá Lò vi sóng hoặc mang thai trước đó. Các nhà phát triển một số người chơi. Nhưng tôi ước gì có một số người tìm kiếm cà rốt, tác giả truyền hình zero </ p> ',' Có một thực tế lâu đời rằng người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng lorem ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều,', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/watch?v=tUO7q0qNlNM" frameborder=\"0\" allowfullscreen></iframe>', 'T-Shirt', 'New', 'product'),
(4, 7, 5, 5, '2017-02-19 06:49:39', 'Navy Blue Solid Denim Jacket', 'product-url-4', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-1-pdp_slider_l.jpg', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-2-pdp_slider_l.jpg', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-3-pdp_slider_l.jpg', 230, 150, '<p>Integer sapien buồn và váy. Cư dân dinh dưỡng bóng đá netus et malesuada già nua và xấu xí đói nghèo. Tuy nhiên, tài chính và sâu, nhưng CNN rượu. Ngày mai các nhà phát triển xe khí phát triển bóng đá Lò vi sóng hoặc mang thai trước đó. Các nhà phát triển một số người chơi. Nhưng tôi ước gì có một số người tìm kiếm cà rốt, tác giả truyền hình của số 0. </ p> ',' Có một thực tế lâu đời rằng người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng lorem ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều,', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Jackets', 'Sale', 'product'),
(5, 7, 5, 5, '2017-02-19 06:45:07', 'Denim Borg Lined Western Jacket', 'product-url-5', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 259, 100, '<p>
Integer sapien buồn và váy. Cư dân dinh dưỡng bóng đá netus et malesuada già nua và xấu xí đói nghèo. Tuy nhiên, tài chính và sâu, nhưng CNN rượu. Ngày mai các nhà phát triển xe khí phát triển bóng đá Lò vi sóng hoặc mang thai trước đó. Các nhà phát triển một số người chơi. Nhưng tôi ước gì có một số người tìm kiếm cà rốt, tác giả truyền hình của số 0. </ p> ',' Có một thực tế lâu đời rằng người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng lorem ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều,', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Jackets', 'Gift', 'product'),
(6, 7, 5, 5, '2017-02-19 06:49:18', 'Jack & White Solid Denim Jacket', 'product-url-6', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-1-pdp_slider_l.jpg', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-2-pdp_slider_l.jpg', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-3-pdp_slider_l.jpg', 96, 0, '<p>
Integer sapien buồn và váy. Cư dân dinh dưỡng bóng đá netus et malesuada già nua và xấu xí đói nghèo. Tuy nhiên, tài chính và sâu, nhưng CNN rượu. Ngày mai các nhà phát triển xe khí phát triển bóng đá Lò vi sóng hoặc mang thai trước đó. Các nhà phát triển một số người chơi. Nhưng tôi ước gì có một số người tìm kiếm cà rốt, tác giả truyền hình của số 0. </ p> ',' Có một thực tế lâu đời rằng người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng lorem ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều,', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Jackets', 'New', 'product'),
(7, 4, 2, 6, '2017-02-15 10:49:07', 'Nice Solid Long Coat With Lace', 'product-url-7', 'fur coat with button1.jpg', 'fur coat with button2.jpg', 'fur coat with button3.jpg', 200, 150, '<p>Video cung cấp một cách hiệu quả để giúp bạn chứng minh quan điểm của mình. Khi nhấp vào Video trực tuyến, bạn có thể dán mã nhúng cho video mà bạn muốn thêm. Bạn cũng có thể nhập một từ khóa để tìm kiếm trực tuyến video phù hợp nhất với tài liệu của bạn. kingVideo cung cấp một cách hiệu quả để giúp bạn chứng minh quan điểm của mình. Khi nhấp vào Video trực tuyến, bạn có thể dán mã nhúng cho video mà bạn muốn thêm. Bạn cũng có thể gõ từ khóa để tìm kiếm trực tuyến video phù hợp nhất với tài liệu của mình </p> ',' Có một thực tế lâu đời là người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng Lorem Ipsum là nó có sự phân bố các chữ cái chuẩn hơn hoặc ít hơn,', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Coats', 'Sale', 'product'),
(8, 4, 2, 4, '2017-02-15 10:49:11', 'Sleeveless Faux Fur Hybrid Coat', 'product-url-8', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 245, 100, '<p>Integer sapien buồn và váy. Cư dân dinh dưỡng bóng đá netus et malesuada già nua và xấu xí đói nghèo. Tuy nhiên, tài chính và sâu, nhưng CNN rượu. Ngày mai các nhà phát triển xe khí phát triển bóng đá Lò vi sóng hoặc mang thai trước đó. Các nhà phát triển một số người chơi. Nhưng tôi ước có một số cà rốt semper, tác giả truyền hình nulla.Integer buồn nó sapien và một chiếc váy. Cư dân dinh dưỡng bóng đá netus et malesuada già nua và xấu xí đói nghèo. Tuy nhiên, tài chính và sâu, nhưng CNN rượu. Ngày mai các nhà phát triển xe khí phát triển bóng đá Lò vi sóng hoặc mang thai trước đó. Các nhà phát triển một số người chơi. Nhưng tôi ước gì có một số người tìm kiếm cà rốt, tác giả truyền hình của số 0. </ p> ',' Có một thực tế lâu đời rằng người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng lorem ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều,', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'Coats', 'Gift', 'product'),
(9, 5, 4, 2, '2017-02-19 06:46:14', 'Remind Printed T-Shirt', 'product-url-9', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 50, 0, '<p>
Integer sapien buồn và váy. Cư dân dinh dưỡng bóng đá netus et malesuada già nua và xấu xí đói nghèo. Tuy nhiên, tài chính và sâu, nhưng CNN rượu. Ngày mai các nhà phát triển xe khí phát triển bóng đá Lò vi sóng hoặc mang thai trước đó. Các nhà phát triển một số người chơi. Nhưng tôi ước có một số cà rốt semper, tác giả truyền hình nulla.Integer buồn nó sapien và một chiếc váy. Cư dân dinh dưỡng bóng đá netus et malesuada già nua và xấu xí đói nghèo. Tuy nhiên, tài chính và sâu, nhưng CNN rượu. Ngày mai các nhà phát triển xe khí phát triển bóng đá Lò vi sóng hoặc mang thai trước đó. Các nhà phát triển một số người chơi. Nhưng tôi ước gì có một số người tìm kiếm cà rốt, tác giả truyền hình của số 0. </ p> ',' Có một thực tế lâu đời rằng người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng lorem ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều,', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>', 'T-Shirt', 'New', 'product'),
(11, 7, 5, 5, '2020-11-20 06:21:03', 'jacket bundle', 'jacket-bundle', 'jacket-1.jpg', 'jacket-2.jpg', 'jacket-3.jpg', 300, 200, '<p>Trái với suy nghĩ của nhiều người, Lorem Ipsum không chỉ đơn giản là văn bản ngẫu nhiên. Nó có nguồn gốc từ một tác phẩm văn học Latinh cổ điển từ năm 45 trước Công nguyên, đã có hơn 2000 năm tuổi. Richard McClintock, một giáo sư tiếng Latinh tại Đại học Hampden-Sydney ở Virginia, đã tra cứu một trong những từ Latinh khó hiểu hơn, consectetur, từ một đoạn văn của Lorem Ipsum, và xem qua các trích dẫn của từ này trong văn học cổ điển, đã phát hiện ra nguồn không thể chối cãi. / p> ',' <p> Trái với suy nghĩ thông thường, Lorem Ipsum không chỉ đơn giản là văn bản ngẫu nhiên. Nó có nguồn gốc từ một tác phẩm văn học Latinh cổ điển từ năm 45 trước Công nguyên, đã có hơn 2000 năm tuổi. Richard McClintock, giáo sư tiếng Latinh tại Đại học Hampden-Sydney ở Virginia, đã tra cứu một trong những từ Latinh khó hiểu hơn, consectetur, từ một đoạn văn của Lorem Ipsum, và xem qua các trích dẫn của từ này trong văn học cổ điển, đã phát hiện ra nguồn gốc không thể chối cãi.</p>', '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qImi3vNccaU\" frameborder=\"0\" allowfullscreen></iframe>', 'jacket bundle', 'Sale', 'bundle');

-- --------------------------------------------------------

--
-- `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Coats', 'no', 'image3.jpg'),
(5, 'T-Shirts', 'no', 'image2.jpg'),
(6, 'Sweater', 'no', 'sweater.jpg'),
(7, 'jackets', 'yes', 'jacket.jpg');

-- --------------------------------------------------------

--
-- `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--`store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'Trụ sở chính London', 'store_3.jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, LONDON, W1B 5BT</strong></p>\r\n<p>Cửa hàng đầu tiên đưuọc chúng tôi xây dựng được đầu tư khá nhiêu tâm huyết. Đây là trụ sở chính. </p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(5, 'Chinh nhánh tại New York', 'store_1.png', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, NEW YORK, NY10023</strong></p>\r\n<p>Các chi nhánh cũng bắt đầu hình thành tại các thành phố khác. Chúng tôi tự hào vì chúng là thương hiệu của chúng tôi.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(6, 'Chinh nhánh tại Paris', 'store_2.jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE, 75001 PARIS&nbsp;</strong></p>\r\n<p>Các chi nhánh cũng bắt đầu hình thành tại các thành phố khác. Chúng tôi tự hào vì chúng là thương hiệu của chúng tôi.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');

-- --------------------------------------------------------

--
--  `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Trái với suy nghĩ của nhiều người, Lorem Ipsum không chỉ đơn giản là văn bản ngẫu nhiên. Nó có nguồn gốc từ một tác phẩm văn học Latinh cổ điển từ năm 45 trước Công nguyên, đã có hơn 2000 năm tuổi. Richard McClintock, giáo sư tiếng Latinh tại Đại học Hampden-Sydney ở Virginia, đã tra cứu một trong những từ Latinh khó hiểu hơn, consectetur, từ một đoạn văn của Lorem Ipsum, và xem qua các trích dẫn của từ này trong văn học cổ điển, đã phát hiện ra nguồn gốc không thể chối cãi. Lorem Ipsum xuất phát từ phần 1.10.32 và 1.10.33 của \ "de Finibus Bonorum et Malorum \" (Cực đoan của Thiện và Ác) của Cicero, được viết vào năm 45 trước Công nguyên. Cuốn sách này là một chuyên luận về lý thuyết đạo đức, rất phổ biến trong thời kỳ Phục hưng.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'Một thực tế đã có từ lâu là người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng Lorem Ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều, trái ngược với việc sử dụng \ 'Nội dung ở đây, nội dung ở đây \', khiến nó trông giống như tiếng Anh có thể đọc được. Nhiều gói xuất bản trên máy tính để bàn và trình chỉnh sửa trang web hiện sử dụng Lorem Ipsum làm văn bản mô hình mặc định của họ và tìm kiếm \ 'lorem ipsum \' sẽ phát hiện ra nhiều trang web vẫn còn sơ khai. Nhiều phiên bản khác nhau đã phát triển trong nhiều năm, đôi khi do tình cờ, đôi khi có chủ đích (có sự hài hước xen lẫn những thứ tương tự). Tại sao chúng ta lại sử dụng nó? Một thực tế đã có từ lâu rằng người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi xem ở cách bố trí của nó. Điểm đáng chú ý của việc sử dụng Lorem Ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều, trái ngược với việc sử dụng \ 'Nội dung ở đây, nội dung ở đây \', khiến nó trông giống như tiếng Anh có thể đọc được. Nhiều gói xuất bản trên máy tính để bàn và trình chỉnh sửa trang web hiện sử dụng Lorem Ipsum làm văn bản mô hình mặc định của họ và tìm kiếm \ 'lorem ipsum \' sẽ phát hiện ra nhiều trang web vẫn còn sơ khai. Nhiều phiên bản khác nhau đã phát triển trong nhiều năm, đôi khi do tình cờ, đôi khi'),
(3, 'Pricing and Promotions Policy', 'link3', 'Một thực tế đã có từ lâu là người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi nhìn vào bố cục của nó. Điểm đáng chú ý của việc sử dụng Lorem Ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều, trái ngược với việc sử dụng \ 'Nội dung ở đây, nội dung ở đây \', khiến nó trông giống như tiếng Anh có thể đọc được. Nhiều gói xuất bản trên máy tính để bàn và trình chỉnh sửa trang web hiện sử dụng Lorem Ipsum làm văn bản mô hình mặc định của họ và tìm kiếm \ 'lorem ipsum \' sẽ phát hiện ra nhiều trang web vẫn còn sơ khai. Nhiều phiên bản khác nhau đã phát triển trong nhiều năm, đôi khi do tình cờ, đôi khi có chủ đích (có sự hài hước xen lẫn những thứ tương tự). Tại sao chúng ta lại sử dụng nó? Một thực tế đã có từ lâu rằng người đọc sẽ bị phân tâm bởi nội dung có thể đọc được của một trang khi xem ở cách bố trí của nó. Điểm đáng chú ý của việc sử dụng Lorem Ipsum là nó có sự phân bố các chữ cái bình thường ít nhiều, trái ngược với việc sử dụng \ 'Nội dung ở đây, nội dung ở đây \', khiến nó trông giống như tiếng Anh có thể đọc được. Nhiều gói xuất bản trên máy tính để bàn và trình chỉnh sửa trang web hiện sử dụng Lorem Ipsum làm văn bản mô hình mặc định của họ và tìm kiếm \ 'lorem ipsum \' sẽ phát hiện ra nhiều trang web vẫn còn sơ khai. Nhiều phiên bản khác nhau đã phát triển trong nhiều năm, đôi khi do tình cờ, đôi khi');

-- --------------------------------------------------------

--
-- `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
--  `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
