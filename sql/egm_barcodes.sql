CREATE DATABASE egm_barcodes;

USE egm_barcodes;

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`)
 );


INSERT INTO `tbl_products` (`product_id`, `name`, `code`, `created`) VALUES
(1, 'Dell XPS 13', 10726, '2019-06-29 01:07:26'),
(2, 'Huawei MateBook 13', 20737, '2019-06-29 01:07:37'),
(3, 'HP Spectre x360', 30748, '2019-06-29 01:07:48'),
(4, 'Apple MacBook Pro', 40758, '2019-06-29 01:07:57'),
(5, 'Asus ROG Zephyrus', 50806, '2019-06-29 01:08:06');