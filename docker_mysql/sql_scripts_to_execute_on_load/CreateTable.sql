CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagetitle` varchar(150) DEFAULT NULL,
  `imagepath` varchar(150) NOT NULL,
  `visualizations` int(11) NOT NULL DEFAULT 0,
  `downloads` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

