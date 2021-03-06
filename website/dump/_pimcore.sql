-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 14, 2014 at 04:43 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.23-1+sury.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `_pimcore`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE IF NOT EXISTS `assets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(11) unsigned DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `filename` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  `customSettings` text,
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  KEY `filename` (`filename`),
  KEY `path` (`path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `parentId`, `type`, `filename`, `path`, `mimetype`, `creationDate`, `modificationDate`, `userOwner`, `userModification`, `customSettings`) VALUES
(1, 0, 'folder', '', '/', '', 1368522989, 1368522989, 1, 1, ''),
(3, 1, 'folder', 'portal-sujets', '/', '', 1368530371, 1368632469, 2, 2, 'a:0:{}'),
(4, 3, 'image', 'slide-01.jpg', '/portal-sujets/', 'image/jpeg', 1368530684, 1370432846, 2, 2, 'a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}'),
(5, 3, 'image', 'slide-02.jpg', '/portal-sujets/', 'image/jpeg', 1368530764, 1370432868, 2, 2, 'a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}'),
(6, 3, 'image', 'slide-03.jpg', '/portal-sujets/', 'image/jpeg', 1368530764, 1370432860, 2, 2, 'a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}'),
(7, 1, 'folder', 'examples', '/', '', 1368531816, 1368632468, 2, 2, 'a:0:{}'),
(17, 7, 'folder', 'panama', '/examples/', '', 1368532826, 1368632468, 2, 2, 'a:0:{}'),
(18, 17, 'image', 'img_0117.jpg', '/examples/panama/', 'image/jpeg', 1368532831, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(19, 17, 'image', 'img_0201.jpg', '/examples/panama/', 'image/jpeg', 1368532832, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(20, 17, 'image', 'img_0089.jpg', '/examples/panama/', 'image/jpeg', 1368532833, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(21, 17, 'image', 'img_0037.jpg', '/examples/panama/', 'image/jpeg', 1368532834, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(22, 17, 'image', 'img_0399.jpg', '/examples/panama/', 'image/jpeg', 1368532836, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(23, 17, 'image', 'img_0411.jpg', '/examples/panama/', 'image/jpeg', 1368532837, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(24, 17, 'image', 'img_0410.jpg', '/examples/panama/', 'image/jpeg', 1368532838, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(25, 17, 'image', 'img_0160.jpg', '/examples/panama/', 'image/jpeg', 1368532839, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(26, 1, 'folder', 'videos', '/', '', 1368542684, 1368632471, 2, 2, 'a:0:{}'),
(27, 26, 'video', 'home-trailer-english.mp4', '/videos/', 'video/mp4', 1368542794, 1384783789, 2, 2, 'a:1:{s:10:"thumbnails";a:2:{s:12:"featurerette";a:2:{s:6:"status";s:5:"error";s:7:"formats";a:1:{s:4:"webm";s:82:"/website/var/tmp/video-thumbnails/27/thumb__featurerette/home-trailer-english.webm";}}s:7:"content";a:2:{s:6:"status";s:5:"error";s:7:"formats";a:1:{s:4:"webm";s:77:"/website/var/tmp/video-thumbnails/27/thumb__content/home-trailer-english.webm";}}}}'),
(29, 1, 'folder', 'documents', '/', '', 1368548619, 1368632467, 2, 2, 'a:0:{}'),
(34, 1, 'folder', 'screenshots', '/', '', 1368560793, 1368632470, 2, 2, 'a:0:{}'),
(35, 34, 'image', 'glossary.png', '/screenshots/', 'image/png', 1368560809, 1368632470, 2, 2, 'a:3:{s:10:"imageWidth";i:908;s:11:"imageHeight";i:267;s:25:"imageDimensionsCalculated";b:1;}'),
(36, 29, 'document', 'documentation.pdf', '/documents/', 'application/pdf', 1368562442, 1368632467, 2, 2, 'a:0:{}'),
(37, 7, 'folder', 'italy', '/examples/', '', 1368596763, 1368632468, 2, 2, 'a:0:{}'),
(38, 37, 'image', 'dsc04346.jpg', '/examples/italy/', 'image/jpeg', 1368596767, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(39, 37, 'image', 'dsc04344.jpg', '/examples/italy/', 'image/jpeg', 1368596768, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(40, 37, 'image', 'dsc04462.jpg', '/examples/italy/', 'image/jpeg', 1368596769, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(41, 37, 'image', 'dsc04399.jpg', '/examples/italy/', 'image/jpeg', 1368596770, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}'),
(42, 7, 'folder', 'south-africa', '/examples/', '', 1368596785, 1368632468, 2, 2, 'a:0:{}'),
(43, 42, 'image', 'img_1414.jpg', '/examples/south-africa/', 'image/jpeg', 1368596789, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}'),
(44, 42, 'image', 'img_2133.jpg', '/examples/south-africa/', 'image/jpeg', 1368596791, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}'),
(45, 42, 'image', 'img_2240.jpg', '/examples/south-africa/', 'image/jpeg', 1368596793, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}'),
(46, 42, 'image', 'img_1752.jpg', '/examples/south-africa/', 'image/jpeg', 1368596795, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}'),
(47, 42, 'image', 'img_1739.jpg', '/examples/south-africa/', 'image/jpeg', 1368596798, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}'),
(48, 42, 'image', 'img_0391.jpg', '/examples/south-africa/', 'image/jpeg', 1368596800, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:3872;s:11:"imageHeight";i:2332;s:25:"imageDimensionsCalculated";b:1;}'),
(49, 42, 'image', 'img_2155.jpg', '/examples/south-africa/', 'image/jpeg', 1368596801, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}'),
(50, 42, 'image', 'img_1544.jpg', '/examples/south-africa/', 'image/jpeg', 1368596804, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}'),
(51, 42, 'image', 'img_1842.jpg', '/examples/south-africa/', 'image/jpeg', 1368596806, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}'),
(52, 42, 'image', 'img_1920.jpg', '/examples/south-africa/', 'image/jpeg', 1368596808, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}'),
(53, 42, 'image', 'img_0322.jpg', '/examples/south-africa/', 'image/jpeg', 1368596810, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:7264;s:11:"imageHeight";i:2386;s:25:"imageDimensionsCalculated";b:1;}'),
(54, 7, 'folder', 'singapore', '/examples/', '', 1368596871, 1368632468, 2, 2, 'a:0:{}'),
(55, 54, 'image', 'dsc03778.jpg', '/examples/singapore/', 'image/jpeg', 1368597116, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}'),
(56, 54, 'image', 'dsc03807.jpg', '/examples/singapore/', 'image/jpeg', 1368597117, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}'),
(57, 54, 'image', 'dsc03835.jpg', '/examples/singapore/', 'image/jpeg', 1368597119, 1368632468, 2, 2, 'a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}'),
(59, 34, 'image', 'thumbnail-configuration.png', '/screenshots/', 'image/png', 1368606782, 1368632470, 2, 2, 'a:3:{s:10:"imageWidth";i:809;s:11:"imageHeight";i:865;s:25:"imageDimensionsCalculated";b:1;}'),
(60, 34, 'image', 'website-translations.png', '/screenshots/', 'image/png', 1368608949, 1368632470, 2, 2, 'a:3:{s:10:"imageWidth";i:925;s:11:"imageHeight";i:554;s:25:"imageDimensionsCalculated";b:1;}'),
(61, 34, 'image', 'properties-1.png', '/screenshots/', 'image/png', 1368616805, 1368632470, 2, 2, 'a:3:{s:10:"imageWidth";i:1025;s:11:"imageHeight";i:272;s:25:"imageDimensionsCalculated";b:1;}'),
(62, 34, 'image', 'properties-2.png', '/screenshots/', 'image/png', 1368616805, 1368632470, 2, 2, 'a:3:{s:10:"imageWidth";i:1017;s:11:"imageHeight";i:329;s:25:"imageDimensionsCalculated";b:1;}'),
(63, 34, 'image', 'properties-3.png', '/screenshots/', 'image/png', 1368616847, 1368632470, 2, 2, 'a:3:{s:10:"imageWidth";i:1017;s:11:"imageHeight";i:316;s:25:"imageDimensionsCalculated";b:1;}'),
(64, 34, 'image', 'tag-snippet-management.png', '/screenshots/', 'image/png', 1368617634, 1368632470, 2, 2, 'a:3:{s:10:"imageWidth";i:1063;s:11:"imageHeight";i:872;s:25:"imageDimensionsCalculated";b:1;}'),
(65, 34, 'image', 'objects-forms.png', '/screenshots/', 'image/png', 1368623266, 1368632470, 2, 2, 'a:3:{s:10:"imageWidth";i:308;s:11:"imageHeight";i:265;s:25:"imageDimensionsCalculated";b:1;}'),
(66, 29, 'document', 'example-excel.xlsx', '/documents/', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 1378992590, 1378992590, 2, 2, 'a:0:{}'),
(67, 29, 'document', 'example.docx', '/documents/', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 1378992591, 1378992591, 2, 2, 'a:0:{}'),
(68, 29, 'document', 'example.pptx', '/documents/', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 1378992592, 1378992592, 2, 2, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE IF NOT EXISTS `cache` (
  `id` varchar(165) NOT NULL DEFAULT '',
  `data` longtext,
  `mtime` bigint(20) DEFAULT NULL,
  `expire` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`id`, `data`, `mtime`, `expire`) VALUES
('pimcore_asset_1', 'O:12:"Asset_Folder":13:{s:4:"type";s:6:"folder";s:2:"id";i:1;s:8:"parentId";i:0;s:8:"filename";s:0:"";s:4:"path";s:1:"/";s:8:"mimetype";s:0:"";s:12:"creationDate";i:1368522989;s:16:"modificationDate";i:1368522989;s:9:"userOwner";s:1:"1";s:16:"userModification";s:1:"1";s:6:"locked";N;s:14:"customSettings";s:0:"";s:15:"\0*\0_dataChanged";b:0;}', 1384947643, 1387366843),
('pimcore_asset_17', 'O:12:"Asset_Folder":13:{s:4:"type";s:6:"folder";s:2:"id";i:17;s:8:"parentId";i:7;s:8:"filename";s:6:"panama";s:4:"path";s:10:"/examples/";s:8:"mimetype";s:0:"";s:12:"creationDate";i:1368532826;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384947643, 1387366843),
('pimcore_asset_18', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:18;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0117.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532831;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947642, 1387366842),
('pimcore_asset_19', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:19;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0201.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532832;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947641, 1387366841),
('pimcore_asset_20', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:20;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0089.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532833;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947642, 1387366842),
('pimcore_asset_21', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:21;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0037.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532834;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384942511, 1387361711),
('pimcore_asset_22', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:22;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0399.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532836;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947641, 1387366841),
('pimcore_asset_23', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:23;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0411.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532837;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947640, 1387366840),
('pimcore_asset_24', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:24;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0410.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532838;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947641, 1387366841),
('pimcore_asset_25', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:25;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0160.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532839;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947642, 1387366842),
('pimcore_asset_26', 'O:12:"Asset_Folder":13:{s:4:"type";s:6:"folder";s:2:"id";i:26;s:8:"parentId";i:1;s:8:"filename";s:6:"videos";s:4:"path";s:1:"/";s:8:"mimetype";s:0:"";s:12:"creationDate";i:1368542684;s:16:"modificationDate";i:1368632471;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384955894, 1387375094),
('pimcore_asset_27', 'O:11:"Asset_Video":13:{s:4:"type";s:5:"video";s:2:"id";i:27;s:8:"parentId";i:26;s:8:"filename";s:24:"home-trailer-english.mp4";s:4:"path";s:8:"/videos/";s:8:"mimetype";s:9:"video/mp4";s:12:"creationDate";i:1368542794;s:16:"modificationDate";i:1384783789;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:1:{s:10:"thumbnails";a:2:{s:12:"featurerette";a:2:{s:6:"status";s:5:"error";s:7:"formats";a:1:{s:4:"webm";s:82:"/website/var/tmp/video-thumbnails/27/thumb__featurerette/home-trailer-english.webm";}}s:7:"content";a:2:{s:6:"status";s:5:"error";s:7:"formats";a:1:{s:4:"webm";s:77:"/website/var/tmp/video-thumbnails/27/thumb__content/home-trailer-english.webm";}}}}s:15:"\0*\0_dataChanged";b:0;}', 1384955895, 1387375095),
('pimcore_asset_29', 'O:12:"Asset_Folder":13:{s:4:"type";s:6:"folder";s:2:"id";i:29;s:8:"parentId";i:1;s:8:"filename";s:9:"documents";s:4:"path";s:1:"/";s:8:"mimetype";s:0:"";s:12:"creationDate";i:1368548619;s:16:"modificationDate";i:1368632467;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384955895, 1387375095),
('pimcore_asset_3', 'O:12:"Asset_Folder":13:{s:4:"type";s:6:"folder";s:2:"id";i:3;s:8:"parentId";i:1;s:8:"filename";s:13:"portal-sujets";s:4:"path";s:1:"/";s:8:"mimetype";s:0:"";s:12:"creationDate";i:1368530371;s:16:"modificationDate";i:1368632469;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384955894, 1387375094),
('pimcore_asset_34', 'O:12:"Asset_Folder":13:{s:4:"type";s:6:"folder";s:2:"id";i:34;s:8:"parentId";i:1;s:8:"filename";s:11:"screenshots";s:4:"path";s:1:"/";s:8:"mimetype";s:0:"";s:12:"creationDate";i:1368560793;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384955894, 1387375094),
('pimcore_asset_35', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:35;s:8:"parentId";i:34;s:8:"filename";s:12:"glossary.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368560809;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:908;s:11:"imageHeight";i:267;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384948562, 1387367762),
('pimcore_asset_36', 'O:14:"Asset_Document":13:{s:4:"type";s:8:"document";s:2:"id";i:36;s:8:"parentId";i:29;s:8:"filename";s:17:"documentation.pdf";s:4:"path";s:11:"/documents/";s:8:"mimetype";s:15:"application/pdf";s:12:"creationDate";i:1368562442;s:16:"modificationDate";i:1368632467;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384948563, 1387367763),
('pimcore_asset_37', 'O:12:"Asset_Folder":13:{s:4:"type";s:6:"folder";s:2:"id";i:37;s:8:"parentId";i:7;s:8:"filename";s:5:"italy";s:4:"path";s:10:"/examples/";s:8:"mimetype";s:0:"";s:12:"creationDate";i:1368596763;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384947643, 1387366843),
('pimcore_asset_38', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:38;s:8:"parentId";i:37;s:8:"filename";s:12:"dsc04346.jpg";s:4:"path";s:16:"/examples/italy/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596767;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947643, 1387366843),
('pimcore_asset_39', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:39;s:8:"parentId";i:37;s:8:"filename";s:12:"dsc04344.jpg";s:4:"path";s:16:"/examples/italy/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596768;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947643, 1387366843),
('pimcore_asset_4', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:4;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-01.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530684;s:16:"modificationDate";i:1370432846;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}', 1384947185, 1387366385),
('pimcore_asset_40', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:40;s:8:"parentId";i:37;s:8:"filename";s:12:"dsc04462.jpg";s:4:"path";s:16:"/examples/italy/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596769;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947642, 1387366842),
('pimcore_asset_41', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:41;s:8:"parentId";i:37;s:8:"filename";s:12:"dsc04399.jpg";s:4:"path";s:16:"/examples/italy/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596770;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947642, 1387366842),
('pimcore_asset_42', 'O:12:"Asset_Folder":13:{s:4:"type";s:6:"folder";s:2:"id";i:42;s:8:"parentId";i:7;s:8:"filename";s:12:"south-africa";s:4:"path";s:10:"/examples/";s:8:"mimetype";s:0:"";s:12:"creationDate";i:1368596785;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384947643, 1387366843),
('pimcore_asset_43', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:43;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1414.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596789;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947184, 1387366384),
('pimcore_asset_44', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:44;s:8:"parentId";i:42;s:8:"filename";s:12:"img_2133.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596791;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947638, 1387366838),
('pimcore_asset_45', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:45;s:8:"parentId";i:42;s:8:"filename";s:12:"img_2240.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596793;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947637, 1387366837),
('pimcore_asset_46', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:46;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1752.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596795;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947638, 1387366838),
('pimcore_asset_47', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:47;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1739.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596798;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947639, 1387366839),
('pimcore_asset_48', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:48;s:8:"parentId";i:42;s:8:"filename";s:12:"img_0391.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596800;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:3872;s:11:"imageHeight";i:2332;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947639, 1387366839),
('pimcore_asset_49', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:49;s:8:"parentId";i:42;s:8:"filename";s:12:"img_2155.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596801;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947637, 1387366837),
('pimcore_asset_5', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:5;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-02.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530764;s:16:"modificationDate";i:1370432868;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}', 1384947637, 1387366837),
('pimcore_asset_50', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:50;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1544.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596804;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947639, 1387366839),
('pimcore_asset_51', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:51;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1842.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596806;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947184, 1387366384),
('pimcore_asset_52', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:52;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1920.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596808;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947638, 1387366838),
('pimcore_asset_53', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:53;s:8:"parentId";i:42;s:8:"filename";s:12:"img_0322.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596810;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:7264;s:11:"imageHeight";i:2386;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947185, 1387366385),
('pimcore_asset_54', 'O:12:"Asset_Folder":13:{s:4:"type";s:6:"folder";s:2:"id";i:54;s:8:"parentId";i:7;s:8:"filename";s:9:"singapore";s:4:"path";s:10:"/examples/";s:8:"mimetype";s:0:"";s:12:"creationDate";i:1368596871;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384947643, 1387366843),
('pimcore_asset_55', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:55;s:8:"parentId";i:54;s:8:"filename";s:12:"dsc03778.jpg";s:4:"path";s:20:"/examples/singapore/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368597116;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947640, 1387366840),
('pimcore_asset_56', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:56;s:8:"parentId";i:54;s:8:"filename";s:12:"dsc03807.jpg";s:4:"path";s:20:"/examples/singapore/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368597117;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947639, 1387366839),
('pimcore_asset_57', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:57;s:8:"parentId";i:54;s:8:"filename";s:12:"dsc03835.jpg";s:4:"path";s:20:"/examples/singapore/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368597119;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384947639, 1387366839),
('pimcore_asset_59', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:59;s:8:"parentId";i:34;s:8:"filename";s:27:"thumbnail-configuration.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368606782;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:809;s:11:"imageHeight";i:865;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384955896, 1387375096),
('pimcore_asset_6', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:6;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-03.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530764;s:16:"modificationDate";i:1370432860;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}', 1384947637, 1387366837),
('pimcore_asset_60', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:60;s:8:"parentId";i:34;s:8:"filename";s:24:"website-translations.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368608949;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:925;s:11:"imageHeight";i:554;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384955895, 1387375095),
('pimcore_asset_61', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:61;s:8:"parentId";i:34;s:8:"filename";s:16:"properties-1.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368616805;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:1025;s:11:"imageHeight";i:272;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384955895, 1387375095),
('pimcore_asset_62', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:62;s:8:"parentId";i:34;s:8:"filename";s:16:"properties-2.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368616805;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:1017;s:11:"imageHeight";i:329;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384955895, 1387375095),
('pimcore_asset_63', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:63;s:8:"parentId";i:34;s:8:"filename";s:16:"properties-3.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368616847;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:1017;s:11:"imageHeight";i:316;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384955895, 1387375095),
('pimcore_asset_64', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:64;s:8:"parentId";i:34;s:8:"filename";s:26:"tag-snippet-management.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368617634;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:1063;s:11:"imageHeight";i:872;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384955895, 1387375095),
('pimcore_asset_65', 'O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:65;s:8:"parentId";i:34;s:8:"filename";s:17:"objects-forms.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368623266;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:308;s:11:"imageHeight";i:265;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}', 1384942512, 1387361712),
('pimcore_asset_66', 'O:14:"Asset_Document":13:{s:4:"type";s:8:"document";s:2:"id";i:66;s:8:"parentId";i:29;s:8:"filename";s:18:"example-excel.xlsx";s:4:"path";s:11:"/documents/";s:8:"mimetype";s:65:"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";s:12:"creationDate";i:1378992590;s:16:"modificationDate";i:1378992590;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384948725, 1387367925),
('pimcore_asset_67', 'O:14:"Asset_Document":13:{s:4:"type";s:8:"document";s:2:"id";i:67;s:8:"parentId";i:29;s:8:"filename";s:12:"example.docx";s:4:"path";s:11:"/documents/";s:8:"mimetype";s:71:"application/vnd.openxmlformats-officedocument.wordprocessingml.document";s:12:"creationDate";i:1378992591;s:16:"modificationDate";i:1378992591;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384948725, 1387367925),
('pimcore_asset_68', 'O:14:"Asset_Document":13:{s:4:"type";s:8:"document";s:2:"id";i:68;s:8:"parentId";i:29;s:8:"filename";s:12:"example.pptx";s:4:"path";s:11:"/documents/";s:8:"mimetype";s:73:"application/vnd.openxmlformats-officedocument.presentationml.presentation";s:12:"creationDate";i:1378992592;s:16:"modificationDate";i:1378992592;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384948725, 1387367925),
('pimcore_asset_7', 'O:12:"Asset_Folder":13:{s:4:"type";s:6:"folder";s:2:"id";i:7;s:8:"parentId";i:1;s:8:"filename";s:8:"examples";s:4:"path";s:1:"/";s:8:"mimetype";s:0:"";s:12:"creationDate";i:1368531816;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:0:{}s:15:"\0*\0_dataChanged";b:0;}', 1384947644, 1387366844),
('pimcore_asset_properties_37', 'a:0:{}', 1384955897, 1387375097),
('pimcore_document_1', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:6:"portal";s:8:"template";s:0:"";s:8:"elements";a:57:{s:14:"authorcontent3";O:18:"Document_Tag_Input":5:{s:4:"text";s:15:"Albert Einstein";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"authorcontent3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:13:"blockcontent1";O:18:"Document_Tag_Block":6:{s:7:"indices";a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"blockcontent1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:14:"carouselSlides";O:19:"Document_Tag_Select":5:{s:4:"text";s:1:"3";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"carouselSlides";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:11:"cHeadline_0";O:18:"Document_Tag_Input":5:{s:4:"text";s:23:"Ready to get impressed?";s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"cHeadline_0";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:11:"cHeadline_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:21:"It''ll blow your mind.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"cHeadline_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:11:"cHeadline_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:23:"Oh yeah, it''s that good";s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"cHeadline_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:8:"cImage_0";O:18:"Document_Tag_Image":14:{s:2:"id";i:4;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:4;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-01.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530684;s:16:"modificationDate";i:1370432846;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"cImage_0";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:8:"cImage_1";O:18:"Document_Tag_Image":14:{s:2:"id";i:5;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:5;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-02.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530764;s:16:"modificationDate";i:1370432868;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"cImage_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:8:"cImage_2";O:18:"Document_Tag_Image":14:{s:2:"id";i:6;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:6;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-03.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530764;s:16:"modificationDate";i:1370432860;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"cImage_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cLink_0";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cLink_0";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cLink_1";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cLink_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cLink_2";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:9:"Checkmate";s:4:"path";s:12:"/experiments";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:6;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cLink_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:2:{i:0;a:2:{s:3:"key";s:1:"2";s:4:"type";s:19:"standard-teaser-row";}i:1;a:2:{s:3:"key";s:1:"1";s:4:"type";s:10:"featurette";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:179:"<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:214:"<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:214:"<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cText_0";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:84:"Check out our examples and dive into the next generation of digital data management.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cText_0";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cText_1";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:17:"See for yourself.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cText_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cText_2";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:16:"See for yourself";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cText_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:12:"Lorem ipsum.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:24:"Oh yeah, it''s that good.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_3";O:18:"Document_Tag_Input":5:{s:4:"text";s:21:"And lastly, this one.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent11_1";O:18:"Document_Tag_Image":14:{s:2:"id";i:55;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:55;s:8:"parentId";i:54;s:8:"filename";s:12:"dsc03778.jpg";s:4:"path";s:20:"/examples/singapore/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368597116;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent11_2";O:18:"Document_Tag_Image":14:{s:2:"id";i:18;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:18;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0117.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532831;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent11_3";O:18:"Document_Tag_Image":14:{s:2:"id";i:19;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:19;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0201.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532832;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:37:"imagePositioncontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:37:"imagePositioncontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:37:"imagePositioncontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:4:"left";s:10:"\0*\0options";N;s:7:"\0*\0name";s:37:"imagePositioncontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:37:"imagePositioncontent_blockcontent11_3";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:37:"imagePositioncontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:4:"left";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_3";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:13:"quotecontent3";O:18:"Document_Tag_Input":5:{s:4:"text";s:88:"We can''t solve problems by using the same kind of thinking we used when we created them.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"quotecontent3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:11:"Cum sociis.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:17:"See for yourself.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_3";O:18:"Document_Tag_Input":5:{s:4:"text";s:10:"Checkmate.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:16:"teaser_0content2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"15";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_0content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:16:"teaser_1content2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"16";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_1content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:16:"teaser_2content2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"17";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_2content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:5:"video";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_3";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:14:"type_0content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_0content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:14:"type_1content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_1content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:14:"type_2content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_2content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:29:"videocontent_blockcontent11_2";O:18:"Document_Tag_Video":9:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:6:"poster";N;s:5:"title";s:0:"";s:11:"description";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"videocontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:1;s:8:"parentId";i:0;s:3:"key";s:0:"";s:4:"path";s:1:"/";s:5:"index";i:999999;s:9:"published";b:1;s:12:"creationDate";i:1368522989;s:16:"modificationDate";i:1382962883;s:9:"userOwner";i:1;s:16:"userModification";i:2;s:6:"locked";N;}', 1384947185, 1387366385),
('pimcore_document_10', 'O:15:"Document_Folder":12:{s:4:"type";s:6:"folder";s:2:"id";i:10;s:8:"parentId";i:40;s:3:"key";s:6:"shared";s:4:"path";s:4:"/en/";s:5:"index";i:5;s:9:"published";b:1;s:12:"creationDate";i:1368527956;s:16:"modificationDate";i:1382956831;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956140, 1387375340),
('pimcore_document_11', 'O:15:"Document_Folder":12:{s:4:"type";s:6:"folder";s:2:"id";i:11;s:8:"parentId";i:10;s:3:"key";s:8:"includes";s:4:"path";s:11:"/en/shared/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1368527961;s:16:"modificationDate";i:1382956831;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942511, 1387361711);
INSERT INTO `cache` (`id`, `data`, `mtime`, `expire`) VALUES
('pimcore_document_12', 'O:16:"Document_Snippet":18:{s:4:"type";s:7:"snippet";s:6:"module";s:0:"";s:10:"controller";s:7:"default";s:6:"action";s:7:"default";s:8:"template";s:20:"/includes/footer.php";s:8:"elements";a:17:{s:10:"linklinks1";O:17:"Document_Tag_Link":5:{s:4:"data";a:11:{s:4:"text";s:11:"pimcore.org";s:4:"path";s:23:"http://www.pimcore.org/";s:6:"target";s:6:"_blank";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:10:"linklinks1";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:10:"linklinks2";O:17:"Document_Tag_Link":5:{s:4:"data";a:11:{s:4:"text";s:13:"Documentation";s:4:"path";s:28:"http://www.pimcore.org/wiki/";s:6:"target";s:6:"_blank";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:10:"linklinks2";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:10:"linklinks3";O:17:"Document_Tag_Link":5:{s:4:"data";a:11:{s:4:"text";s:11:"Bug Tracker";s:4:"path";s:30:"http://www.pimcore.org/issues/";s:6:"target";s:6:"_blank";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:10:"linklinks3";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:5:"links";O:18:"Document_Tag_Block":6:{s:7:"indices";a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";}s:7:"current";i:0;s:10:"\0*\0options";a:1:{s:5:"limit";i:1000000;}s:7:"\0*\0name";s:5:"links";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}s:4:"text";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:552:"<p>Designed and built with all the love in the world by&nbsp;<a href="http://twitter.com/mdo" target="_blank">@mdo</a>&nbsp;and&nbsp;<a href="http://twitter.com/fat" target="_blank">@fat</a>.</p>\n\n<p>Code licensed under&nbsp;<a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>,&nbsp;<a href="http://glyphicons.com/">Glyphicons Free</a>&nbsp;licensed under&nbsp;<a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>\n\n<p><strong>Â© Templates pimcore.org licensed under BSD License</strong></p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:4:"text";s:13:"\0*\0documentId";i:12;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:12;s:8:"parentId";i:11;s:3:"key";s:6:"footer";s:4:"path";s:20:"/en/shared/includes/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1368527967;s:16:"modificationDate";i:1382956852;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";s:4:"self";}', 1384942511, 1387361711),
('pimcore_document_13', 'O:15:"Document_Folder":12:{s:4:"type";s:6:"folder";s:2:"id";i:13;s:8:"parentId";i:10;s:3:"key";s:7:"teasers";s:4:"path";s:11:"/en/shared/";s:5:"index";i:2;s:9:"published";b:1;s:12:"creationDate";i:1368531657;s:16:"modificationDate";i:1382956831;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942511, 1387361711),
('pimcore_document_14', 'O:15:"Document_Folder":12:{s:4:"type";s:6:"folder";s:2:"id";i:14;s:8:"parentId";i:13;s:3:"key";s:8:"standard";s:4:"path";s:19:"/en/shared/teasers/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1368531665;s:16:"modificationDate";i:1382956831;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942511, 1387361711),
('pimcore_document_15', 'O:16:"Document_Snippet":18:{s:4:"type";s:7:"snippet";s:6:"module";s:0:"";s:10:"controller";s:7:"default";s:6:"action";s:7:"default";s:8:"template";s:29:"/snippets/standard-teaser.php";s:8:"elements";a:5:{s:6:"circle";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:6:"circle";s:13:"\0*\0documentId";i:15;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:15:"Full Responsive";s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:15;s:12:"\0*\0inherited";b:0;}s:5:"image";O:18:"Document_Tag_Image":14:{s:2:"id";i:21;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:21;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0037.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532834;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_21";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";a:2:{s:9:"thumbnail";s:14:"standardTeaser";s:5:"class";s:0:"";}s:7:"\0*\0name";s:5:"image";s:13:"\0*\0documentId";i:15;s:12:"\0*\0inherited";b:0;}s:4:"link";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:11:"Lorem ipsum";s:4:"path";s:18:"/en/basic-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:3;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";a:1:{s:5:"class";s:15:"btn btn-default";}s:7:"\0*\0name";s:4:"link";s:13:"\0*\0documentId";i:15;s:12:"\0*\0inherited";b:0;}s:4:"text";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:103:"<p>This demo is based on Bootstrap, the most popular, intuitive, and powerful front-end framework.</p>\n";s:10:"\0*\0options";a:1:{s:6:"height";i:100;}s:7:"\0*\0name";s:4:"text";s:13:"\0*\0documentId";i:15;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:15;s:8:"parentId";i:14;s:3:"key";s:14:"basic-examples";s:4:"path";s:28:"/en/shared/teasers/standard/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1368531692;s:16:"modificationDate";i:1382956831;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956140, 1387375340),
('pimcore_document_16', 'O:16:"Document_Snippet":18:{s:4:"type";s:7:"snippet";s:6:"module";s:0:"";s:10:"controller";s:7:"default";s:6:"action";s:7:"default";s:8:"template";s:29:"/snippets/standard-teaser.php";s:8:"elements";a:5:{s:6:"circle";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:6:"circle";s:13:"\0*\0documentId";i:16;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:21:"Drag & Drop Interface";s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:16;s:12:"\0*\0inherited";b:0;}s:5:"image";O:18:"Document_Tag_Image":14:{s:2:"id";i:20;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:20;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0089.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532833;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_20";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";a:2:{s:9:"thumbnail";s:14:"standardTeaser";s:5:"class";s:0:"";}s:7:"\0*\0name";s:5:"image";s:13:"\0*\0documentId";i:16;s:12:"\0*\0inherited";b:0;}s:4:"link";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:12:"Etiam rhoncu";s:4:"path";s:21:"/en/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";a:1:{s:5:"class";s:15:"btn btn-default";}s:7:"\0*\0name";s:4:"link";s:13:"\0*\0documentId";i:16;s:12:"\0*\0inherited";b:0;}s:4:"text";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:122:"<p>Content is created by simply dragging &amp; dropping blocks, that can&nbsp;be editited in-place and wysiwyg.&nbsp;</p>\n";s:10:"\0*\0options";a:1:{s:6:"height";i:100;}s:7:"\0*\0name";s:4:"text";s:13:"\0*\0documentId";i:16;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:16;s:8:"parentId";i:14;s:3:"key";s:17:"advanced-examples";s:4:"path";s:28:"/en/shared/teasers/standard/";s:5:"index";i:2;s:9:"published";b:1;s:12:"creationDate";i:1368534298;s:16:"modificationDate";i:1382956831;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956140, 1387375340),
('pimcore_document_17', 'O:16:"Document_Snippet":18:{s:4:"type";s:7:"snippet";s:6:"module";s:0:"";s:10:"controller";s:7:"default";s:6:"action";s:7:"default";s:8:"template";s:29:"/snippets/standard-teaser.php";s:8:"elements";a:5:{s:6:"circle";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:6:"circle";s:13:"\0*\0documentId";i:17;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:17:"HTML5 omnipresent";s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:17;s:12:"\0*\0inherited";b:0;}s:5:"image";O:18:"Document_Tag_Image":14:{s:2:"id";i:18;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:18;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0117.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532831;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_18";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";a:2:{s:9:"thumbnail";s:14:"standardTeaser";s:5:"class";s:0:"";}s:7:"\0*\0name";s:5:"image";s:13:"\0*\0documentId";i:17;s:12:"\0*\0inherited";b:0;}s:4:"link";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:14:"Quisque rutrum";s:4:"path";s:15:"/en/experiments";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:6;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";a:1:{s:5:"class";s:15:"btn btn-default";}s:7:"\0*\0name";s:4:"link";s:13:"\0*\0documentId";i:17;s:12:"\0*\0inherited";b:0;}s:4:"text";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:118:"<p>Drag &amp; drop upload directly&nbsp;into the asset tree, automatic html5 video transcoding, and much more ...</p>\n";s:10:"\0*\0options";a:1:{s:6:"height";i:100;}s:7:"\0*\0name";s:4:"text";s:13:"\0*\0documentId";i:17;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:17;s:8:"parentId";i:14;s:3:"key";s:11:"experiments";s:4:"path";s:28:"/en/shared/teasers/standard/";s:5:"index";i:3;s:9:"published";b:1;s:12:"creationDate";i:1368534344;s:16:"modificationDate";i:1382956831;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956140, 1387375340),
('pimcore_document_18', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:7:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:3:"pdf";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:18;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:18;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:19:"Isn''t that amazing?";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:18;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:18;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:18;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:82:"<p>Just drop a PDF, doc(x), xls(x) or many other formats, et voilÃ¡ ...&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:18;s:12:"\0*\0inherited";b:0;}s:11:"pdfcontent1";O:16:"Document_Tag_Pdf":6:{s:2:"id";i:36;s:8:"hotspots";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"pdfcontent1";s:13:"\0*\0documentId";i:18;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:18;s:8:"parentId";i:3;s:3:"key";s:10:"pdf-viewer";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:2;s:9:"published";b:1;s:12:"creationDate";i:1368548449;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956139, 1387375339),
('pimcore_document_19', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:17:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:2:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:14:"gallery-folder";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:21:"gallery-single-images";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:15:"gallerycontent1";O:22:"Document_Tag_Renderlet":7:{s:2:"id";i:17;s:4:"type";s:5:"asset";s:7:"subtype";s:6:"folder";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"gallerycontent1";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:15:"gallerycontent2";O:18:"Document_Tag_Block":6:{s:7:"indices";a:7:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";i:4;s:1:"5";i:5;s:1:"6";i:6;s:1:"7";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"gallerycontent2";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:40:"Creating custom galleries is very simple";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:39:"Autogenerated Gallery (using Renderlet)";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent2";O:18:"Document_Tag_Input":5:{s:4:"text";s:24:"Custom assembled Gallery";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent2";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_1";O:18:"Document_Tag_Image":14:{s:2:"id";i:48;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:48;s:8:"parentId";i:42;s:8:"filename";s:12:"img_0391.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596800;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:3872;s:11:"imageHeight";i:2332;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_48";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_1";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_2";O:18:"Document_Tag_Image":14:{s:2:"id";i:43;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:43;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1414.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596789;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_43";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_2";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_3";O:18:"Document_Tag_Image":14:{s:2:"id";i:50;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:50;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1544.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596804;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_50";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_3";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_4";O:18:"Document_Tag_Image":14:{s:2:"id";i:47;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:47;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1739.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596798;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_47";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_4";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_5";O:18:"Document_Tag_Image":14:{s:2:"id";i:46;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:46;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1752.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596795;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_46";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_5";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_6";O:18:"Document_Tag_Image":14:{s:2:"id";i:51;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:51;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1842.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596806;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_51";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_6";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_7";O:18:"Document_Tag_Image":14:{s:2:"id";i:52;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:52;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1920.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596808;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_52";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_7";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:145:"<p>Drag an asset folder on the following drop area, and the "renderlet" will create automatically a gallery out of the images in the folder.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent2";s:13:"\0*\0documentId";i:19;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:19;s:8:"parentId";i:3;s:3:"key";s:9:"galleries";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:3;s:9:"published";b:1;s:12:"creationDate";i:1368549805;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384955896, 1387375096),
('pimcore_document_20', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:10:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:2:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:20;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:1300:"<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n\n<p>&nbsp;</p>\n\n<p>Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.</p>\n\n<p>&nbsp;</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:20;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:20;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:16:"The Glossary ...";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:20;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:20;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent2";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent2";s:13:"\0*\0documentId";i:20;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:20;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent2";O:18:"Document_Tag_Image":14:{s:2:"id";i:35;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:35;s:8:"parentId";i:34;s:8:"filename";s:12:"glossary.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368560809;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:908;s:11:"imageHeight";i:267;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_35";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent2";s:13:"\0*\0documentId";i:20;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:187:"<p>... makes it very simple to automatically link keywords, abbreviation and acronyms. This is not only perfect for SEO but also makes it super easy to navigate in the content.&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:20;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:71:"<p>&nbsp;</p>\n\n<p>... this is how it looks in the admin interface.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent2";s:13:"\0*\0documentId";i:20;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:20;s:8:"parentId";i:3;s:3:"key";s:8:"glossary";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:4;s:9:"published";b:1;s:12:"creationDate";i:1368559903;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956139, 1387375339),
('pimcore_document_21', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:10:"thumbnails";s:8:"template";s:0:"";s:8:"elements";a:39:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:2:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:14:"content_bottom";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:5:"image";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"content_bottom";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:24:"Incredible Possibilities";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent2";O:18:"Document_Tag_Input":5:{s:4:"text";s:26:"This is the original image";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent2";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:23:"headlinecontent_bottom1";O:18:"Document_Tag_Input":5:{s:4:"text";s:48:"This is how it looks in the admin interface ... ";s:10:"\0*\0options";N;s:7:"\0*\0name";s:23:"headlinecontent_bottom1";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:5:"image";O:18:"Document_Tag_Image":14:{s:2:"id";N;s:3:"alt";s:0:"";s:5:"image";N;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:5:"image";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent2";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:53;s:8:"parentId";i:42;s:8:"filename";s:12:"img_0322.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596810;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:7264;s:11:"imageHeight";i:2386;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_53";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent2";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:20:"imagecontent_bottom1";O:18:"Document_Tag_Image":14:{s:2:"id";i:59;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:59;s:8:"parentId";i:34;s:8:"filename";s:27:"thumbnail-configuration.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368606782;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:809;s:11:"imageHeight";i:865;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_59";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:20:"imagecontent_bottom1";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:4:"img1";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:4:"img1";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:5:"img10";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:5:"img10";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:5:"img11";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:5:"img11";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:5:"img12";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:5:"img12";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:4:"img2";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:4:"img2";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:4:"img3";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:4:"img3";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:4:"img4";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:4:"img4";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:4:"img5";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:4:"img5";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:4:"img6";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:4:"img6";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:4:"img7";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:4:"img7";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:4:"img8";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:4:"img8";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:4:"img9";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";r:100;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:4:"img9";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent2";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:19:"leadcontent_bottom1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:19:"leadcontent_bottom1";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:21;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:21;s:8:"parentId";i:3;s:3:"key";s:10:"thumbnails";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:5;s:9:"published";b:1;s:12:"creationDate";i:1368602443;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956139, 1387375339),
('pimcore_document_22', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:20:"website-translations";s:8:"template";s:0:"";s:8:"elements";a:23:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:13:"contentBottom";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:5:"image";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"contentBottom";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:258:"<p>&nbsp;</p>\n\n<p><a href="/de/einfache-beispiele/website-uebersetzungen" pimcore_id="23" pimcore_type="document">Please visit this page to see the German translation of this page.</a></p>\n\n<p>&nbsp;</p>\n\n<p>Following some examples:&nbsp;</p>\n\n<p>&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:20:"Website Translations";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:22:"headlinecontentBottom1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:22:"headlinecontentBottom1";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:19:"imagecontentBottom1";O:18:"Document_Tag_Image":14:{s:2:"id";i:60;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:60;s:8:"parentId";i:34;s:8:"filename";s:24:"website-translations.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368608949;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:925;s:11:"imageHeight";i:554;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_60";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:19:"imagecontentBottom1";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:108:"<p>Common used terms across the website can be translated centrally, hassle-free and comfortable.&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:18:"leadcontentBottom1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:91:"<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>This is how it looks in the admin interface ...&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:18:"leadcontentBottom1";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:22;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:22;s:8:"parentId";i:3;s:3:"key";s:20:"website-translations";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:6;s:9:"published";b:1;s:12:"creationDate";i:1368607207;s:16:"modificationDate";i:1382958131;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956139, 1387375339);
INSERT INTO `cache` (`id`, `data`, `mtime`, `expire`) VALUES
('pimcore_document_23', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:20:"website-translations";s:8:"template";s:0:"";s:8:"elements";a:20:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:13:"contentBottom";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:0:{}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"contentBottom";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:41:"<p>Folgend ein paar Beispiele:&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:22:"Website Ãœbersetzungen";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:118:"<p>HÃ¤ufig genutzte Begriffe auf der gesamten Website kÃ¶nnen komfortabel, zentral und einfach Ã¼bersetzt werden.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:23;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:23;s:8:"parentId";i:51;s:3:"key";s:22:"website-uebersetzungen";s:4:"path";s:23:"/de/einfache-beispiele/";s:5:"index";i:0;s:9:"published";b:1;s:12:"creationDate";i:1368608357;s:16:"modificationDate";i:1382958135;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956138, 1387375338),
('pimcore_document_24', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:32:{s:14:"authorcontent5";O:18:"Document_Tag_Input":5:{s:4:"text";s:15:"Albert Einstein";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"authorcontent5";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:13:"blockcontent1";O:18:"Document_Tag_Block":6:{s:7:"indices";a:2:{i:0;s:1:"1";i:1;s:1:"2";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"blockcontent1";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:5:{i:0;a:2:{s:3:"key";s:1:"2";s:4:"type";s:21:"gallery-single-images";}i:1;a:2:{s:3:"key";s:1:"3";s:4:"type";s:7:"wysiwyg";}i:2;a:2:{s:3:"key";s:1:"5";s:4:"type";s:10:"blockquote";}i:3;a:2:{s:3:"key";s:1:"1";s:4:"type";s:10:"featurette";}i:4;a:2:{s:3:"key";s:1:"4";s:4:"type";s:5:"image";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:810:"<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</li>\n	<li>Phasellus viverra nulla ut metus varius laoreet.</li>\n	<li>Quisque rutrum. Aenean imperdiet.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Etiam ultricies nisi vel augue. Curabitur <a href="/basic-examples/galleries">ullamcorper </a>ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent3";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:93:"<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_1";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:83:"<p>Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_2";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:15:"gallerycontent2";O:18:"Document_Tag_Block":6:{s:7:"indices";a:4:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"gallerycontent2";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:38:"This is just a simple Content-Page ...";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent2";O:18:"Document_Tag_Input":5:{s:4:"text";s:46:"Where some Content-Blocks are mixed together. ";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent2";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent3";O:18:"Document_Tag_Input":5:{s:4:"text";s:31:"Nulla consequat massa quis enim";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent3";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent4";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent4";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:12:"Lorem ipsum.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_1";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:16:"Etiam ultricies.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_2";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent4";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:53;s:8:"parentId";i:42;s:8:"filename";s:12:"img_0322.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596810;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:7264;s:11:"imageHeight";i:2386;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_53";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent4";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent11_1";O:18:"Document_Tag_Image":14:{s:2:"id";i:48;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:48;s:8:"parentId";i:42;s:8:"filename";s:12:"img_0391.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596800;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:3872;s:11:"imageHeight";i:2332;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_48";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent11_1";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_1";O:18:"Document_Tag_Image":14:{s:2:"id";i:51;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:51;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1842.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596806;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_51";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_1";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_2";O:18:"Document_Tag_Image":14:{s:2:"id";i:52;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:52;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1920.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596808;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_52";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_2";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_3";O:18:"Document_Tag_Image":14:{s:2:"id";i:44;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:44;s:8:"parentId";i:42;s:8:"filename";s:12:"img_2133.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596791;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_44";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_3";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:31:"imagecontent_gallerycontent22_4";O:18:"Document_Tag_Image":14:{s:2:"id";i:49;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:49;s:8:"parentId";i:42;s:8:"filename";s:12:"img_2155.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596801;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_49";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"imagecontent_gallerycontent22_4";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:23:"<p>African Animals</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent2";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:52:"<p>Donec pede justo, fringilla vel, aliquet nec</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent3";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent4";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent4";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_1";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:4:"left";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_2";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:13:"quotecontent5";O:18:"Document_Tag_Input":5:{s:4:"text";s:88:"We can''t solve problems by using the same kind of thinking we used when we created them.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"quotecontent5";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:15:"Dolor sit amet.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_1";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:13:"Nam eget dui.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_2";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_1";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:5:"video";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_2";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}s:29:"videocontent_blockcontent11_2";O:18:"Document_Tag_Video":9:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:6:"poster";i:49;s:5:"title";s:0:"";s:11:"description";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"videocontent_blockcontent11_2";s:13:"\0*\0documentId";i:24;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:24;s:8:"parentId";i:3;s:3:"key";s:12:"content-page";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:0;s:9:"published";b:1;s:12:"creationDate";i:1368609059;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384955896, 1387375096),
('pimcore_document_25', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:16:"editable-roundup";s:8:"template";s:0:"";s:8:"elements";a:26:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:78:"This is an overview of all available "editables" (except area/areablock/block)";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:56:"Please view this page in the editmode (admin interface)!";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:41:"<p>... nothing to see here ;-)&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:1:"1";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";O:12:"Pimcore_Date":8:{s:18:"\0Zend_Date\0_locale";s:2:"en";s:22:"\0Zend_Date\0_fractional";i:0;s:21:"\0Zend_Date\0_precision";i:3;s:36:"\0Zend_Date_DateObject\0_unixTimestamp";s:10:"1368662400";s:31:"\0Zend_Date_DateObject\0_timezone";s:16:"Europe/Amsterdam";s:29:"\0Zend_Date_DateObject\0_offset";i:-3600;s:34:"\0Zend_Date_DateObject\0_syncronised";i:0;s:7:"\0*\0_dst";b:1;}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";i:21;s:4:"type";s:8:"document";s:7:"subtype";s:4:"page";s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:7:"myImage";O:18:"Document_Tag_Image":14:{s:2:"id";i:47;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:47;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1739.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596798;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_47";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myImage";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:9:"Some Text";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:7:"My Link";s:4:"path";s:25:"/basic-examples/galleries";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:19;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:11:"myMultiHref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:6:{i:0;a:4:{s:2:"id";i:20;s:4:"path";s:24:"/basic-examples/glossary";s:4:"type";s:8:"document";s:7:"subtype";s:4:"page";}i:1;a:4:{s:2:"id";i:21;s:4:"path";s:26:"/basic-examples/thumbnails";s:4:"type";s:8:"document";s:7:"subtype";s:4:"page";}i:2;a:4:{s:2:"id";i:25;s:4:"path";s:32:"/basic-examples/editable-roundup";s:4:"type";s:8:"document";s:7:"subtype";s:4:"page";}i:3;a:4:{s:2:"id";i:51;s:4:"path";s:48:"/demo-website/examples/south-africa/img_1842.jpg";s:4:"type";s:5:"asset";s:7:"subtype";s:5:"image";}i:4;a:4:{s:2:"id";i:44;s:4:"path";s:48:"/demo-website/examples/south-africa/img_2133.jpg";s:4:"type";s:5:"asset";s:7:"subtype";s:5:"image";}i:5;a:4:{s:2:"id";i:45;s:4:"path";s:48:"/demo-website/examples/south-africa/img_2240.jpg";s:4:"type";s:5:"asset";s:7:"subtype";s:5:"image";}}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultiHref";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:13:"myMultiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:2:{i:0;s:6:"value2";i:1;s:6:"value4";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"myMultiselect";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:9:"myNumeric";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:3:"123";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myNumeric";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:11:"myRenderlet";O:22:"Document_Tag_Renderlet":7:{s:2:"id";i:54;s:4:"type";s:5:"asset";s:7:"subtype";s:6:"folder";s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myRenderlet";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:7:"option2";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:9:"mySnippet";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"15";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"mySnippet";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:9:"Some Text";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:7:"myVideo";O:18:"Document_Tag_Video":9:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:6:"poster";N;s:5:"title";s:0:"";s:11:"description";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myVideo";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:1422:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.</p>\n\n<p>&nbsp;</p>\n\n<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\n\n<p>&nbsp;</p>\n\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}s:9:"tableName";O:18:"Document_Tag_Table":5:{s:4:"data";a:2:{i:0;a:3:{i:0;s:7:"Value 1";i:1;s:7:"Value 2";i:2;s:7:"Value 3";}i:1;a:3:{i:0;s:4:"this";i:1;s:2:"is";i:2;s:4:"test";}}s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"tableName";s:13:"\0*\0documentId";i:25;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:25;s:8:"parentId";i:3;s:3:"key";s:16:"editable-roundup";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:7;s:9:"published";b:1;s:12:"creationDate";i:1368609569;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956139, 1387375339),
('pimcore_document_26', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:11:"simple-form";s:8:"template";s:0:"";s:8:"elements";a:12:{s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:26;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:26;s:8:"parentId";i:3;s:3:"key";s:4:"form";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:8;s:9:"published";b:1;s:12:"creationDate";i:1368610663;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956139, 1387375339),
('pimcore_document_27', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:4:"news";s:6:"action";s:5:"index";s:8:"template";s:0:"";s:8:"elements";a:19:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:4:"News";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:65:"<p>Any kind of structured data is stored in "Objects".&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:27;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:27;s:8:"parentId";i:3;s:3:"key";s:4:"news";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:9;s:9:"published";b:1;s:12:"creationDate";i:1368613137;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384955895, 1387375095),
('pimcore_document_28', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:16:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:4:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}i:2;a:2:{s:3:"key";s:1:"3";s:4:"type";s:5:"image";}i:3;a:2:{s:3:"key";s:1:"4";s:4:"type";s:5:"image";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:379:"<p>On this page we use "Properties" to hide the navigation on the left and to change the color of the header to blue.&nbsp;</p>\n\n<p>Properties are very useful to control the behavior or to store meta data of documents, assets and objects. And the best: they are inheritable.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>On the following screens you can see how this is done in this example.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:10:"Properties";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent2";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent2";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent3";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent3";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent4";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent4";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent2";O:18:"Document_Tag_Image":14:{s:2:"id";i:61;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:61;s:8:"parentId";i:34;s:8:"filename";s:16:"properties-1.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368616805;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:1025;s:11:"imageHeight";i:272;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_61";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent2";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent3";O:18:"Document_Tag_Image":14:{s:2:"id";i:62;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:62;s:8:"parentId";i:34;s:8:"filename";s:16:"properties-2.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368616805;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:1017;s:11:"imageHeight";i:329;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_62";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent3";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent4";O:18:"Document_Tag_Image":14:{s:2:"id";i:63;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:63;s:8:"parentId";i:34;s:8:"filename";s:16:"properties-3.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368616847;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:1017;s:11:"imageHeight";i:316;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_63";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent4";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent2";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent3";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent4";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent4";s:13:"\0*\0documentId";i:28;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:28;s:8:"parentId";i:3;s:3:"key";s:10:"properties";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:10;s:9:"published";b:1;s:12:"creationDate";i:1368615986;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956139, 1387375339),
('pimcore_document_29', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:10:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:2:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:29;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:721:"<p>This page demonstrates how to use the "Tag &amp; Snippet Management" to inject codes into the HTML source code. This functionality can be used to easily integrate tracking codes, conversion codes, social plugins and whatever that needs to go into the HTML.</p>\n\n<p>&nbsp;</p>\n\n<p>The functionality is similar to this products:&nbsp;</p>\n\n<p><a href="http://www.google.com/tagmanager/">http://www.google.com/tagmanager/</a>&nbsp;</p>\n\n<p><a href="http://www.searchdiscovery.com/satellite/">http://www.searchdiscovery.com/satellite/&nbsp;</a></p>\n\n<p><a href="http://www.tagcommander.com/en/">http://www.tagcommander.com/en/</a></p>\n\n<p>&nbsp;</p>\n\n<p>In our example we use it to integrate a facebook social plugin.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:29;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:29;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:24:"Tag & Snippet Management";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:29;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:53:"... gives all the freedom back to the marketing dept.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:29;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent2";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent2";s:13:"\0*\0documentId";i:29;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:29;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent2";O:18:"Document_Tag_Image":14:{s:2:"id";i:64;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:64;s:8:"parentId";i:34;s:8:"filename";s:26:"tag-snippet-management.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368617634;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:1063;s:11:"imageHeight";i:872;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_64";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent2";s:13:"\0*\0documentId";i:29;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:29;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent2";s:13:"\0*\0documentId";i:29;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:29;s:8:"parentId";i:3;s:3:"key";s:26:"tag-and-snippet-management";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:11;s:9:"published";b:1;s:12:"creationDate";i:1368617118;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956139, 1387375339);
INSERT INTO `cache` (`id`, `data`, `mtime`, `expire`) VALUES
('pimcore_document_3', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:76:{s:15:"circle1content1";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle1content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle1content2";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:1:"1";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle1content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle1content3";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:1:"1";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle1content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle1content4";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle1content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle2content1";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle2content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle2content2";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:1:"1";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle2content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle2content3";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:1:"1";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle2content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle2content4";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle2content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle3content1";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle3content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle3content2";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:1:"1";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle3content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle3content3";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:1:"1";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle3content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"circle3content4";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle3content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:4:{i:0;a:2:{s:3:"key";s:1:"3";s:4:"type";s:19:"standard-teaser-row";}i:1;a:2:{s:3:"key";s:1:"1";s:4:"type";s:19:"standard-teaser-row";}i:2;a:2:{s:3:"key";s:1:"4";s:4:"type";s:19:"standard-teaser-row";}i:3;a:2:{s:3:"key";s:1:"2";s:4:"type";s:19:"standard-teaser-row";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:14:"Basic Examples";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline1content1";O:18:"Document_Tag_Input":5:{s:4:"text";s:11:"HTML5 Video";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline1content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline1content2";O:18:"Document_Tag_Input":5:{s:4:"text";s:8:"Glossary";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline1content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline1content3";O:18:"Document_Tag_Input":5:{s:4:"text";s:14:"Simple Content";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline1content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline1content4";O:18:"Document_Tag_Input":5:{s:4:"text";s:4:"News";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline1content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline2content1";O:18:"Document_Tag_Input":5:{s:4:"text";s:10:"PDF Viewer";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline2content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline2content2";O:18:"Document_Tag_Input":5:{s:4:"text";s:10:"Thumbnails";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline2content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline2content3";O:18:"Document_Tag_Input":5:{s:4:"text";s:8:"Round-Up";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline2content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline2content4";O:18:"Document_Tag_Input":5:{s:4:"text";s:10:"Properties";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline2content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline3content1";O:18:"Document_Tag_Input":5:{s:4:"text";s:9:"Galleries";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline3content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline3content2";O:18:"Document_Tag_Input":5:{s:4:"text";s:20:"Website Translations";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline3content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline3content3";O:18:"Document_Tag_Input":5:{s:4:"text";s:11:"Simple Form";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline3content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:17:"headline3content4";O:18:"Document_Tag_Input":5:{s:4:"text";s:11:"Tag Manager";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline3content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image1content1";O:18:"Document_Tag_Image":14:{s:2:"id";i:41;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:41;s:8:"parentId";i:37;s:8:"filename";s:12:"dsc04399.jpg";s:4:"path";s:16:"/examples/italy/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596770;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_41";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image1content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image1content2";O:18:"Document_Tag_Image":14:{s:2:"id";i:55;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:55;s:8:"parentId";i:54;s:8:"filename";s:12:"dsc03778.jpg";s:4:"path";s:20:"/examples/singapore/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368597116;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_55";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image1content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image1content3";O:18:"Document_Tag_Image":14:{s:2:"id";i:50;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:50;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1544.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596804;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_50";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image1content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image1content4";O:18:"Document_Tag_Image":14:{s:2:"id";i:47;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:47;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1739.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596798;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_47";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image1content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image2content1";O:18:"Document_Tag_Image":14:{s:2:"id";i:39;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:39;s:8:"parentId";i:37;s:8:"filename";s:12:"dsc04344.jpg";s:4:"path";s:16:"/examples/italy/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596768;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_39";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image2content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image2content2";O:18:"Document_Tag_Image":14:{s:2:"id";i:56;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:56;s:8:"parentId";i:54;s:8:"filename";s:12:"dsc03807.jpg";s:4:"path";s:20:"/examples/singapore/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368597117;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_56";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image2content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image2content3";O:18:"Document_Tag_Image":14:{s:2:"id";i:45;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:45;s:8:"parentId";i:42;s:8:"filename";s:12:"img_2240.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596793;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_45";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image2content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image2content4";O:18:"Document_Tag_Image":14:{s:2:"id";i:46;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:46;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1752.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596795;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_46";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image2content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image3content1";O:18:"Document_Tag_Image":14:{s:2:"id";i:40;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:40;s:8:"parentId";i:37;s:8:"filename";s:12:"dsc04462.jpg";s:4:"path";s:16:"/examples/italy/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596769;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_40";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image3content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image3content2";O:18:"Document_Tag_Image":14:{s:2:"id";i:57;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:57;s:8:"parentId";i:54;s:8:"filename";s:12:"dsc03835.jpg";s:4:"path";s:20:"/examples/singapore/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368597119;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_57";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image3content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image3content3";O:18:"Document_Tag_Image":14:{s:2:"id";i:44;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:44;s:8:"parentId";i:42;s:8:"filename";s:12:"img_2133.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596791;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_44";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image3content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"image3content4";O:18:"Document_Tag_Image":14:{s:2:"id";i:22;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:22;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0399.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532836;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_22";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image3content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link1content1";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:27:"/basic-examples/html5-video";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:7;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link1content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link1content2";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:24:"/basic-examples/glossary";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:20;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link1content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link1content3";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:28:"/basic-examples/content-page";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:24;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link1content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link1content4";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:20:"/basic-examples/news";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:27;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link1content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link2content1";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:26:"/basic-examples/pdf-viewer";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:18;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link2content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link2content2";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:26:"/basic-examples/thumbnails";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:21;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link2content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link2content3";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:32:"/basic-examples/editable-roundup";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:25;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link2content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link2content4";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:26:"/basic-examples/properties";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:28;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link2content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link3content1";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:25:"/basic-examples/galleries";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:19;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link3content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link3content2";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link3content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link3content3";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:20:"/basic-examples/form";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:26;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link3content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"link3content4";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:42:"/basic-examples/tag-and-snippet-management";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:29;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link3content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text1content1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text1content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text1content2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text1content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text1content3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text1content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text1content4";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text1content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text2content1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text2content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text2content2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text2content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text2content3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text2content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text2content4";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text2content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text3content1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text3content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text3content2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text3content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text3content3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text3content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:13:"text3content4";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text3content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_0content1";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_0content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_0content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_0content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_0content3";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_0content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_0content4";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_0content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_1content1";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_1content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_1content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_1content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_1content3";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_1content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_1content4";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_1content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_2content1";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_2content1";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_2content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_2content2";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_2content3";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_2content3";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}s:14:"type_2content4";O:19:"Document_Tag_Select":5:{s:4:"text";s:6:"direct";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_2content4";s:13:"\0*\0documentId";i:3;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:3;s:8:"parentId";i:40;s:3:"key";s:14:"basic-examples";s:4:"path";s:4:"/en/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1368523212;s:16:"modificationDate";i:1382956582;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384955895, 1387375095),
('pimcore_document_30', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:13:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:3:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}i:2;a:2:{s:3:"key";s:1:"3";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:764:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:625:"<p>Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent3";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:19:"Content Inheritance";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:14:"First Headline";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent2";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent2";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent3";O:18:"Document_Tag_Input":5:{s:4:"text";s:15:"Second Headline";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent3";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent2";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:53;s:8:"parentId";i:42;s:8:"filename";s:12:"img_0322.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596810;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:7264;s:11:"imageHeight";i:2386;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent2";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:35:"<p>This is the Master Document</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent2";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent3";s:13:"\0*\0documentId";i:30;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:30;s:8:"parentId";i:5;s:3:"key";s:19:"content-inheritance";s:4:"path";s:22:"/en/advanced-examples/";s:5:"index";i:2;s:9:"published";b:1;s:12:"creationDate";i:1368623726;s:16:"modificationDate";i:1382956042;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942512, 1387361712),
('pimcore_document_31', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:3:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:3:{i:0;a:2:{s:3:"key";s:1:"3";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}i:2;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:31;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:27:"Content Inheritance (Slave)";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:31;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:34:"<p>This is the Slave Document</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:31;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:2:"30";s:2:"id";i:31;s:8:"parentId";i:30;s:3:"key";s:19:"content-inheritance";s:4:"path";s:42:"/en/advanced-examples/content-inheritance/";s:5:"index";i:2;s:9:"published";b:1;s:12:"creationDate";i:1368623866;s:16:"modificationDate";i:1382956042;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942512, 1387361712),
('pimcore_document_32', 'O:13:"Document_Link":18:{s:8:"internal";N;s:12:"internalType";s:0:"";s:6:"object";N;s:6:"direct";s:23:"http://www.pimcore.org/";s:8:"linktype";s:6:"direct";s:4:"type";s:4:"link";s:4:"href";s:23:"http://www.pimcore.org/";s:2:"id";i:32;s:8:"parentId";i:3;s:3:"key";s:11:"pimcore.org";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:12;s:9:"published";b:1;s:12:"creationDate";i:1368626404;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956139, 1387375339),
('pimcore_document_33', 'O:17:"Document_Hardlink":15:{s:4:"type";s:8:"hardlink";s:8:"sourceId";i:3;s:20:"propertiesFromSource";b:1;s:16:"childsFromSource";b:1;s:2:"id";i:33;s:8:"parentId";i:34;s:3:"key";s:14:"basic-examples";s:4:"path";s:32:"/en/advanced-examples/hard-link/";s:5:"index";i:0;s:9:"published";b:1;s:12:"creationDate";i:1368626461;s:16:"modificationDate";i:1382956042;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942512, 1387361712),
('pimcore_document_34', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:7:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:34;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:586:"<p>This page has a hardlink as child (see navigation on the left).&nbsp;</p>\n\n<p>This hardlink points to "<a href="/basic-examples">Basic Examples</a>", so the whole content of /basic-examples is available in /advaned-examples/hardlink/basic-examples.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Want to know more about hardlinks?&nbsp;</p>\n\n<ul>\n	<li><a href="http://en.wikipedia.org/wiki/Hard_link">http://en.wikipedia.org/wiki/Hard_link</a></li>\n	<li>see also:&nbsp;<a href="http://en.wikipedia.org/wiki/Symbolic_link">http://en.wikipedia.org/wiki/Symbolic_link</a>&nbsp;</li>\n</ul>\n\n<p>&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:34;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:34;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:17:"Hard Link Example";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:34;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:34;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:34;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:34;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:34;s:8:"parentId";i:5;s:3:"key";s:9:"hard-link";s:4:"path";s:22:"/en/advanced-examples/";s:5:"index";i:4;s:9:"published";b:1;s:12:"creationDate";i:1368626655;s:16:"modificationDate";i:1382956042;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942512, 1387361712),
('pimcore_document_35', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:6:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:2:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:20:"image-hotspot-marker";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:20:"image-hotspot-marker";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:35;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:35;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:29:"Image with Hotspots & Markers";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:35;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:35;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent1";O:18:"Document_Tag_Image":14:{s:2:"id";i:53;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:53;s:8:"parentId";i:42;s:8:"filename";s:12:"img_0322.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596810;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:7264;s:11:"imageHeight";i:2386;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:4:{i:0;a:3:{s:3:"top";d:35.220125786163521;s:4:"left";d:82.098765432098759;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:27:"Table Mountain Peak Station";s:4:"type";s:9:"textfield";}}}i:1;a:3:{s:3:"top";d:67.924528301886795;s:4:"left";d:9.0534979423868318;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:16:"Victoria Harbour";s:4:"type";s:9:"textfield";}}}i:2;a:3:{s:3:"top";d:57.232704402515722;s:4:"left";d:45.267489711934154;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:12:"District Six";s:4:"type";s:9:"textfield";}}}i:3;a:3:{s:3:"top";d:45.911949685534594;s:4:"left";d:98.971193415637856;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:11:"Lion''s Head";s:4:"type";s:9:"textfield";}}}}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent1";s:13:"\0*\0documentId";i:35;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent2";O:18:"Document_Tag_Image":14:{s:2:"id";i:51;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:51;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1842.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596806;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:3:{i:0;a:5:{s:3:"top";d:0.54794520547945003;s:4:"left";d:20.370370370370001;s:5:"width";d:22.016460905350002;s:6:"height";d:21.917808219177999;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:3:"Ear";s:4:"type";s:9:"textfield";}}}i:1;a:5:{s:3:"top";d:59.178082191781002;s:4:"left";d:8.8477366255144005;s:5:"width";d:33.127572016461002;s:6:"height";d:40.273972602740002;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:5:"Claws";s:4:"type";s:9:"textfield";}}}i:2;a:5:{s:3:"top";d:25.205479452054998;s:4:"left";d:11.934156378600999;s:5:"width";d:16.460905349794;s:6:"height";d:18.356164383562;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:3:"Eye";s:4:"type";s:9:"textfield";}}}}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent2";s:13:"\0*\0documentId";i:35;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:35;s:8:"parentId";i:5;s:3:"key";s:31:"image-with-hotspots-and-markers";s:4:"path";s:22:"/en/advanced-examples/";s:5:"index";i:5;s:9:"published";b:1;s:12:"creationDate";i:1368626888;s:16:"modificationDate";i:1382956042;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942512, 1387361712),
('pimcore_document_36', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:8:"advanced";s:6:"action";s:6:"search";s:8:"template";s:0:"";s:8:"elements";a:19:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:159:"<p>&nbsp;</p>\n\n<p>The search is using the contents from&nbsp;pimcore.org.&nbsp;<strong>TIP</strong>: Search for "web".&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:6:"Search";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:36;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:36;s:8:"parentId";i:5;s:3:"key";s:6:"search";s:4:"path";s:22:"/en/advanced-examples/";s:5:"index";i:6;s:9:"published";b:1;s:12:"creationDate";i:1368629524;s:16:"modificationDate";i:1382956042;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942512, 1387361712);
INSERT INTO `cache` (`id`, `data`, `mtime`, `expire`) VALUES
('pimcore_document_37', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:8:"advanced";s:6:"action";s:12:"contact-form";s:8:"template";s:0:"";s:8:"elements";a:16:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:0:{}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:12:"Contact Form";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:37;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:37;s:8:"parentId";i:5;s:3:"key";s:12:"contact-form";s:4:"path";s:22:"/en/advanced-examples/";s:5:"index";i:7;s:9:"published";b:1;s:12:"creationDate";i:1368630444;s:16:"modificationDate";i:1382956042;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942512, 1387361712),
('pimcore_document_38', 'O:14:"Document_Email":23:{s:4:"type";s:5:"email";s:7:"subject";s:12:"Contact Form";s:4:"from";s:21:"webserver@pimcore.org";s:2:"to";s:26:"bernhard.rusch@elements.at";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"default";s:6:"action";s:7:"default";s:8:"template";s:19:"/advanced/email.php";s:8:"elements";a:14:{s:7:"content";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:300:"<p><strong>Gender</strong>: %Text(gender);&nbsp;</p>\n\n<p><strong>Firstname</strong>: %Text(firstname);<br />\n<strong>Lastname</strong>: %Text(lastname);<br />\n<strong>E-Mail</strong>: %Text(email);&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Message</strong>:<br />\n%Text(message);&nbsp;</p>\n\n<p>&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:24:"You''ve got a new E-Mail!";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:38;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";N;s:2:"id";i:38;s:8:"parentId";i:37;s:3:"key";s:5:"email";s:4:"path";s:35:"/en/advanced-examples/contact-form/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1368631410;s:16:"modificationDate";i:1382956042;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942511, 1387361711),
('pimcore_document_39', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:7:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:39;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:1471:"<div id="idTextPanel">\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.</p>\n\n<p>&nbsp;</p>\n\n<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\n\n<p>&nbsp;</p>\n\n<p>Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n\n<div>&nbsp;</div>\n</div>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:39;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:39;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:69:"It seems that the page you were trying to find isn''t around anymore. ";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:39;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:39;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:6:"Oh no!";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:39;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:39;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:39;s:8:"parentId";i:1;s:3:"key";s:5:"error";s:4:"path";s:1:"/";s:5:"index";i:3;s:9:"published";b:1;s:12:"creationDate";i:1369854325;s:16:"modificationDate";i:1369854422;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384955895, 1387375095),
('pimcore_document_4', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:30:{s:13:"blockcontent2";O:18:"Document_Tag_Block":6:{s:7:"indices";a:1:{i:0;s:1:"1";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"blockcontent2";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:15:"circle2content1";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"circle2content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:3:{i:0;a:2:{s:3:"key";s:1:"3";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"1";s:4:"type";s:19:"standard-teaser-row";}i:2;a:2:{s:3:"key";s:1:"2";s:4:"type";s:10:"featurette";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:1907:"<p>Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. <a href="/basic-examples">Etiam rhoncus</a>.</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</li>\n	<li>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.</li>\n	<li>Maecenas nec odio et ante tincidunt tempus.</li>\n	<li><a href="/basic-examples">Donec vitae sapien ut libero venenatis faucibus.</a></li>\n	<li>Nullam quis ante.</li>\n	<li>Etiam sit amet orci eget eros <a href="/advanced-examples">faucibus </a>tincidunt.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform <a href="/experiments">grammatica</a>, pronunciation e plu sommun paroles.</p>\n\n<p>&nbsp;</p>\n\n<ol>\n	<li>It va esser tam simplic quam Occidental in fact, it va esser Occidental.</li>\n	<li>A un Angleso it va semblar un simplificat Angles, quam un skeptic <a href="/introduction">Cambridge </a>amico dit me que Occidental es.</li>\n	<li>Li Europan lingues es membres del sam familie.</li>\n	<li>Lor separat existentie es un myth.</li>\n	<li>Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</li>\n	<li>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules.</li>\n</ol>\n\n<p>&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent3";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent22_1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:278:"<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent22_1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:70:"Overview of the project and how to get started with a simple template.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:12:"Introduction";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:17:"headline2content1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headline2content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:16:"Nullam quis ante";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent3";O:18:"Document_Tag_Input":5:{s:4:"text";s:47:"Maecenas tempus, tellus eget condimentum rhoncu";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent3";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent22_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:24:"Ullamcorper Scelerisque ";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent22_1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:15:"Getting started";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:14:"image2content1";O:18:"Document_Tag_Image":14:{s:2:"id";N;s:3:"alt";s:0:"";s:5:"image";N;s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"image2content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent1";O:18:"Document_Tag_Image":14:{s:2:"id";i:22;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:22;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0399.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532836;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_22";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent22_1";O:18:"Document_Tag_Image":14:{s:2:"id";i:24;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:24;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0410.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532838;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_24";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent22_1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:37:"imagePositioncontent_blockcontent22_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:37:"imagePositioncontent_blockcontent22_1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:99:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent3";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:13:"link2content1";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"link2content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:12:"linkcontent1";O:17:"Document_Tag_Link":5:{s:4:"data";a:14:{s:4:"text";s:12:"Etiam rhoncu";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"linkcontent1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent22_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent22_1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent22_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent22_1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:16:"teaser_0content1";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"15";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_0content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:16:"teaser_1content1";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"16";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_1content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:16:"teaser_2content1";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"17";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_2content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:13:"text2content1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"text2content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:12:"textcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:133:"<p>Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"textcontent1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent22_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent22_1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:14:"type_0content1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_0content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:14:"type_1content1";O:19:"Document_Tag_Select":5:{s:4:"text";s:7:"snippet";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_1content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}s:14:"type_2content1";O:19:"Document_Tag_Select":5:{s:4:"text";s:7:"snippet";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_2content1";s:13:"\0*\0documentId";i:4;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:4;s:8:"parentId";i:40;s:3:"key";s:12:"introduction";s:4:"path";s:4:"/en/";s:5:"index";i:0;s:9:"published";b:1;s:12:"creationDate";i:1368523285;s:16:"modificationDate";i:1382962961;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384955895, 1387375095),
('pimcore_document_40', 'O:13:"Document_Link":18:{s:8:"internal";i:1;s:12:"internalType";s:8:"document";s:6:"object";O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:6:"portal";s:8:"template";s:0:"";s:8:"elements";a:57:{s:14:"authorcontent3";O:18:"Document_Tag_Input":5:{s:4:"text";s:15:"Albert Einstein";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"authorcontent3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:13:"blockcontent1";O:18:"Document_Tag_Block":6:{s:7:"indices";a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"blockcontent1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:14:"carouselSlides";O:19:"Document_Tag_Select":5:{s:4:"text";s:1:"3";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"carouselSlides";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:11:"cHeadline_0";O:18:"Document_Tag_Input":5:{s:4:"text";s:23:"Ready to get impressed?";s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"cHeadline_0";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:11:"cHeadline_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:21:"It''ll blow your mind.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"cHeadline_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:11:"cHeadline_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:23:"Oh yeah, it''s that good";s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"cHeadline_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:8:"cImage_0";O:18:"Document_Tag_Image":14:{s:2:"id";i:4;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:4;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-01.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530684;s:16:"modificationDate";i:1370432846;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"cImage_0";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:8:"cImage_1";O:18:"Document_Tag_Image":14:{s:2:"id";i:5;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:5;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-02.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530764;s:16:"modificationDate";i:1370432868;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"cImage_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:8:"cImage_2";O:18:"Document_Tag_Image":14:{s:2:"id";i:6;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:6;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-03.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530764;s:16:"modificationDate";i:1370432860;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"cImage_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cLink_0";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cLink_0";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cLink_1";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cLink_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cLink_2";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:9:"Checkmate";s:4:"path";s:12:"/experiments";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:6;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cLink_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:2:{i:0;a:2:{s:3:"key";s:1:"2";s:4:"type";s:19:"standard-teaser-row";}i:1;a:2:{s:3:"key";s:1:"1";s:4:"type";s:10:"featurette";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:179:"<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:214:"<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:214:"<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cText_0";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:84:"Check out our examples and dive into the next generation of digital data management.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cText_0";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cText_1";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:17:"See for yourself.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cText_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"cText_2";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:16:"See for yourself";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cText_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:12:"Lorem ipsum.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:24:"Oh yeah, it''s that good.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_3";O:18:"Document_Tag_Input":5:{s:4:"text";s:21:"And lastly, this one.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent11_1";O:18:"Document_Tag_Image":14:{s:2:"id";i:55;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:55;s:8:"parentId";i:54;s:8:"filename";s:12:"dsc03778.jpg";s:4:"path";s:20:"/examples/singapore/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368597116;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent11_2";O:18:"Document_Tag_Image":14:{s:2:"id";i:18;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:18;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0117.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532831;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent11_3";O:18:"Document_Tag_Image":14:{s:2:"id";i:19;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:19;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0201.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532832;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:37:"imagePositioncontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:37:"imagePositioncontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:37:"imagePositioncontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:4:"left";s:10:"\0*\0options";N;s:7:"\0*\0name";s:37:"imagePositioncontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:37:"imagePositioncontent_blockcontent11_3";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:37:"imagePositioncontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:4:"left";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_3";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:13:"quotecontent3";O:18:"Document_Tag_Input":5:{s:4:"text";s:88:"We can''t solve problems by using the same kind of thinking we used when we created them.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"quotecontent3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:11:"Cum sociis.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:17:"See for yourself.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_3";O:18:"Document_Tag_Input":5:{s:4:"text";s:10:"Checkmate.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:16:"teaser_0content2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"15";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_0content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:16:"teaser_1content2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"16";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_1content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:16:"teaser_2content2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"17";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_2content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_1";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:5:"video";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_3";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_3";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:14:"type_0content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_0content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:14:"type_1content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_1content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:14:"type_2content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_2content2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}s:29:"videocontent_blockcontent11_2";O:18:"Document_Tag_Video":9:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:6:"poster";N;s:5:"title";s:0:"";s:11:"description";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"videocontent_blockcontent11_2";s:13:"\0*\0documentId";i:1;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:1;s:8:"parentId";i:0;s:3:"key";s:0:"";s:4:"path";s:1:"/";s:5:"index";i:999999;s:9:"published";b:1;s:12:"creationDate";i:1368522989;s:16:"modificationDate";i:1382962883;s:9:"userOwner";i:1;s:16:"userModification";i:2;s:6:"locked";N;}s:6:"direct";s:0:"";s:8:"linktype";s:8:"internal";s:4:"type";s:4:"link";s:4:"href";s:1:"/";s:2:"id";i:40;s:8:"parentId";i:1;s:3:"key";s:2:"en";s:4:"path";s:1:"/";s:5:"index";i:0;s:9:"published";b:1;s:12:"creationDate";i:1382956013;s:16:"modificationDate";i:1382956551;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384947183, 1387366383);
INSERT INTO `cache` (`id`, `data`, `mtime`, `expire`) VALUES
('pimcore_document_41', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:6:"portal";s:8:"template";s:0:"";s:8:"elements";a:57:{s:14:"authorcontent3";O:18:"Document_Tag_Input":5:{s:4:"text";s:15:"Albert Einstein";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"authorcontent3";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:13:"blockcontent1";O:18:"Document_Tag_Block":6:{s:7:"indices";a:1:{i:0;s:1:"1";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"blockcontent1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:14:"carouselSlides";O:19:"Document_Tag_Select":5:{s:4:"text";s:1:"3";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"carouselSlides";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:11:"cHeadline_0";O:18:"Document_Tag_Input":5:{s:4:"text";s:30:"Bereit beeindruckt zu werden? ";s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"cHeadline_0";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:11:"cHeadline_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:21:"Es wird dich umhauen!";s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"cHeadline_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:11:"cHeadline_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:29:"Oh ja, es ist wirklich so gut";s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"cHeadline_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:8:"cImage_0";O:18:"Document_Tag_Image":14:{s:2:"id";i:4;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:4;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-01.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530684;s:16:"modificationDate";i:1370432846;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"cImage_0";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:8:"cImage_1";O:18:"Document_Tag_Image":14:{s:2:"id";i:5;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:5;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-02.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530764;s:16:"modificationDate";i:1370432868;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"cImage_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:8:"cImage_2";O:18:"Document_Tag_Image":14:{s:2:"id";i:6;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:6;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-03.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530764;s:16:"modificationDate";i:1370432860;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"cImage_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:7:"cLink_0";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cLink_0";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:7:"cLink_1";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cLink_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:7:"cLink_2";O:17:"Document_Tag_Link":5:{s:4:"data";a:15:{s:4:"text";s:9:"Checkmate";s:4:"path";s:12:"/experiments";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:6;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cLink_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:2:{i:0;a:2:{s:3:"key";s:1:"2";s:4:"type";s:19:"standard-teaser-row";}i:1;a:2:{s:3:"key";s:1:"1";s:4:"type";s:10:"featurette";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:179:"<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_2";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:214:"<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:31:"contentcontent_blockcontent11_3";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:214:"<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"contentcontent_blockcontent11_3";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:7:"cText_0";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:96:"Teste unsere Beispiele und tauche ein in die nÃ¤chste Generation von digitalem Inhaltsmanagement";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cText_0";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:7:"cText_1";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:12:"Sieh'' selbst";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cText_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:7:"cText_2";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:13:"Sieh'' selbst!";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"cText_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:12:"Lorem ipsum.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:24:"Oh yeah, it''s that good.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:32:"headlinecontent_blockcontent11_3";O:18:"Document_Tag_Input":5:{s:4:"text";s:21:"And lastly, this one.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:32:"headlinecontent_blockcontent11_3";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent11_1";O:18:"Document_Tag_Image":14:{s:2:"id";i:55;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:55;s:8:"parentId";i:54;s:8:"filename";s:12:"dsc03778.jpg";s:4:"path";s:20:"/examples/singapore/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368597116;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2592;s:11:"imageHeight";i:1944;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent11_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent11_2";O:18:"Document_Tag_Image":14:{s:2:"id";i:18;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:18;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0117.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532831;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent11_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:29:"imagecontent_blockcontent11_3";O:18:"Document_Tag_Image":14:{s:2:"id";i:19;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":13:{s:4:"type";s:5:"image";s:2:"id";i:19;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0201.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532832;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"imagecontent_blockcontent11_3";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:37:"imagePositioncontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:37:"imagePositioncontent_blockcontent11_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:37:"imagePositioncontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:4:"left";s:10:"\0*\0options";N;s:7:"\0*\0name";s:37:"imagePositioncontent_blockcontent11_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:37:"imagePositioncontent_blockcontent11_3";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:37:"imagePositioncontent_blockcontent11_3";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:11:"multiselect";O:24:"Document_Tag_Multiselect":5:{s:6:"values";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"multiselect";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:10:"myCheckbox";O:21:"Document_Tag_Checkbox":5:{s:5:"value";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myCheckbox";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:6:"myDate";O:17:"Document_Tag_Date":5:{s:4:"date";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myDate";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:6:"myHref";O:17:"Document_Tag_Href":7:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myHref";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:12:"myImageBlock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:0:{}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"myImageBlock";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:7:"myInput";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"myInput";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:6:"myLink";O:17:"Document_Tag_Link":5:{s:4:"data";a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}s:10:"\0*\0options";N;s:7:"\0*\0name";s:6:"myLink";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:11:"myMultihref";O:22:"Document_Tag_Multihref":5:{s:10:"elementIds";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"myMultihref";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:8:"myNumber";O:20:"Document_Tag_Numeric":5:{s:6:"number";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"myNumber";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:8:"mySelect";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"mySelect";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:10:"myTextarea";O:21:"Document_Tag_Textarea":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:10:"myTextarea";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:9:"myWysiwyg";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"myWysiwyg";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:4:"left";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:33:"postitioncontent_blockcontent11_3";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:33:"postitioncontent_blockcontent11_3";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:13:"quotecontent3";O:18:"Document_Tag_Input":5:{s:4:"text";s:88:"We can''t solve problems by using the same kind of thinking we used when we created them.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"quotecontent3";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_1";O:18:"Document_Tag_Input":5:{s:4:"text";s:11:"Cum sociis.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_2";O:18:"Document_Tag_Input":5:{s:4:"text";s:17:"See for yourself.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:31:"sublinecontent_blockcontent11_3";O:18:"Document_Tag_Input":5:{s:4:"text";s:10:"Checkmate.";s:10:"\0*\0options";N;s:7:"\0*\0name";s:31:"sublinecontent_blockcontent11_3";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:16:"teaser_0content2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"47";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_0content2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:16:"teaser_1content2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"48";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_1content2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:16:"teaser_2content2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"49";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"teaser_2content2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_1";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_1";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_2";O:19:"Document_Tag_Select":5:{s:4:"text";s:5:"video";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:28:"typecontent_blockcontent11_3";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:28:"typecontent_blockcontent11_3";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:14:"type_0content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_0content2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:14:"type_1content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_1content2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:14:"type_2content2";O:19:"Document_Tag_Select":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"type_2content2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}s:29:"videocontent_blockcontent11_2";O:18:"Document_Tag_Video":9:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:6:"poster";N;s:5:"title";s:0:"";s:11:"description";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:29:"videocontent_blockcontent11_2";s:13:"\0*\0documentId";i:41;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:41;s:8:"parentId";i:1;s:3:"key";s:2:"de";s:4:"path";s:1:"/";s:5:"index";i:2;s:9:"published";b:1;s:12:"creationDate";i:1382956716;s:16:"modificationDate";i:1382962917;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942511, 1387361711),
('pimcore_document_5', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:8:"advanced";s:6:"action";s:5:"index";s:8:"template";s:0:"";s:8:"elements";a:7:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:5;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:104:"<p>The following list is generated automatically. See controller/action to see how it''s done.&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:5;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:5;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:17:"Advanced Examples";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:5;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:5;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:5;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:5;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:5;s:8:"parentId";i:40;s:3:"key";s:17:"advanced-examples";s:4:"path";s:4:"/en/";s:5:"index";i:2;s:9:"published";b:1;s:12:"creationDate";i:1368523389;s:16:"modificationDate";i:1382956042;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956141, 1387375341),
('pimcore_document_54', 'O:15:"Document_Folder":12:{s:4:"type";s:6:"folder";s:2:"id";i:54;s:8:"parentId";i:1;s:3:"key";s:6:"shared";s:4:"path";s:1:"/";s:5:"index";i:4;s:9:"published";b:1;s:12:"creationDate";i:1382959757;s:16:"modificationDate";i:1382959757;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942511, 1387361711),
('pimcore_document_55', 'O:15:"Document_Folder":12:{s:4:"type";s:6:"folder";s:2:"id";i:55;s:8:"parentId";i:54;s:3:"key";s:8:"includes";s:4:"path";s:8:"/shared/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1382959767;s:16:"modificationDate";i:1382959768;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942511, 1387361711),
('pimcore_document_56', 'O:16:"Document_Snippet":18:{s:4:"type";s:7:"snippet";s:6:"module";s:0:"";s:10:"controller";s:7:"default";s:6:"action";s:7:"default";s:8:"template";s:22:"/includes/language.php";s:8:"elements";a:3:{s:9:"languages";O:18:"Document_Tag_Block":6:{s:7:"indices";a:2:{i:0;s:1:"1";i:1;s:1:"2";}s:7:"current";i:0;s:10:"\0*\0options";a:1:{s:5:"limit";i:1000000;}s:7:"\0*\0name";s:9:"languages";s:13:"\0*\0documentId";i:56;s:12:"\0*\0inherited";b:0;}s:14:"linklanguages1";O:17:"Document_Tag_Link":5:{s:4:"data";a:14:{s:4:"text";s:7:"English";s:4:"path";s:3:"/en";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:2:"en";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:40;s:12:"internalType";s:8:"document";}s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:14:"linklanguages1";s:13:"\0*\0documentId";i:56;s:12:"\0*\0inherited";b:0;}s:14:"linklanguages2";O:17:"Document_Tag_Link":5:{s:4:"data";a:14:{s:4:"text";s:6:"German";s:4:"path";s:3:"/de";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:2:"de";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:41;s:12:"internalType";s:8:"document";}s:10:"\0*\0options";a:0:{}s:7:"\0*\0name";s:14:"linklanguages2";s:13:"\0*\0documentId";i:56;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:56;s:8:"parentId";i:55;s:3:"key";s:9:"languages";s:4:"path";s:17:"/shared/includes/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1382959774;s:16:"modificationDate";i:1382959822;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";s:4:"self";}', 1384942511, 1387361711),
('pimcore_document_57', 'O:16:"Document_Snippet":18:{s:4:"type";s:7:"snippet";s:6:"module";s:0:"";s:10:"controller";s:7:"default";s:6:"action";s:7:"default";s:8:"template";s:21:"/includes/sidebar.php";s:8:"elements";a:2:{s:7:"teasers";O:18:"Document_Tag_Block":6:{s:7:"indices";a:1:{i:0;s:1:"1";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"teasers";s:13:"\0*\0documentId";i:57;s:12:"\0*\0inherited";b:0;}s:14:"teaserteasers1";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"15";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"teaserteasers1";s:13:"\0*\0documentId";i:57;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:57;s:8:"parentId";i:40;s:3:"key";s:7:"sidebar";s:4:"path";s:4:"/en/";s:5:"index";i:4;s:9:"published";b:1;s:12:"creationDate";i:1382962826;s:16:"modificationDate";i:1382962845;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384955895, 1387375095),
('pimcore_document_58', 'O:16:"Document_Snippet":18:{s:4:"type";s:7:"snippet";s:6:"module";s:0:"";s:10:"controller";s:7:"default";s:6:"action";s:7:"default";s:8:"template";s:21:"/includes/sidebar.php";s:8:"elements";a:3:{s:7:"teasers";O:18:"Document_Tag_Block":6:{s:7:"indices";a:2:{i:0;s:1:"1";i:1;s:1:"2";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"teasers";s:13:"\0*\0documentId";i:58;s:12:"\0*\0inherited";b:0;}s:14:"teaserteasers1";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"47";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"teaserteasers1";s:13:"\0*\0documentId";i:58;s:12:"\0*\0inherited";b:0;}s:14:"teaserteasers2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"49";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"teaserteasers2";s:13:"\0*\0documentId";i:58;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:58;s:8:"parentId";i:41;s:3:"key";s:7:"sidebar";s:4:"path";s:4:"/de/";s:5:"index";i:3;s:9:"published";b:1;s:12:"creationDate";i:1382962891;s:16:"modificationDate";i:1382962906;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384955895, 1387375095),
('pimcore_document_59', 'O:16:"Document_Snippet":18:{s:4:"type";s:7:"snippet";s:6:"module";s:0:"";s:10:"controller";s:7:"default";s:6:"action";s:7:"default";s:8:"template";s:21:"/includes/sidebar.php";s:8:"elements";a:3:{s:7:"teasers";O:18:"Document_Tag_Block":6:{s:7:"indices";a:2:{i:0;s:1:"1";i:1;s:1:"2";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"teasers";s:13:"\0*\0documentId";i:59;s:12:"\0*\0inherited";b:0;}s:14:"teaserteasers1";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"15";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"teaserteasers1";s:13:"\0*\0documentId";i:59;s:12:"\0*\0inherited";b:0;}s:14:"teaserteasers2";O:20:"Document_Tag_Snippet":5:{s:2:"id";s:2:"16";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"teaserteasers2";s:13:"\0*\0documentId";i:59;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:59;s:8:"parentId";i:4;s:3:"key";s:7:"sidebar";s:4:"path";s:17:"/en/introduction/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1382962940;s:16:"modificationDate";i:1382962952;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384955895, 1387375095),
('pimcore_document_6', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:7:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:6;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:1422:"<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.</p>\n\n<p>&nbsp;</p>\n\n<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.</p>\n\n<p>&nbsp;</p>\n\n<p>Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:6;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:6;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:11:"Experiments";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:6;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:64:"This space is reserved for your individual experiments & tests. ";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:6;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:6;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:6;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:6;s:8:"parentId";i:40;s:3:"key";s:11:"experiments";s:4:"path";s:4:"/en/";s:5:"index";i:3;s:9:"published";b:1;s:12:"creationDate";i:1368523410;s:16:"modificationDate";i:1382956044;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956140, 1387375340),
('pimcore_document_60', 'O:13:"Document_Page":25:{s:5:"title";s:7:"product";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:8:"/product";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"product";s:6:"action";s:5:"index";s:8:"template";s:0:"";s:8:"elements";a:15:{s:14:"authorcontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:14:"authorcontent1";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:5:"image";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:12:"contentblock";O:18:"Document_Tag_Block":6:{s:7:"indices";a:1:{i:0;s:1:"1";}s:7:"current";i:0;s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"contentblock";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:20:"contentcontentblock1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:93:"<h2 style="font-style: italic; text-align: center;">Dit is een test om content te maken</h2>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:20:"contentcontentblock1";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:11:"headerImage";O:18:"Document_Tag_Image":14:{s:2:"id";i:39;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:39;s:8:"parentId";i:37;s:8:"filename";s:12:"dsc04344.jpg";s:4:"path";s:16:"/examples/italy/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596768;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_39";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:11:"headerImage";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:8:"Headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"Headline";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:17:"headlineSUPERTEST";O:18:"Document_Tag_Input":5:{s:4:"text";s:24:"UBER MEGA TEST TEST TEST";s:10:"\0*\0options";N;s:7:"\0*\0name";s:17:"headlineSUPERTEST";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:13:"imagecontent1";O:18:"Document_Tag_Image":14:{s:2:"id";i:4;s:3:"alt";s:0:"";s:5:"image";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:4;s:8:"parentId";i:3;s:8:"filename";s:12:"slide-01.jpg";s:4:"path";s:15:"/portal-sujets/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368530684;s:16:"modificationDate";i:1370432846;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:4:{s:10:"imageWidth";i:1500;s:11:"imageHeight";i:550;s:25:"imageDimensionsCalculated";b:1;s:10:"thumbnails";N;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:15:"pimcore_asset_4";}s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"imagecontent1";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:56:"<p style="text-align: center;">TEST TEST TEST&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:16:"product_headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:7:"Pimcore";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"product_headline";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:13:"quotecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:14:"TEST TEST TEST";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"quotecontent1";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}s:20:"sublinecontentblock1";O:18:"Document_Tag_Input":5:{s:4:"text";s:24:"Hier is de wysiwyg Title";s:10:"\0*\0options";N;s:7:"\0*\0name";s:20:"sublinecontentblock1";s:13:"\0*\0documentId";i:60;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";N;s:2:"id";i:60;s:8:"parentId";i:1;s:3:"key";s:7:"product";s:4:"path";s:1:"/";s:5:"index";i:5;s:9:"published";b:1;s:12:"creationDate";i:1384770487;s:16:"modificationDate";i:1384947681;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384947682, 1387366882),
('pimcore_document_7', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:7:"content";s:6:"action";s:7:"default";s:8:"template";s:0:"";s:8:"elements";a:7:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:5:"video";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:7;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:7;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:42:"HTML5 Video is just as simple as that ....";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:7;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:7;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:7;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:148:"<p>Just drop an video from your assets, the video will be automatically converted to the different HTML5 formats and to the correct size.&nbsp;</p>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:7;s:12:"\0*\0inherited";b:0;}s:13:"videocontent1";O:18:"Document_Tag_Video":9:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:6:"poster";N;s:5:"title";s:0:"";s:11:"description";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:13:"videocontent1";s:13:"\0*\0documentId";i:7;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:7;s:8:"parentId";i:3;s:3:"key";s:11:"html5-video";s:4:"path";s:19:"/en/basic-examples/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1368525394;s:16:"modificationDate";i:1382956040;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384956140, 1387375340),
('pimcore_document_9', 'O:13:"Document_Page":25:{s:5:"title";s:0:"";s:11:"description";s:0:"";s:8:"keywords";s:0:"";s:8:"metaData";a:0:{}s:4:"type";s:4:"page";s:9:"prettyUrl";s:0:"";s:3:"css";s:0:"";s:8:"personas";s:0:"";s:6:"module";s:0:"";s:10:"controller";s:8:"advanced";s:6:"action";s:11:"object-form";s:8:"template";s:0:"";s:8:"elements";a:8:{s:7:"content";O:22:"Document_Tag_Areablock":7:{s:7:"indices";a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}s:7:"current";i:0;s:12:"currentIndex";N;s:10:"\0*\0options";N;s:7:"\0*\0name";s:7:"content";s:13:"\0*\0documentId";i:9;s:12:"\0*\0inherited";b:0;}s:15:"contentcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:585:"<p>&nbsp;</p>\n\n<p>In this example we dynamically create objects out of the data submitted via the form.</p>\n\n<p>The you can use the same approach to create objects using a <strong>commandline script</strong>, or wherever you need it.</p>\n\n<p>After submitting the form you''ll find the data in "Objects" <em>/crm</em> and <em>/inquiries</em>.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img pimcore_disable_thumbnail="true" pimcore_id="65" pimcore_type="asset" src="/screenshots/objects-forms.png" style="width:308px" /></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<h2><strong>And here''s the form:&nbsp;</strong></h2>\n";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"contentcontent1";s:13:"\0*\0documentId";i:9;s:12:"\0*\0inherited";b:0;}s:12:"errorMessage";O:18:"Document_Tag_Input":5:{s:4:"text";s:52:"Please fill all fields and accept the terms of use. ";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"errorMessage";s:13:"\0*\0documentId";i:9;s:12:"\0*\0inherited";b:0;}s:15:"headDescription";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:15:"headDescription";s:13:"\0*\0documentId";i:9;s:12:"\0*\0inherited";b:0;}s:8:"headline";O:18:"Document_Tag_Input":5:{s:4:"text";s:37:"Creating Objects & Assets with a Form";s:10:"\0*\0options";N;s:7:"\0*\0name";s:8:"headline";s:13:"\0*\0documentId";i:9;s:12:"\0*\0inherited";b:0;}s:16:"headlinecontent1";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:16:"headlinecontent1";s:13:"\0*\0documentId";i:9;s:12:"\0*\0inherited";b:0;}s:9:"headTitle";O:18:"Document_Tag_Input":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:9:"headTitle";s:13:"\0*\0documentId";i:9;s:12:"\0*\0inherited";b:0;}s:12:"leadcontent1";O:20:"Document_Tag_Wysiwyg":5:{s:4:"text";s:0:"";s:10:"\0*\0options";N;s:7:"\0*\0name";s:12:"leadcontent1";s:13:"\0*\0documentId";i:9;s:12:"\0*\0inherited";b:0;}}s:23:"contentMasterDocumentId";s:1:"0";s:2:"id";i:9;s:8:"parentId";i:5;s:3:"key";s:28:"creating-objects-using-forms";s:4:"path";s:22:"/en/advanced-examples/";s:5:"index";i:1;s:9:"published";b:1;s:12:"creationDate";i:1368525933;s:16:"modificationDate";i:1382956042;s:9:"userOwner";i:2;s:16:"userModification";i:2;s:6:"locked";N;}', 1384942512, 1387361712),
('pimcore_document_properties_1', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:1;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:4:"Home";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:1;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:1;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:1;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:1;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956140, 1387375340),
('pimcore_document_properties_12', 'a:4:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:12;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:12;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:12;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:12;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}}', 1384956137, 1387375337),
('pimcore_document_properties_15', 'a:4:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:15;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:15;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:15;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:15;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}}', 1384956140, 1387375340),
('pimcore_document_properties_16', 'a:4:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:16;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:16;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:16;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:16;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}}', 1384956140, 1387375340),
('pimcore_document_properties_17', 'a:4:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:17;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:17;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:17;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:17;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}}', 1384956140, 1387375340),
('pimcore_document_properties_18', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:18;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:18;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:18;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:18;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:15:"Document Viewer";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:18;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956139, 1387375339),
('pimcore_document_properties_19', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:19;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:19;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:19;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:19;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:9:"Galleries";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:19;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956139, 1387375339),
('pimcore_document_properties_20', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:20;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:20;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:20;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:20;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:8:"Glossary";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:20;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956139, 1387375339),
('pimcore_document_properties_21', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:21;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:21;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:21;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:21;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:10:"Thumbnails";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:21;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956139, 1387375339);
INSERT INTO `cache` (`id`, `data`, `mtime`, `expire`) VALUES
('pimcore_document_properties_22', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:22;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:22;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:22;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:22;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:20:"Website Translations";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:22;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_document_properties_24', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:24;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:24;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:24;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:24;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:12:"Content Page";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:24;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956139, 1387375339),
('pimcore_document_properties_25', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:25;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:25;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:25;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:25;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:17:"Editable Round-Up";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:25;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_document_properties_26', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:26;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:26;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:26;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:26;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:11:"Simple Form";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:26;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_document_properties_27', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:27;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:27;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:27;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:27;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:4:"News";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:27;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_document_properties_28', 'a:7:{s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:28;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:28;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:28;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:28;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:10:"Properties";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:28;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}s:11:"headerColor";O:8:"Property":9:{s:4:"name";s:11:"headerColor";s:4:"data";s:4:"blue";s:4:"type";s:6:"select";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:28;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";s:17:"orange,blue,green";}s:11:"leftNavHide";O:8:"Property":9:{s:4:"name";s:11:"leftNavHide";s:4:"data";b:1;s:4:"type";s:4:"bool";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:28;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";s:0:"";}}', 1384956138, 1387375338),
('pimcore_document_properties_29', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:29;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:29;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:29;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:29;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:24:"Tag & Snippet Management";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:29;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_document_properties_3', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:3;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:3;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:3;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:3;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:14:"Basic Examples";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:3;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956140, 1387375340),
('pimcore_document_properties_30', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:30;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:30;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:30;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"5";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:30;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:19:"Content Inheritance";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:30;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_document_properties_31', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:31;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:31;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:31;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"5";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:31;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:14:"Slave Document";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:31;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_document_properties_32', 'a:6:{s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:32;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:32;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:32;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:32;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:17:"navigation_target";O:8:"Property":9:{s:4:"name";s:17:"navigation_target";s:4:"data";s:6:"_blank";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:32;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:13:"External Link";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:32;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_document_properties_33', 'a:4:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:33;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:33;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:33;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"5";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:33;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";s:0:"";}}', 1384956137, 1387375337),
('pimcore_document_properties_34', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:34;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:34;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:34;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"5";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:34;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:9:"Hard Link";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:34;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_document_properties_35', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:35;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:35;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:35;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"5";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:35;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:19:"Image with Hotspots";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:35;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956137, 1387375337),
('pimcore_document_properties_36', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:36;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:36;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:36;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"5";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:36;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:6:"Search";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:36;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956137, 1387375337),
('pimcore_document_properties_37', 'a:6:{s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:37;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:37;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:37;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"5";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:37;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:12:"Contact Form";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:37;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}s:5:"email";O:8:"Property":9:{s:4:"name";s:5:"email";s:4:"data";s:2:"38";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:37;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956137, 1387375337),
('pimcore_document_properties_4', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"59";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:4;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:4;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:4;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:4;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:12:"Introduction";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:4;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956140, 1387375340),
('pimcore_document_properties_40', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:40;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:40;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:40;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:40;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:4:"Home";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:40;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384958336, 1387377536),
('pimcore_document_properties_5', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:5;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:5;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:5;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"5";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:5;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:17:"Advanced Examples";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:5;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_document_properties_56', 'a:4:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:56;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:56;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:56;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:56;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}}', 1384956137, 1387375337),
('pimcore_document_properties_57', 'a:4:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:57;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:57;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:57;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:57;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}}', 1384956141, 1387375341),
('pimcore_document_properties_6', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:6;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:6;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:6;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:6;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:11:"Experiments";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:6;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956137, 1387375337),
('pimcore_document_properties_60', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:60;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:60;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:60;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:60;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:7:"product";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:60;s:11:"inheritable";b:1;s:9:"inherited";b:0;s:6:"config";N;}}', 1384947685, 1387366885),
('pimcore_document_properties_7', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:7;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:7;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:7;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"3";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:7;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:11:"HTML5 Video";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:7;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956139, 1387375339),
('pimcore_document_properties_9', 'a:5:{s:7:"sidebar";O:8:"Property":9:{s:4:"name";s:7:"sidebar";s:4:"data";s:2:"57";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:9;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:8:"language";O:8:"Property":9:{s:4:"name";s:8:"language";s:4:"data";s:2:"en";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:9;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"mainNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"mainNavStartNode";s:4:"data";s:2:"40";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:9;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";N;}s:16:"leftNavStartNode";O:8:"Property":9:{s:4:"name";s:16:"leftNavStartNode";s:4:"data";s:1:"5";s:4:"type";s:8:"document";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:9;s:11:"inheritable";b:1;s:9:"inherited";b:1;s:6:"config";s:0:"";}s:15:"navigation_name";O:8:"Property":9:{s:4:"name";s:15:"navigation_name";s:4:"data";s:28:"Creating Objects with a Form";s:4:"type";s:4:"text";s:5:"ctype";s:8:"document";s:5:"cpath";N;s:3:"cid";i:9;s:11:"inheritable";b:0;s:9:"inherited";b:0;s:6:"config";N;}}', 1384956138, 1387375338),
('pimcore_glossary_en_', 'a:7:{i:0;a:4:{s:7:"replace";s:80:"<a class="pimcore_glossary" href="/en/basic-examples/html5-video">occidental</a>";s:6:"search";s:26:"/(?<!\\w)occidental(?!\\w)/i";s:8:"linkType";s:8:"internal";s:10:"linkTarget";i:7;}i:1;a:4:{s:7:"replace";s:73:"<acronym class="pimcore_glossary" title="grammatica">grammatica</acronym>";s:6:"search";s:26:"/(?<!\\w)grammatica(?!\\w)/i";s:8:"linkType";s:0:"";s:10:"linkTarget";s:0:"";}i:2;a:4:{s:7:"replace";s:76:"<a class="pimcore_glossary" href="/en/basic-examples/glossary">vocabular</a>";s:6:"search";s:25:"/(?<!\\w)vocabular(?!\\w)/i";s:8:"linkType";s:8:"internal";s:10:"linkTarget";i:20;}i:3;a:4:{s:7:"replace";s:70:"<a class="pimcore_glossary" href="/en/advanced-examples">resultant</a>";s:6:"search";s:25:"/(?<!\\w)resultant(?!\\w)/i";s:8:"linkType";s:8:"internal";s:10:"linkTarget";i:5;}i:4;a:4:{s:7:"replace";s:63:"<abbr class="pimcore_glossary" title="coalesce">coalesce</abbr>";s:6:"search";s:24:"/(?<!\\w)coalesce(?!\\w)/i";s:8:"linkType";s:0:"";s:10:"linkTarget";s:0:"";}i:5;a:4:{s:7:"replace";s:76:"<a class="pimcore_glossary" href="/en/basic-examples/pdf-viewer">familie</a>";s:6:"search";s:23:"/(?<!\\w)familie(?!\\w)/i";s:8:"linkType";s:8:"internal";s:10:"linkTarget";i:18;}i:6;a:4:{s:7:"replace";s:75:"<a class="pimcore_glossary" href="/en/basic-examples/galleries">omnicos</a>";s:6:"search";s:23:"/(?<!\\w)omnicos(?!\\w)/i";s:8:"linkType";s:8:"internal";s:10:"linkTarget";i:19;}}', 1384956141, 1387375341),
('pimcore_object_1', 'O:13:"Object_Folder":12:{s:6:"o_type";s:6:"folder";s:4:"o_id";i:1;s:10:"o_parentId";i:0;s:5:"o_key";s:0:"";s:6:"o_path";s:1:"/";s:7:"o_index";i:999999;s:14:"o_creationDate";i:1368522989;s:18:"o_modificationDate";i:1368522989;s:11:"o_userOwner";i:1;s:18:"o_userModification";i:1;s:8:"o_locked";N;s:19:"o_elementAdminStyle";N;}', 1384947185, 1387366385),
('pimcore_object_10', 'O:13:"Object_Folder":12:{s:6:"o_type";s:6:"folder";s:4:"o_id";i:10;s:10:"o_parentId";i:1;s:5:"o_key";s:3:"crm";s:6:"o_path";s:1:"/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1368620607;s:18:"o_modificationDate";i:1368620607;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";O:18:"Element_AdminStyle":3:{s:18:"\0*\0elementCssClass";N;s:14:"\0*\0elementIcon";N;s:19:"\0*\0elementIconClass";s:19:"pimcore_icon_folder";}}', 1384955895, 1387375095),
('pimcore_object_11', 'O:13:"Object_Folder":12:{s:6:"o_type";s:6:"folder";s:4:"o_id";i:11;s:10:"o_parentId";i:1;s:5:"o_key";s:9:"inquiries";s:6:"o_path";s:1:"/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1368620624;s:18:"o_modificationDate";i:1368620624;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";O:18:"Element_AdminStyle":3:{s:18:"\0*\0elementCssClass";N;s:14:"\0*\0elementIcon";N;s:19:"\0*\0elementIconClass";s:19:"pimcore_icon_folder";}}', 1384955895, 1387375095),
('pimcore_object_2', 'O:13:"Object_Folder":12:{s:6:"o_type";s:6:"folder";s:4:"o_id";i:2;s:10:"o_parentId";i:1;s:5:"o_key";s:4:"news";s:6:"o_path";s:1:"/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1368613451;s:18:"o_modificationDate";i:1368613451;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";N;}', 1384955896, 1387375096),
('pimcore_object_3', 'O:11:"Object_News":21:{s:9:"o_classId";i:2;s:11:"o_className";s:4:"news";s:15:"localizedfields";O:21:"Object_Localizedfield":1:{s:5:"items";a:2:{s:2:"de";a:3:{s:5:"title";s:36:"Er hÃ¶rte leise Schritte hinter sich";s:9:"shortText";s:155:"Das bedeutete nichts Gutes. Wer wÃ¼rde ihm schon folgen, spÃ¤t in der Nacht und dazu noch in dieser engen Gasse mitten im Ã¼bel beleumundeten Hafenviertel?";s:4:"text";s:931:"<p>Oder geh&ouml;rten die Schritte hinter ihm zu einem der unz&auml;hligen Gesetzesh&uuml;ter dieser Stadt, und die st&auml;hlerne Acht um seine Handgelenke w&uuml;rde gleich zuschnappen? Er konnte die Aufforderung stehen zu bleiben schon h&ouml;ren. Gehetzt sah er sich um. Pl&ouml;tzlich erblickte er den schmalen Durchgang. Blitzartig drehte er sich nach rechts und verschwand zwischen den beiden Geb&auml;uden. Beinahe w&auml;re er dabei &uuml;ber den umgest&uuml;rzten M&uuml;lleimer gefallen, der mitten im Weg lag.</p>\n\n<p>Er versuchte, sich in der Dunkelheit seinen Weg zu ertasten und erstarrte: Anscheinend gab es keinen anderen Ausweg aus diesem kleinen Hof als den Durchgang, durch den er gekommen war. Die Schritte wurden lauter und lauter, er sah eine dunkle Gestalt um die Ecke biegen. Fieberhaft irrten seine Augen durch die n&auml;chtliche Dunkelheit und suchten einen Ausweg. War jetzt wirklich alles vorbei.</p>\n";}s:2:"en";a:3:{s:5:"title";s:26:"Lorem ipsum dolor sit amet";s:9:"shortText";s:141:"Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.";s:4:"text";s:824:"<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam&nbsp;<a href="/en/basic-examples/content-page" pimcore_id="24" pimcore_type="document">ultricies&nbsp;</a>nisi vel augue.</p>\n\n<p>Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget&nbsp;<a href="/en/basic-examples/galleries" pimcore_id="19" pimcore_type="document">condimentum&nbsp;rhoncus</a>, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\n";}}}s:4:"date";O:12:"Pimcore_Date":8:{s:18:"\0Zend_Date\0_locale";s:2:"en";s:22:"\0Zend_Date\0_fractional";i:0;s:21:"\0Zend_Date\0_precision";i:3;s:36:"\0Zend_Date_DateObject\0_unixTimestamp";s:10:"1374147900";s:31:"\0Zend_Date_DateObject\0_timezone";s:16:"Europe/Amsterdam";s:29:"\0Zend_Date_DateObject\0_offset";i:-3600;s:34:"\0Zend_Date_DateObject\0_syncronised";i:0;s:7:"\0*\0_dst";b:1;}s:7:"image_1";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:49;s:8:"parentId";i:42;s:8:"filename";s:12:"img_2155.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596801;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_49";}s:7:"image_2";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:43;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1414.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596789;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_43";}s:7:"image_3";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:52;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1920.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596808;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_52";}s:16:"lazyLoadedFields";N;s:11:"o_published";b:1;s:4:"o_id";i:3;s:10:"o_parentId";i:2;s:6:"o_type";s:6:"object";s:5:"o_key";s:11:"lorem-ipsum";s:6:"o_path";s:6:"/news/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1368613483;s:18:"o_modificationDate";i:1382958769;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";N;}', 1385022596, 1387441796),
('pimcore_object_32', 'O:11:"Object_News":21:{s:9:"o_classId";i:2;s:11:"o_className";s:4:"news";s:15:"localizedfields";O:21:"Object_Localizedfield":1:{s:5:"items";a:2:{s:2:"de";a:3:{s:5:"title";N;s:9:"shortText";N;s:4:"text";N;}s:2:"en";a:3:{s:5:"title";s:16:"mijn test object";s:9:"shortText";s:87:"dit is een test voor een object. Eens kijken of ik pimcore nu foutloos aan de praat heb";s:4:"text";s:40:"<p>blablablablabalbalblalalbalalbla</p>\n";}}}s:4:"date";O:12:"Pimcore_Date":8:{s:18:"\0Zend_Date\0_locale";s:2:"en";s:22:"\0Zend_Date\0_fractional";i:0;s:21:"\0Zend_Date\0_precision";i:3;s:36:"\0Zend_Date_DateObject\0_unixTimestamp";s:10:"1384300800";s:31:"\0Zend_Date_DateObject\0_timezone";s:16:"Europe/Amsterdam";s:29:"\0Zend_Date_DateObject\0_offset";i:-3600;s:34:"\0Zend_Date_DateObject\0_syncronised";i:0;s:7:"\0*\0_dst";b:1;}s:7:"image_1";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:35;s:8:"parentId";i:34;s:8:"filename";s:12:"glossary.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368560809;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:908;s:11:"imageHeight";i:267;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_35";}s:7:"image_2";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:59;s:8:"parentId";i:34;s:8:"filename";s:27:"thumbnail-configuration.png";s:4:"path";s:13:"/screenshots/";s:8:"mimetype";s:9:"image/png";s:12:"creationDate";i:1368606782;s:16:"modificationDate";i:1368632470;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:809;s:11:"imageHeight";i:865;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_59";}s:7:"image_3";N;s:16:"lazyLoadedFields";N;s:11:"o_published";b:1;s:4:"o_id";i:32;s:10:"o_parentId";i:2;s:6:"o_type";s:6:"object";s:5:"o_key";s:16:"mijn-test-object";s:6:"o_path";s:6:"/news/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1384358102;s:18:"o_modificationDate";i:1384358439;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";N;}', 1385022596, 1387441796),
('pimcore_object_33', 'O:13:"Object_Folder":12:{s:6:"o_type";s:6:"folder";s:4:"o_id";i:33;s:10:"o_parentId";i:1;s:5:"o_key";s:7:"product";s:6:"o_path";s:1:"/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1384517416;s:18:"o_modificationDate";i:1384518377;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";N;}', 1384947184, 1387366384),
('pimcore_object_35', 'O:14:"Object_Product":19:{s:9:"o_classId";i:5;s:11:"o_className";s:7:"product";s:10:"frontimage";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:51;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1842.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596806;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_51";}s:7:"Created";O:12:"Pimcore_Date":8:{s:18:"\0Zend_Date\0_locale";s:2:"en";s:22:"\0Zend_Date\0_fractional";i:0;s:21:"\0Zend_Date\0_precision";i:3;s:36:"\0Zend_Date_DateObject\0_unixTimestamp";s:10:"1384474500";s:31:"\0Zend_Date_DateObject\0_timezone";s:16:"Europe/Amsterdam";s:29:"\0Zend_Date_DateObject\0_offset";i:-3600;s:34:"\0Zend_Date_DateObject\0_syncronised";i:0;s:7:"\0*\0_dst";b:1;}s:3:"SKU";d:17;s:16:"lazyLoadedFields";N;s:11:"o_published";b:1;s:4:"o_id";i:35;s:10:"o_parentId";i:33;s:6:"o_type";s:6:"object";s:5:"o_key";s:8:"testcat1";s:6:"o_path";s:9:"/product/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1384523107;s:18:"o_modificationDate";i:1384867550;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";b:0;s:19:"o_elementAdminStyle";N;}', 1384957798, 1387376998),
('pimcore_object_36', 'O:14:"Object_Product":19:{s:9:"o_classId";i:5;s:11:"o_className";s:7:"product";s:10:"frontimage";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:43;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1414.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596789;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_43";}s:7:"Created";N;s:3:"SKU";N;s:16:"lazyLoadedFields";N;s:11:"o_published";b:1;s:4:"o_id";i:36;s:10:"o_parentId";i:33;s:6:"o_type";s:6:"object";s:5:"o_key";s:12:"testpinguin1";s:6:"o_path";s:9:"/product/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1384869915;s:18:"o_modificationDate";i:1384869938;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";N;}', 1384958116, 1387377316),
('pimcore_object_4', 'O:11:"Object_News":21:{s:9:"o_classId";i:2;s:11:"o_className";s:4:"news";s:15:"localizedfields";O:21:"Object_Localizedfield":1:{s:5:"items";a:2:{s:2:"de";a:3:{s:5:"title";s:29:"Li Europan lingues es membres";s:9:"shortText";s:102:"Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.";s:4:"text";s:711:"<p>Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</p>\n\n<p>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n";}s:2:"en";a:3:{s:5:"title";s:13:"In enim justo";s:9:"shortText";s:210:"Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.";s:4:"text";s:691:"<p>Nam eget dui. Etiam rhoncus.&nbsp;<a href="/en/basic-examples" pimcore_id="3" pimcore_type="document">Maecenas&nbsp;tempus</a>, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. <a href="/en/basic-examples/news" pimcore_id="27" pimcore_type="document">Donec vitae sapien</a> ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed&nbsp;fringilla&nbsp;mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n";}}}s:4:"date";O:12:"Pimcore_Date":8:{s:18:"\0Zend_Date\0_locale";s:2:"en";s:22:"\0Zend_Date\0_fractional";i:0;s:21:"\0Zend_Date\0_precision";i:3;s:36:"\0Zend_Date_DateObject\0_unixTimestamp";s:10:"1369761300";s:31:"\0Zend_Date_DateObject\0_timezone";s:16:"Europe/Amsterdam";s:29:"\0Zend_Date_DateObject\0_offset";i:-3600;s:34:"\0Zend_Date_DateObject\0_syncronised";i:0;s:7:"\0*\0_dst";b:1;}s:7:"image_1";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:51;s:8:"parentId";i:42;s:8:"filename";s:12:"img_1842.jpg";s:4:"path";s:23:"/examples/south-africa/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368596806;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:4000;s:11:"imageHeight";i:3000;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_51";}s:7:"image_2";N;s:7:"image_3";N;s:16:"lazyLoadedFields";N;s:11:"o_published";b:1;s:4:"o_id";i:4;s:10:"o_parentId";i:2;s:6:"o_type";s:6:"object";s:5:"o_key";s:13:"in-enim-justo";s:6:"o_path";s:6:"/news/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1368613645;s:18:"o_modificationDate";i:1382958711;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";N;}', 1385022596, 1387441796);
INSERT INTO `cache` (`id`, `data`, `mtime`, `expire`) VALUES
('pimcore_object_5', 'O:11:"Object_News":21:{s:9:"o_classId";i:2;s:11:"o_className";s:4:"news";s:15:"localizedfields";O:21:"Object_Localizedfield":1:{s:5:"items";a:2:{s:2:"de";a:3:{s:5:"title";s:40:"Zwei flinke Boxer jagen die quirlige Eva";s:9:"shortText";s:165:"Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. ZwÃ¶lf BoxkÃ¤mpfer jagen Viktor quer Ã¼ber den groÃŸen Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim.";s:4:"text";s:1169:"<p>Victor jagt zw&ouml;lf Boxk&auml;mpfer quer &uuml;ber den gro&szlig;en Sylter Deich. Falsches &Uuml;ben von Xylophonmusik qu&auml;lt jeden gr&ouml;&szlig;eren Zwerg. Heiz&ouml;lr&uuml;cksto&szlig;abd&auml;mpfung. Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. Zw&ouml;lf Boxk&auml;mpfer jagen Viktor quer &uuml;ber den gro&szlig;en Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim. Sylvia wagt quick den Jux bei Pforzheim. Polyfon zwitschernd a&szlig;en M&auml;xchens V&ouml;gel R&uuml;ben, Joghurt und Quark. &quot;Fix, Schwyz!&quot; qu&auml;kt J&uuml;rgen bl&ouml;d vom Pa&szlig;.</p>\n\n<p>Victor jagt zw&ouml;lf Boxk&auml;mpfer quer &uuml;ber den gro&szlig;en Sylter Deich. Falsches &Uuml;ben von Xylophonmusik qu&auml;lt jeden gr&ouml;&szlig;eren Zwerg. Heiz&ouml;lr&uuml;cksto&szlig;abd&auml;mpfung.Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. Zw&ouml;lf Boxk&auml;mpfer jagen Viktor quer &uuml;ber den gro&szlig;en Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim. Sylvia wagt quick den Jux</p>\n";}s:2:"en";a:3:{s:5:"title";s:12:"Nam eget dui";s:9:"shortText";s:129:"Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.";s:4:"text";s:950:"<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n";}}}s:4:"date";O:12:"Pimcore_Date":8:{s:18:"\0Zend_Date\0_locale";s:2:"en";s:22:"\0Zend_Date\0_fractional";i:0;s:21:"\0Zend_Date\0_precision";i:3;s:36:"\0Zend_Date_DateObject\0_unixTimestamp";s:10:"1370037600";s:31:"\0Zend_Date_DateObject\0_timezone";s:16:"Europe/Amsterdam";s:29:"\0Zend_Date_DateObject\0_offset";i:-3600;s:34:"\0Zend_Date_DateObject\0_syncronised";i:0;s:7:"\0*\0_dst";b:1;}s:7:"image_1";N;s:7:"image_2";N;s:7:"image_3";N;s:16:"lazyLoadedFields";N;s:11:"o_published";b:1;s:4:"o_id";i:5;s:10:"o_parentId";i:2;s:6:"o_type";s:6:"object";s:5:"o_key";s:12:"nam-eget-dui";s:6:"o_path";s:6:"/news/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1368613700;s:18:"o_modificationDate";i:1382958801;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";N;}', 1385022596, 1387441796),
('pimcore_object_6', 'O:11:"Object_News":21:{s:9:"o_classId";i:2;s:11:"o_className";s:4:"news";s:15:"localizedfields";O:21:"Object_Localizedfield":1:{s:5:"items";a:2:{s:2:"de";a:3:{s:5:"title";s:29:"Li Europan lingues es membres";s:9:"shortText";s:102:"Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.";s:4:"text";s:711:"<p>Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</p>\n\n<p>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n";}s:2:"en";a:3:{s:5:"title";s:13:"In enim justo";s:9:"shortText";s:210:"Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.";s:4:"text";s:0:"";}}}s:4:"date";O:12:"Pimcore_Date":8:{s:18:"\0Zend_Date\0_locale";s:2:"en";s:22:"\0Zend_Date\0_fractional";i:0;s:21:"\0Zend_Date\0_precision";i:3;s:36:"\0Zend_Date_DateObject\0_unixTimestamp";s:10:"1354558500";s:31:"\0Zend_Date_DateObject\0_timezone";s:16:"Europe/Amsterdam";s:29:"\0Zend_Date_DateObject\0_offset";i:-3600;s:34:"\0Zend_Date_DateObject\0_syncronised";i:0;s:7:"\0*\0_dst";b:1;}s:7:"image_1";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:25;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0160.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532839;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_25";}s:7:"image_2";N;s:7:"image_3";N;s:16:"lazyLoadedFields";N;s:11:"o_published";b:1;s:4:"o_id";i:6;s:10:"o_parentId";i:2;s:6:"o_type";s:6:"object";s:5:"o_key";s:15:"in-enim-justo_2";s:6:"o_path";s:6:"/news/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1368615188;s:18:"o_modificationDate";i:1382958710;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";b:0;s:19:"o_elementAdminStyle";N;}', 1384958336, 1387377536),
('pimcore_object_7', 'O:11:"Object_News":21:{s:9:"o_classId";i:2;s:11:"o_className";s:4:"news";s:15:"localizedfields";O:21:"Object_Localizedfield":1:{s:5:"items";a:2:{s:2:"de";a:3:{s:5:"title";s:29:"Li Europan lingues es membres";s:9:"shortText";s:102:"Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.";s:4:"text";s:711:"<p>Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</p>\n\n<p>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n";}s:2:"en";a:3:{s:5:"title";s:13:"In enim justo";s:9:"shortText";s:210:"Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.";s:4:"text";s:0:"";}}}s:4:"date";O:12:"Pimcore_Date":8:{s:18:"\0Zend_Date\0_locale";s:2:"en";s:22:"\0Zend_Date\0_fractional";i:0;s:21:"\0Zend_Date\0_precision";i:3;s:36:"\0Zend_Date_DateObject\0_unixTimestamp";s:10:"1360606500";s:31:"\0Zend_Date_DateObject\0_timezone";s:16:"Europe/Amsterdam";s:29:"\0Zend_Date_DateObject\0_offset";i:-3600;s:34:"\0Zend_Date_DateObject\0_syncronised";i:0;s:7:"\0*\0_dst";b:1;}s:7:"image_1";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:18;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0117.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532831;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_18";}s:7:"image_2";N;s:7:"image_3";N;s:16:"lazyLoadedFields";N;s:11:"o_published";b:1;s:4:"o_id";i:7;s:10:"o_parentId";i:2;s:6:"o_type";s:6:"object";s:5:"o_key";s:15:"in-enim-justo_3";s:6:"o_path";s:6:"/news/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1368615191;s:18:"o_modificationDate";i:1382958709;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";N;}', 1385022596, 1387441796),
('pimcore_object_8', 'O:11:"Object_News":21:{s:9:"o_classId";i:2;s:11:"o_className";s:4:"news";s:15:"localizedfields";O:21:"Object_Localizedfield":1:{s:5:"items";a:2:{s:2:"de";a:3:{s:5:"title";s:29:"Li Europan lingues es membres";s:9:"shortText";s:102:"Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.";s:4:"text";s:711:"<p>Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</p>\n\n<p>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n";}s:2:"en";a:3:{s:5:"title";s:13:"In enim justo";s:9:"shortText";s:210:"Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.";s:4:"text";s:0:"";}}}s:4:"date";O:12:"Pimcore_Date":8:{s:18:"\0Zend_Date\0_locale";s:2:"en";s:22:"\0Zend_Date\0_fractional";i:0;s:21:"\0Zend_Date\0_precision";i:3;s:36:"\0Zend_Date_DateObject\0_unixTimestamp";s:10:"1360001700";s:31:"\0Zend_Date_DateObject\0_timezone";s:16:"Europe/Amsterdam";s:29:"\0Zend_Date_DateObject\0_offset";i:-3600;s:34:"\0Zend_Date_DateObject\0_syncronised";i:0;s:7:"\0*\0_dst";b:1;}s:7:"image_1";O:11:"Asset_Image":14:{s:4:"type";s:5:"image";s:2:"id";i:20;s:8:"parentId";i:17;s:8:"filename";s:12:"img_0089.jpg";s:4:"path";s:17:"/examples/panama/";s:8:"mimetype";s:10:"image/jpeg";s:12:"creationDate";i:1368532833;s:16:"modificationDate";i:1368632468;s:9:"userOwner";s:1:"2";s:16:"userModification";s:1:"2";s:6:"locked";N;s:14:"customSettings";a:3:{s:10:"imageWidth";i:2000;s:11:"imageHeight";i:1500;s:25:"imageDimensionsCalculated";b:1;}s:15:"\0*\0_dataChanged";b:0;s:24:"____pimcore_cache_item__";s:16:"pimcore_asset_20";}s:7:"image_2";N;s:7:"image_3";N;s:16:"lazyLoadedFields";N;s:11:"o_published";b:1;s:4:"o_id";i:8;s:10:"o_parentId";i:2;s:6:"o_type";s:6:"object";s:5:"o_key";s:15:"in-enim-justo_4";s:6:"o_path";s:6:"/news/";s:7:"o_index";i:0;s:14:"o_creationDate";i:1368615194;s:18:"o_modificationDate";i:1382958708;s:11:"o_userOwner";i:2;s:18:"o_userModification";i:2;s:8:"o_locked";N;s:19:"o_elementAdminStyle";N;}', 1385022596, 1387441796),
('pimcore_object_properties_33', 'a:0:{}', 1384956519, 1387375719),
('pimcore_object_properties_35', 'a:0:{}', 1384957823, 1387377023),
('pimcore_object_properties_36', 'a:0:{}', 1384964335, 1387383535),
('pimcore_outputfilter_tagmngt', 'a:1:{i:0;O:15:"Tool_Tag_Config":8:{s:5:"items";a:1:{i:0;a:3:{s:4:"code";s:377:"<iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fpimcore&amp;width=500&amp;height=590&amp;show_faces=true&amp;colorscheme=light&amp;stream=true&amp;show_border=true&amp;header=true&amp;appId=353022551483778" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100%; height:590px;" allowTransparency="true"></iframe>";s:7:"element";s:8:"#content";s:8:"position";s:3:"end";}}s:4:"name";s:12:"facebook-box";s:11:"description";s:0:"";s:6:"siteId";s:0:"";s:10:"urlPattern";s:50:"@^/basic\\-examples/tag\\-and\\-snippet\\-management$@";s:11:"textPattern";s:0:"";s:10:"httpMethod";s:0:"";s:6:"params";a:5:{i:0;a:2:{s:4:"name";s:0:"";s:5:"value";s:0:"";}i:1;a:2:{s:4:"name";s:0:"";s:5:"value";s:0:"";}i:2;a:2:{s:4:"name";s:0:"";s:5:"value";s:0:"";}i:3;a:2:{s:4:"name";s:0:"";s:5:"value";s:0:"";}i:4;a:2:{s:4:"name";s:0:"";s:5:"value";s:0:"";}}}}', 1384942511, 1387361711),
('pimcore_site_domain_pimcore_local', 's:6:"failed";', 1384947185, 1387366385),
('pimcore_system_resource_columns_assets', 'a:11:{i:0;s:2:"id";i:1;s:8:"parentId";i:2;s:4:"type";i:3;s:8:"filename";i:4;s:4:"path";i:5;s:8:"mimetype";i:6;s:12:"creationDate";i:7;s:16:"modificationDate";i:8;s:9:"userOwner";i:9;s:16:"userModification";i:10;s:14:"customSettings";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_classes', 'a:14:{i:0;s:2:"id";i:1;s:4:"name";i:2;s:11:"description";i:3;s:12:"creationDate";i:4;s:16:"modificationDate";i:5;s:9:"userOwner";i:6;s:16:"userModification";i:7;s:12:"allowInherit";i:8;s:13:"allowVariants";i:9;s:11:"parentClass";i:10;s:4:"icon";i:11;s:10:"previewUrl";i:12;s:18:"propertyVisibility";i:13;s:12:"showVariants";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_documents', 'a:11:{i:0;s:2:"id";i:1;s:8:"parentId";i:2;s:4:"type";i:3;s:3:"key";i:4;s:4:"path";i:5;s:5:"index";i:6;s:9:"published";i:7;s:12:"creationDate";i:8;s:16:"modificationDate";i:9;s:9:"userOwner";i:10;s:16:"userModification";}', 1384942511, 1387361711),
('pimcore_system_resource_columns_documents_doctypes', 'a:8:{i:0;s:2:"id";i:1;s:4:"name";i:2;s:6:"module";i:3;s:10:"controller";i:4;s:6:"action";i:5;s:8:"template";i:6;s:4:"type";i:7;s:8:"priority";}', 1384955894, 1387375094),
('pimcore_system_resource_columns_documents_email', 'a:10:{i:0;s:2:"id";i:1;s:6:"module";i:2;s:10:"controller";i:3;s:6:"action";i:4;s:8:"template";i:5;s:2:"to";i:6;s:4:"from";i:7;s:2:"cc";i:8;s:3:"bcc";i:9;s:7:"subject";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_documents_hardlink', 'a:4:{i:0;s:2:"id";i:1;s:8:"sourceId";i:2;s:20:"propertiesFromSource";i:3;s:16:"childsFromSource";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_documents_link', 'a:5:{i:0;s:2:"id";i:1;s:12:"internalType";i:2;s:8:"internal";i:3;s:6:"direct";i:4;s:8:"linktype";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_documents_page', 'a:13:{i:0;s:2:"id";i:1;s:6:"module";i:2;s:10:"controller";i:3;s:6:"action";i:4;s:8:"template";i:5;s:5:"title";i:6;s:11:"description";i:7;s:8:"keywords";i:8;s:8:"metaData";i:9;s:9:"prettyUrl";i:10;s:23:"contentMasterDocumentId";i:11;s:3:"css";i:12;s:8:"personas";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_documents_snippet', 'a:6:{i:0;s:2:"id";i:1;s:6:"module";i:2;s:10:"controller";i:3;s:6:"action";i:4;s:8:"template";i:5;s:23:"contentMasterDocumentId";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_edit_lock', 'a:6:{i:0;s:2:"id";i:1;s:3:"cid";i:2;s:5:"ctype";i:3;s:6:"userId";i:4;s:9:"sessionId";i:5;s:4:"date";}', 1384947652, 1387366852),
('pimcore_system_resource_columns_locks', 'a:2:{i:0;s:2:"id";i:1;s:4:"date";}', 1389607524, 1392026724),
('pimcore_system_resource_columns_objects', 'a:13:{i:0;s:4:"o_id";i:1;s:10:"o_parentId";i:2;s:6:"o_type";i:3;s:5:"o_key";i:4;s:6:"o_path";i:5;s:7:"o_index";i:6;s:11:"o_published";i:7;s:14:"o_creationDate";i:8;s:18:"o_modificationDate";i:9;s:11:"o_userOwner";i:10;s:18:"o_userModification";i:11;s:9:"o_classId";i:12;s:11:"o_className";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_properties_predefined', 'a:9:{i:0;s:2:"id";i:1;s:4:"name";i:2;s:11:"description";i:3;s:3:"key";i:4;s:4:"type";i:5;s:4:"data";i:6;s:6:"config";i:7;s:5:"ctype";i:8;s:11:"inheritable";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_sanitycheck', 'a:2:{i:0;s:2:"id";i:1;s:4:"type";}', 1389607524, 1392026724),
('pimcore_system_resource_columns_sites', 'a:6:{i:0;s:2:"id";i:1;s:10:"mainDomain";i:2;s:7:"domains";i:3;s:6:"rootId";i:4;s:13:"errorDocument";i:5;s:20:"redirectToMainDomain";}', 1384942511, 1387361711),
('pimcore_system_resource_columns_staticroutes', 'a:11:{i:0;s:2:"id";i:1;s:4:"name";i:2;s:7:"pattern";i:3;s:7:"reverse";i:4;s:6:"module";i:5;s:10:"controller";i:6;s:6:"action";i:7;s:9:"variables";i:8;s:8:"defaults";i:9;s:6:"siteId";i:10;s:8:"priority";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_users', 'a:16:{i:0;s:2:"id";i:1;s:8:"parentId";i:2;s:4:"type";i:3;s:4:"name";i:4;s:8:"password";i:5;s:9:"firstname";i:6;s:8:"lastname";i:7;s:5:"email";i:8;s:8:"language";i:9;s:5:"admin";i:10;s:6:"active";i:11;s:11:"permissions";i:12;s:5:"roles";i:13;s:13:"welcomescreen";i:14;s:12:"closeWarning";i:15;s:12:"memorizeTabs";}', 1384942510, 1387361710),
('pimcore_system_resource_columns_versions', 'a:8:{i:0;s:2:"id";i:1;s:3:"cid";i:2;s:5:"ctype";i:3;s:6:"userId";i:4;s:4:"note";i:5;s:4:"date";i:6;s:6:"public";i:7;s:10:"serialized";}', 1389607523, 1392026723),
('pimcore_system_route_redirect', 'a:0:{}', 1386168580, 1388587780),
('pimcore_system_route_staticroute', 'a:3:{i:0;O:11:"Staticroute":11:{s:2:"id";i:1;s:4:"name";s:4:"news";s:7:"pattern";s:15:"/(.*)_n([\\d]+)/";s:7:"reverse";s:18:"%prefix/%text_n%id";s:6:"module";s:0:"";s:10:"controller";s:4:"news";s:6:"action";s:6:"detail";s:9:"variables";s:7:"text,id";s:8:"defaults";s:0:"";s:6:"siteId";N;s:8:"priority";i:2;}i:1;O:11:"Staticroute":11:{s:2:"id";i:5;s:4:"name";s:7:"product";s:7:"pattern";s:15:"/(.*)_p([\\d]+)/";s:7:"reverse";s:18:"%prefix/%text_n%id";s:6:"module";N;s:10:"controller";s:7:"product";s:6:"action";s:6:"detail";s:9:"variables";s:7:"text,id";s:8:"defaults";N;s:6:"siteId";N;s:8:"priority";i:1;}i:2;O:11:"Staticroute":11:{s:2:"id";i:3;s:4:"name";s:14:"dynamic-simple";s:7:"pattern";s:22:"/\\/([a-z]+)\\/([a-z]+)/";s:7:"reverse";s:20:"/%controller/%action";s:6:"module";s:0:"";s:10:"controller";s:11:"%controller";s:6:"action";s:7:"%action";s:9:"variables";s:17:"controller,action";s:8:"defaults";s:0:"";s:6:"siteId";N;s:8:"priority";i:1;}}', 1384956137, 1387375337),
('pimcore_translations_admin_data', 'a:39:{s:10:"blockquote";O:17:"Translation_Admin":4:{s:3:"key";s:10:"blockquote";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368611528;s:16:"modificationDate";i:1368611528;}s:12:"content-page";O:17:"Translation_Admin":4:{s:3:"key";s:12:"content-page";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368523214;s:16:"modificationDate";i:1368523214;}s:8:"contents";O:17:"Translation_Admin":4:{s:3:"key";s:8:"contents";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1382958363;s:16:"modificationDate";i:1382958363;}s:4:"date";O:17:"Translation_Admin":4:{s:3:"key";s:4:"date";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368613497;s:16:"modificationDate";i:1368613497;}s:12:"dateregister";O:17:"Translation_Admin":4:{s:3:"key";s:12:"dateregister";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368621929;s:16:"modificationDate";i:1368621929;}s:5:"email";O:17:"Translation_Admin":4:{s:3:"key";s:5:"email";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368621928;s:16:"modificationDate";i:1368621928;}s:11:"featurette ";O:17:"Translation_Admin":4:{s:3:"key";s:11:"featurette ";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368608412;s:16:"modificationDate";i:1368608412;}s:6:"female";O:17:"Translation_Admin":4:{s:3:"key";s:6:"female";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368621928;s:16:"modificationDate";i:1368621928;}s:9:"firstname";O:17:"Translation_Admin":4:{s:3:"key";s:9:"firstname";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368621928;s:16:"modificationDate";i:1368621928;}s:16:"gallery (folder)";O:17:"Translation_Admin":4:{s:3:"key";s:16:"gallery (folder)";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368608412;s:16:"modificationDate";i:1368608412;}s:16:"gallery (single)";O:17:"Translation_Admin":4:{s:3:"key";s:16:"gallery (single)";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368608412;s:16:"modificationDate";i:1368608412;}s:6:"gender";O:17:"Translation_Admin":4:{s:3:"key";s:6:"gender";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368621928;s:16:"modificationDate";i:1368621928;}s:12:"header color";O:17:"Translation_Admin":4:{s:3:"key";s:12:"header color";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368616347;s:16:"modificationDate";i:1368616347;}s:20:"hide left navigation";O:17:"Translation_Admin":4:{s:3:"key";s:20:"hide left navigation";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368616017;s:16:"modificationDate";i:1368616017;}s:5:"image";O:17:"Translation_Admin":4:{s:3:"key";s:5:"image";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368608412;s:16:"modificationDate";i:1368608412;}s:13:"image hotspot";O:17:"Translation_Admin":4:{s:3:"key";s:13:"image hotspot";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368627186;s:16:"modificationDate";i:1368627186;}s:22:"image hotspot & marker";O:17:"Translation_Admin":4:{s:3:"key";s:22:"image hotspot & marker";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368627476;s:16:"modificationDate";i:1368627476;}s:7:"inquiry";O:17:"Translation_Admin":4:{s:3:"key";s:7:"inquiry";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368620428;s:16:"modificationDate";i:1368620428;}s:8:"lastname";O:17:"Translation_Admin":4:{s:3:"key";s:8:"lastname";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368621928;s:16:"modificationDate";i:1368621928;}s:26:"left navigation start node";O:17:"Translation_Admin":4:{s:3:"key";s:26:"left navigation start node";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368612685;s:16:"modificationDate";i:1368612685;}s:4:"male";O:17:"Translation_Admin":4:{s:3:"key";s:4:"male";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368621928;s:16:"modificationDate";i:1368621928;}s:7:"message";O:17:"Translation_Admin":4:{s:3:"key";s:7:"message";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368622768;s:16:"modificationDate";i:1368622768;}s:4:"news";O:17:"Translation_Admin":4:{s:3:"key";s:4:"news";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368613317;s:16:"modificationDate";i:1368613317;}s:17:"newsletter active";O:17:"Translation_Admin":4:{s:3:"key";s:17:"newsletter active";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368621928;s:16:"modificationDate";i:1368621928;}s:20:"newsletter confirmed";O:17:"Translation_Admin":4:{s:3:"key";s:20:"newsletter confirmed";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368621928;s:16:"modificationDate";i:1368621928;}s:3:"pdf";O:17:"Translation_Admin":4:{s:3:"key";s:3:"pdf";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368608412;s:16:"modificationDate";i:1368608412;}s:6:"person";O:17:"Translation_Admin":4:{s:3:"key";s:6:"person";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368621928;s:16:"modificationDate";i:1368621928;}s:7:"persons";O:17:"Translation_Admin":4:{s:3:"key";s:7:"persons";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368620458;s:16:"modificationDate";i:1368620458;}s:7:"product";O:17:"Translation_Admin":4:{s:3:"key";s:7:"product";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1384515247;s:16:"modificationDate";i:1384515247;}s:10:"short text";O:17:"Translation_Admin":4:{s:3:"key";s:10:"short text";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368613497;s:16:"modificationDate";i:1368613497;}s:7:"sidebar";O:17:"Translation_Admin":4:{s:3:"key";s:7:"sidebar";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1382962847;s:16:"modificationDate";i:1382962847;}s:15:"standard teaser";O:17:"Translation_Admin":4:{s:3:"key";s:15:"standard teaser";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368608412;s:16:"modificationDate";i:1368608412;}s:15:"standard-teaser";O:17:"Translation_Admin":4:{s:3:"key";s:15:"standard-teaser";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368531641;s:16:"modificationDate";i:1368531641;}s:12:"terms of use";O:17:"Translation_Admin":4:{s:3:"key";s:12:"terms of use";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368622768;s:16:"modificationDate";i:1368622768;}s:4:"text";O:17:"Translation_Admin":4:{s:3:"key";s:4:"text";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368613497;s:16:"modificationDate";i:1368613497;}s:5:"title";O:17:"Translation_Admin":4:{s:3:"key";s:5:"title";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368613497;s:16:"modificationDate";i:1368613497;}s:8:"unittest";O:17:"Translation_Admin":4:{s:3:"key";s:8:"unittest";s:12:"translations";a:1:{s:2:"en";s:0:"";}s:12:"creationDate";i:1368561373;s:16:"modificationDate";i:1368561373;}s:5:"video";O:17:"Translation_Admin":4:{s:3:"key";s:5:"video";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368608412;s:16:"modificationDate";i:1368608412;}s:7:"wysiwyg";O:17:"Translation_Admin":4:{s:3:"key";s:7:"wysiwyg";s:12:"translations";a:2:{s:2:"de";s:0:"";s:2:"en";s:0:"";}s:12:"creationDate";i:1368608412;s:16:"modificationDate";i:1368608412;}}', 1385022593, 1385023592),
('pimcore_Translation_Admin_data_en', 'a:40:{s:15:"__pimcore_dummy";s:12:"only_a_dummy";s:10:"blockquote";s:0:"";s:12:"content-page";s:0:"";s:8:"contents";s:0:"";s:4:"date";s:0:"";s:12:"dateregister";s:0:"";s:5:"email";s:0:"";s:11:"featurette ";s:0:"";s:6:"female";s:0:"";s:9:"firstname";s:0:"";s:16:"gallery (folder)";s:0:"";s:16:"gallery (single)";s:0:"";s:6:"gender";s:0:"";s:12:"header color";s:0:"";s:20:"hide left navigation";s:0:"";s:5:"image";s:0:"";s:13:"image hotspot";s:0:"";s:22:"image hotspot & marker";s:0:"";s:7:"inquiry";s:0:"";s:8:"lastname";s:0:"";s:26:"left navigation start node";s:0:"";s:4:"male";s:0:"";s:7:"message";s:0:"";s:4:"news";s:0:"";s:17:"newsletter active";s:0:"";s:20:"newsletter confirmed";s:0:"";s:3:"pdf";s:0:"";s:6:"person";s:0:"";s:7:"persons";s:0:"";s:7:"product";s:0:"";s:10:"short text";s:0:"";s:7:"sidebar";s:0:"";s:15:"standard teaser";s:0:"";s:15:"standard-teaser";s:0:"";s:12:"terms of use";s:0:"";s:4:"text";s:0:"";s:5:"title";s:0:"";s:8:"unittest";s:0:"";s:5:"video";s:0:"";s:7:"wysiwyg";s:0:"";}', 1384958057, 1387377257),
('pimcore_Translation_Website_data_en', 'a:67:{s:15:"__pimcore_dummy";s:12:"only_a_dummy";s:78:"''%value%'' is not a valid email address in the basic format local-part@hostname";s:0:"";s:17:"advanced examples";s:0:"";s:9:"aktuelles";s:0:"";s:11:"back to top";s:0:"";s:14:"basic examples";s:0:"";s:31:"beispiele fÃ¼r fortgeschrittene";s:0:"";s:12:"check me out";s:0:"";s:10:"combined 1";s:0:"";s:10:"combined 2";s:0:"";s:10:"combined 3";s:0:"";s:7:"contain";s:0:"";s:21:"contain &amp; overlay";s:0:"";s:19:"content inheritance";s:0:"";s:12:"content page";s:0:"";s:5:"cover";s:0:"";s:28:"creating objects with a form";s:0:"";s:21:"deutsche Ã¼bersetzung";s:0:"";s:10:"dimensions";s:0:"";s:15:"document viewer";s:0:"";s:8:"download";s:0:"";s:17:"download compiled";s:0:"";s:17:"download now (%s)";s:0:"";s:15:"download source";s:0:"";s:6:"e-mail";s:0:"";s:17:"editable round-up";s:0:"";s:18:"einfache beispiele";s:0:"";s:11:"einfÃ¼hrung";s:0:"";s:11:"experiments";s:0:"";s:128:"fastest way to get started: get the compiled and minified versions of our css, js, and images. no docs or original source files.";s:0:"";s:9:"firstname";s:0:"";s:5:"frame";s:0:"";s:9:"galleries";s:0:"";s:6:"gender";s:0:"";s:142:"get the original files for all css and javascript, along with a local copy of the docs by downloading the latest version directly from github.";s:0:"";s:8:"glossary";s:0:"";s:9:"grayscale";s:0:"";s:9:"hard link";s:0:"";s:4:"home";s:4:"Home";s:11:"html5 video";s:0:"";s:25:"i accept the terms of use";s:0:"";s:19:"image with hotspots";s:0:"";s:12:"introduction";s:0:"";s:7:"keyword";s:0:"";s:8:"lastname";s:0:"";s:4:"mask";s:0:"";s:7:"message";s:0:"";s:11:"neuigkeiten";s:0:"";s:4:"news";s:0:"";s:10:"newsletter";s:0:"";s:32:"original dimensions of the image";s:0:"";s:7:"overlay";s:0:"";s:10:"properties";s:0:"";s:6:"resize";s:0:"";s:6:"rotate";s:0:"";s:15:"rounded corners";s:0:"";s:15:"scale by height";s:0:"";s:14:"scale by width";s:0:"";s:6:"search";s:0:"";s:5:"sepia";s:0:"";s:6:"submit";s:0:"";s:19:"thank you very much";s:0:"";s:10:"thumbnails";s:0:"";s:8:"total %s";s:0:"";s:9:"total: %s";s:0:"";s:20:"website translations";s:0:"";s:22:"website Ã¼bersetzungen";s:0:"";}', 1384942510, 1387361710),
('pimcore_website_config', 'O:11:"Zend_Config":8:{s:22:"\0*\0_allowModifications";b:1;s:9:"\0*\0_index";i:0;s:9:"\0*\0_count";i:0;s:8:"\0*\0_data";a:0:{}s:21:"\0*\0_skipNextIteration";N;s:17:"\0*\0_loadedSection";N;s:11:"\0*\0_extends";a:0:{}s:20:"\0*\0_loadFileErrorStr";N;}', 1384942510, 1387361710),
('Zend_LocaleC_en_am_', 's:9:"s:2:"AM";";', 1384956787, 1387375987),
('Zend_LocaleC_en_date_', 's:15:"s:8:"MMM d, y";";', 1384956787, 1387375987),
('Zend_LocaleC_en_date_gregorian_long', 's:16:"s:9:"MMMM d, y";";', 1384955895, 1387375095),
('Zend_LocaleC_en_date_gregorian_short', 's:13:"s:6:"M/d/yy";";', 1384956140, 1387375340),
('Zend_LocaleC_en_language_aa', 's:11:"s:4:"Afar";";', 1384955864, 1387375064),
('Zend_LocaleC_en_language_aa_DJ', 's:4:"b:0;";', 1384955863, 1387375063),
('Zend_LocaleC_en_language_aa_ER', 's:4:"b:0;";', 1384955864, 1387375064),
('Zend_LocaleC_en_language_aa_ET', 's:4:"b:0;";', 1384955864, 1387375064),
('Zend_LocaleC_en_language_af', 's:16:"s:9:"Afrikaans";";', 1384955864, 1387375064),
('Zend_LocaleC_en_language_af_NA', 's:4:"b:0;";', 1384955864, 1387375064),
('Zend_LocaleC_en_language_af_ZA', 's:4:"b:0;";', 1384955864, 1387375064),
('Zend_LocaleC_en_language_ak', 's:11:"s:4:"Akan";";', 1384955864, 1387375064),
('Zend_LocaleC_en_language_ak_GH', 's:4:"b:0;";', 1384955864, 1387375064),
('Zend_LocaleC_en_language_am', 's:14:"s:7:"Amharic";";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_am_ET', 's:4:"b:0;";', 1384955864, 1387375064),
('Zend_LocaleC_en_language_ar', 's:13:"s:6:"Arabic";";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_ar_AE', 's:4:"b:0;";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_ar_BH', 's:4:"b:0;";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_ar_DZ', 's:4:"b:0;";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_ar_EG', 's:4:"b:0;";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_ar_IQ', 's:4:"b:0;";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_ar_JO', 's:4:"b:0;";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_ar_KW', 's:4:"b:0;";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_ar_LB', 's:4:"b:0;";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_ar_LY', 's:4:"b:0;";', 1384955865, 1387375065),
('Zend_LocaleC_en_language_ar_MA', 's:4:"b:0;";', 1384955866, 1387375066),
('Zend_LocaleC_en_language_ar_OM', 's:4:"b:0;";', 1384955866, 1387375066),
('Zend_LocaleC_en_language_ar_QA', 's:4:"b:0;";', 1384955866, 1387375066),
('Zend_LocaleC_en_language_ar_SA', 's:4:"b:0;";', 1384955866, 1387375066),
('Zend_LocaleC_en_language_ar_SD', 's:4:"b:0;";', 1384955866, 1387375066),
('Zend_LocaleC_en_language_ar_SY', 's:4:"b:0;";', 1384955866, 1387375066),
('Zend_LocaleC_en_language_ar_TN', 's:4:"b:0;";', 1384955866, 1387375066),
('Zend_LocaleC_en_language_ar_YE', 's:4:"b:0;";', 1384955866, 1387375066),
('Zend_LocaleC_en_language_as', 's:15:"s:8:"Assamese";";', 1384955866, 1387375066),
('Zend_LocaleC_en_language_as_IN', 's:4:"b:0;";', 1384955866, 1387375066),
('Zend_LocaleC_en_language_az', 's:19:"s:11:"Azerbaijani";";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_az_AZ', 's:4:"b:0;";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_be', 's:18:"s:10:"Belarusian";";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_be_BY', 's:4:"b:0;";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_bg', 's:16:"s:9:"Bulgarian";";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_bg_BG', 's:4:"b:0;";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_bn', 's:14:"s:7:"Bengali";";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_bn_BD', 's:4:"b:0;";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_bn_IN', 's:4:"b:0;";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_bo', 's:14:"s:7:"Tibetan";";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_bo_CN', 's:4:"b:0;";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_bo_IN', 's:4:"b:0;";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_bs', 's:14:"s:7:"Bosnian";";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_bs_BA', 's:4:"b:0;";', 1384955867, 1387375067),
('Zend_LocaleC_en_language_byn', 's:11:"s:4:"Blin";";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_byn_ER', 's:4:"b:0;";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_ca', 's:14:"s:7:"Catalan";";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_ca_ES', 's:4:"b:0;";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_cch', 's:12:"s:5:"Atsam";";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_cch_NG', 's:4:"b:0;";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_cop', 's:13:"s:6:"Coptic";";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_cs', 's:12:"s:5:"Czech";";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_cs_CZ', 's:4:"b:0;";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_cy', 's:12:"s:5:"Welsh";";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_cy_GB', 's:4:"b:0;";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_da', 's:13:"s:6:"Danish";";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_da_DK', 's:4:"b:0;";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_de', 's:13:"s:6:"German";";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_de_AT', 's:23:"s:15:"Austrian German";";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_de_BE', 's:4:"b:0;";', 1384955868, 1387375068),
('Zend_LocaleC_en_language_de_CH', 's:25:"s:17:"Swiss High German";";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_de_DE', 's:4:"b:0;";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_de_LI', 's:4:"b:0;";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_de_LU', 's:4:"b:0;";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_dv', 's:13:"s:6:"Divehi";";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_dv_MV', 's:4:"b:0;";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_dz', 's:15:"s:8:"Dzongkha";";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_dz_BT', 's:4:"b:0;";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_ee', 's:10:"s:3:"Ewe";";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_ee_GH', 's:4:"b:0;";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_ee_TG', 's:4:"b:0;";', 1384955869, 1387375069),
('Zend_LocaleC_en_language_el', 's:12:"s:5:"Greek";";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_el_CY', 's:4:"b:0;";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_el_GR', 's:4:"b:0;";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_en', 's:14:"s:7:"English";";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_en_AS', 's:4:"b:0;";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_en_AU', 's:26:"s:18:"Australian English";";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_en_BE', 's:4:"b:0;";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_en_BW', 's:4:"b:0;";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_en_BZ', 's:4:"b:0;";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_en_CA', 's:24:"s:16:"Canadian English";";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_en_GB', 's:23:"s:15:"British English";";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_en_GU', 's:4:"b:0;";', 1384955870, 1387375070),
('Zend_LocaleC_en_language_en_HK', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_IE', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_IN', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_JM', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_MH', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_MP', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_MT', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_NA', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_NZ', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_PH', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_PK', 's:4:"b:0;";', 1384955871, 1387375071),
('Zend_LocaleC_en_language_en_SG', 's:4:"b:0;";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_en_TT', 's:4:"b:0;";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_en_UM', 's:4:"b:0;";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_en_US', 's:20:"s:12:"U.S. English";";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_en_VI', 's:4:"b:0;";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_en_ZA', 's:4:"b:0;";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_en_ZW', 's:4:"b:0;";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_eo', 's:16:"s:9:"Esperanto";";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_es', 's:14:"s:7:"Spanish";";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_es_AR', 's:4:"b:0;";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_es_BO', 's:4:"b:0;";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_es_CL', 's:4:"b:0;";', 1384955872, 1387375072),
('Zend_LocaleC_en_language_es_CO', 's:4:"b:0;";', 1384955873, 1387375073),
('Zend_LocaleC_en_language_es_CR', 's:4:"b:0;";', 1384955873, 1387375073),
('Zend_LocaleC_en_language_es_DO', 's:4:"b:0;";', 1384955873, 1387375073),
('Zend_LocaleC_en_language_es_EC', 's:4:"b:0;";', 1384955873, 1387375073),
('Zend_LocaleC_en_language_es_ES', 's:23:"s:15:"Iberian Spanish";";', 1384955873, 1387375073),
('Zend_LocaleC_en_language_es_GT', 's:4:"b:0;";', 1384955873, 1387375073),
('Zend_LocaleC_en_language_es_HN', 's:4:"b:0;";', 1384955874, 1387375074),
('Zend_LocaleC_en_language_es_MX', 's:4:"b:0;";', 1384955874, 1387375074),
('Zend_LocaleC_en_language_es_NI', 's:4:"b:0;";', 1384955874, 1387375074),
('Zend_LocaleC_en_language_es_PA', 's:4:"b:0;";', 1384955874, 1387375074),
('Zend_LocaleC_en_language_es_PE', 's:4:"b:0;";', 1384955874, 1387375074),
('Zend_LocaleC_en_language_es_PR', 's:4:"b:0;";', 1384955874, 1387375074),
('Zend_LocaleC_en_language_es_PY', 's:4:"b:0;";', 1384955874, 1387375074),
('Zend_LocaleC_en_language_es_SV', 's:4:"b:0;";', 1384955874, 1387375074),
('Zend_LocaleC_en_language_es_US', 's:4:"b:0;";', 1384955874, 1387375074),
('Zend_LocaleC_en_language_es_UY', 's:4:"b:0;";', 1384955874, 1387375074),
('Zend_LocaleC_en_language_es_VE', 's:4:"b:0;";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_et', 's:15:"s:8:"Estonian";";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_et_EE', 's:4:"b:0;";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_eu', 's:13:"s:6:"Basque";";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_eu_ES', 's:4:"b:0;";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_fa', 's:14:"s:7:"Persian";";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_fa_AF', 's:4:"b:0;";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_fa_IR', 's:4:"b:0;";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_fi', 's:14:"s:7:"Finnish";";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_fil', 's:15:"s:8:"Filipino";";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fil_PH', 's:4:"b:0;";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_fi_FI', 's:4:"b:0;";', 1384955875, 1387375075),
('Zend_LocaleC_en_language_fo', 's:14:"s:7:"Faroese";";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fo_FO', 's:4:"b:0;";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fr', 's:13:"s:6:"French";";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fr_BE', 's:4:"b:0;";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fr_CA', 's:23:"s:15:"Canadian French";";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fr_CH', 's:20:"s:12:"Swiss French";";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fr_FR', 's:4:"b:0;";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fr_LU', 's:4:"b:0;";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fr_MC', 's:4:"b:0;";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fr_SN', 's:4:"b:0;";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fur', 's:15:"s:8:"Friulian";";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_fur_IT', 's:4:"b:0;";', 1384955876, 1387375076),
('Zend_LocaleC_en_language_ga', 's:12:"s:5:"Irish";";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gaa', 's:9:"s:2:"Ga";";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gaa_GH', 's:4:"b:0;";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_ga_IE', 's:4:"b:0;";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gez', 's:11:"s:4:"Geez";";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gez_ER', 's:4:"b:0;";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gez_ET', 's:4:"b:0;";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gl', 's:15:"s:8:"Galician";";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gl_ES', 's:4:"b:0;";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gsw', 's:20:"s:12:"Swiss German";";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gsw_CH', 's:4:"b:0;";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gu', 's:15:"s:8:"Gujarati";";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gu_IN', 's:4:"b:0;";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gv', 's:11:"s:4:"Manx";";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_gv_GB', 's:4:"b:0;";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_ha', 's:12:"s:5:"Hausa";";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_haw', 's:15:"s:8:"Hawaiian";";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_haw_US', 's:4:"b:0;";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_ha_GH', 's:4:"b:0;";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_ha_NE', 's:4:"b:0;";', 1384955877, 1387375077),
('Zend_LocaleC_en_language_ha_NG', 's:4:"b:0;";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_ha_SD', 's:4:"b:0;";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_he', 's:13:"s:6:"Hebrew";";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_he_IL', 's:4:"b:0;";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_hi', 's:12:"s:5:"Hindi";";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_hi_IN', 's:4:"b:0;";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_hr', 's:15:"s:8:"Croatian";";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_hr_HR', 's:4:"b:0;";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_hu', 's:16:"s:9:"Hungarian";";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_hu_HU', 's:4:"b:0;";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_hy', 's:15:"s:8:"Armenian";";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_hy_AM', 's:4:"b:0;";', 1384955878, 1387375078),
('Zend_LocaleC_en_language_ia', 's:19:"s:11:"Interlingua";";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_id', 's:18:"s:10:"Indonesian";";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_id_ID', 's:4:"b:0;";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_ig', 's:11:"s:4:"Igbo";";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_ig_NG', 's:4:"b:0;";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_ii', 's:18:"s:10:"Sichuan Yi";";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_ii_CN', 's:4:"b:0;";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_in', 's:4:"b:0;";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_is', 's:16:"s:9:"Icelandic";";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_is_IS', 's:4:"b:0;";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_it', 's:14:"s:7:"Italian";";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_it_CH', 's:4:"b:0;";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_it_IT', 's:4:"b:0;";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_iu', 's:16:"s:9:"Inuktitut";";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_iw', 's:4:"b:0;";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_ja', 's:15:"s:8:"Japanese";";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_ja_JP', 's:4:"b:0;";', 1384955879, 1387375079),
('Zend_LocaleC_en_language_ka', 's:15:"s:8:"Georgian";";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kaj', 's:10:"s:3:"Jju";";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kaj_NG', 's:4:"b:0;";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kam', 's:12:"s:5:"Kamba";";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kam_KE', 's:4:"b:0;";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_ka_GE', 's:4:"b:0;";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kcg', 's:11:"s:4:"Tyap";";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kcg_NG', 's:4:"b:0;";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kfo', 's:11:"s:4:"Koro";";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kfo_CI', 's:4:"b:0;";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kk', 's:13:"s:6:"Kazakh";";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kk_KZ', 's:4:"b:0;";', 1384955880, 1387375080),
('Zend_LocaleC_en_language_kl', 's:19:"s:11:"Kalaallisut";";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_kl_GL', 's:4:"b:0;";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_km', 's:12:"s:5:"Khmer";";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_km_KH', 's:4:"b:0;";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_kn', 's:14:"s:7:"Kannada";";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_kn_IN', 's:4:"b:0;";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_ko', 's:13:"s:6:"Korean";";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_kok', 's:14:"s:7:"Konkani";";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_kok_IN', 's:4:"b:0;";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_ko_KR', 's:4:"b:0;";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_kpe', 's:13:"s:6:"Kpelle";";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_kpe_GN', 's:4:"b:0;";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_kpe_LR', 's:4:"b:0;";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_ku', 's:14:"s:7:"Kurdish";";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_ku_IQ', 's:4:"b:0;";', 1384955881, 1387375081),
('Zend_LocaleC_en_language_ku_IR', 's:4:"b:0;";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_ku_SY', 's:4:"b:0;";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_ku_TR', 's:4:"b:0;";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_kw', 's:14:"s:7:"Cornish";";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_kw_GB', 's:4:"b:0;";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_ky', 's:14:"s:7:"Kirghiz";";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_ky_KG', 's:4:"b:0;";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_ln', 's:14:"s:7:"Lingala";";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_ln_CD', 's:4:"b:0;";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_ln_CG', 's:4:"b:0;";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_lo', 's:10:"s:3:"Lao";";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_lo_LA', 's:4:"b:0;";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_lt', 's:18:"s:10:"Lithuanian";";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_lt_LT', 's:4:"b:0;";', 1384955882, 1387375082),
('Zend_LocaleC_en_language_lv', 's:14:"s:7:"Latvian";";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_lv_LV', 's:4:"b:0;";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_mk', 's:18:"s:10:"Macedonian";";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_mk_MK', 's:4:"b:0;";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_ml', 's:16:"s:9:"Malayalam";";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_ml_IN', 's:4:"b:0;";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_mn', 's:16:"s:9:"Mongolian";";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_mn_CN', 's:4:"b:0;";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_mn_MN', 's:4:"b:0;";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_mo', 's:16:"s:9:"Moldavian";";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_mr', 's:14:"s:7:"Marathi";";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_mr_IN', 's:4:"b:0;";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_ms', 's:12:"s:5:"Malay";";', 1384955884, 1387375084),
('Zend_LocaleC_en_language_ms_BN', 's:4:"b:0;";', 1384955883, 1387375083),
('Zend_LocaleC_en_language_ms_MY', 's:4:"b:0;";', 1384955884, 1387375084),
('Zend_LocaleC_en_language_mt', 's:14:"s:7:"Maltese";";', 1384955884, 1387375084),
('Zend_LocaleC_en_language_mt_MT', 's:4:"b:0;";', 1384955884, 1387375084),
('Zend_LocaleC_en_language_my', 's:14:"s:7:"Burmese";";', 1384955884, 1387375084),
('Zend_LocaleC_en_language_my_MM', 's:4:"b:0;";', 1384955884, 1387375084),
('Zend_LocaleC_en_language_nb', 's:25:"s:17:"Norwegian BokmÃ¥l";";', 1384955884, 1387375084),
('Zend_LocaleC_en_language_nb_NO', 's:4:"b:0;";', 1384955884, 1387375084),
('Zend_LocaleC_en_language_nds', 's:18:"s:10:"Low German";";', 1384955884, 1387375084);
INSERT INTO `cache` (`id`, `data`, `mtime`, `expire`) VALUES
('Zend_LocaleC_en_language_nds_DE', 's:4:"b:0;";', 1384955884, 1387375084),
('Zend_LocaleC_en_language_ne', 's:13:"s:6:"Nepali";";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_ne_IN', 's:4:"b:0;";', 1384955884, 1387375084),
('Zend_LocaleC_en_language_ne_NP', 's:4:"b:0;";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_nl', 's:12:"s:5:"Dutch";";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_nl_BE', 's:14:"s:7:"Flemish";";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_nl_NL', 's:4:"b:0;";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_nn', 's:25:"s:17:"Norwegian Nynorsk";";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_nn_NO', 's:4:"b:0;";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_no', 's:16:"s:9:"Norwegian";";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_nr', 's:21:"s:13:"South Ndebele";";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_nr_ZA', 's:4:"b:0;";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_nso', 's:22:"s:14:"Northern Sotho";";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_nso_ZA', 's:4:"b:0;";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_ny', 's:13:"s:6:"Nyanja";";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_ny_MW', 's:4:"b:0;";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_oc', 's:14:"s:7:"Occitan";";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_oc_FR', 's:4:"b:0;";', 1384955885, 1387375085),
('Zend_LocaleC_en_language_om', 's:12:"s:5:"Oromo";";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_om_ET', 's:4:"b:0;";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_om_KE', 's:4:"b:0;";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_or', 's:12:"s:5:"Oriya";";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_or_IN', 's:4:"b:0;";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_pa', 's:14:"s:7:"Punjabi";";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_pa_IN', 's:4:"b:0;";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_pa_PK', 's:4:"b:0;";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_pl', 's:13:"s:6:"Polish";";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_pl_PL', 's:4:"b:0;";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_ps', 's:13:"s:6:"Pashto";";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_ps_AF', 's:4:"b:0;";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_pt', 's:18:"s:10:"Portuguese";";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_pt_BR', 's:28:"s:20:"Brazilian Portuguese";";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_pt_PT', 's:26:"s:18:"Iberian Portuguese";";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_ro', 's:15:"s:8:"Romanian";";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_ro_MD', 's:4:"b:0;";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_ro_RO', 's:4:"b:0;";', 1384955886, 1387375086),
('Zend_LocaleC_en_language_ru', 's:14:"s:7:"Russian";";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_ru_RU', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_ru_UA', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_rw', 's:19:"s:11:"Kinyarwanda";";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_rw_RW', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_sa', 's:15:"s:8:"Sanskrit";";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_sa_IN', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_se', 's:21:"s:13:"Northern Sami";";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_se_FI', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_se_NO', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_sh', 's:22:"s:14:"Serbo-Croatian";";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_sh_BA', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_sh_CS', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_sh_YU', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_si', 's:14:"s:7:"Sinhala";";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_sid', 's:13:"s:6:"Sidamo";";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_sid_ET', 's:4:"b:0;";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_si_LK', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_language_sk', 's:13:"s:6:"Slovak";";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_sk_SK', 's:4:"b:0;";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_sl', 's:16:"s:9:"Slovenian";";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_sl_SI', 's:4:"b:0;";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_so', 's:13:"s:6:"Somali";";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_so_DJ', 's:4:"b:0;";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_so_ET', 's:4:"b:0;";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_so_KE', 's:4:"b:0;";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_so_SO', 's:4:"b:0;";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_sq', 's:15:"s:8:"Albanian";";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_sq_AL', 's:4:"b:0;";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_sr', 's:14:"s:7:"Serbian";";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_sr_BA', 's:4:"b:0;";', 1384955888, 1387375088),
('Zend_LocaleC_en_language_sr_CS', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_sr_ME', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_sr_RS', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_sr_YU', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_ss', 's:12:"s:5:"Swati";";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_ss_SZ', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_ss_ZA', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_st', 's:22:"s:14:"Southern Sotho";";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_st_LS', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_st_ZA', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_sv', 's:14:"s:7:"Swedish";";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_sv_FI', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_sv_SE', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_sw', 's:14:"s:7:"Swahili";";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_sw_KE', 's:4:"b:0;";', 1384955889, 1387375089),
('Zend_LocaleC_en_language_sw_TZ', 's:4:"b:0;";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_syr', 's:13:"s:6:"Syriac";";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_syr_SY', 's:4:"b:0;";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_ta', 's:12:"s:5:"Tamil";";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_ta_IN', 's:4:"b:0;";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_te', 's:13:"s:6:"Telugu";";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_te_IN', 's:4:"b:0;";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_tg', 's:12:"s:5:"Tajik";";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_tg_TJ', 's:4:"b:0;";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_th', 's:11:"s:4:"Thai";";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_th_TH', 's:4:"b:0;";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_ti', 's:15:"s:8:"Tigrinya";";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_tig', 's:12:"s:5:"Tigre";";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_tig_ER', 's:4:"b:0;";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_ti_ER', 's:4:"b:0;";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_ti_ET', 's:4:"b:0;";', 1384955890, 1387375090),
('Zend_LocaleC_en_language_tl', 's:14:"s:7:"Tagalog";";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_tn', 's:13:"s:6:"Tswana";";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_tn_ZA', 's:4:"b:0;";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_to', 's:12:"s:5:"Tonga";";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_to_TO', 's:4:"b:0;";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_tr', 's:14:"s:7:"Turkish";";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_trv', 's:13:"s:6:"Taroko";";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_trv_TW', 's:4:"b:0;";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_tr_TR', 's:4:"b:0;";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_ts', 's:13:"s:6:"Tsonga";";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_ts_ZA', 's:4:"b:0;";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_tt', 's:12:"s:5:"Tatar";";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_tt_RU', 's:4:"b:0;";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_ug', 's:13:"s:6:"Uighur";";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_ug_CN', 's:4:"b:0;";', 1384955891, 1387375091),
('Zend_LocaleC_en_language_uk', 's:16:"s:9:"Ukrainian";";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_uk_UA', 's:4:"b:0;";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_ur', 's:11:"s:4:"Urdu";";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_ur_IN', 's:4:"b:0;";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_ur_PK', 's:4:"b:0;";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_uz', 's:12:"s:5:"Uzbek";";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_uz_AF', 's:4:"b:0;";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_uz_UZ', 's:4:"b:0;";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_ve', 's:12:"s:5:"Venda";";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_ve_ZA', 's:4:"b:0;";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_vi', 's:18:"s:10:"Vietnamese";";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_vi_VN', 's:4:"b:0;";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_wal', 's:13:"s:6:"Walamo";";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_wal_ET', 's:4:"b:0;";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_wo', 's:12:"s:5:"Wolof";";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_wo_SN', 's:4:"b:0;";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_xh', 's:12:"s:5:"Xhosa";";', 1384955893, 1387375093),
('Zend_LocaleC_en_language_xh_ZA', 's:4:"b:0;";', 1384955892, 1387375092),
('Zend_LocaleC_en_language_yo', 's:13:"s:6:"Yoruba";";', 1384955893, 1387375093),
('Zend_LocaleC_en_language_yo_NG', 's:4:"b:0;";', 1384955893, 1387375093),
('Zend_LocaleC_en_language_zh', 's:14:"s:7:"Chinese";";', 1384955893, 1387375093),
('Zend_LocaleC_en_language_zh_CN', 's:4:"b:0;";', 1384955893, 1387375093),
('Zend_LocaleC_en_language_zh_HK', 's:4:"b:0;";', 1384955893, 1387375093),
('Zend_LocaleC_en_language_zh_MO', 's:4:"b:0;";', 1384955893, 1387375093),
('Zend_LocaleC_en_language_zh_SG', 's:4:"b:0;";', 1384955893, 1387375093),
('Zend_LocaleC_en_language_zh_TW', 's:4:"b:0;";', 1384955893, 1387375093),
('Zend_LocaleC_en_language_zu', 's:11:"s:4:"Zulu";";', 1384955893, 1387375093),
('Zend_LocaleC_en_language_zu_ZA', 's:4:"b:0;";', 1384955893, 1387375093),
('Zend_LocaleC_en_month_gregorian_format_abbreviated_11', 's:10:"s:3:"Nov";";', 1384956787, 1387375987),
('Zend_LocaleC_en_month_gregorian_format_abbreviated_12', 's:10:"s:3:"Dec";";', 1384958197, 1387377397),
('Zend_LocaleC_en_month_gregorian_format_wide_10', 's:14:"s:7:"October";";', 1384955895, 1387375095),
('Zend_LocaleC_en_month_gregorian_format_wide_11', 's:15:"s:8:"November";";', 1384955895, 1387375095),
('Zend_LocaleC_en_pm_', 's:9:"s:2:"PM";";', 1384958197, 1387377397),
('Zend_LocaleC_en_territory_', 's:4:"b:0;";', 1384955879, 1387375079),
('Zend_LocaleC_en_territory_AE', 's:28:"s:20:"United Arab Emirates";";', 1384955865, 1387375065),
('Zend_LocaleC_en_territory_AF', 's:19:"s:11:"Afghanistan";";', 1384955875, 1387375075),
('Zend_LocaleC_en_territory_AL', 's:14:"s:7:"Albania";";', 1384955888, 1387375088),
('Zend_LocaleC_en_territory_AM', 's:14:"s:7:"Armenia";";', 1384955878, 1387375078),
('Zend_LocaleC_en_territory_AR', 's:16:"s:9:"Argentina";";', 1384955872, 1387375072),
('Zend_LocaleC_en_territory_AS', 's:22:"s:14:"American Samoa";";', 1384955870, 1387375070),
('Zend_LocaleC_en_territory_AZ', 's:18:"s:10:"Azerbaijan";";', 1384955867, 1387375067),
('Zend_LocaleC_en_territory_BA', 's:30:"s:22:"Bosnia and Herzegovina";";', 1384955867, 1387375067),
('Zend_LocaleC_en_territory_BD', 's:18:"s:10:"Bangladesh";";', 1384955867, 1387375067),
('Zend_LocaleC_en_territory_BE', 's:14:"s:7:"Belgium";";', 1384955869, 1387375069),
('Zend_LocaleC_en_territory_BG', 's:15:"s:8:"Bulgaria";";', 1384955867, 1387375067),
('Zend_LocaleC_en_territory_BH', 's:14:"s:7:"Bahrain";";', 1384955865, 1387375065),
('Zend_LocaleC_en_territory_BN', 's:13:"s:6:"Brunei";";', 1384955884, 1387375084),
('Zend_LocaleC_en_territory_BO', 's:14:"s:7:"Bolivia";";', 1384955872, 1387375072),
('Zend_LocaleC_en_territory_BT', 's:13:"s:6:"Bhutan";";', 1384955869, 1387375069),
('Zend_LocaleC_en_territory_BW', 's:15:"s:8:"Botswana";";', 1384955870, 1387375070),
('Zend_LocaleC_en_territory_BY', 's:14:"s:7:"Belarus";";', 1384955867, 1387375067),
('Zend_LocaleC_en_territory_BZ', 's:13:"s:6:"Belize";";', 1384955870, 1387375070),
('Zend_LocaleC_en_territory_CD', 's:24:"s:16:"Congo - Kinshasa";";', 1384955882, 1387375082),
('Zend_LocaleC_en_territory_CG', 's:27:"s:19:"Congo - Brazzaville";";', 1384955882, 1387375082),
('Zend_LocaleC_en_territory_CH', 's:19:"s:11:"Switzerland";";', 1384955877, 1387375077),
('Zend_LocaleC_en_territory_CI', 's:24:"s:16:"CÃ´te dâ€™Ivoire";";', 1384955880, 1387375080),
('Zend_LocaleC_en_territory_CL', 's:12:"s:5:"Chile";";', 1384955873, 1387375073),
('Zend_LocaleC_en_territory_CN', 's:12:"s:5:"China";";', 1384955867, 1387375067),
('Zend_LocaleC_en_territory_CO', 's:15:"s:8:"Colombia";";', 1384955873, 1387375073),
('Zend_LocaleC_en_territory_CR', 's:18:"s:10:"Costa Rica";";', 1384955873, 1387375073),
('Zend_LocaleC_en_territory_CS', 's:29:"s:21:"Serbia and Montenegro";";', 1384955887, 1387375087),
('Zend_LocaleC_en_territory_CY', 's:13:"s:6:"Cyprus";";', 1384955870, 1387375070),
('Zend_LocaleC_en_territory_CZ', 's:22:"s:14:"Czech Republic";";', 1384955868, 1387375068),
('Zend_LocaleC_en_territory_DE', 's:14:"s:7:"Germany";";', 1384955869, 1387375069),
('Zend_LocaleC_en_territory_DJ', 's:15:"s:8:"Djibouti";";', 1384955864, 1387375064),
('Zend_LocaleC_en_territory_DK', 's:14:"s:7:"Denmark";";', 1384955868, 1387375068),
('Zend_LocaleC_en_territory_DO', 's:26:"s:18:"Dominican Republic";";', 1384955873, 1387375073),
('Zend_LocaleC_en_territory_DZ', 's:14:"s:7:"Algeria";";', 1384955865, 1387375065),
('Zend_LocaleC_en_territory_EC', 's:14:"s:7:"Ecuador";";', 1384955873, 1387375073),
('Zend_LocaleC_en_territory_EE', 's:14:"s:7:"Estonia";";', 1384955875, 1387375075),
('Zend_LocaleC_en_territory_EG', 's:12:"s:5:"Egypt";";', 1384955865, 1387375065),
('Zend_LocaleC_en_territory_ER', 's:14:"s:7:"Eritrea";";', 1384955864, 1387375064),
('Zend_LocaleC_en_territory_ES', 's:12:"s:5:"Spain";";', 1384955868, 1387375068),
('Zend_LocaleC_en_territory_ET', 's:15:"s:8:"Ethiopia";";', 1384955864, 1387375064),
('Zend_LocaleC_en_territory_FI', 's:14:"s:7:"Finland";";', 1384955875, 1387375075),
('Zend_LocaleC_en_territory_FO', 's:21:"s:13:"Faroe Islands";";', 1384955876, 1387375076),
('Zend_LocaleC_en_territory_FR', 's:13:"s:6:"France";";', 1384955876, 1387375076),
('Zend_LocaleC_en_territory_GB', 's:22:"s:14:"United Kingdom";";', 1384955868, 1387375068),
('Zend_LocaleC_en_territory_GE', 's:14:"s:7:"Georgia";";', 1384955880, 1387375080),
('Zend_LocaleC_en_territory_GH', 's:12:"s:5:"Ghana";";', 1384955864, 1387375064),
('Zend_LocaleC_en_territory_GL', 's:16:"s:9:"Greenland";";', 1384955881, 1387375081),
('Zend_LocaleC_en_territory_GN', 's:13:"s:6:"Guinea";";', 1384955881, 1387375081),
('Zend_LocaleC_en_territory_GR', 's:13:"s:6:"Greece";";', 1384955870, 1387375070),
('Zend_LocaleC_en_territory_GT', 's:16:"s:9:"Guatemala";";', 1384955874, 1387375074),
('Zend_LocaleC_en_territory_GU', 's:11:"s:4:"Guam";";', 1384955870, 1387375070),
('Zend_LocaleC_en_territory_HK', 's:27:"s:19:"Hong Kong SAR China";";', 1384955871, 1387375071),
('Zend_LocaleC_en_territory_HN', 's:15:"s:8:"Honduras";";', 1384955874, 1387375074),
('Zend_LocaleC_en_territory_HR', 's:14:"s:7:"Croatia";";', 1384955878, 1387375078),
('Zend_LocaleC_en_territory_HU', 's:14:"s:7:"Hungary";";', 1384955878, 1387375078),
('Zend_LocaleC_en_territory_ID', 's:16:"s:9:"Indonesia";";', 1384955879, 1387375079),
('Zend_LocaleC_en_territory_IE', 's:14:"s:7:"Ireland";";', 1384955871, 1387375071),
('Zend_LocaleC_en_territory_IL', 's:13:"s:6:"Israel";";', 1384955878, 1387375078),
('Zend_LocaleC_en_territory_IN', 's:12:"s:5:"India";";', 1384955866, 1387375066),
('Zend_LocaleC_en_territory_IQ', 's:11:"s:4:"Iraq";";', 1384955865, 1387375065),
('Zend_LocaleC_en_territory_IR', 's:11:"s:4:"Iran";";', 1384955875, 1387375075),
('Zend_LocaleC_en_territory_IS', 's:14:"s:7:"Iceland";";', 1384955879, 1387375079),
('Zend_LocaleC_en_territory_IT', 's:12:"s:5:"Italy";";', 1384955877, 1387375077),
('Zend_LocaleC_en_territory_JM', 's:14:"s:7:"Jamaica";";', 1384955871, 1387375071),
('Zend_LocaleC_en_territory_JO', 's:13:"s:6:"Jordan";";', 1384955865, 1387375065),
('Zend_LocaleC_en_territory_JP', 's:12:"s:5:"Japan";";', 1384955880, 1387375080),
('Zend_LocaleC_en_territory_KE', 's:12:"s:5:"Kenya";";', 1384955880, 1387375080),
('Zend_LocaleC_en_territory_KG', 's:18:"s:10:"Kyrgyzstan";";', 1384955882, 1387375082),
('Zend_LocaleC_en_territory_KH', 's:15:"s:8:"Cambodia";";', 1384955881, 1387375081),
('Zend_LocaleC_en_territory_KR', 's:19:"s:11:"South Korea";";', 1384955881, 1387375081),
('Zend_LocaleC_en_territory_KW', 's:13:"s:6:"Kuwait";";', 1384955865, 1387375065),
('Zend_LocaleC_en_territory_KZ', 's:18:"s:10:"Kazakhstan";";', 1384955880, 1387375080),
('Zend_LocaleC_en_territory_LA', 's:11:"s:4:"Laos";";', 1384955882, 1387375082),
('Zend_LocaleC_en_territory_LB', 's:14:"s:7:"Lebanon";";', 1384955865, 1387375065),
('Zend_LocaleC_en_territory_LI', 's:21:"s:13:"Liechtenstein";";', 1384955869, 1387375069),
('Zend_LocaleC_en_territory_LK', 's:16:"s:9:"Sri Lanka";";', 1384955888, 1387375088),
('Zend_LocaleC_en_territory_LR', 's:14:"s:7:"Liberia";";', 1384955881, 1387375081),
('Zend_LocaleC_en_territory_LS', 's:14:"s:7:"Lesotho";";', 1384955889, 1387375089),
('Zend_LocaleC_en_territory_LT', 's:16:"s:9:"Lithuania";";', 1384955882, 1387375082),
('Zend_LocaleC_en_territory_LU', 's:18:"s:10:"Luxembourg";";', 1384955869, 1387375069),
('Zend_LocaleC_en_territory_LV', 's:13:"s:6:"Latvia";";', 1384955883, 1387375083),
('Zend_LocaleC_en_territory_LY', 's:12:"s:5:"Libya";";', 1384955865, 1387375065),
('Zend_LocaleC_en_territory_MA', 's:14:"s:7:"Morocco";";', 1384955866, 1387375066),
('Zend_LocaleC_en_territory_MC', 's:13:"s:6:"Monaco";";', 1384955876, 1387375076),
('Zend_LocaleC_en_territory_MD', 's:14:"s:7:"Moldova";";', 1384955886, 1387375086),
('Zend_LocaleC_en_territory_ME', 's:18:"s:10:"Montenegro";";', 1384955889, 1387375089),
('Zend_LocaleC_en_territory_MH', 's:24:"s:16:"Marshall Islands";";', 1384955871, 1387375071),
('Zend_LocaleC_en_territory_MK', 's:16:"s:9:"Macedonia";";', 1384955883, 1387375083),
('Zend_LocaleC_en_territory_MM', 's:23:"s:15:"Myanmar [Burma]";";', 1384955884, 1387375084),
('Zend_LocaleC_en_territory_MN', 's:15:"s:8:"Mongolia";";', 1384955883, 1387375083),
('Zend_LocaleC_en_territory_MO', 's:23:"s:15:"Macau SAR China";";', 1384955893, 1387375093),
('Zend_LocaleC_en_territory_MP', 's:32:"s:24:"Northern Mariana Islands";";', 1384955871, 1387375071),
('Zend_LocaleC_en_territory_MT', 's:12:"s:5:"Malta";";', 1384955871, 1387375071),
('Zend_LocaleC_en_territory_MV', 's:15:"s:8:"Maldives";";', 1384955869, 1387375069),
('Zend_LocaleC_en_territory_MW', 's:13:"s:6:"Malawi";";', 1384955885, 1387375085),
('Zend_LocaleC_en_territory_MX', 's:13:"s:6:"Mexico";";', 1384955874, 1387375074),
('Zend_LocaleC_en_territory_MY', 's:15:"s:8:"Malaysia";";', 1384955884, 1387375084),
('Zend_LocaleC_en_territory_NA', 's:14:"s:7:"Namibia";";', 1384955864, 1387375064),
('Zend_LocaleC_en_territory_NE', 's:12:"s:5:"Niger";";', 1384955878, 1387375078),
('Zend_LocaleC_en_territory_NG', 's:14:"s:7:"Nigeria";";', 1384955868, 1387375068),
('Zend_LocaleC_en_territory_NI', 's:16:"s:9:"Nicaragua";";', 1384955874, 1387375074),
('Zend_LocaleC_en_territory_NL', 's:19:"s:11:"Netherlands";";', 1384955885, 1387375085),
('Zend_LocaleC_en_territory_NO', 's:13:"s:6:"Norway";";', 1384955884, 1387375084),
('Zend_LocaleC_en_territory_NP', 's:12:"s:5:"Nepal";";', 1384955885, 1387375085),
('Zend_LocaleC_en_territory_NZ', 's:19:"s:11:"New Zealand";";', 1384955871, 1387375071),
('Zend_LocaleC_en_territory_OM', 's:11:"s:4:"Oman";";', 1384955866, 1387375066),
('Zend_LocaleC_en_territory_PA', 's:13:"s:6:"Panama";";', 1384955874, 1387375074),
('Zend_LocaleC_en_territory_PE', 's:11:"s:4:"Peru";";', 1384955874, 1387375074),
('Zend_LocaleC_en_territory_PH', 's:19:"s:11:"Philippines";";', 1384955871, 1387375071),
('Zend_LocaleC_en_territory_PK', 's:15:"s:8:"Pakistan";";', 1384955871, 1387375071),
('Zend_LocaleC_en_territory_PL', 's:13:"s:6:"Poland";";', 1384955886, 1387375086),
('Zend_LocaleC_en_territory_PR', 's:19:"s:11:"Puerto Rico";";', 1384955874, 1387375074),
('Zend_LocaleC_en_territory_PY', 's:15:"s:8:"Paraguay";";', 1384955874, 1387375074),
('Zend_LocaleC_en_territory_QA', 's:12:"s:5:"Qatar";";', 1384955866, 1387375066),
('Zend_LocaleC_en_territory_RO', 's:14:"s:7:"Romania";";', 1384955886, 1387375086),
('Zend_LocaleC_en_territory_RS', 's:13:"s:6:"Serbia";";', 1384955889, 1387375089),
('Zend_LocaleC_en_territory_RU', 's:13:"s:6:"Russia";";', 1384955887, 1387375087),
('Zend_LocaleC_en_territory_RW', 's:13:"s:6:"Rwanda";";', 1384955887, 1387375087),
('Zend_LocaleC_en_territory_SA', 's:20:"s:12:"Saudi Arabia";";', 1384955866, 1387375066),
('Zend_LocaleC_en_territory_SD', 's:12:"s:5:"Sudan";";', 1384955866, 1387375066),
('Zend_LocaleC_en_territory_SE', 's:13:"s:6:"Sweden";";', 1384955889, 1387375089),
('Zend_LocaleC_en_territory_SG', 's:16:"s:9:"Singapore";";', 1384955872, 1387375072),
('Zend_LocaleC_en_territory_SI', 's:15:"s:8:"Slovenia";";', 1384955888, 1387375088),
('Zend_LocaleC_en_territory_SK', 's:15:"s:8:"Slovakia";";', 1384955888, 1387375088),
('Zend_LocaleC_en_territory_SN', 's:14:"s:7:"Senegal";";', 1384955876, 1387375076),
('Zend_LocaleC_en_territory_SO', 's:14:"s:7:"Somalia";";', 1384955888, 1387375088),
('Zend_LocaleC_en_territory_SV', 's:19:"s:11:"El Salvador";";', 1384955874, 1387375074),
('Zend_LocaleC_en_territory_SY', 's:12:"s:5:"Syria";";', 1384955866, 1387375066),
('Zend_LocaleC_en_territory_SZ', 's:16:"s:9:"Swaziland";";', 1384955889, 1387375089),
('Zend_LocaleC_en_territory_TG', 's:11:"s:4:"Togo";";', 1384955869, 1387375069),
('Zend_LocaleC_en_territory_TH', 's:15:"s:8:"Thailand";";', 1384955890, 1387375090),
('Zend_LocaleC_en_territory_TJ', 's:18:"s:10:"Tajikistan";";', 1384955890, 1387375090),
('Zend_LocaleC_en_territory_TN', 's:14:"s:7:"Tunisia";";', 1384955866, 1387375066),
('Zend_LocaleC_en_territory_TO', 's:12:"s:5:"Tonga";";', 1384955891, 1387375091),
('Zend_LocaleC_en_territory_TR', 's:13:"s:6:"Turkey";";', 1384955882, 1387375082),
('Zend_LocaleC_en_territory_TT', 's:27:"s:19:"Trinidad and Tobago";";', 1384955872, 1387375072),
('Zend_LocaleC_en_territory_TW', 's:13:"s:6:"Taiwan";";', 1384955891, 1387375091),
('Zend_LocaleC_en_territory_TZ', 's:15:"s:8:"Tanzania";";', 1384955890, 1387375090),
('Zend_LocaleC_en_territory_UA', 's:14:"s:7:"Ukraine";";', 1384955887, 1387375087),
('Zend_LocaleC_en_territory_UM', 's:35:"s:27:"U.S. Minor Outlying Islands";";', 1384955872, 1387375072),
('Zend_LocaleC_en_territory_US', 's:21:"s:13:"United States";";', 1384955874, 1387375074),
('Zend_LocaleC_en_territory_UY', 's:14:"s:7:"Uruguay";";', 1384955875, 1387375075),
('Zend_LocaleC_en_territory_UZ', 's:18:"s:10:"Uzbekistan";";', 1384955892, 1387375092),
('Zend_LocaleC_en_territory_VE', 's:16:"s:9:"Venezuela";";', 1384955875, 1387375075),
('Zend_LocaleC_en_territory_VI', 's:27:"s:19:"U.S. Virgin Islands";";', 1384955872, 1387375072),
('Zend_LocaleC_en_territory_VN', 's:14:"s:7:"Vietnam";";', 1384955892, 1387375092),
('Zend_LocaleC_en_territory_YE', 's:12:"s:5:"Yemen";";', 1384955866, 1387375066),
('Zend_LocaleC_en_territory_YU', 's:4:"b:0;";', 1384955887, 1387375087),
('Zend_LocaleC_en_territory_ZA', 's:20:"s:12:"South Africa";";', 1384955864, 1387375064),
('Zend_LocaleC_en_territory_ZW', 's:15:"s:8:"Zimbabwe";";', 1384955872, 1387375072),
('Zend_LocaleC_en_time_', 's:16:"s:9:"h:mm:ss a";";', 1384956787, 1387375987);

-- --------------------------------------------------------

--
-- Table structure for table `cache_tags`
--

CREATE TABLE IF NOT EXISTS `cache_tags` (
  `id` varchar(165) NOT NULL DEFAULT '',
  `tag` varchar(165) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`tag`),
  KEY `id` (`id`),
  KEY `tag` (`tag`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  `allowInherit` tinyint(1) unsigned DEFAULT '0',
  `allowVariants` tinyint(1) unsigned DEFAULT '0',
  `parentClass` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `propertyVisibility` text,
  `showVariants` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `description`, `creationDate`, `modificationDate`, `userOwner`, `userModification`, `allowInherit`, `allowVariants`, `parentClass`, `icon`, `previewUrl`, `propertyVisibility`, `showVariants`) VALUES
(2, 'news', '', 1368613289, 1384958327, 2, 2, 0, 0, '', '', '/title_n%o_id', 'a:2:{s:4:"grid";a:5:{s:2:"id";b:1;s:4:"path";b:1;s:9:"published";b:1;s:16:"modificationDate";b:1;s:12:"creationDate";b:1;}s:6:"search";a:5:{s:2:"id";b:1;s:4:"path";b:1;s:9:"published";b:1;s:16:"modificationDate";b:1;s:12:"creationDate";b:1;}}', 0),
(3, 'inquiry', '', 1368620413, 1368622807, 2, 2, 0, 0, '', '', '', 'a:2:{s:4:"grid";a:5:{s:2:"id";b:1;s:4:"path";b:1;s:9:"published";b:1;s:16:"modificationDate";b:1;s:12:"creationDate";b:1;}s:6:"search";a:5:{s:2:"id";b:1;s:4:"path";b:1;s:9:"published";b:1;s:16:"modificationDate";b:1;s:12:"creationDate";b:1;}}', 0),
(4, 'person', '', 1368620452, 1368621909, 2, 2, 0, 0, '', '', '', 'a:2:{s:4:"grid";a:5:{s:2:"id";b:1;s:4:"path";b:1;s:9:"published";b:1;s:16:"modificationDate";b:1;s:12:"creationDate";b:1;}s:6:"search";a:5:{s:2:"id";b:1;s:4:"path";b:1;s:9:"published";b:1;s:16:"modificationDate";b:1;s:12:"creationDate";b:1;}}', 0),
(5, 'product', '', 1384515223, 1384957787, 2, 2, 1, 1, '', '', '/_p%o_id', 'a:2:{s:4:"grid";a:5:{s:2:"id";b:1;s:4:"path";b:1;s:9:"published";b:1;s:16:"modificationDate";b:1;s:12:"creationDate";b:1;}s:6:"search";a:5:{s:2:"id";b:1;s:4:"path";b:1;s:9:"published";b:1;s:16:"modificationDate";b:1;s:12:"creationDate";b:1;}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content_analysis`
--

CREATE TABLE IF NOT EXISTS `content_analysis` (
  `id` varchar(44) NOT NULL DEFAULT '',
  `host` varchar(255) DEFAULT NULL,
  `site` int(11) DEFAULT NULL,
  `url` varchar(2000) NOT NULL DEFAULT '',
  `type` enum('document','route') DEFAULT NULL,
  `typeReference` int(11) DEFAULT NULL,
  `facebookShares` int(11) DEFAULT NULL,
  `googlePlusOne` int(11) DEFAULT NULL,
  `links` int(5) DEFAULT NULL,
  `linksExternal` int(5) DEFAULT NULL,
  `h1` int(3) DEFAULT NULL,
  `h2` int(3) DEFAULT NULL,
  `h3` int(3) DEFAULT NULL,
  `h4` int(3) DEFAULT NULL,
  `h5` int(3) DEFAULT NULL,
  `h6` int(3) DEFAULT NULL,
  `h1Text` varchar(1000) DEFAULT NULL,
  `imgWithoutAlt` int(3) DEFAULT NULL,
  `imgWithAlt` int(3) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `urlLength` int(4) DEFAULT NULL,
  `urlParameters` int(2) DEFAULT NULL,
  `microdata` int(3) DEFAULT NULL,
  `opengraph` int(3) DEFAULT NULL,
  `twitter` int(3) DEFAULT NULL,
  `robotsTxtBlocked` tinyint(1) DEFAULT NULL,
  `robotsMetaBlocked` tinyint(1) DEFAULT NULL,
  `lastUpdate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `host` (`host`),
  KEY `lastUpdate` (`lastUpdate`),
  KEY `site` (`site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_index`
--

CREATE TABLE IF NOT EXISTS `content_index` (
  `id` varchar(44) NOT NULL DEFAULT '',
  `site` int(11) DEFAULT NULL,
  `url` varchar(2000) NOT NULL DEFAULT '',
  `content` longtext,
  `type` enum('document','route') DEFAULT NULL,
  `typeReference` int(11) DEFAULT NULL,
  `lastUpdate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lastUpdate` (`lastUpdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dependencies`
--

CREATE TABLE IF NOT EXISTS `dependencies` (
  `sourcetype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `sourceid` int(11) unsigned NOT NULL DEFAULT '0',
  `targettype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `targetid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sourcetype`,`sourceid`,`targetid`,`targettype`),
  KEY `sourceid` (`sourceid`),
  KEY `targetid` (`targetid`),
  KEY `sourcetype` (`sourcetype`),
  KEY `targettype` (`targettype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dependencies`
--

INSERT INTO `dependencies` (`sourcetype`, `sourceid`, `targettype`, `targetid`) VALUES
('document', 1, 'asset', 4),
('document', 1, 'document', 5),
('document', 1, 'asset', 5),
('document', 1, 'document', 6),
('document', 1, 'asset', 6),
('document', 1, 'document', 15),
('document', 1, 'document', 16),
('document', 1, 'document', 17),
('document', 1, 'asset', 18),
('document', 1, 'asset', 19),
('document', 1, 'asset', 27),
('document', 1, 'document', 40),
('document', 1, 'asset', 55),
('document', 1, 'document', 57),
('document', 3, 'document', 7),
('document', 3, 'document', 18),
('document', 3, 'document', 19),
('document', 3, 'document', 20),
('document', 3, 'document', 21),
('document', 3, 'asset', 22),
('document', 3, 'document', 24),
('document', 3, 'document', 25),
('document', 3, 'document', 26),
('document', 3, 'document', 27),
('document', 3, 'document', 28),
('document', 3, 'document', 29),
('document', 3, 'asset', 39),
('document', 3, 'document', 40),
('document', 3, 'asset', 40),
('document', 3, 'asset', 41),
('document', 3, 'asset', 44),
('document', 3, 'asset', 45),
('document', 3, 'asset', 46),
('document', 3, 'asset', 47),
('document', 3, 'asset', 50),
('document', 3, 'asset', 55),
('document', 3, 'asset', 56),
('document', 3, 'asset', 57),
('document', 4, 'document', 5),
('document', 4, 'document', 15),
('document', 4, 'document', 16),
('document', 4, 'document', 17),
('document', 4, 'asset', 22),
('document', 4, 'asset', 24),
('document', 4, 'document', 40),
('document', 4, 'document', 59),
('document', 5, 'document', 40),
('document', 6, 'document', 1),
('document', 6, 'document', 40),
('document', 7, 'asset', 27),
('document', 9, 'document', 5),
('document', 9, 'asset', 65),
('document', 10, 'document', 40),
('document', 12, 'document', 40),
('document', 15, 'document', 1),
('document', 15, 'document', 3),
('document', 15, 'asset', 21),
('document', 16, 'document', 1),
('document', 16, 'document', 5),
('document', 16, 'asset', 20),
('document', 17, 'document', 1),
('document', 17, 'document', 6),
('document', 17, 'asset', 18),
('document', 18, 'document', 1),
('document', 18, 'asset', 36),
('document', 19, 'asset', 17),
('document', 19, 'asset', 43),
('document', 19, 'asset', 46),
('document', 19, 'asset', 47),
('document', 19, 'asset', 48),
('document', 19, 'asset', 50),
('document', 19, 'asset', 51),
('document', 19, 'asset', 52),
('document', 20, 'asset', 35),
('document', 21, 'asset', 53),
('document', 21, 'asset', 59),
('document', 22, 'document', 3),
('document', 22, 'document', 23),
('document', 22, 'document', 40),
('document', 22, 'asset', 60),
('document', 23, 'document', 41),
('document', 24, 'asset', 27),
('document', 24, 'asset', 44),
('document', 24, 'asset', 48),
('document', 24, 'asset', 49),
('document', 24, 'asset', 51),
('document', 24, 'asset', 52),
('document', 24, 'asset', 53),
('document', 25, 'document', 15),
('document', 25, 'document', 19),
('document', 25, 'document', 20),
('document', 25, 'document', 21),
('document', 25, 'asset', 27),
('document', 25, 'asset', 44),
('document', 25, 'asset', 45),
('document', 25, 'asset', 47),
('document', 25, 'asset', 51),
('document', 25, 'asset', 54),
('document', 27, 'document', 3),
('document', 28, 'document', 3),
('document', 28, 'asset', 61),
('document', 28, 'asset', 62),
('document', 28, 'asset', 63),
('document', 29, 'document', 3),
('document', 29, 'asset', 64),
('document', 30, 'document', 5),
('document', 30, 'asset', 53),
('document', 31, 'document', 5),
('document', 31, 'document', 30),
('document', 32, 'document', 3),
('document', 33, 'document', 3),
('document', 33, 'document', 5),
('document', 34, 'document', 5),
('document', 35, 'document', 5),
('document', 35, 'asset', 51),
('document', 35, 'asset', 53),
('document', 36, 'document', 5),
('document', 37, 'document', 5),
('document', 37, 'document', 38),
('document', 38, 'document', 5),
('document', 39, 'document', 1),
('document', 40, 'document', 1),
('document', 41, 'asset', 4),
('document', 41, 'document', 5),
('document', 41, 'asset', 5),
('document', 41, 'document', 6),
('document', 41, 'asset', 6),
('document', 41, 'asset', 18),
('document', 41, 'asset', 19),
('document', 41, 'asset', 27),
('document', 41, 'document', 47),
('document', 41, 'document', 48),
('document', 41, 'document', 49),
('document', 41, 'asset', 55),
('document', 41, 'document', 58),
('document', 42, 'document', 40),
('document', 43, 'document', 40),
('document', 44, 'document', 40),
('document', 45, 'document', 40),
('document', 46, 'document', 40),
('document', 47, 'document', 3),
('document', 47, 'asset', 21),
('document', 47, 'document', 40),
('document', 48, 'document', 5),
('document', 48, 'asset', 20),
('document', 48, 'document', 40),
('document', 49, 'document', 6),
('document', 49, 'asset', 18),
('document', 49, 'document', 40),
('document', 50, 'document', 5),
('document', 50, 'asset', 22),
('document', 50, 'asset', 24),
('document', 50, 'document', 41),
('document', 50, 'document', 47),
('document', 50, 'document', 48),
('document', 50, 'document', 49),
('document', 51, 'document', 3),
('document', 51, 'document', 41),
('document', 52, 'document', 5),
('document', 52, 'document', 41),
('document', 53, 'document', 41),
('document', 54, 'document', 40),
('document', 55, 'document', 40),
('document', 56, 'document', 40),
('document', 56, 'document', 41),
('document', 57, 'document', 15),
('document', 57, 'document', 40),
('document', 58, 'document', 41),
('document', 58, 'document', 47),
('document', 58, 'document', 49),
('document', 58, 'document', 57),
('document', 59, 'document', 15),
('document', 59, 'document', 16),
('document', 59, 'document', 40),
('document', 59, 'document', 57),
('document', 60, 'asset', 4),
('document', 60, 'asset', 39),
('document', 60, 'document', 40),
('document', 60, 'document', 57),
('object', 3, 'document', 19),
('object', 3, 'document', 24),
('object', 3, 'asset', 43),
('object', 3, 'asset', 49),
('object', 3, 'asset', 52),
('object', 4, 'document', 3),
('object', 4, 'document', 27),
('object', 4, 'asset', 51),
('object', 6, 'asset', 25),
('object', 7, 'asset', 18),
('object', 8, 'asset', 20),
('object', 9, 'asset', 21),
('object', 29, 'object', 28),
('object', 31, 'object', 30),
('object', 32, 'asset', 35),
('object', 32, 'asset', 59),
('object', 35, 'asset', 51),
('object', 36, 'asset', 43);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(11) unsigned DEFAULT NULL,
  `type` enum('page','link','snippet','folder','hardlink','email') DEFAULT NULL,
  `key` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT NULL,
  `index` int(11) unsigned DEFAULT '0',
  `published` tinyint(1) unsigned DEFAULT '1',
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  `userOwner` int(11) unsigned DEFAULT NULL,
  `userModification` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  KEY `key` (`key`),
  KEY `path` (`path`),
  KEY `published` (`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `parentId`, `type`, `key`, `path`, `index`, `published`, `creationDate`, `modificationDate`, `userOwner`, `userModification`) VALUES
(1, 0, 'page', '', '/', 999999, 1, 1368522989, 1382962883, 1, 2),
(3, 40, 'page', 'basic-examples', '/en/', 1, 1, 1368523212, 1382956582, 2, 2),
(4, 40, 'page', 'introduction', '/en/', 0, 1, 1368523285, 1382962961, 2, 2),
(5, 40, 'page', 'advanced-examples', '/en/', 2, 1, 1368523389, 1382956042, 2, 2),
(6, 40, 'page', 'experiments', '/en/', 3, 1, 1368523410, 1382956044, 2, 2),
(7, 3, 'page', 'html5-video', '/en/basic-examples/', 1, 1, 1368525394, 1382956040, 2, 2),
(9, 5, 'page', 'creating-objects-using-forms', '/en/advanced-examples/', 1, 1, 1368525933, 1382956042, 2, 2),
(10, 40, 'folder', 'shared', '/en/', 5, 1, 1368527956, 1382956831, 2, 2),
(11, 10, 'folder', 'includes', '/en/shared/', 1, 1, 1368527961, 1382956831, 2, 2),
(12, 11, 'snippet', 'footer', '/en/shared/includes/', 1, 1, 1368527967, 1382956852, 2, 2),
(13, 10, 'folder', 'teasers', '/en/shared/', 2, 1, 1368531657, 1382956831, 2, 2),
(14, 13, 'folder', 'standard', '/en/shared/teasers/', 1, 1, 1368531665, 1382956831, 2, 2),
(15, 14, 'snippet', 'basic-examples', '/en/shared/teasers/standard/', 1, 1, 1368531692, 1382956831, 2, 2),
(16, 14, 'snippet', 'advanced-examples', '/en/shared/teasers/standard/', 2, 1, 1368534298, 1382956831, 2, 2),
(17, 14, 'snippet', 'experiments', '/en/shared/teasers/standard/', 3, 1, 1368534344, 1382956831, 2, 2),
(18, 3, 'page', 'pdf-viewer', '/en/basic-examples/', 2, 1, 1368548449, 1382956040, 2, 2),
(19, 3, 'page', 'galleries', '/en/basic-examples/', 3, 1, 1368549805, 1382956040, 2, 2),
(20, 3, 'page', 'glossary', '/en/basic-examples/', 4, 1, 1368559903, 1382956040, 2, 2),
(21, 3, 'page', 'thumbnails', '/en/basic-examples/', 5, 1, 1368602443, 1382956040, 2, 2),
(22, 3, 'page', 'website-translations', '/en/basic-examples/', 6, 1, 1368607207, 1382958131, 2, 2),
(23, 51, 'page', 'website-uebersetzungen', '/de/einfache-beispiele/', 0, 1, 1368608357, 1382958135, 2, 2),
(24, 3, 'page', 'content-page', '/en/basic-examples/', 0, 1, 1368609059, 1382956040, 2, 2),
(25, 3, 'page', 'editable-roundup', '/en/basic-examples/', 7, 1, 1368609569, 1382956040, 2, 2),
(26, 3, 'page', 'form', '/en/basic-examples/', 8, 1, 1368610663, 1382956040, 2, 2),
(27, 3, 'page', 'news', '/en/basic-examples/', 9, 1, 1368613137, 1382956040, 2, 2),
(28, 3, 'page', 'properties', '/en/basic-examples/', 10, 1, 1368615986, 1382956040, 2, 2),
(29, 3, 'page', 'tag-and-snippet-management', '/en/basic-examples/', 11, 1, 1368617118, 1382956040, 2, 2),
(30, 5, 'page', 'content-inheritance', '/en/advanced-examples/', 2, 1, 1368623726, 1382956042, 2, 2),
(31, 30, 'page', 'content-inheritance', '/en/advanced-examples/content-inheritance/', 2, 1, 1368623866, 1382956042, 2, 2),
(32, 3, 'link', 'pimcore.org', '/en/basic-examples/', 12, 1, 1368626404, 1382956040, 2, 2),
(33, 34, 'hardlink', 'basic-examples', '/en/advanced-examples/hard-link/', 0, 1, 1368626461, 1382956042, 2, 2),
(34, 5, 'page', 'hard-link', '/en/advanced-examples/', 4, 1, 1368626655, 1382956042, 2, 2),
(35, 5, 'page', 'image-with-hotspots-and-markers', '/en/advanced-examples/', 5, 1, 1368626888, 1382956042, 2, 2),
(36, 5, 'page', 'search', '/en/advanced-examples/', 6, 1, 1368629524, 1382956042, 2, 2),
(37, 5, 'page', 'contact-form', '/en/advanced-examples/', 7, 1, 1368630444, 1382956042, 2, 2),
(38, 37, 'email', 'email', '/en/advanced-examples/contact-form/', 1, 1, 1368631410, 1382956042, 2, 2),
(39, 1, 'page', 'error', '/', 3, 1, 1369854325, 1369854422, 2, 2),
(40, 1, 'link', 'en', '/', 0, 1, 1382956013, 1382956551, 2, 2),
(41, 1, 'page', 'de', '/', 2, 1, 1382956716, 1382962917, 2, 2),
(42, 41, 'folder', 'shared', '/de/', 4, 1, 1382956884, 1382956887, 2, 2),
(43, 42, 'folder', 'includes', '/de/shared/', 1, 1, 1382956885, 1382956888, 2, 2),
(44, 42, 'folder', 'teasers', '/de/shared/', 2, 1, 1382956885, 1382956888, 2, 2),
(45, 44, 'folder', 'standard', '/de/shared/teasers/', 1, 1, 1382956885, 1382956888, 2, 2),
(46, 43, 'snippet', 'footer', '/de/shared/includes/', 1, 1, 1382956886, 1382956919, 2, 2),
(47, 45, 'snippet', 'basic-examples', '/de/shared/teasers/standard/', 1, 1, 1382956886, 1382957000, 2, 2),
(48, 45, 'snippet', 'advanced-examples', '/de/shared/teasers/standard/', 2, 1, 1382956886, 1382957114, 2, 2),
(49, 45, 'snippet', 'experiments', '/de/shared/teasers/standard/', 3, 1, 1382956887, 1382957197, 2, 2),
(50, 41, 'page', 'einfuehrung', '/de/', 0, 1, 1382957658, 1382957760, 2, 2),
(51, 41, 'page', 'einfache-beispiele', '/de/', 1, 1, 1382957793, 1382957910, 2, 2),
(52, 41, 'page', 'beispiele-fur-fortgeschrittene', '/de/', 2, 1, 1382957961, 1382957999, 2, 2),
(53, 51, 'page', 'neuigkeiten', '/de/einfache-beispiele/', 9, 1, 1382958188, 1382958240, 2, 2),
(54, 1, 'folder', 'shared', '/', 4, 1, 1382959757, 1382959757, 2, 2),
(55, 54, 'folder', 'includes', '/shared/', 1, 1, 1382959767, 1382959768, 2, 2),
(56, 55, 'snippet', 'languages', '/shared/includes/', 1, 1, 1382959774, 1382959822, 2, 2),
(57, 40, 'snippet', 'sidebar', '/en/', 4, 1, 1382962826, 1382962845, 2, 2),
(58, 41, 'snippet', 'sidebar', '/de/', 3, 1, 1382962891, 1382962906, 2, 2),
(59, 4, 'snippet', 'sidebar', '/en/introduction/', 1, 1, 1382962940, 1382962952, 2, 2),
(60, 1, 'page', 'product', '/', 5, 1, 1384770487, 1384947681, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `documents_doctypes`
--

CREATE TABLE IF NOT EXISTS `documents_doctypes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` enum('page','snippet','email') DEFAULT NULL,
  `priority` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `documents_doctypes`
--

INSERT INTO `documents_doctypes` (`id`, `name`, `module`, `controller`, `action`, `template`, `type`, `priority`) VALUES
(1, 'Content-Page', '', 'content', 'default', '', 'page', 0),
(2, 'Standard-Teaser', '', '', '', '/snippets/standard-teaser.php', 'snippet', 0),
(3, 'Sidebar', '', '', '', '/includes/sidebar.php', 'snippet', 0);

-- --------------------------------------------------------

--
-- Table structure for table `documents_elements`
--

CREATE TABLE IF NOT EXISTS `documents_elements` (
  `documentId` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`documentId`,`name`),
  KEY `documentId` (`documentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_elements`
--

INSERT INTO `documents_elements` (`documentId`, `name`, `type`, `data`) VALUES
(1, 'authorcontent3', 'input', 'Albert Einstein'),
(1, 'blockcontent1', 'block', 'a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";}'),
(1, 'carouselSlides', 'select', '3'),
(1, 'cHeadline_0', 'input', 'Ready to get impressed?'),
(1, 'cHeadline_1', 'input', 'It''ll blow your mind.'),
(1, 'cHeadline_2', 'input', 'Oh yeah, it''s that good'),
(1, 'cImage_0', 'image', 'a:9:{s:2:"id";i:4;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(1, 'cImage_1', 'image', 'a:9:{s:2:"id";i:5;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(1, 'cImage_2', 'image', 'a:9:{s:2:"id";i:6;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(1, 'cLink_0', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(1, 'cLink_1', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(1, 'cLink_2', 'link', 'a:15:{s:4:"text";s:9:"Checkmate";s:4:"path";s:12:"/experiments";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:6;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(1, 'content', 'areablock', 'a:2:{i:0;a:2:{s:3:"key";s:1:"2";s:4:"type";s:19:"standard-teaser-row";}i:1;a:2:{s:3:"key";s:1:"1";s:4:"type";s:10:"featurette";}}'),
(1, 'contentcontent_blockcontent11_1', 'wysiwyg', '<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.</p>\n'),
(1, 'contentcontent_blockcontent11_2', 'wysiwyg', '<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n'),
(1, 'contentcontent_blockcontent11_3', 'wysiwyg', '<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n'),
(1, 'cText_0', 'textarea', 'Check out our examples and dive into the next generation of digital data management.'),
(1, 'cText_1', 'textarea', 'See for yourself.'),
(1, 'cText_2', 'textarea', 'See for yourself'),
(1, 'headlinecontent_blockcontent11_1', 'input', 'Lorem ipsum.'),
(1, 'headlinecontent_blockcontent11_2', 'input', 'Oh yeah, it''s that good.'),
(1, 'headlinecontent_blockcontent11_3', 'input', 'And lastly, this one.'),
(1, 'imagecontent_blockcontent11_1', 'image', 'a:9:{s:2:"id";i:55;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(1, 'imagecontent_blockcontent11_2', 'image', 'a:9:{s:2:"id";i:18;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(1, 'imagecontent_blockcontent11_3', 'image', 'a:9:{s:2:"id";i:19;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(1, 'imagePositioncontent_blockcontent11_1', 'select', ''),
(1, 'imagePositioncontent_blockcontent11_2', 'select', 'left'),
(1, 'imagePositioncontent_blockcontent11_3', 'select', ''),
(1, 'multiselect', 'multiselect', 'a:0:{}'),
(1, 'myCheckbox', 'checkbox', ''),
(1, 'myDate', 'date', ''),
(1, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(1, 'myImageBlock', 'block', 'a:0:{}'),
(1, 'myInput', 'input', ''),
(1, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(1, 'myMultihref', 'multihref', 'a:0:{}'),
(1, 'myNumber', 'numeric', ''),
(1, 'mySelect', 'select', ''),
(1, 'myTextarea', 'textarea', ''),
(1, 'myWysiwyg', 'wysiwyg', ''),
(1, 'postitioncontent_blockcontent11_1', 'select', ''),
(1, 'postitioncontent_blockcontent11_2', 'select', 'left'),
(1, 'postitioncontent_blockcontent11_3', 'select', ''),
(1, 'quotecontent3', 'input', 'We can''t solve problems by using the same kind of thinking we used when we created them.'),
(1, 'sublinecontent_blockcontent11_1', 'input', 'Cum sociis.'),
(1, 'sublinecontent_blockcontent11_2', 'input', 'See for yourself.'),
(1, 'sublinecontent_blockcontent11_3', 'input', 'Checkmate.'),
(1, 'teaser_0content2', 'snippet', '15'),
(1, 'teaser_1content2', 'snippet', '16'),
(1, 'teaser_2content2', 'snippet', '17'),
(1, 'typecontent_blockcontent11_1', 'select', ''),
(1, 'typecontent_blockcontent11_2', 'select', 'video'),
(1, 'typecontent_blockcontent11_3', 'select', ''),
(1, 'type_0content2', 'select', ''),
(1, 'type_1content2', 'select', ''),
(1, 'type_2content2', 'select', ''),
(1, 'videocontent_blockcontent11_2', 'video', 'a:5:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:5:"title";s:0:"";s:11:"description";s:0:"";s:6:"poster";N;}'),
(3, 'circle1content1', 'checkbox', ''),
(3, 'circle1content2', 'checkbox', '1'),
(3, 'circle1content3', 'checkbox', '1'),
(3, 'circle1content4', 'checkbox', ''),
(3, 'circle2content1', 'checkbox', ''),
(3, 'circle2content2', 'checkbox', '1'),
(3, 'circle2content3', 'checkbox', '1'),
(3, 'circle2content4', 'checkbox', ''),
(3, 'circle3content1', 'checkbox', ''),
(3, 'circle3content2', 'checkbox', '1'),
(3, 'circle3content3', 'checkbox', '1'),
(3, 'circle3content4', 'checkbox', ''),
(3, 'content', 'areablock', 'a:4:{i:0;a:2:{s:3:"key";s:1:"3";s:4:"type";s:19:"standard-teaser-row";}i:1;a:2:{s:3:"key";s:1:"1";s:4:"type";s:19:"standard-teaser-row";}i:2;a:2:{s:3:"key";s:1:"4";s:4:"type";s:19:"standard-teaser-row";}i:3;a:2:{s:3:"key";s:1:"2";s:4:"type";s:19:"standard-teaser-row";}}'),
(3, 'headDescription', 'input', ''),
(3, 'headline', 'input', 'Basic Examples'),
(3, 'headline1content1', 'input', 'HTML5 Video'),
(3, 'headline1content2', 'input', 'Glossary'),
(3, 'headline1content3', 'input', 'Simple Content'),
(3, 'headline1content4', 'input', 'News'),
(3, 'headline2content1', 'input', 'PDF Viewer'),
(3, 'headline2content2', 'input', 'Thumbnails'),
(3, 'headline2content3', 'input', 'Round-Up'),
(3, 'headline2content4', 'input', 'Properties'),
(3, 'headline3content1', 'input', 'Galleries'),
(3, 'headline3content2', 'input', 'Website Translations'),
(3, 'headline3content3', 'input', 'Simple Form'),
(3, 'headline3content4', 'input', 'Tag Manager'),
(3, 'headTitle', 'input', ''),
(3, 'image1content1', 'image', 'a:9:{s:2:"id";i:41;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image1content2', 'image', 'a:9:{s:2:"id";i:55;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image1content3', 'image', 'a:9:{s:2:"id";i:50;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image1content4', 'image', 'a:9:{s:2:"id";i:47;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image2content1', 'image', 'a:9:{s:2:"id";i:39;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image2content2', 'image', 'a:9:{s:2:"id";i:56;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image2content3', 'image', 'a:9:{s:2:"id";i:45;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image2content4', 'image', 'a:9:{s:2:"id";i:46;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image3content1', 'image', 'a:9:{s:2:"id";i:40;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image3content2', 'image', 'a:9:{s:2:"id";i:57;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image3content3', 'image', 'a:9:{s:2:"id";i:44;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'image3content4', 'image', 'a:9:{s:2:"id";i:22;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(3, 'link1content1', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:27:"/basic-examples/html5-video";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:7;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'link1content2', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:24:"/basic-examples/glossary";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:20;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'link1content3', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:28:"/basic-examples/content-page";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:24;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'link1content4', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:20:"/basic-examples/news";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:27;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'link2content1', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:26:"/basic-examples/pdf-viewer";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:18;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'link2content2', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:26:"/basic-examples/thumbnails";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:21;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'link2content3', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:32:"/basic-examples/editable-roundup";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:25;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'link2content4', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:26:"/basic-examples/properties";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:28;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'link3content1', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:25:"/basic-examples/galleries";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:19;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'link3content2', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(3, 'link3content3', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:20:"/basic-examples/form";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:26;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'link3content4', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:42:"/basic-examples/tag-and-snippet-management";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:29;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(3, 'text1content1', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text1content2', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text1content3', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text1content4', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text2content1', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text2content2', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text2content3', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text2content4', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text3content1', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text3content2', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text3content3', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'text3content4', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(3, 'type_0content1', 'select', 'direct'),
(3, 'type_0content2', 'select', 'direct'),
(3, 'type_0content3', 'select', 'direct'),
(3, 'type_0content4', 'select', 'direct'),
(3, 'type_1content1', 'select', 'direct'),
(3, 'type_1content2', 'select', 'direct'),
(3, 'type_1content3', 'select', 'direct'),
(3, 'type_1content4', 'select', 'direct'),
(3, 'type_2content1', 'select', 'direct'),
(3, 'type_2content2', 'select', 'direct'),
(3, 'type_2content3', 'select', 'direct'),
(3, 'type_2content4', 'select', 'direct'),
(4, 'blockcontent2', 'block', 'a:1:{i:0;s:1:"1";}'),
(4, 'circle2content1', 'checkbox', ''),
(4, 'content', 'areablock', 'a:3:{i:0;a:2:{s:3:"key";s:1:"3";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"1";s:4:"type";s:19:"standard-teaser-row";}i:2;a:2:{s:3:"key";s:1:"2";s:4:"type";s:10:"featurette";}}'),
(4, 'contentcontent3', 'wysiwyg', '<p>Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. <a href="/basic-examples">Etiam rhoncus</a>.</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</li>\n	<li>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.</li>\n	<li>Maecenas nec odio et ante tincidunt tempus.</li>\n	<li><a href="/basic-examples">Donec vitae sapien ut libero venenatis faucibus.</a></li>\n	<li>Nullam quis ante.</li>\n	<li>Etiam sit amet orci eget eros <a href="/advanced-examples">faucibus </a>tincidunt.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform <a href="/experiments">grammatica</a>, pronunciation e plu sommun paroles.</p>\n\n<p>&nbsp;</p>\n\n<ol>\n	<li>It va esser tam simplic quam Occidental in fact, it va esser Occidental.</li>\n	<li>A un Angleso it va semblar un simplificat Angles, quam un skeptic <a href="/introduction">Cambridge </a>amico dit me que Occidental es.</li>\n	<li>Li Europan lingues es membres del sam familie.</li>\n	<li>Lor separat existentie es un myth.</li>\n	<li>Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</li>\n	<li>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules.</li>\n</ol>\n\n<p>&nbsp;</p>\n'),
(4, 'contentcontent_blockcontent22_1', 'wysiwyg', '<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\n'),
(4, 'headDescription', 'input', 'Overview of the project and how to get started with a simple template.'),
(4, 'headline', 'input', 'Introduction'),
(4, 'headline2content1', 'input', ''),
(4, 'headlinecontent1', 'input', 'Nullam quis ante'),
(4, 'headlinecontent3', 'input', 'Maecenas tempus, tellus eget condimentum rhoncu'),
(4, 'headlinecontent_blockcontent22_1', 'input', 'Ullamcorper Scelerisque '),
(4, 'headTitle', 'input', 'Getting started'),
(4, 'image2content1', 'image', 'a:9:{s:2:"id";N;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(4, 'imagecontent1', 'image', 'a:9:{s:2:"id";i:22;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(4, 'imagecontent_blockcontent22_1', 'image', 'a:9:{s:2:"id";i:24;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(4, 'imagePositioncontent_blockcontent22_1', 'select', ''),
(4, 'leadcontent3', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(4, 'link2content1', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(4, 'linkcontent1', 'link', 'a:14:{s:4:"text";s:12:"Etiam rhoncu";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";}'),
(4, 'postitioncontent_blockcontent22_1', 'select', ''),
(4, 'sublinecontent_blockcontent22_1', 'input', ''),
(4, 'teaser_0content1', 'snippet', '15'),
(4, 'teaser_1content1', 'snippet', '16'),
(4, 'teaser_2content1', 'snippet', '17'),
(4, 'text2content1', 'wysiwyg', ''),
(4, 'textcontent1', 'wysiwyg', '<p>Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.</p>\n'),
(4, 'typecontent_blockcontent22_1', 'select', ''),
(4, 'type_0content1', 'select', ''),
(4, 'type_1content1', 'select', 'snippet'),
(4, 'type_2content1', 'select', 'snippet'),
(5, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(5, 'contentcontent1', 'wysiwyg', '<p>The following list is generated automatically. See controller/action to see how it''s done.&nbsp;</p>\n'),
(5, 'headDescription', 'input', ''),
(5, 'headline', 'input', 'Advanced Examples'),
(5, 'headlinecontent1', 'input', ''),
(5, 'headTitle', 'input', ''),
(5, 'leadcontent1', 'wysiwyg', ''),
(6, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(6, 'contentcontent1', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.</p>\n\n<p>&nbsp;</p>\n\n<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.</p>\n\n<p>&nbsp;</p>\n\n<p>Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n'),
(6, 'headDescription', 'input', ''),
(6, 'headline', 'input', 'Experiments'),
(6, 'headlinecontent1', 'input', 'This space is reserved for your individual experiments & tests. '),
(6, 'headTitle', 'input', ''),
(6, 'leadcontent1', 'wysiwyg', ''),
(7, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:5:"video";}}'),
(7, 'headDescription', 'input', ''),
(7, 'headline', 'input', 'HTML5 Video is just as simple as that ....'),
(7, 'headlinecontent1', 'input', ''),
(7, 'headTitle', 'input', ''),
(7, 'leadcontent1', 'wysiwyg', '<p>Just drop an video from your assets, the video will be automatically converted to the different HTML5 formats and to the correct size.&nbsp;</p>\n'),
(7, 'videocontent1', 'video', 'a:5:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:5:"title";s:0:"";s:11:"description";s:0:"";s:6:"poster";N;}'),
(9, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(9, 'contentcontent1', 'wysiwyg', '<p>&nbsp;</p>\n\n<p>In this example we dynamically create objects out of the data submitted via the form.</p>\n\n<p>The you can use the same approach to create objects using a <strong>commandline script</strong>, or wherever you need it.</p>\n\n<p>After submitting the form you''ll find the data in "Objects" <em>/crm</em> and <em>/inquiries</em>.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img pimcore_disable_thumbnail="true" pimcore_id="65" pimcore_type="asset" src="/screenshots/objects-forms.png" style="width:308px" /></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<h2><strong>And here''s the form:&nbsp;</strong></h2>\n'),
(9, 'errorMessage', 'input', 'Please fill all fields and accept the terms of use. '),
(9, 'headDescription', 'input', ''),
(9, 'headline', 'input', 'Creating Objects & Assets with a Form'),
(9, 'headlinecontent1', 'input', ''),
(9, 'headTitle', 'input', ''),
(9, 'leadcontent1', 'wysiwyg', ''),
(12, 'linklinks1', 'link', 'a:11:{s:4:"text";s:11:"pimcore.org";s:4:"path";s:23:"http://www.pimcore.org/";s:6:"target";s:6:"_blank";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(12, 'linklinks2', 'link', 'a:11:{s:4:"text";s:13:"Documentation";s:4:"path";s:28:"http://www.pimcore.org/wiki/";s:6:"target";s:6:"_blank";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(12, 'linklinks3', 'link', 'a:11:{s:4:"text";s:11:"Bug Tracker";s:4:"path";s:30:"http://www.pimcore.org/issues/";s:6:"target";s:6:"_blank";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(12, 'links', 'block', 'a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";}'),
(12, 'multiselect', 'multiselect', 'a:0:{}'),
(12, 'myCheckbox', 'checkbox', ''),
(12, 'myDate', 'date', ''),
(12, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(12, 'myImageBlock', 'block', 'a:0:{}'),
(12, 'myInput', 'input', ''),
(12, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(12, 'myMultihref', 'multihref', 'a:0:{}'),
(12, 'myNumber', 'numeric', ''),
(12, 'mySelect', 'select', ''),
(12, 'myTextarea', 'textarea', ''),
(12, 'myWysiwyg', 'wysiwyg', ''),
(12, 'text', 'wysiwyg', '<p>Designed and built with all the love in the world by&nbsp;<a href="http://twitter.com/mdo" target="_blank">@mdo</a>&nbsp;and&nbsp;<a href="http://twitter.com/fat" target="_blank">@fat</a>.</p>\n\n<p>Code licensed under&nbsp;<a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>,&nbsp;<a href="http://glyphicons.com/">Glyphicons Free</a>&nbsp;licensed under&nbsp;<a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>\n\n<p><strong>Â© Templates pimcore.org licensed under BSD License</strong></p>\n'),
(15, 'circle', 'checkbox', ''),
(15, 'headline', 'input', 'Full Responsive'),
(15, 'image', 'image', 'a:9:{s:2:"id";i:21;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(15, 'link', 'link', 'a:15:{s:4:"text";s:11:"Lorem ipsum";s:4:"path";s:15:"/basic-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:3;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(15, 'text', 'wysiwyg', '<p>This demo is based on Bootstrap, the most popular, intuitive, and powerful front-end framework.</p>\n'),
(16, 'circle', 'checkbox', ''),
(16, 'headline', 'input', 'Drag & Drop Interface'),
(16, 'image', 'image', 'a:9:{s:2:"id";i:20;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(16, 'link', 'link', 'a:15:{s:4:"text";s:12:"Etiam rhoncu";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(16, 'text', 'wysiwyg', '<p>Content is created by simply dragging &amp; dropping blocks, that can&nbsp;be editited in-place and wysiwyg.&nbsp;</p>\n'),
(17, 'circle', 'checkbox', ''),
(17, 'headline', 'input', 'HTML5 omnipresent'),
(17, 'image', 'image', 'a:9:{s:2:"id";i:18;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(17, 'link', 'link', 'a:15:{s:4:"text";s:14:"Quisque rutrum";s:4:"path";s:12:"/experiments";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:6;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(17, 'text', 'wysiwyg', '<p>Drag &amp; drop upload directly&nbsp;into the asset tree, automatic html5 video transcoding, and much more ...</p>\n'),
(18, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:3:"pdf";}}'),
(18, 'headDescription', 'input', ''),
(18, 'headline', 'input', 'Isn''t that amazing?'),
(18, 'headlinecontent1', 'input', ''),
(18, 'headTitle', 'input', ''),
(18, 'leadcontent1', 'wysiwyg', '<p>Just drop a PDF, doc(x), xls(x) or many other formats, et voilÃ¡ ...&nbsp;</p>\n'),
(18, 'pdfcontent1', 'pdf', 'a:2:{s:2:"id";i:36;s:8:"hotspots";a:0:{}}'),
(19, 'content', 'areablock', 'a:2:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:14:"gallery-folder";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:21:"gallery-single-images";}}'),
(19, 'gallerycontent1', 'renderlet', 'a:3:{s:2:"id";i:17;s:4:"type";s:5:"asset";s:7:"subtype";s:6:"folder";}'),
(19, 'gallerycontent2', 'block', 'a:7:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";i:4;s:1:"5";i:5;s:1:"6";i:6;s:1:"7";}'),
(19, 'headDescription', 'input', ''),
(19, 'headline', 'input', 'Creating custom galleries is very simple'),
(19, 'headlinecontent1', 'input', 'Autogenerated Gallery (using Renderlet)'),
(19, 'headlinecontent2', 'input', 'Custom assembled Gallery'),
(19, 'headTitle', 'input', ''),
(19, 'imagecontent_gallerycontent22_1', 'image', 'a:9:{s:2:"id";i:48;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(19, 'imagecontent_gallerycontent22_2', 'image', 'a:9:{s:2:"id";i:43;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(19, 'imagecontent_gallerycontent22_3', 'image', 'a:9:{s:2:"id";i:50;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(19, 'imagecontent_gallerycontent22_4', 'image', 'a:9:{s:2:"id";i:47;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(19, 'imagecontent_gallerycontent22_5', 'image', 'a:9:{s:2:"id";i:46;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(19, 'imagecontent_gallerycontent22_6', 'image', 'a:9:{s:2:"id";i:51;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(19, 'imagecontent_gallerycontent22_7', 'image', 'a:9:{s:2:"id";i:52;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(19, 'leadcontent1', 'wysiwyg', '<p>Drag an asset folder on the following drop area, and the "renderlet" will create automatically a gallery out of the images in the folder.</p>\n'),
(19, 'leadcontent2', 'wysiwyg', ''),
(20, 'content', 'areablock', 'a:2:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}}'),
(20, 'contentcontent1', 'wysiwyg', '<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n\n<p>&nbsp;</p>\n\n<p>Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.</p>\n\n<p>&nbsp;</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n'),
(20, 'headDescription', 'input', ''),
(20, 'headline', 'input', 'The Glossary ...'),
(20, 'headlinecontent1', 'input', ''),
(20, 'headlinecontent2', 'input', ''),
(20, 'headTitle', 'input', ''),
(20, 'imagecontent2', 'image', 'a:9:{s:2:"id";i:35;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(20, 'leadcontent1', 'wysiwyg', '<p>... makes it very simple to automatically link keywords, abbreviation and acronyms. This is not only perfect for SEO but also makes it super easy to navigate in the content.&nbsp;</p>\n'),
(20, 'leadcontent2', 'wysiwyg', '<p>&nbsp;</p>\n\n<p>... this is how it looks in the admin interface.</p>\n'),
(21, 'content', 'areablock', 'a:2:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}}'),
(21, 'contentcontent1', 'wysiwyg', ''),
(21, 'content_bottom', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:5:"image";}}'),
(21, 'headDescription', 'input', ''),
(21, 'headline', 'input', 'Incredible Possibilities'),
(21, 'headlinecontent1', 'input', ''),
(21, 'headlinecontent2', 'input', 'This is the original image'),
(21, 'headlinecontent_bottom1', 'input', 'This is how it looks in the admin interface ... '),
(21, 'headTitle', 'input', ''),
(21, 'image', 'image', 'a:9:{s:2:"id";N;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'imagecontent2', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'imagecontent_bottom1', 'image', 'a:9:{s:2:"id";i:59;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img1', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img10', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img11', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img12', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img2', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img3', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img4', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img5', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img6', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img7', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img8', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'img9', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(21, 'leadcontent1', 'wysiwyg', ''),
(21, 'leadcontent2', 'wysiwyg', ''),
(21, 'leadcontent_bottom1', 'wysiwyg', ''),
(21, 'multiselect', 'multiselect', 'a:0:{}'),
(21, 'myCheckbox', 'checkbox', ''),
(21, 'myDate', 'date', ''),
(21, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(21, 'myImageBlock', 'block', 'a:0:{}'),
(21, 'myInput', 'input', ''),
(21, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(21, 'myMultihref', 'multihref', 'a:0:{}'),
(21, 'myNumber', 'numeric', ''),
(21, 'mySelect', 'select', ''),
(21, 'myTextarea', 'textarea', ''),
(21, 'myWysiwyg', 'wysiwyg', ''),
(22, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(22, 'contentBottom', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:5:"image";}}'),
(22, 'contentcontent1', 'wysiwyg', '<p>&nbsp;</p>\n\n<p><a href="/de/einfache-beispiele/website-uebersetzungen" pimcore_id="23" pimcore_type="document">Please visit this page to see the German translation of this page.</a></p>\n\n<p>&nbsp;</p>\n\n<p>Following some examples:&nbsp;</p>\n\n<p>&nbsp;</p>\n'),
(22, 'headDescription', 'input', ''),
(22, 'headline', 'input', 'Website Translations'),
(22, 'headlinecontent1', 'input', ''),
(22, 'headlinecontentBottom1', 'input', ''),
(22, 'headTitle', 'input', ''),
(22, 'imagecontentBottom1', 'image', 'a:9:{s:2:"id";i:60;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(22, 'leadcontent1', 'wysiwyg', '<p>Common used terms across the website can be translated centrally, hassle-free and comfortable.&nbsp;</p>\n'),
(22, 'leadcontentBottom1', 'wysiwyg', '<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>This is how it looks in the admin interface ...&nbsp;</p>\n'),
(22, 'multiselect', 'multiselect', 'a:0:{}'),
(22, 'myCheckbox', 'checkbox', ''),
(22, 'myDate', 'date', ''),
(22, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(22, 'myImageBlock', 'block', 'a:0:{}'),
(22, 'myInput', 'input', ''),
(22, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(22, 'myMultihref', 'multihref', 'a:0:{}'),
(22, 'myNumber', 'numeric', ''),
(22, 'mySelect', 'select', ''),
(22, 'myTextarea', 'textarea', ''),
(22, 'myWysiwyg', 'wysiwyg', ''),
(23, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(23, 'contentBottom', 'areablock', 'a:0:{}'),
(23, 'contentcontent1', 'wysiwyg', '<p>Folgend ein paar Beispiele:&nbsp;</p>\n'),
(23, 'headDescription', 'input', ''),
(23, 'headline', 'input', 'Website Ãœbersetzungen'),
(23, 'headlinecontent1', 'input', ''),
(23, 'headTitle', 'input', ''),
(23, 'leadcontent1', 'wysiwyg', '<p>HÃ¤ufig genutzte Begriffe auf der gesamten Website kÃ¶nnen komfortabel, zentral und einfach Ã¼bersetzt werden.</p>\n'),
(23, 'multiselect', 'multiselect', 'a:0:{}'),
(23, 'myCheckbox', 'checkbox', ''),
(23, 'myDate', 'date', ''),
(23, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(23, 'myImageBlock', 'block', 'a:0:{}'),
(23, 'myInput', 'input', ''),
(23, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(23, 'myMultihref', 'multihref', 'a:0:{}'),
(23, 'myNumber', 'numeric', ''),
(23, 'mySelect', 'select', ''),
(23, 'myTextarea', 'textarea', ''),
(23, 'myWysiwyg', 'wysiwyg', ''),
(24, 'authorcontent5', 'input', 'Albert Einstein'),
(24, 'blockcontent1', 'block', 'a:2:{i:0;s:1:"1";i:1;s:1:"2";}'),
(24, 'content', 'areablock', 'a:5:{i:0;a:2:{s:3:"key";s:1:"2";s:4:"type";s:21:"gallery-single-images";}i:1;a:2:{s:3:"key";s:1:"3";s:4:"type";s:7:"wysiwyg";}i:2;a:2:{s:3:"key";s:1:"5";s:4:"type";s:10:"blockquote";}i:3;a:2:{s:3:"key";s:1:"1";s:4:"type";s:10:"featurette";}i:4;a:2:{s:3:"key";s:1:"4";s:4:"type";s:5:"image";}}'),
(24, 'contentcontent3', 'wysiwyg', '<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</li>\n	<li>Phasellus viverra nulla ut metus varius laoreet.</li>\n	<li>Quisque rutrum. Aenean imperdiet.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Etiam ultricies nisi vel augue. Curabitur <a href="/basic-examples/galleries">ullamcorper </a>ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\n'),
(24, 'contentcontent_blockcontent11_1', 'wysiwyg', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n'),
(24, 'contentcontent_blockcontent11_2', 'wysiwyg', '<p>Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.</p>\n'),
(24, 'gallerycontent2', 'block', 'a:4:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";}'),
(24, 'headDescription', 'input', ''),
(24, 'headline', 'input', 'This is just a simple Content-Page ...'),
(24, 'headlinecontent2', 'input', 'Where some Content-Blocks are mixed together. '),
(24, 'headlinecontent3', 'input', 'Nulla consequat massa quis enim'),
(24, 'headlinecontent4', 'input', ''),
(24, 'headlinecontent_blockcontent11_1', 'input', 'Lorem ipsum.'),
(24, 'headlinecontent_blockcontent11_2', 'input', 'Etiam ultricies.'),
(24, 'headTitle', 'input', ''),
(24, 'imagecontent4', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(24, 'imagecontent_blockcontent11_1', 'image', 'a:9:{s:2:"id";i:48;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(24, 'imagecontent_gallerycontent22_1', 'image', 'a:9:{s:2:"id";i:51;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(24, 'imagecontent_gallerycontent22_2', 'image', 'a:9:{s:2:"id";i:52;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(24, 'imagecontent_gallerycontent22_3', 'image', 'a:9:{s:2:"id";i:44;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(24, 'imagecontent_gallerycontent22_4', 'image', 'a:9:{s:2:"id";i:49;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(24, 'leadcontent2', 'wysiwyg', '<p>African Animals</p>\n'),
(24, 'leadcontent3', 'wysiwyg', '<p>Donec pede justo, fringilla vel, aliquet nec</p>\n'),
(24, 'leadcontent4', 'wysiwyg', ''),
(24, 'postitioncontent_blockcontent11_1', 'select', ''),
(24, 'postitioncontent_blockcontent11_2', 'select', 'left'),
(24, 'quotecontent5', 'input', 'We can''t solve problems by using the same kind of thinking we used when we created them.'),
(24, 'sublinecontent_blockcontent11_1', 'input', 'Dolor sit amet.'),
(24, 'sublinecontent_blockcontent11_2', 'input', 'Nam eget dui.'),
(24, 'typecontent_blockcontent11_1', 'select', ''),
(24, 'typecontent_blockcontent11_2', 'select', 'video'),
(24, 'videocontent_blockcontent11_2', 'video', 'a:5:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:5:"title";s:0:"";s:11:"description";s:0:"";s:6:"poster";i:49;}'),
(25, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(25, 'contentcontent1', 'wysiwyg', ''),
(25, 'headDescription', 'input', ''),
(25, 'headline', 'input', 'This is an overview of all available "editables" (except area/areablock/block)'),
(25, 'headlinecontent1', 'input', 'Please view this page in the editmode (admin interface)!'),
(25, 'headTitle', 'input', ''),
(25, 'leadcontent1', 'wysiwyg', '<p>... nothing to see here ;-)&nbsp;</p>\n'),
(25, 'multiselect', 'multiselect', 'a:0:{}'),
(25, 'myCheckbox', 'checkbox', '1'),
(25, 'myDate', 'date', '1368662400'),
(25, 'myHref', 'href', 'a:3:{s:2:"id";i:21;s:4:"type";s:8:"document";s:7:"subtype";s:4:"page";}'),
(25, 'myImage', 'image', 'a:9:{s:2:"id";i:47;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(25, 'myImageBlock', 'block', 'a:0:{}'),
(25, 'myInput', 'input', 'Some Text'),
(25, 'myLink', 'link', 'a:15:{s:4:"text";s:7:"My Link";s:4:"path";s:25:"/basic-examples/galleries";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:19;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(25, 'myMultiHref', 'multihref', 'a:6:{i:0;a:4:{s:2:"id";i:20;s:4:"path";s:24:"/basic-examples/glossary";s:4:"type";s:8:"document";s:7:"subtype";s:4:"page";}i:1;a:4:{s:2:"id";i:21;s:4:"path";s:26:"/basic-examples/thumbnails";s:4:"type";s:8:"document";s:7:"subtype";s:4:"page";}i:2;a:4:{s:2:"id";i:25;s:4:"path";s:32:"/basic-examples/editable-roundup";s:4:"type";s:8:"document";s:7:"subtype";s:4:"page";}i:3;a:4:{s:2:"id";i:51;s:4:"path";s:48:"/demo-website/examples/south-africa/img_1842.jpg";s:4:"type";s:5:"asset";s:7:"subtype";s:5:"image";}i:4;a:4:{s:2:"id";i:44;s:4:"path";s:48:"/demo-website/examples/south-africa/img_2133.jpg";s:4:"type";s:5:"asset";s:7:"subtype";s:5:"image";}i:5;a:4:{s:2:"id";i:45;s:4:"path";s:48:"/demo-website/examples/south-africa/img_2240.jpg";s:4:"type";s:5:"asset";s:7:"subtype";s:5:"image";}}'),
(25, 'myMultiselect', 'multiselect', 'a:2:{i:0;s:6:"value2";i:1;s:6:"value4";}'),
(25, 'myNumber', 'numeric', ''),
(25, 'myNumeric', 'numeric', '123'),
(25, 'myRenderlet', 'renderlet', 'a:3:{s:2:"id";i:54;s:4:"type";s:5:"asset";s:7:"subtype";s:6:"folder";}'),
(25, 'mySelect', 'select', 'option2'),
(25, 'mySnippet', 'snippet', '15'),
(25, 'myTextarea', 'textarea', 'Some Text'),
(25, 'myVideo', 'video', 'a:5:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:5:"title";s:0:"";s:11:"description";s:0:"";s:6:"poster";N;}');
INSERT INTO `documents_elements` (`documentId`, `name`, `type`, `data`) VALUES
(25, 'myWysiwyg', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.</p>\n\n<p>&nbsp;</p>\n\n<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\n\n<p>&nbsp;</p>\n\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n'),
(25, 'tableName', 'table', 'a:2:{i:0;a:3:{i:0;s:7:"Value 1";i:1;s:7:"Value 2";i:2;s:7:"Value 3";}i:1;a:3:{i:0;s:4:"this";i:1;s:2:"is";i:2;s:4:"test";}}'),
(26, 'multiselect', 'multiselect', 'a:0:{}'),
(26, 'myCheckbox', 'checkbox', ''),
(26, 'myDate', 'date', ''),
(26, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(26, 'myImageBlock', 'block', 'a:0:{}'),
(26, 'myInput', 'input', ''),
(26, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(26, 'myMultihref', 'multihref', 'a:0:{}'),
(26, 'myNumber', 'numeric', ''),
(26, 'mySelect', 'select', ''),
(26, 'myTextarea', 'textarea', ''),
(26, 'myWysiwyg', 'wysiwyg', ''),
(27, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(27, 'contentcontent1', 'wysiwyg', ''),
(27, 'headDescription', 'input', ''),
(27, 'headline', 'input', 'News'),
(27, 'headlinecontent1', 'input', ''),
(27, 'headTitle', 'input', ''),
(27, 'leadcontent1', 'wysiwyg', '<p>Any kind of structured data is stored in "Objects".&nbsp;</p>\n'),
(27, 'multiselect', 'multiselect', 'a:0:{}'),
(27, 'myCheckbox', 'checkbox', ''),
(27, 'myDate', 'date', ''),
(27, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(27, 'myImageBlock', 'block', 'a:0:{}'),
(27, 'myInput', 'input', ''),
(27, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(27, 'myMultihref', 'multihref', 'a:0:{}'),
(27, 'myNumber', 'numeric', ''),
(27, 'mySelect', 'select', ''),
(27, 'myTextarea', 'textarea', ''),
(27, 'myWysiwyg', 'wysiwyg', ''),
(28, 'content', 'areablock', 'a:4:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}i:2;a:2:{s:3:"key";s:1:"3";s:4:"type";s:5:"image";}i:3;a:2:{s:3:"key";s:1:"4";s:4:"type";s:5:"image";}}'),
(28, 'contentcontent1', 'wysiwyg', '<p>On this page we use "Properties" to hide the navigation on the left and to change the color of the header to blue.&nbsp;</p>\n\n<p>Properties are very useful to control the behavior or to store meta data of documents, assets and objects. And the best: they are inheritable.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>On the following screens you can see how this is done in this example.</p>\n'),
(28, 'headDescription', 'input', ''),
(28, 'headline', 'input', 'Properties'),
(28, 'headlinecontent1', 'input', ''),
(28, 'headlinecontent2', 'input', ''),
(28, 'headlinecontent3', 'input', ''),
(28, 'headlinecontent4', 'input', ''),
(28, 'headTitle', 'input', ''),
(28, 'imagecontent2', 'image', 'a:9:{s:2:"id";i:61;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(28, 'imagecontent3', 'image', 'a:9:{s:2:"id";i:62;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(28, 'imagecontent4', 'image', 'a:9:{s:2:"id";i:63;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(28, 'leadcontent1', 'wysiwyg', ''),
(28, 'leadcontent2', 'wysiwyg', ''),
(28, 'leadcontent3', 'wysiwyg', ''),
(28, 'leadcontent4', 'wysiwyg', ''),
(29, 'content', 'areablock', 'a:2:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}}'),
(29, 'contentcontent1', 'wysiwyg', '<p>This page demonstrates how to use the "Tag &amp; Snippet Management" to inject codes into the HTML source code. This functionality can be used to easily integrate tracking codes, conversion codes, social plugins and whatever that needs to go into the HTML.</p>\n\n<p>&nbsp;</p>\n\n<p>The functionality is similar to this products:&nbsp;</p>\n\n<p><a href="http://www.google.com/tagmanager/">http://www.google.com/tagmanager/</a>&nbsp;</p>\n\n<p><a href="http://www.searchdiscovery.com/satellite/">http://www.searchdiscovery.com/satellite/&nbsp;</a></p>\n\n<p><a href="http://www.tagcommander.com/en/">http://www.tagcommander.com/en/</a></p>\n\n<p>&nbsp;</p>\n\n<p>In our example we use it to integrate a facebook social plugin.</p>\n'),
(29, 'headDescription', 'input', ''),
(29, 'headline', 'input', 'Tag & Snippet Management'),
(29, 'headlinecontent1', 'input', '... gives all the freedom back to the marketing dept.'),
(29, 'headlinecontent2', 'input', ''),
(29, 'headTitle', 'input', ''),
(29, 'imagecontent2', 'image', 'a:9:{s:2:"id";i:64;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(29, 'leadcontent1', 'wysiwyg', ''),
(29, 'leadcontent2', 'wysiwyg', ''),
(30, 'content', 'areablock', 'a:3:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}i:2;a:2:{s:3:"key";s:1:"3";s:4:"type";s:7:"wysiwyg";}}'),
(30, 'contentcontent1', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.&nbsp;</p>\n'),
(30, 'contentcontent3', 'wysiwyg', '<p>Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n'),
(30, 'headDescription', 'input', ''),
(30, 'headline', 'input', 'Content Inheritance'),
(30, 'headlinecontent1', 'input', 'First Headline'),
(30, 'headlinecontent2', 'input', ''),
(30, 'headlinecontent3', 'input', 'Second Headline'),
(30, 'headTitle', 'input', ''),
(30, 'imagecontent2', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(30, 'leadcontent1', 'wysiwyg', '<p>This is the Master Document</p>\n'),
(30, 'leadcontent2', 'wysiwyg', ''),
(30, 'leadcontent3', 'wysiwyg', ''),
(31, 'content', 'areablock', 'a:3:{i:0;a:2:{s:3:"key";s:1:"3";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:5:"image";}i:2;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(31, 'headline', 'input', 'Content Inheritance (Slave)'),
(31, 'leadcontent1', 'wysiwyg', '<p>This is the Slave Document</p>\n'),
(34, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(34, 'contentcontent1', 'wysiwyg', '<p>This page has a hardlink as child (see navigation on the left).&nbsp;</p>\n\n<p>This hardlink points to "<a href="/basic-examples">Basic Examples</a>", so the whole content of /basic-examples is available in /advaned-examples/hardlink/basic-examples.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Want to know more about hardlinks?&nbsp;</p>\n\n<ul>\n	<li><a href="http://en.wikipedia.org/wiki/Hard_link">http://en.wikipedia.org/wiki/Hard_link</a></li>\n	<li>see also:&nbsp;<a href="http://en.wikipedia.org/wiki/Symbolic_link">http://en.wikipedia.org/wiki/Symbolic_link</a>&nbsp;</li>\n</ul>\n\n<p>&nbsp;</p>\n'),
(34, 'headDescription', 'input', ''),
(34, 'headline', 'input', 'Hard Link Example'),
(34, 'headlinecontent1', 'input', ''),
(34, 'headTitle', 'input', ''),
(34, 'leadcontent1', 'wysiwyg', ''),
(35, 'content', 'areablock', 'a:2:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:20:"image-hotspot-marker";}i:1;a:2:{s:3:"key";s:1:"2";s:4:"type";s:20:"image-hotspot-marker";}}'),
(35, 'headDescription', 'input', ''),
(35, 'headline', 'input', 'Image with Hotspots & Markers'),
(35, 'headTitle', 'input', ''),
(35, 'imagecontent1', 'image', 'a:9:{s:2:"id";i:53;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:4:{i:0;a:3:{s:3:"top";d:35.220125786163521;s:4:"left";d:82.098765432098759;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:27:"Table Mountain Peak Station";s:4:"type";s:9:"textfield";}}}i:1;a:3:{s:3:"top";d:67.924528301886795;s:4:"left";d:9.0534979423868318;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:16:"Victoria Harbour";s:4:"type";s:9:"textfield";}}}i:2;a:3:{s:3:"top";d:57.232704402515722;s:4:"left";d:45.267489711934154;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:12:"District Six";s:4:"type";s:9:"textfield";}}}i:3;a:3:{s:3:"top";d:45.911949685534594;s:4:"left";d:98.971193415637856;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:11:"Lion''s Head";s:4:"type";s:9:"textfield";}}}}}'),
(35, 'imagecontent2', 'image', 'a:9:{s:2:"id";i:51;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:3:{i:0;a:5:{s:3:"top";d:0.54794520547945003;s:4:"left";d:20.370370370370001;s:5:"width";d:22.016460905350002;s:6:"height";d:21.917808219177999;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:3:"Ear";s:4:"type";s:9:"textfield";}}}i:1;a:5:{s:3:"top";d:59.178082191781002;s:4:"left";d:8.8477366255144005;s:5:"width";d:33.127572016461002;s:6:"height";d:40.273972602740002;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:5:"Claws";s:4:"type";s:9:"textfield";}}}i:2;a:5:{s:3:"top";d:25.205479452054998;s:4:"left";d:11.934156378600999;s:5:"width";d:16.460905349794;s:6:"height";d:18.356164383562;s:4:"data";a:1:{i:0;a:3:{s:4:"name";s:5:"title";s:5:"value";s:3:"Eye";s:4:"type";s:9:"textfield";}}}}s:6:"marker";a:0:{}}'),
(36, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(36, 'contentcontent1', 'wysiwyg', '<p>&nbsp;</p>\n\n<p>The search is using the contents from&nbsp;pimcore.org.&nbsp;<strong>TIP</strong>: Search for "web".&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n'),
(36, 'headDescription', 'input', ''),
(36, 'headline', 'input', 'Search'),
(36, 'headlinecontent1', 'input', ''),
(36, 'headTitle', 'input', ''),
(36, 'leadcontent1', 'wysiwyg', ''),
(36, 'multiselect', 'multiselect', 'a:0:{}'),
(36, 'myCheckbox', 'checkbox', ''),
(36, 'myDate', 'date', ''),
(36, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(36, 'myImageBlock', 'block', 'a:0:{}'),
(36, 'myInput', 'input', ''),
(36, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(36, 'myMultihref', 'multihref', 'a:0:{}'),
(36, 'myNumber', 'numeric', ''),
(36, 'mySelect', 'select', ''),
(36, 'myTextarea', 'textarea', ''),
(36, 'myWysiwyg', 'wysiwyg', ''),
(37, 'content', 'areablock', 'a:0:{}'),
(37, 'headDescription', 'input', ''),
(37, 'headline', 'input', 'Contact Form'),
(37, 'headTitle', 'input', ''),
(37, 'multiselect', 'multiselect', 'a:0:{}'),
(37, 'myCheckbox', 'checkbox', ''),
(37, 'myDate', 'date', ''),
(37, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(37, 'myImageBlock', 'block', 'a:0:{}'),
(37, 'myInput', 'input', ''),
(37, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(37, 'myMultihref', 'multihref', 'a:0:{}'),
(37, 'myNumber', 'numeric', ''),
(37, 'mySelect', 'select', ''),
(37, 'myTextarea', 'textarea', ''),
(37, 'myWysiwyg', 'wysiwyg', ''),
(38, 'content', 'wysiwyg', '<p><strong>Gender</strong>: %Text(gender);&nbsp;</p>\n\n<p><strong>Firstname</strong>: %Text(firstname);<br />\n<strong>Lastname</strong>: %Text(lastname);<br />\n<strong>E-Mail</strong>: %Text(email);&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Message</strong>:<br />\n%Text(message);&nbsp;</p>\n\n<p>&nbsp;</p>\n'),
(38, 'headline', 'input', 'You''ve got a new E-Mail!'),
(38, 'multiselect', 'multiselect', 'a:0:{}'),
(38, 'myCheckbox', 'checkbox', ''),
(38, 'myDate', 'date', ''),
(38, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(38, 'myImageBlock', 'block', 'a:0:{}'),
(38, 'myInput', 'input', ''),
(38, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(38, 'myMultihref', 'multihref', 'a:0:{}'),
(38, 'myNumber', 'numeric', ''),
(38, 'mySelect', 'select', ''),
(38, 'myTextarea', 'textarea', ''),
(38, 'myWysiwyg', 'wysiwyg', ''),
(39, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(39, 'contentcontent1', 'wysiwyg', '<div id="idTextPanel">\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.</p>\n\n<p>&nbsp;</p>\n\n<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\n\n<p>&nbsp;</p>\n\n<p>Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n\n<div>&nbsp;</div>\n</div>\n'),
(39, 'headDescription', 'input', ''),
(39, 'headline', 'input', 'It seems that the page you were trying to find isn''t around anymore. '),
(39, 'headlinecontent1', 'input', ''),
(39, 'headTitle', 'input', 'Oh no!'),
(39, 'leadcontent1', 'wysiwyg', ''),
(41, 'authorcontent3', 'input', 'Albert Einstein'),
(41, 'blockcontent1', 'block', 'a:1:{i:0;s:1:"1";}'),
(41, 'carouselSlides', 'select', '3'),
(41, 'cHeadline_0', 'input', 'Bereit beeindruckt zu werden? '),
(41, 'cHeadline_1', 'input', 'Es wird dich umhauen!'),
(41, 'cHeadline_2', 'input', 'Oh ja, es ist wirklich so gut'),
(41, 'cImage_0', 'image', 'a:9:{s:2:"id";i:4;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(41, 'cImage_1', 'image', 'a:9:{s:2:"id";i:5;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(41, 'cImage_2', 'image', 'a:9:{s:2:"id";i:6;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(41, 'cLink_0', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(41, 'cLink_1', 'link', 'a:15:{s:4:"text";s:13:"See in Action";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(41, 'cLink_2', 'link', 'a:15:{s:4:"text";s:9:"Checkmate";s:4:"path";s:12:"/experiments";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:6;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(41, 'content', 'areablock', 'a:2:{i:0;a:2:{s:3:"key";s:1:"2";s:4:"type";s:19:"standard-teaser-row";}i:1;a:2:{s:3:"key";s:1:"1";s:4:"type";s:10:"featurette";}}'),
(41, 'contentcontent_blockcontent11_1', 'wysiwyg', '<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.</p>\n'),
(41, 'contentcontent_blockcontent11_2', 'wysiwyg', '<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n'),
(41, 'contentcontent_blockcontent11_3', 'wysiwyg', '<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>\n'),
(41, 'cText_0', 'textarea', 'Teste unsere Beispiele und tauche ein in die nÃ¤chste Generation von digitalem Inhaltsmanagement'),
(41, 'cText_1', 'textarea', 'Sieh'' selbst'),
(41, 'cText_2', 'textarea', 'Sieh'' selbst!'),
(41, 'headlinecontent_blockcontent11_1', 'input', 'Lorem ipsum.'),
(41, 'headlinecontent_blockcontent11_2', 'input', 'Oh yeah, it''s that good.'),
(41, 'headlinecontent_blockcontent11_3', 'input', 'And lastly, this one.'),
(41, 'imagecontent_blockcontent11_1', 'image', 'a:9:{s:2:"id";i:55;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(41, 'imagecontent_blockcontent11_2', 'image', 'a:9:{s:2:"id";i:18;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(41, 'imagecontent_blockcontent11_3', 'image', 'a:9:{s:2:"id";i:19;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(41, 'imagePositioncontent_blockcontent11_1', 'select', ''),
(41, 'imagePositioncontent_blockcontent11_2', 'select', 'left'),
(41, 'imagePositioncontent_blockcontent11_3', 'select', ''),
(41, 'multiselect', 'multiselect', 'a:0:{}'),
(41, 'myCheckbox', 'checkbox', ''),
(41, 'myDate', 'date', ''),
(41, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(41, 'myImageBlock', 'block', 'a:0:{}'),
(41, 'myInput', 'input', ''),
(41, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(41, 'myMultihref', 'multihref', 'a:0:{}'),
(41, 'myNumber', 'numeric', ''),
(41, 'mySelect', 'select', ''),
(41, 'myTextarea', 'textarea', ''),
(41, 'myWysiwyg', 'wysiwyg', ''),
(41, 'postitioncontent_blockcontent11_1', 'select', ''),
(41, 'postitioncontent_blockcontent11_2', 'select', 'left'),
(41, 'postitioncontent_blockcontent11_3', 'select', ''),
(41, 'quotecontent3', 'input', 'We can''t solve problems by using the same kind of thinking we used when we created them.'),
(41, 'sublinecontent_blockcontent11_1', 'input', 'Cum sociis.'),
(41, 'sublinecontent_blockcontent11_2', 'input', 'See for yourself.'),
(41, 'sublinecontent_blockcontent11_3', 'input', 'Checkmate.'),
(41, 'teaser_0content2', 'snippet', '47'),
(41, 'teaser_1content2', 'snippet', '48'),
(41, 'teaser_2content2', 'snippet', '49'),
(41, 'typecontent_blockcontent11_1', 'select', ''),
(41, 'typecontent_blockcontent11_2', 'select', 'video'),
(41, 'typecontent_blockcontent11_3', 'select', ''),
(41, 'type_0content2', 'select', ''),
(41, 'type_1content2', 'select', ''),
(41, 'type_2content2', 'select', ''),
(41, 'videocontent_blockcontent11_2', 'video', 'a:5:{s:2:"id";i:27;s:4:"type";s:5:"asset";s:5:"title";s:0:"";s:11:"description";s:0:"";s:6:"poster";N;}'),
(46, 'linklinks1', 'link', 'a:12:{s:4:"text";s:11:"pimcore.org";s:4:"path";s:23:"http://www.pimcore.org/";s:6:"target";s:6:"_blank";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:4:"type";s:8:"internal";}'),
(46, 'linklinks2', 'link', 'a:11:{s:4:"text";s:13:"Dokumentation";s:4:"path";s:28:"http://www.pimcore.org/wiki/";s:6:"target";s:6:"_blank";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(46, 'linklinks3', 'link', 'a:12:{s:4:"text";s:11:"Bug Tracker";s:4:"path";s:30:"http://www.pimcore.org/issues/";s:6:"target";s:6:"_blank";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:4:"type";s:8:"internal";}'),
(46, 'links', 'block', 'a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";}'),
(46, 'multiselect', 'multiselect', 'a:0:{}'),
(46, 'myCheckbox', 'checkbox', ''),
(46, 'myDate', 'date', ''),
(46, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(46, 'myImageBlock', 'block', 'a:0:{}'),
(46, 'myInput', 'input', ''),
(46, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(46, 'myMultihref', 'multihref', 'a:0:{}'),
(46, 'myNumber', 'numeric', ''),
(46, 'mySelect', 'select', ''),
(46, 'myTextarea', 'textarea', ''),
(46, 'myWysiwyg', 'wysiwyg', ''),
(46, 'text', 'wysiwyg', '<p>Designed and built with all the love in the world by&nbsp;<a href="http://twitter.com/mdo" target="_blank">@mdo</a>&nbsp;and&nbsp;<a href="http://twitter.com/fat" target="_blank">@fat</a>.</p>\n\n<p>Code licensed under&nbsp;<a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>,&nbsp;<a href="http://glyphicons.com/">Glyphicons Free</a>&nbsp;licensed under&nbsp;<a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>\n\n<p><strong>Â© Templates pimcore.org licensed under BSD License</strong></p>\n'),
(47, 'circle', 'checkbox', ''),
(47, 'headline', 'input', 'Voll Responsive'),
(47, 'image', 'image', 'a:9:{s:2:"id";i:21;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(47, 'link', 'link', 'a:15:{s:4:"text";s:11:"Lorem ipsum";s:4:"path";s:18:"/en/basic-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:3;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(47, 'text', 'wysiwyg', '<p>Diese Demo basiert auf Bootstrap, dem wohl bekanntesten,&nbsp;beliebtesten und flexibelsten Fontend-Framework.</p>\n'),
(48, 'circle', 'checkbox', ''),
(48, 'headline', 'input', 'Drag & Drop Inhaltserstellung'),
(48, 'image', 'image', 'a:9:{s:2:"id";i:20;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(48, 'link', 'link', 'a:15:{s:4:"text";s:12:"Etiam rhoncu";s:4:"path";s:21:"/en/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(48, 'text', 'wysiwyg', '<p>Inhalt wird einfach per drag &amp; drop mit InhaltsblÃ¶cken erstellt, welche dann direkt in-line editiert werden kÃ¶nnen.</p>\n'),
(49, 'circle', 'checkbox', ''),
(49, 'headline', 'input', 'HTML5 immer & Ã¼berall'),
(49, 'image', 'image', 'a:9:{s:2:"id";i:18;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(49, 'link', 'link', 'a:15:{s:4:"text";s:14:"Quisque rutrum";s:4:"path";s:15:"/en/experiments";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:6;s:12:"internalType";s:8:"document";s:4:"type";s:8:"internal";}'),
(49, 'text', 'wysiwyg', '<p>&nbsp;</p>\n\n<p>Bilder direkt per drag &amp; drop vom Desktop&nbsp;in den Baum in pimcore hochladen, automatische HTML5 Video Konvertierung&nbsp;und viel mehr ...</p>\n'),
(50, 'blockcontent2', 'block', 'a:1:{i:0;s:1:"1";}'),
(50, 'circle2content1', 'checkbox', ''),
(50, 'content', 'areablock', 'a:3:{i:0;a:2:{s:3:"key";s:1:"3";s:4:"type";s:7:"wysiwyg";}i:1;a:2:{s:3:"key";s:1:"1";s:4:"type";s:19:"standard-teaser-row";}i:2;a:2:{s:3:"key";s:1:"2";s:4:"type";s:10:"featurette";}}'),
(50, 'contentcontent3', 'wysiwyg', '<p>Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. <a href="/basic-examples">Etiam rhoncus</a>.</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</li>\n	<li>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.</li>\n	<li>Maecenas nec odio et ante tincidunt tempus.</li>\n	<li><a href="/basic-examples">Donec vitae sapien ut libero venenatis faucibus.</a></li>\n	<li>Nullam quis ante.</li>\n	<li>Etiam sit amet orci eget eros <a href="/advanced-examples">faucibus </a>tincidunt.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform <a href="/experiments">grammatica</a>, pronunciation e plu sommun paroles.</p>\n\n<p>&nbsp;</p>\n\n<ol>\n	<li>It va esser tam simplic quam Occidental in fact, it va esser Occidental.</li>\n	<li>A un Angleso it va semblar un simplificat Angles, quam un skeptic <a href="/introduction">Cambridge </a>amico dit me que Occidental es.</li>\n	<li>Li Europan lingues es membres del sam familie.</li>\n	<li>Lor separat existentie es un myth.</li>\n	<li>Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</li>\n	<li>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules.</li>\n</ol>\n\n<p>&nbsp;</p>\n'),
(50, 'contentcontent_blockcontent22_1', 'wysiwyg', '<p>Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\n'),
(50, 'headDescription', 'input', 'Ãœberblick Ã¼ber das Projekt und wie man mit einer einfachen Vorlage loslegen kann.'),
(50, 'headline', 'input', 'EinfÃ¼hrung'),
(50, 'headline2content1', 'input', ''),
(50, 'headlinecontent1', 'input', 'Nullam quis ante'),
(50, 'headlinecontent3', 'input', 'Maecenas tempus, tellus eget condimentum rhoncu'),
(50, 'headlinecontent_blockcontent22_1', 'input', 'Ullamcorper Scelerisque '),
(50, 'headTitle', 'input', 'Erste Schritte'),
(50, 'image2content1', 'image', 'a:9:{s:2:"id";N;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(50, 'imagecontent1', 'image', 'a:9:{s:2:"id";i:22;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(50, 'imagecontent_blockcontent22_1', 'image', 'a:9:{s:2:"id";i:24;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(50, 'imagePositioncontent_blockcontent22_1', 'select', ''),
(50, 'leadcontent3', 'wysiwyg', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>\n'),
(50, 'link2content1', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(50, 'linkcontent1', 'link', 'a:14:{s:4:"text";s:12:"Etiam rhoncu";s:4:"path";s:18:"/advanced-examples";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:5;s:12:"internalType";s:8:"document";}'),
(50, 'postitioncontent_blockcontent22_1', 'select', ''),
(50, 'sublinecontent_blockcontent22_1', 'input', ''),
(50, 'teaser_0content1', 'snippet', '47'),
(50, 'teaser_1content1', 'snippet', '48'),
(50, 'teaser_2content1', 'snippet', '49'),
(50, 'text2content1', 'wysiwyg', ''),
(50, 'textcontent1', 'wysiwyg', '<p>Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.</p>\n'),
(50, 'typecontent_blockcontent22_1', 'select', ''),
(50, 'type_0content1', 'select', ''),
(50, 'type_1content1', 'select', 'snippet'),
(50, 'type_2content1', 'select', 'snippet'),
(51, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(51, 'contentcontent1', 'wysiwyg', ''),
(51, 'headDescription', 'input', ''),
(51, 'headline', 'input', 'Ãœbersicht Ã¼ber einfache Beispiele'),
(51, 'headlinecontent1', 'input', ''),
(51, 'headTitle', 'input', ''),
(51, 'leadcontent1', 'wysiwyg', '<p>Diese Seite dient nur zur Demonstration einer mehrsprachigen Seite.&nbsp;</p>\n\n<p><a href="/en/basic-examples" pimcore_id="3" pimcore_type="document">Um die Beispiele zu sehen verwende bitte die Englische Beispielseite.&nbsp;</a></p>\n'),
(52, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(52, 'contentcontent1', 'wysiwyg', ''),
(52, 'headDescription', 'input', ''),
(52, 'headline', 'input', 'Ãœbersicht Ã¼ber fortgeschrittene Beispiele'),
(52, 'headlinecontent1', 'input', ''),
(52, 'headTitle', 'input', ''),
(52, 'leadcontent1', 'wysiwyg', '<p>Diese Seite dient nur zur Demonstration einer mehrsprachigen Seite.&nbsp;</p>\n\n<p><a href="/en/advanced-examples" pimcore_id="5" pimcore_type="document">Um die Beispiele zu sehen verwende bitte die Englische Beispielseite.&nbsp;</a></p>\n'),
(53, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:7:"wysiwyg";}}'),
(53, 'contentcontent1', 'wysiwyg', ''),
(53, 'headDescription', 'input', ''),
(53, 'headline', 'input', 'Neuigkeiten'),
(53, 'headlinecontent1', 'input', ''),
(53, 'headTitle', 'input', ''),
(53, 'leadcontent1', 'wysiwyg', '<p>Alle strukturierten Daten werden in "Objects" gespeichert.&nbsp;</p>\n'),
(53, 'multiselect', 'multiselect', 'a:0:{}'),
(53, 'myCheckbox', 'checkbox', ''),
(53, 'myDate', 'date', ''),
(53, 'myHref', 'href', 'a:3:{s:2:"id";N;s:4:"type";N;s:7:"subtype";N;}'),
(53, 'myImageBlock', 'block', 'a:0:{}'),
(53, 'myInput', 'input', ''),
(53, 'myLink', 'link', 'a:10:{s:4:"type";s:8:"internal";s:4:"path";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:6:"target";s:0:"";s:5:"class";s:0:"";s:10:"attributes";s:0:"";}'),
(53, 'myMultihref', 'multihref', 'a:0:{}'),
(53, 'myNumber', 'numeric', ''),
(53, 'mySelect', 'select', ''),
(53, 'myTextarea', 'textarea', ''),
(53, 'myWysiwyg', 'wysiwyg', ''),
(56, 'languages', 'block', 'a:2:{i:0;s:1:"1";i:1;s:1:"2";}'),
(56, 'linklanguages1', 'link', 'a:14:{s:4:"text";s:7:"English";s:4:"path";s:3:"/en";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:2:"en";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:40;s:12:"internalType";s:8:"document";}'),
(56, 'linklanguages2', 'link', 'a:14:{s:4:"text";s:6:"German";s:4:"path";s:3:"/de";s:6:"target";s:0:"";s:10:"parameters";s:0:"";s:6:"anchor";s:0:"";s:5:"title";s:0:"";s:9:"accesskey";s:0:"";s:3:"rel";s:0:"";s:8:"tabindex";s:0:"";s:5:"class";s:2:"de";s:10:"attributes";s:0:"";s:8:"internal";b:1;s:10:"internalId";i:41;s:12:"internalType";s:8:"document";}'),
(57, 'teasers', 'block', 'a:1:{i:0;s:1:"1";}'),
(57, 'teaserteasers1', 'snippet', '15'),
(58, 'teasers', 'block', 'a:2:{i:0;s:1:"1";i:1;s:1:"2";}'),
(58, 'teaserteasers1', 'snippet', '47'),
(58, 'teaserteasers2', 'snippet', '49'),
(59, 'teasers', 'block', 'a:2:{i:0;s:1:"1";i:1;s:1:"2";}'),
(59, 'teaserteasers1', 'snippet', '15'),
(59, 'teaserteasers2', 'snippet', '16'),
(60, 'authorcontent1', 'input', ''),
(60, 'content', 'areablock', 'a:1:{i:0;a:2:{s:3:"key";s:1:"1";s:4:"type";s:5:"image";}}'),
(60, 'contentblock', 'block', 'a:1:{i:0;s:1:"1";}'),
(60, 'contentcontentblock1', 'wysiwyg', '<h2 style="font-style: italic; text-align: center;">Dit is een test om content te maken</h2>\n'),
(60, 'headDescription', 'input', ''),
(60, 'headerImage', 'image', 'a:9:{s:2:"id";i:39;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(60, 'Headline', 'input', ''),
(60, 'headlinecontent1', 'input', ''),
(60, 'headlineSUPERTEST', 'input', 'UBER MEGA TEST TEST TEST'),
(60, 'headTitle', 'input', ''),
(60, 'imagecontent1', 'image', 'a:9:{s:2:"id";i:4;s:3:"alt";s:0:"";s:11:"cropPercent";N;s:9:"cropWidth";N;s:10:"cropHeight";N;s:7:"cropTop";N;s:8:"cropLeft";N;s:8:"hotspots";a:0:{}s:6:"marker";a:0:{}}'),
(60, 'leadcontent1', 'wysiwyg', '<p style="text-align: center;">TEST TEST TEST&nbsp;</p>\n'),
(60, 'product_headline', 'input', 'Pimcore'),
(60, 'quotecontent1', 'input', 'TEST TEST TEST'),
(60, 'sublinecontentblock1', 'input', 'Hier is de wysiwyg Title');

-- --------------------------------------------------------

--
-- Table structure for table `documents_email`
--

CREATE TABLE IF NOT EXISTS `documents_email` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_email`
--

INSERT INTO `documents_email` (`id`, `module`, `controller`, `action`, `template`, `to`, `from`, `cc`, `bcc`, `subject`) VALUES
(38, '', 'default', 'default', '/advanced/email.php', 'bernhard.rusch@elements.at', 'webserver@pimcore.org', '', '', 'Contact Form');

-- --------------------------------------------------------

--
-- Table structure for table `documents_hardlink`
--

CREATE TABLE IF NOT EXISTS `documents_hardlink` (
  `id` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `propertiesFromSource` tinyint(1) DEFAULT NULL,
  `childsFromSource` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_hardlink`
--

INSERT INTO `documents_hardlink` (`id`, `sourceId`, `propertiesFromSource`, `childsFromSource`) VALUES
(33, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents_link`
--

CREATE TABLE IF NOT EXISTS `documents_link` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `internalType` enum('document','asset') DEFAULT NULL,
  `internal` int(11) unsigned DEFAULT NULL,
  `direct` varchar(1000) DEFAULT NULL,
  `linktype` enum('direct','internal') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_link`
--

INSERT INTO `documents_link` (`id`, `internalType`, `internal`, `direct`, `linktype`) VALUES
(32, '', 0, 'http://www.pimcore.org/', 'direct'),
(40, 'document', 1, '', 'internal');

-- --------------------------------------------------------

--
-- Table structure for table `documents_page`
--

CREATE TABLE IF NOT EXISTS `documents_page` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `metaData` text,
  `prettyUrl` varchar(255) DEFAULT NULL,
  `contentMasterDocumentId` int(11) DEFAULT NULL,
  `css` longtext,
  `personas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prettyUrl` (`prettyUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_page`
--

INSERT INTO `documents_page` (`id`, `module`, `controller`, `action`, `template`, `title`, `description`, `keywords`, `metaData`, `prettyUrl`, `contentMasterDocumentId`, `css`, `personas`) VALUES
(1, '', 'content', 'portal', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(3, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(4, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(5, '', 'advanced', 'index', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(6, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(7, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(9, '', 'advanced', 'object-form', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(18, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(19, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(20, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(21, '', 'content', 'thumbnails', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(22, '', 'content', 'website-translations', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(23, '', 'content', 'website-translations', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(24, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(25, '', 'content', 'editable-roundup', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(26, '', 'content', 'simple-form', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(27, '', 'news', 'index', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(28, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(29, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(30, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(31, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 30, '', ''),
(34, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(35, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(36, '', 'advanced', 'search', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(37, '', 'advanced', 'contact-form', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(39, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(41, '', 'content', 'portal', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(50, '', 'content', 'default', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(51, '', 'content', 'default', '', 'Einfache Beispiele', '', '', 'a:0:{}', '', 0, '', ''),
(52, '', 'content', 'default', '', 'Beispiele fÃ¼r Fortgeschrittene', '', '', 'a:0:{}', '', 0, '', ''),
(53, '', 'news', 'index', '', '', '', '', 'a:0:{}', '', 0, '', ''),
(60, '', 'product', 'index', '', 'product', '', '', 'a:0:{}', '/product', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `documents_snippet`
--

CREATE TABLE IF NOT EXISTS `documents_snippet` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `contentMasterDocumentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_snippet`
--

INSERT INTO `documents_snippet` (`id`, `module`, `controller`, `action`, `template`, `contentMasterDocumentId`) VALUES
(12, '', 'default', 'default', '/includes/footer.php', 0),
(15, '', 'default', 'default', '/snippets/standard-teaser.php', 0),
(16, '', 'default', 'default', '/snippets/standard-teaser.php', 0),
(17, '', 'default', 'default', '/snippets/standard-teaser.php', 0),
(46, '', 'default', 'default', '/includes/footer.php', 0),
(47, '', 'default', 'default', '/snippets/standard-teaser.php', 0),
(48, '', 'default', 'default', '/snippets/standard-teaser.php', 0),
(49, '', 'default', 'default', '/snippets/standard-teaser.php', 0),
(56, '', 'default', 'default', '/includes/language.php', 0),
(57, '', 'default', 'default', '/includes/sidebar.php', 0),
(58, '', 'default', 'default', '/includes/sidebar.php', 0),
(59, '', 'default', 'default', '/includes/sidebar.php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `edit_lock`
--

CREATE TABLE IF NOT EXISTS `edit_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `sessionId` varchar(255) DEFAULT NULL,
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `cidtype` (`cid`,`ctype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=630 ;

--
-- Dumping data for table `edit_lock`
--

INSERT INTO `edit_lock` (`id`, `cid`, `ctype`, `userId`, `sessionId`, `date`) VALUES
(393, 18, 'document', 2, '98grh6fiktm0060rcp9fmpp364', 1378992626),
(432, 15, 'document', 2, 'v0vdohamc903sqas18hgg3k6p0', 1382962050),
(433, 57, 'document', 2, 'v0vdohamc903sqas18hgg3k6p0', 1382962826),
(442, 35, 'asset', 2, 'atg722fvv2orja7rk7v6evqdn2', 1384358146),
(449, 9, 'object', 2, 'atg722fvv2orja7rk7v6evqdn2', 1384358646),
(450, 41, 'document', 2, 'atg722fvv2orja7rk7v6evqdn2', 1384358738),
(463, 3, 'document', 2, 'qgujedfnnks300e0hgdl4jiu33', 1384419420),
(556, 34, 'object', 2, 'eb3fsd5v66i6on3b8cnq99p3n3', 1384521014),
(560, 2, 'object', 2, 'atg722fvv2orja7rk7v6evqdn2', 1384521578),
(561, 7, 'object', 2, 'atg722fvv2orja7rk7v6evqdn2', 1384521599),
(564, 39, 'asset', 2, 'atg722fvv2orja7rk7v6evqdn2', 1384523407),
(620, 60, 'document', 2, '1ntsj7hk1251rp9pfjhcrpubn7', 1384955896),
(622, 6, 'object', 2, '1ntsj7hk1251rp9pfjhcrpubn7', 1384955897),
(623, 3, 'object', 2, '1ntsj7hk1251rp9pfjhcrpubn7', 1384955897),
(624, 37, 'asset', 2, '1ntsj7hk1251rp9pfjhcrpubn7', 1384955897),
(625, 33, 'object', 2, '1ntsj7hk1251rp9pfjhcrpubn7', 1384956519),
(626, 36, 'object', 2, '1ntsj7hk1251rp9pfjhcrpubn7', 1384956842),
(627, 35, 'object', 2, '1ntsj7hk1251rp9pfjhcrpubn7', 1384957823),
(628, 19, 'document', 2, '1ntsj7hk1251rp9pfjhcrpubn7', 1384958057),
(629, 27, 'document', 2, '1ntsj7hk1251rp9pfjhcrpubn7', 1384958122);

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE IF NOT EXISTS `email_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `documentId` int(11) DEFAULT NULL,
  `requestUri` varchar(255) DEFAULT NULL,
  `params` text,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `sentDate` bigint(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `glossary`
--

CREATE TABLE IF NOT EXISTS `glossary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(10) DEFAULT NULL,
  `casesensitive` tinyint(1) DEFAULT NULL,
  `exactmatch` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `acronym` varchar(255) DEFAULT NULL,
  `site` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `language` (`language`),
  KEY `site` (`site`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `glossary`
--

INSERT INTO `glossary` (`id`, `language`, `casesensitive`, `exactmatch`, `text`, `link`, `abbr`, `acronym`, `site`) VALUES
(1, 'en', 0, 1, 'occidental', '7', '', '', 0),
(2, 'en', 0, 1, 'vocabular', '20', '', '', 0),
(3, 'en', 0, 1, 'resultant', '5', '', '', 0),
(4, 'en', 0, 1, 'familie', '18', '', '', 0),
(5, 'en', 0, 1, 'omnicos', '19', '', '', 0),
(6, 'en', 0, 1, 'coalesce', '', 'coalesce', '', 0),
(7, 'en', 0, 1, 'grammatica', '', '', 'grammatica', 0);

-- --------------------------------------------------------

--
-- Table structure for table `http_error_log`
--

CREATE TABLE IF NOT EXISTS `http_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(1000) DEFAULT NULL,
  `code` int(3) DEFAULT NULL,
  `parametersGet` longtext,
  `parametersPost` longtext,
  `cookies` longtext,
  `serverVars` longtext,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `path` (`path`(255)),
  KEY `code` (`code`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `keyvalue_groups`
--

CREATE TABLE IF NOT EXISTS `keyvalue_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `keyvalue_keys`
--

CREATE TABLE IF NOT EXISTS `keyvalue_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` enum('bool','number','select','text','translated') DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `possiblevalues` text,
  `group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `locks`
--

CREATE TABLE IF NOT EXISTS `locks` (
  `id` varchar(150) NOT NULL DEFAULT '',
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `ctype` enum('asset','document','object') DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notes_data`
--

CREATE TABLE IF NOT EXISTS `notes_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `type` enum('text','date','document','asset','object','bool') DEFAULT NULL,
  `data` text,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE IF NOT EXISTS `objects` (
  `o_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `o_parentId` int(11) unsigned DEFAULT NULL,
  `o_type` enum('object','folder','variant') DEFAULT NULL,
  `o_key` varchar(255) DEFAULT '',
  `o_path` varchar(255) DEFAULT NULL,
  `o_index` int(11) unsigned DEFAULT '0',
  `o_published` tinyint(1) unsigned DEFAULT '1',
  `o_creationDate` bigint(20) unsigned DEFAULT NULL,
  `o_modificationDate` bigint(20) unsigned DEFAULT NULL,
  `o_userOwner` int(11) unsigned DEFAULT NULL,
  `o_userModification` int(11) unsigned DEFAULT NULL,
  `o_classId` int(11) unsigned DEFAULT NULL,
  `o_className` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `key` (`o_key`),
  KEY `path` (`o_path`),
  KEY `published` (`o_published`),
  KEY `parentId` (`o_parentId`),
  KEY `type` (`o_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`o_id`, `o_parentId`, `o_type`, `o_key`, `o_path`, `o_index`, `o_published`, `o_creationDate`, `o_modificationDate`, `o_userOwner`, `o_userModification`, `o_classId`, `o_className`) VALUES
(1, 0, 'folder', '', '/', 999999, 1, 1368522989, 1368522989, 1, 1, 0, ''),
(2, 1, 'folder', 'news', '/', 0, 1, 1368613451, 1368613451, 2, 2, 0, ''),
(3, 2, 'object', 'lorem-ipsum', '/news/', 0, 1, 1368613483, 1382958769, 2, 2, 2, 'news'),
(4, 2, 'object', 'in-enim-justo', '/news/', 0, 1, 1368613645, 1382958711, 2, 2, 2, 'news'),
(5, 2, 'object', 'nam-eget-dui', '/news/', 0, 1, 1368613700, 1382958801, 2, 2, 2, 'news'),
(6, 2, 'object', 'in-enim-justo_2', '/news/', 0, 1, 1368615188, 1382958710, 2, 2, 2, 'news'),
(7, 2, 'object', 'in-enim-justo_3', '/news/', 0, 1, 1368615191, 1382958709, 2, 2, 2, 'news'),
(8, 2, 'object', 'in-enim-justo_4', '/news/', 0, 1, 1368615194, 1382958708, 2, 2, 2, 'news'),
(9, 2, 'object', 'in-enim-justo_5', '/news/', 0, 1, 1368615197, 1382958706, 2, 2, 2, 'news'),
(10, 1, 'folder', 'crm', '/', 0, 1, 1368620607, 1368620607, 2, 2, 0, ''),
(11, 1, 'folder', 'inquiries', '/', 0, 1, 1368620624, 1368620624, 2, 2, 0, ''),
(28, 10, 'object', 'john-doe.com', '/crm/', 0, 1, 1368630902, 1368630902, 0, 0, 4, 'person'),
(29, 11, 'object', 'may-15-2013-5-15-02-pm~john-doe.com', '/inquiries/', 0, 1, 1368630902, 1368630902, 0, 0, 3, 'inquiry'),
(30, 10, 'object', 'jane-doe.com', '/crm/', 0, 1, 1368630916, 1368630916, 0, 0, 4, 'person'),
(31, 11, 'object', 'may-15-2013-5-15-16-pm~jane-doe.com', '/inquiries/', 0, 1, 1368630916, 1368630916, 0, 0, 3, 'inquiry'),
(32, 2, 'object', 'mijn-test-object', '/news/', 0, 1, 1384358102, 1384358439, 2, 2, 2, 'news'),
(33, 1, 'folder', 'product', '/', 0, 1, 1384517416, 1384518377, 2, 2, NULL, NULL),
(35, 33, 'object', 'testcat1', '/product/', 0, 1, 1384523107, 1384867550, 2, 2, 5, 'product'),
(36, 33, 'object', 'testpinguin1', '/product/', 0, 1, 1384869915, 1384869938, 2, 2, 5, 'product');

-- --------------------------------------------------------

--
-- Stand-in structure for view `object_2`
--
CREATE TABLE IF NOT EXISTS `object_2` (
`oo_id` int(11)
,`oo_classId` int(11)
,`oo_className` varchar(255)
,`date` bigint(20)
,`image_1` int(11)
,`image_2` int(11)
,`image_3` int(11)
,`o_id` int(11) unsigned
,`o_parentId` int(11) unsigned
,`o_type` enum('object','folder','variant')
,`o_key` varchar(255)
,`o_path` varchar(255)
,`o_index` int(11) unsigned
,`o_published` tinyint(1) unsigned
,`o_creationDate` bigint(20) unsigned
,`o_modificationDate` bigint(20) unsigned
,`o_userOwner` int(11) unsigned
,`o_userModification` int(11) unsigned
,`o_classId` int(11) unsigned
,`o_className` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `object_3`
--
CREATE TABLE IF NOT EXISTS `object_3` (
`oo_id` int(11)
,`oo_classId` int(11)
,`oo_className` varchar(255)
,`person__id` int(11)
,`person__type` enum('document','asset','object')
,`date` bigint(20)
,`message` longtext
,`terms` tinyint(1)
,`o_id` int(11) unsigned
,`o_parentId` int(11) unsigned
,`o_type` enum('object','folder','variant')
,`o_key` varchar(255)
,`o_path` varchar(255)
,`o_index` int(11) unsigned
,`o_published` tinyint(1) unsigned
,`o_creationDate` bigint(20) unsigned
,`o_modificationDate` bigint(20) unsigned
,`o_userOwner` int(11) unsigned
,`o_userModification` int(11) unsigned
,`o_classId` int(11) unsigned
,`o_className` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `object_4`
--
CREATE TABLE IF NOT EXISTS `object_4` (
`oo_id` int(11)
,`oo_classId` int(11)
,`oo_className` varchar(255)
,`gender` varchar(255)
,`firstname` varchar(255)
,`lastname` varchar(255)
,`email` varchar(255)
,`newsletterActive` tinyint(1)
,`newsletterConfirmed` tinyint(1)
,`dateRegister` bigint(20)
,`o_id` int(11) unsigned
,`o_parentId` int(11) unsigned
,`o_type` enum('object','folder','variant')
,`o_key` varchar(255)
,`o_path` varchar(255)
,`o_index` int(11) unsigned
,`o_published` tinyint(1) unsigned
,`o_creationDate` bigint(20) unsigned
,`o_modificationDate` bigint(20) unsigned
,`o_userOwner` int(11) unsigned
,`o_userModification` int(11) unsigned
,`o_classId` int(11) unsigned
,`o_className` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `object_5`
--
CREATE TABLE IF NOT EXISTS `object_5` (
`oo_id` int(11)
,`oo_classId` int(11)
,`oo_className` varchar(255)
,`frontimage` int(11)
,`Created` bigint(20)
,`SKU` double
,`o_id` int(11) unsigned
,`o_parentId` int(11) unsigned
,`o_type` enum('object','folder','variant')
,`o_key` varchar(255)
,`o_path` varchar(255)
,`o_index` int(11) unsigned
,`o_published` tinyint(1) unsigned
,`o_creationDate` bigint(20) unsigned
,`o_modificationDate` bigint(20) unsigned
,`o_userOwner` int(11) unsigned
,`o_userModification` int(11) unsigned
,`o_classId` int(11) unsigned
,`o_className` varchar(255)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `object_localized_2_de`
--
CREATE TABLE IF NOT EXISTS `object_localized_2_de` (
`oo_id` int(11)
,`oo_classId` int(11)
,`oo_className` varchar(255)
,`date` bigint(20)
,`image_1` int(11)
,`image_2` int(11)
,`image_3` int(11)
,`o_id` int(11) unsigned
,`o_parentId` int(11) unsigned
,`o_type` enum('object','folder','variant')
,`o_key` varchar(255)
,`o_path` varchar(255)
,`o_index` int(11) unsigned
,`o_published` tinyint(1) unsigned
,`o_creationDate` bigint(20) unsigned
,`o_modificationDate` bigint(20) unsigned
,`o_userOwner` int(11) unsigned
,`o_userModification` int(11) unsigned
,`o_classId` int(11) unsigned
,`o_className` varchar(255)
,`ooo_id` int(11)
,`language` varchar(10)
,`title` varchar(255)
,`shortText` longtext
,`text` longtext
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `object_localized_2_en`
--
CREATE TABLE IF NOT EXISTS `object_localized_2_en` (
`oo_id` int(11)
,`oo_classId` int(11)
,`oo_className` varchar(255)
,`date` bigint(20)
,`image_1` int(11)
,`image_2` int(11)
,`image_3` int(11)
,`o_id` int(11) unsigned
,`o_parentId` int(11) unsigned
,`o_type` enum('object','folder','variant')
,`o_key` varchar(255)
,`o_path` varchar(255)
,`o_index` int(11) unsigned
,`o_published` tinyint(1) unsigned
,`o_creationDate` bigint(20) unsigned
,`o_modificationDate` bigint(20) unsigned
,`o_userOwner` int(11) unsigned
,`o_userModification` int(11) unsigned
,`o_classId` int(11) unsigned
,`o_className` varchar(255)
,`ooo_id` int(11)
,`language` varchar(10)
,`title` varchar(255)
,`shortText` longtext
,`text` longtext
);
-- --------------------------------------------------------

--
-- Table structure for table `object_localized_data_2`
--

CREATE TABLE IF NOT EXISTS `object_localized_data_2` (
  `ooo_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `shortText` longtext,
  `text` longtext,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `ooo_id` (`ooo_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_localized_data_2`
--

INSERT INTO `object_localized_data_2` (`ooo_id`, `language`, `title`, `shortText`, `text`) VALUES
(3, 'de', 'Er hÃ¶rte leise Schritte hinter sich', 'Das bedeutete nichts Gutes. Wer wÃ¼rde ihm schon folgen, spÃ¤t in der Nacht und dazu noch in dieser engen Gasse mitten im Ã¼bel beleumundeten Hafenviertel?', '<p>Oder geh&ouml;rten die Schritte hinter ihm zu einem der unz&auml;hligen Gesetzesh&uuml;ter dieser Stadt, und die st&auml;hlerne Acht um seine Handgelenke w&uuml;rde gleich zuschnappen? Er konnte die Aufforderung stehen zu bleiben schon h&ouml;ren. Gehetzt sah er sich um. Pl&ouml;tzlich erblickte er den schmalen Durchgang. Blitzartig drehte er sich nach rechts und verschwand zwischen den beiden Geb&auml;uden. Beinahe w&auml;re er dabei &uuml;ber den umgest&uuml;rzten M&uuml;lleimer gefallen, der mitten im Weg lag.</p>\n\n<p>Er versuchte, sich in der Dunkelheit seinen Weg zu ertasten und erstarrte: Anscheinend gab es keinen anderen Ausweg aus diesem kleinen Hof als den Durchgang, durch den er gekommen war. Die Schritte wurden lauter und lauter, er sah eine dunkle Gestalt um die Ecke biegen. Fieberhaft irrten seine Augen durch die n&auml;chtliche Dunkelheit und suchten einen Ausweg. War jetzt wirklich alles vorbei.</p>\n'),
(3, 'en', 'Lorem ipsum dolor sit amet', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.', '<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam&nbsp;<a href="/en/basic-examples/content-page" pimcore_id="24" pimcore_type="document">ultricies&nbsp;</a>nisi vel augue.</p>\n\n<p>Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget&nbsp;<a href="/en/basic-examples/galleries" pimcore_id="19" pimcore_type="document">condimentum&nbsp;rhoncus</a>, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\n'),
(4, 'de', 'Li Europan lingues es membres', 'Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.', '<p>Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</p>\n\n<p>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n'),
(4, 'en', 'In enim justo', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', '<p>Nam eget dui. Etiam rhoncus.&nbsp;<a href="/en/basic-examples" pimcore_id="3" pimcore_type="document">Maecenas&nbsp;tempus</a>, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. <a href="/en/basic-examples/news" pimcore_id="27" pimcore_type="document">Donec vitae sapien</a> ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed&nbsp;fringilla&nbsp;mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n'),
(5, 'de', 'Zwei flinke Boxer jagen die quirlige Eva', 'Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. ZwÃ¶lf BoxkÃ¤mpfer jagen Viktor quer Ã¼ber den groÃŸen Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim.', '<p>Victor jagt zw&ouml;lf Boxk&auml;mpfer quer &uuml;ber den gro&szlig;en Sylter Deich. Falsches &Uuml;ben von Xylophonmusik qu&auml;lt jeden gr&ouml;&szlig;eren Zwerg. Heiz&ouml;lr&uuml;cksto&szlig;abd&auml;mpfung. Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. Zw&ouml;lf Boxk&auml;mpfer jagen Viktor quer &uuml;ber den gro&szlig;en Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim. Sylvia wagt quick den Jux bei Pforzheim. Polyfon zwitschernd a&szlig;en M&auml;xchens V&ouml;gel R&uuml;ben, Joghurt und Quark. &quot;Fix, Schwyz!&quot; qu&auml;kt J&uuml;rgen bl&ouml;d vom Pa&szlig;.</p>\n\n<p>Victor jagt zw&ouml;lf Boxk&auml;mpfer quer &uuml;ber den gro&szlig;en Sylter Deich. Falsches &Uuml;ben von Xylophonmusik qu&auml;lt jeden gr&ouml;&szlig;eren Zwerg. Heiz&ouml;lr&uuml;cksto&szlig;abd&auml;mpfung.Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. Zw&ouml;lf Boxk&auml;mpfer jagen Viktor quer &uuml;ber den gro&szlig;en Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim. Sylvia wagt quick den Jux</p>\n'),
(5, 'en', 'Nam eget dui', 'Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.', '<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n'),
(6, 'de', 'Li Europan lingues es membres', 'Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.', '<p>Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</p>\n\n<p>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n'),
(6, 'en', 'In enim justo', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', ''),
(7, 'de', 'Li Europan lingues es membres', 'Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.', '<p>Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</p>\n\n<p>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n'),
(7, 'en', 'In enim justo', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', ''),
(8, 'de', 'Li Europan lingues es membres', 'Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.', '<p>Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</p>\n\n<p>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n'),
(8, 'en', 'In enim justo', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', ''),
(9, 'de', 'Li Europan lingues es membres', 'Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.', '<p>Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</p>\n\n<p>Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n'),
(9, 'en', 'In enim justo', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', ''),
(32, 'de', NULL, NULL, NULL),
(32, 'en', 'mijn test object', 'dit is een test voor een object. Eens kijken of ik pimcore nu foutloos aan de praat heb', '<p>blablablablabalbalblalalbalalbla</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `object_localized_query_2_de`
--

CREATE TABLE IF NOT EXISTS `object_localized_query_2_de` (
  `ooo_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `shortText` longtext,
  `text` longtext,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `ooo_id` (`ooo_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_localized_query_2_de`
--

INSERT INTO `object_localized_query_2_de` (`ooo_id`, `language`, `title`, `shortText`, `text`) VALUES
(3, 'de', 'Er hÃ¶rte leise Schritte hinter sich', 'Das bedeutete nichts Gutes. Wer wÃ¼rde ihm schon folgen, spÃ¤t in der Nacht und dazu noch in dieser engen Gasse mitten im Ã¼bel beleumundeten Hafenviertel?', 'Oder geh&ouml;rten die Schritte hinter ihm zu einem der unz&auml;hligen Gesetzesh&uuml;ter dieser Stadt, und die st&auml;hlerne Acht um seine Handgelenke w&uuml;rde gleich zuschnappen? Er konnte die Aufforderung stehen zu bleiben schon h&ouml;ren. Gehetzt sah er sich um. Pl&ouml;tzlich erblickte er den schmalen Durchgang. Blitzartig drehte er sich nach rechts und verschwand zwischen den beiden Geb&auml;uden. Beinahe w&auml;re er dabei &uuml;ber den umgest&uuml;rzten M&uuml;lleimer gefallen, der mitten im Weg lag. Er versuchte, sich in der Dunkelheit seinen Weg zu ertasten und erstarrte: Anscheinend gab es keinen anderen Ausweg aus diesem kleinen Hof als den Durchgang, durch den er gekommen war. Die Schritte wurden lauter und lauter, er sah eine dunkle Gestalt um die Ecke biegen. Fieberhaft irrten seine Augen durch die n&auml;chtliche Dunkelheit und suchten einen Ausweg. War jetzt wirklich alles vorbei. '),
(4, 'de', 'Li Europan lingues es membres', 'Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.', 'Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. '),
(5, 'de', 'Zwei flinke Boxer jagen die quirlige Eva', 'Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. ZwÃ¶lf BoxkÃ¤mpfer jagen Viktor quer Ã¼ber den groÃŸen Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim.', 'Victor jagt zw&ouml;lf Boxk&auml;mpfer quer &uuml;ber den gro&szlig;en Sylter Deich. Falsches &Uuml;ben von Xylophonmusik qu&auml;lt jeden gr&ouml;&szlig;eren Zwerg. Heiz&ouml;lr&uuml;cksto&szlig;abd&auml;mpfung. Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. Zw&ouml;lf Boxk&auml;mpfer jagen Viktor quer &uuml;ber den gro&szlig;en Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim. Sylvia wagt quick den Jux bei Pforzheim. Polyfon zwitschernd a&szlig;en M&auml;xchens V&ouml;gel R&uuml;ben, Joghurt und Quark. &quot;Fix, Schwyz!&quot; qu&auml;kt J&uuml;rgen bl&ouml;d vom Pa&szlig;. Victor jagt zw&ouml;lf Boxk&auml;mpfer quer &uuml;ber den gro&szlig;en Sylter Deich. Falsches &Uuml;ben von Xylophonmusik qu&auml;lt jeden gr&ouml;&szlig;eren Zwerg. Heiz&ouml;lr&uuml;cksto&szlig;abd&auml;mpfung.Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. Zw&ouml;lf Boxk&auml;mpfer jagen Viktor quer &uuml;ber den gro&szlig;en Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim. Sylvia wagt quick den Jux '),
(6, 'de', 'Li Europan lingues es membres', 'Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.', 'Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. '),
(7, 'de', 'Li Europan lingues es membres', 'Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.', 'Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. '),
(8, 'de', 'Li Europan lingues es membres', 'Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.', 'Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. '),
(9, 'de', 'Li Europan lingues es membres', 'Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.', 'Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. '),
(32, 'de', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `object_localized_query_2_en`
--

CREATE TABLE IF NOT EXISTS `object_localized_query_2_en` (
  `ooo_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `shortText` longtext,
  `text` longtext,
  PRIMARY KEY (`ooo_id`,`language`),
  KEY `ooo_id` (`ooo_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_localized_query_2_en`
--

INSERT INTO `object_localized_query_2_en` (`ooo_id`, `language`, `title`, `shortText`, `text`) VALUES
(3, 'en', 'Lorem ipsum dolor sit amet', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.', 'Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam&nbsp;<a href="/en/basic-examples/content-page" pimcore_id="24" pimcore_type="document">ultricies&nbsp;</a>nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget&nbsp;<a href="/en/basic-examples/galleries" pimcore_id="19" pimcore_type="document">condimentum&nbsp;rhoncus</a>, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. '),
(4, 'en', 'In enim justo', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', 'Nam eget dui. Etiam rhoncus.&nbsp;<a href="/en/basic-examples" pimcore_id="3" pimcore_type="document">Maecenas&nbsp;tempus</a>, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. <a href="/en/basic-examples/news" pimcore_id="27" pimcore_type="document">Donec vitae sapien</a> ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed&nbsp;fringilla&nbsp;mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, '),
(5, 'en', 'Nam eget dui', 'Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, '),
(6, 'en', 'In enim justo', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', ''),
(7, 'en', 'In enim justo', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', ''),
(8, 'en', 'In enim justo', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', ''),
(9, 'en', 'In enim justo', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', ''),
(32, 'en', 'mijn test object', 'dit is een test voor een object. Eens kijken of ik pimcore nu foutloos aan de praat heb', 'blablablablabalbalblalalbalalbla ');

-- --------------------------------------------------------

--
-- Table structure for table `object_query_2`
--

CREATE TABLE IF NOT EXISTS `object_query_2` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '2',
  `oo_className` varchar(255) DEFAULT 'news',
  `date` bigint(20) DEFAULT NULL,
  `image_1` int(11) DEFAULT NULL,
  `image_2` int(11) DEFAULT NULL,
  `image_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_query_2`
--

INSERT INTO `object_query_2` (`oo_id`, `oo_classId`, `oo_className`, `date`, `image_1`, `image_2`, `image_3`) VALUES
(3, 2, 'news', 1374147900, 49, 43, 52),
(4, 2, 'news', 1369761300, 51, 0, 0),
(5, 2, 'news', 1370037600, 0, 0, 0),
(6, 2, 'news', 1354558500, 25, 0, 0),
(7, 2, 'news', 1360606500, 18, 0, 0),
(8, 2, 'news', 1360001700, 20, 0, 0),
(9, 2, 'news', 1352830500, 21, 0, 0),
(32, 2, 'news', 1384300800, 35, 59, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `object_query_3`
--

CREATE TABLE IF NOT EXISTS `object_query_3` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '3',
  `oo_className` varchar(255) DEFAULT 'inquiry',
  `person__id` int(11) DEFAULT NULL,
  `person__type` enum('document','asset','object') DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `message` longtext,
  `terms` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_query_3`
--

INSERT INTO `object_query_3` (`oo_id`, `oo_classId`, `oo_className`, `person__id`, `person__type`, `date`, `message`, `terms`) VALUES
(29, 3, 'inquiry', 28, 'object', 1368630902, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1),
(31, 3, 'inquiry', 30, 'object', 1368630916, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `object_query_4`
--

CREATE TABLE IF NOT EXISTS `object_query_4` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '4',
  `oo_className` varchar(255) DEFAULT 'persons',
  `gender` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `newsletterActive` tinyint(1) DEFAULT NULL,
  `newsletterConfirmed` tinyint(1) DEFAULT NULL,
  `dateRegister` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_query_4`
--

INSERT INTO `object_query_4` (`oo_id`, `oo_classId`, `oo_className`, `gender`, `firstname`, `lastname`, `email`, `newsletterActive`, `newsletterConfirmed`, `dateRegister`) VALUES
(28, 4, 'persons', 'male', 'John', 'Doe', 'john@doe.com', 0, 0, 1368630902),
(30, 4, 'persons', 'female', 'Jane', 'Doe', 'jane@doe.com', 0, 0, 1368630916);

-- --------------------------------------------------------

--
-- Table structure for table `object_query_5`
--

CREATE TABLE IF NOT EXISTS `object_query_5` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `oo_classId` int(11) DEFAULT '5',
  `oo_className` varchar(255) DEFAULT 'product',
  `frontimage` int(11) DEFAULT NULL,
  `Created` bigint(20) DEFAULT NULL,
  `SKU` double DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_query_5`
--

INSERT INTO `object_query_5` (`oo_id`, `oo_classId`, `oo_className`, `frontimage`, `Created`, `SKU`) VALUES
(35, 5, 'product', 51, 1384474500, 17),
(36, 5, 'product', 43, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `object_relations_2`
--

CREATE TABLE IF NOT EXISTS `object_relations_2` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`src_id`,`dest_id`,`ownertype`,`ownername`,`fieldname`,`type`,`position`),
  KEY `index` (`index`),
  KEY `src_id` (`src_id`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `object_relations_3`
--

CREATE TABLE IF NOT EXISTS `object_relations_3` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`src_id`,`dest_id`,`ownertype`,`ownername`,`fieldname`,`type`,`position`),
  KEY `index` (`index`),
  KEY `src_id` (`src_id`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_relations_3`
--

INSERT INTO `object_relations_3` (`src_id`, `dest_id`, `type`, `fieldname`, `index`, `ownertype`, `ownername`, `position`) VALUES
(29, 28, 'object', 'person', 0, 'object', '', '0'),
(31, 30, 'object', 'person', 0, 'object', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `object_relations_4`
--

CREATE TABLE IF NOT EXISTS `object_relations_4` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`src_id`,`dest_id`,`ownertype`,`ownername`,`fieldname`,`type`,`position`),
  KEY `index` (`index`),
  KEY `src_id` (`src_id`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `object_relations_5`
--

CREATE TABLE IF NOT EXISTS `object_relations_5` (
  `src_id` int(11) NOT NULL DEFAULT '0',
  `dest_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`src_id`,`dest_id`,`ownertype`,`ownername`,`fieldname`,`type`,`position`),
  KEY `index` (`index`),
  KEY `src_id` (`src_id`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `type` (`type`),
  KEY `ownername` (`ownername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `object_store_2`
--

CREATE TABLE IF NOT EXISTS `object_store_2` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `date` bigint(20) DEFAULT NULL,
  `image_1` int(11) DEFAULT NULL,
  `image_2` int(11) DEFAULT NULL,
  `image_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_store_2`
--

INSERT INTO `object_store_2` (`oo_id`, `date`, `image_1`, `image_2`, `image_3`) VALUES
(3, 1374147900, 49, 43, 52),
(4, 1369761300, 51, 0, 0),
(5, 1370037600, 0, 0, 0),
(6, 1354558500, 25, 0, 0),
(7, 1360606500, 18, 0, 0),
(8, 1360001700, 20, 0, 0),
(9, 1352830500, 21, 0, 0),
(32, 1384300800, 35, 59, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `object_store_3`
--

CREATE TABLE IF NOT EXISTS `object_store_3` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `date` bigint(20) DEFAULT NULL,
  `message` longtext,
  `terms` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_store_3`
--

INSERT INTO `object_store_3` (`oo_id`, `date`, `message`, `terms`) VALUES
(29, 1368630902, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1),
(31, 1368630916, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `object_store_4`
--

CREATE TABLE IF NOT EXISTS `object_store_4` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `gender` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `newsletterActive` tinyint(1) DEFAULT NULL,
  `newsletterConfirmed` tinyint(1) DEFAULT NULL,
  `dateRegister` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_store_4`
--

INSERT INTO `object_store_4` (`oo_id`, `gender`, `firstname`, `lastname`, `email`, `newsletterActive`, `newsletterConfirmed`, `dateRegister`) VALUES
(28, 'male', 'John', 'Doe', 'john@doe.com', 0, 0, 1368630902),
(30, 'female', 'Jane', 'Doe', 'jane@doe.com', 0, 0, 1368630916);

-- --------------------------------------------------------

--
-- Table structure for table `object_store_5`
--

CREATE TABLE IF NOT EXISTS `object_store_5` (
  `oo_id` int(11) NOT NULL DEFAULT '0',
  `frontimage` int(11) DEFAULT NULL,
  `Created` bigint(20) DEFAULT NULL,
  `SKU` double DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `object_store_5`
--

INSERT INTO `object_store_5` (`oo_id`, `frontimage`, `Created`, `SKU`) VALUES
(35, 51, 1384474500, 17),
(36, 43, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `cpath` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` enum('text','date','document','asset','object','bool','select') DEFAULT NULL,
  `data` text,
  `inheritable` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`cid`,`ctype`,`name`),
  KEY `cpath` (`cpath`),
  KEY `inheritable` (`inheritable`),
  KEY `ctype` (`ctype`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`cid`, `ctype`, `cpath`, `name`, `type`, `data`, `inheritable`) VALUES
(1, 'document', '/', 'language', 'text', 'en', 1),
(1, 'document', '/', 'leftNavStartNode', 'document', '40', 1),
(1, 'document', '/', 'mainNavStartNode', 'document', '40', 1),
(1, 'document', '/', 'navigation_name', 'text', 'Home', 0),
(1, 'document', '/', 'sidebar', 'document', '57', 1),
(3, 'document', '/en/basic-examples', 'leftNavStartNode', 'document', '3', 1),
(3, 'document', '/en/basic-examples', 'navigation_name', 'text', 'Basic Examples', 0),
(4, 'document', '/en/introduction', 'navigation_name', 'text', 'Introduction', 0),
(4, 'document', '/en/introduction', 'sidebar', 'document', '59', 1),
(5, 'document', '/en/advanced-examples', 'leftNavStartNode', 'document', '5', 1),
(5, 'document', '/en/advanced-examples', 'navigation_name', 'text', 'Advanced Examples', 0),
(6, 'document', '/en/experiments', 'navigation_name', 'text', 'Experiments', 0),
(7, 'document', '/en/basic-examples/html5-video', 'navigation_name', 'text', 'HTML5 Video', 0),
(9, 'document', '/en/advanced-examples/creating-objects-using-forms', 'navigation_name', 'text', 'Creating Objects with a Form', 0),
(18, 'document', '/en/basic-examples/pdf-viewer', 'navigation_name', 'text', 'Document Viewer', 0),
(19, 'document', '/en/basic-examples/galleries', 'navigation_name', 'text', 'Galleries', 0),
(20, 'document', '/en/basic-examples/glossary', 'navigation_name', 'text', 'Glossary', 0),
(21, 'document', '/en/basic-examples/thumbnails', 'navigation_name', 'text', 'Thumbnails', 0),
(22, 'document', '/en/basic-examples/website-translations', 'navigation_name', 'text', 'Website Translations', 0),
(23, 'document', '/de/einfache-beispiele/website-uebersetzungen', 'language', 'text', 'de', 1),
(23, 'document', '/de/einfache-beispiele/website-uebersetzungen', 'navigation_name', 'text', 'Website Ãœbersetzungen', 0),
(24, 'document', '/en/basic-examples/content-page', 'navigation_name', 'text', 'Content Page', 0),
(25, 'document', '/en/basic-examples/editable-roundup', 'navigation_name', 'text', 'Editable Round-Up', 0),
(26, 'document', '/en/basic-examples/form', 'navigation_name', 'text', 'Simple Form', 0),
(27, 'document', '/en/basic-examples/news', 'navigation_name', 'text', 'News', 0),
(28, 'document', '/en/basic-examples/properties', 'headerColor', 'select', 'blue', 1),
(28, 'document', '/en/basic-examples/properties', 'leftNavHide', 'bool', '1', 0),
(28, 'document', '/en/basic-examples/properties', 'navigation_name', 'text', 'Properties', 0),
(29, 'document', '/en/basic-examples/tag-and-snippet-management', 'navigation_name', 'text', 'Tag & Snippet Management', 0),
(30, 'document', '/en/advanced-examples/content-inheritance', 'navigation_name', 'text', 'Content Inheritance', 0),
(31, 'document', '/en/advanced-examples/content-inheritance/content-inheritance', 'navigation_name', 'text', 'Slave Document', 0),
(32, 'document', '/en/basic-examples/pimcore.org', 'navigation_name', 'text', 'External Link', 0),
(32, 'document', '/en/basic-examples/pimcore.org', 'navigation_target', 'text', '_blank', 0),
(33, 'document', '/en/advanced-examples/hard-link/basic-examples', 'leftNavStartNode', 'document', '5', 1),
(34, 'document', '/en/advanced-examples/hard-link', 'navigation_name', 'text', 'Hard Link', 0),
(35, 'document', '/en/advanced-examples/image-with-hotspots-and-markers', 'navigation_name', 'text', 'Image with Hotspots', 0),
(36, 'document', '/en/advanced-examples/search', 'navigation_name', 'text', 'Search', 0),
(36, 'asset', '/documents/documentation.pdf', 'document_page_count', 'text', '39', 0),
(37, 'document', '/en/advanced-examples/contact-form', 'email', 'document', '38', 1),
(37, 'document', '/en/advanced-examples/contact-form', 'navigation_name', 'text', 'Contact Form', 0),
(40, 'document', '/en', 'navigation_name', 'text', 'Home', 0),
(41, 'document', '/de', 'language', 'text', 'de', 1),
(41, 'document', '/de', 'leftNavStartNode', 'document', '41', 1),
(41, 'document', '/de', 'mainNavStartNode', 'document', '41', 1),
(41, 'document', '/de', 'navigation_name', 'text', 'Startseite', 0),
(41, 'document', '/de', 'sidebar', 'document', '58', 1),
(50, 'document', '/de/einfuehrung', 'navigation_name', 'text', 'EinfÃ¼hrung', 0),
(51, 'document', '/de/einfache-beispiele', 'navigation_name', 'text', 'Einfache Beispiele', 1),
(52, 'document', '/de/beispiele-fur-fortgeschrittene', 'navigation_name', 'text', 'Beispiele fÃ¼r Fortgeschrittene', 1),
(53, 'document', '/de/einfache-beispiele/neuigkeiten', 'navigation_name', 'text', 'Neuigkeiten', 0),
(60, 'document', '/product', 'navigation_name', 'text', 'product', 1);

-- --------------------------------------------------------

--
-- Table structure for table `properties_predefined`
--

CREATE TABLE IF NOT EXISTS `properties_predefined` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `description` text,
  `key` varchar(255) DEFAULT NULL,
  `type` enum('text','document','asset','bool','select','object') DEFAULT NULL,
  `data` text,
  `config` text,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `inheritable` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `id` (`id`),
  KEY `key` (`key`),
  KEY `type` (`type`),
  KEY `ctype` (`ctype`),
  KEY `inheritable` (`inheritable`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `properties_predefined`
--

INSERT INTO `properties_predefined` (`id`, `name`, `description`, `key`, `type`, `data`, `config`, `ctype`, `inheritable`) VALUES
(1, 'Left Navigation Start Node', 'Where the tree of the left navigation should start', 'leftNavStartNode', 'document', '', '', 'document', 1),
(2, 'Hide Left Navigation', '', 'leftNavHide', 'bool', 'true', '', 'document', 0),
(3, 'Header Color', '', 'headerColor', 'select', '', 'orange,blue,green', 'document', 1),
(4, 'Sidebar', '', 'sidebar', 'document', '', '', 'document', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recyclebin`
--

CREATE TABLE IF NOT EXISTS `recyclebin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(20) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `amount` int(3) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `deletedby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `recyclebin`
--

INSERT INTO `recyclebin` (`id`, `type`, `subtype`, `path`, `amount`, `date`, `deletedby`) VALUES
(1, 'object', 'object', '/product/testcat1', 1, 1384520761, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `redirects`
--

CREATE TABLE IF NOT EXISTS `redirects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(255) DEFAULT NULL,
  `sourceEntireUrl` tinyint(1) DEFAULT NULL,
  `sourceSite` int(11) DEFAULT NULL,
  `passThroughParameters` tinyint(1) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `targetSite` int(11) DEFAULT NULL,
  `statusCode` varchar(3) DEFAULT NULL,
  `priority` int(2) DEFAULT '0',
  `expiry` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sanitycheck`
--

CREATE TABLE IF NOT EXISTS `sanitycheck` (
  `id` int(11) unsigned NOT NULL,
  `type` enum('document','asset','object') NOT NULL,
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_tasks`
--

CREATE TABLE IF NOT EXISTS `schedule_tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `date` bigint(20) unsigned DEFAULT NULL,
  `action` enum('publish','unpublish','delete','publish-version') DEFAULT NULL,
  `version` bigint(20) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `search_backend_data`
--

CREATE TABLE IF NOT EXISTS `search_backend_data` (
  `id` int(11) NOT NULL,
  `fullpath` varchar(510) DEFAULT NULL,
  `maintype` varchar(8) NOT NULL DEFAULT '',
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `published` bigint(20) DEFAULT NULL,
  `creationDate` bigint(20) DEFAULT NULL,
  `modificationDate` bigint(20) DEFAULT NULL,
  `userOwner` int(11) DEFAULT NULL,
  `userModification` int(11) DEFAULT NULL,
  `data` longtext,
  `properties` text,
  PRIMARY KEY (`id`,`maintype`),
  KEY `id` (`id`),
  KEY `fullpath` (`fullpath`(333)),
  KEY `maintype` (`maintype`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `published` (`published`),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `properties` (`properties`),
  FULLTEXT KEY `fulltext` (`data`,`properties`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `search_backend_data`
--

INSERT INTO `search_backend_data` (`id`, `fullpath`, `maintype`, `type`, `subtype`, `published`, `creationDate`, `modificationDate`, `userOwner`, `userModification`, `data`, `properties`) VALUES
(5, '/en/advanced-examples', 'document', 'page', 'page', 1, 1368523389, 1382956042, 2, 2, 'ID: 5  \nPath: /en/advanced-examples  \n The following list is generated automatically. See controller/action to see how it''s done.&nbsp; Advanced Examples ', 'leftNavStartNode:/en/advanced-examples navigation_name:Advanced Examples '),
(3, '/en/basic-examples', 'document', 'page', 'page', 1, 1368523212, 1382956582, 2, 2, 'ID: 3  \nPath: /en/basic-examples  \n 1 1 1 1 1 1 Basic Examples HTML5 Video Glossary Simple Content News PDF Viewer Thumbnails Round-Up Properties Galleries Website Translations Simple Form Tag Manager See in Action See in Action See in Action See in Action See in Action See in Action See in Action See in Action See in Action See in Action See in Action Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. direct direct direct direct direct direct direct direct direct direct direct direct ', 'leftNavStartNode:/en/basic-examples navigation_name:Basic Examples '),
(4, '/en/introduction', 'document', 'page', 'page', 1, 1368523285, 1382962961, 2, 2, 'ID: 4  \nPath: /en/introduction  \n Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. &nbsp; Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. &nbsp; Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. &nbsp; It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. &nbsp; Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Overview of the project and how to get started with a simple template. Introduction Nullam quis ante Maecenas tempus, tellus eget condimentum rhoncu Ullamcorper Scelerisque Getting started Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Etiam rhoncu Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. snippet snippet ', 'sidebar:/en/introduction/sidebar navigation_name:Introduction '),
(6, '/en/experiments', 'document', 'page', 'page', 1, 1368523410, 1382956044, 2, 2, 'ID: 6  \nPath: /en/experiments  \n Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. &nbsp; Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. &nbsp; Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, Experiments This space is reserved for your individual experiments &amp; tests. ', 'navigation_name:Experiments '),
(1, '/', 'document', 'page', 'page', 1, 1368522989, 1382962883, 1, 2, 'ID: 1  \nPath: /  \nAlbert Einstein 3 Ready to get impressed? It''ll blow your mind. Oh yeah, it''s that good See in Action See in Action Checkmate In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. Check out our examples and dive into the next generation of digital data management. See for yourself. See for yourself Lorem ipsum. Oh yeah, it''s that good. And lastly, this one. left left We can''t solve problems by using the same kind of thinking we used when we created them. Cum sociis. See for yourself. Checkmate. video a.pimcore_video_flowplayer { display:block; text-align:center; } #video_526e56c37ffa7 .play { margin-top:108.5px; border:0px; display:inline-block; width:83px; height:83px; background:url(/pimcore/static/js/lib/flowplayer/play_large.png); } var player_config_video_526e56c37ffa7 = array_merge_recursive({"dummy":true},{"clip":{"url":"\\/videos\\/home-trailer-english.mp4"}}); flowplayer("video_526e56c37ffa7", { src: "/pimcore/static/js/lib/flowplayer/flowplayer.swf", width: "100%", height: "300" },player_config_video_526e56c37ffa7); ', 'navigation_name:Home mainNavStartNode:/en leftNavStartNode:/en language:en sidebar:/en/sidebar '),
(7, '/basic-examples/html5-video', 'document', 'page', 'page', 1, 1368525394, 1368545013, 2, 2, 'ID: 7  \nPath: /basic-examples/html5-video  \n HTML5 Video is just as simple as that .... Just drop an video from your assets, the video will be automatically converted to the different HTML5 formats and to the correct size.&nbsp; a.pimcore_video_flowplayer { display:block; text-align:center; } #video_519256f5bec42 .play { margin-top:108.5px; border:0px; display:inline-block; width:83px; height:83px; background:url(/pimcore/static/js/lib/flowplayer/play_large.png); } var player_config_video_519256f5bec42 = array_merge_recursive({"dummy":true},{"clip":{"url":"\\/demo-website\\/videos\\/home-trailer-english.mp4"}}); flowplayer("video_519256f5bec42", { src: "/pimcore/static/js/lib/flowplayer/flowplayer.swf", width: "100%", height: "300" },player_config_video_519256f5bec42); HTML5 Video ', 'HTML5 Video '),
(9, '/advanced-examples/creating-objects-using-forms', 'document', 'page', 'page', 1, 1368525933, 1369854600, 2, 2, 'ID: 9  \nPath: /advanced-examples/creating-objects-using-forms  \n &nbsp; In this example we dynamically create objects out of the data submitted via the form. The you can use the same approach to create objects using a commandline script, or wherever you need it. After submitting the form you''ll find the data in "Objects" /crm and /inquiries.&nbsp; &nbsp; &nbsp; And here''s the form:&nbsp; Please fill all fields and accept the terms of use. Creating Objects &amp; Assets with a Form ', 'language:en leftNavStartNode:/advanced-examples navigation_name:Creating Objects with a Form '),
(10, '/en/shared', 'document', 'folder', 'folder', 1, 1368527956, 1382956831, 2, 2, 'ID: 10  \nPath: /en/shared  \nshared', 'mainNavStartNode:/en leftNavStartNode:/en language:en '),
(11, '/shared/includes', 'document', 'folder', 'folder', 1, 1368527961, 1368527961, 2, 2, 'ID: 11  \nPath: /shared/includes  \nincludes', 'en '),
(12, '/en/shared/includes/footer', 'document', 'snippet', 'snippet', 1, 1368527967, 1382956852, 2, 2, 'ID: 12  \nPath: /en/shared/includes/footer  \npimcore.org Documentation Bug Tracker Designed and built with all the love in the world by&nbsp;@mdo&nbsp;and&nbsp;@fat. Code licensed under&nbsp;Apache License v2.0,&nbsp;Glyphicons Free&nbsp;licensed under&nbsp;CC BY 3.0. Â© Templates pimcore.org licensed under BSD License ', ''),
(3, '/portal-sujets', 'asset', 'folder', 'folder', 1, 1368530371, 1368632469, 2, 2, 'ID: 3  \nPath: /portal-sujets  \nportal-sujets', ''),
(4, '/portal-sujets/slide-01.jpg', 'asset', 'image', 'image', 1, 1368530684, 1370432846, 2, 2, 'ID: 4  \nPath: /portal-sujets/slide-01.jpg  \nslide-01.jpg', ''),
(5, '/portal-sujets/slide-02.jpg', 'asset', 'image', 'image', 1, 1368530764, 1370432868, 2, 2, 'ID: 5  \nPath: /portal-sujets/slide-02.jpg  \nslide-02.jpg', ''),
(6, '/portal-sujets/slide-03.jpg', 'asset', 'image', 'image', 1, 1368530764, 1370432860, 2, 2, 'ID: 6  \nPath: /portal-sujets/slide-03.jpg  \nslide-03.jpg', ''),
(13, '/shared/teasers', 'document', 'folder', 'folder', 1, 1368531657, 1368531657, 2, 2, 'ID: 13  \nPath: /shared/teasers  \nteasers', 'en '),
(14, '/shared/teasers/standard', 'document', 'folder', 'folder', 1, 1368531665, 1368531665, 2, 2, 'ID: 14  \nPath: /shared/teasers/standard  \nstandard', 'en '),
(15, '/shared/teasers/standard/basic-examples', 'document', 'snippet', 'snippet', 1, 1368531692, 1370432633, 2, 2, 'ID: 15  \nPath: /shared/teasers/standard/basic-examples  \n Full Responsive Lorem ipsum This demo is based on Bootstrap, the most popular, intuitive, and powerful front-end framework. ', 'leftNavStartNode:/ language:en '),
(7, '/examples', 'asset', 'folder', 'folder', 1, 1368531816, 1368632468, 2, 2, 'ID: 7  \nPath: /examples  \nexamples', ''),
(17, '/demo-website/examples/panama', 'asset', 'folder', 'folder', 1, 1368532826, 1368532826, 2, 2, 'ID: 17  \nPath: /demo-website/examples/panama  \npanama', ''),
(18, '/demo-website/examples/panama/img_0117.jpg', 'asset', 'image', 'image', 1, 1368532831, 1368532831, 2, 2, 'ID: 18  \nPath: /demo-website/examples/panama/img_0117.jpg  \nimg_0117.jpg', ''),
(19, '/demo-website/examples/panama/img_0201.jpg', 'asset', 'image', 'image', 1, 1368532832, 1368532832, 2, 2, 'ID: 19  \nPath: /demo-website/examples/panama/img_0201.jpg  \nimg_0201.jpg', ''),
(20, '/demo-website/examples/panama/img_0089.jpg', 'asset', 'image', 'image', 1, 1368532833, 1368532833, 2, 2, 'ID: 20  \nPath: /demo-website/examples/panama/img_0089.jpg  \nimg_0089.jpg', ''),
(21, '/demo-website/examples/panama/img_0037.jpg', 'asset', 'image', 'image', 1, 1368532834, 1368532834, 2, 2, 'ID: 21  \nPath: /demo-website/examples/panama/img_0037.jpg  \nimg_0037.jpg', ''),
(22, '/demo-website/examples/panama/img_0399.jpg', 'asset', 'image', 'image', 1, 1368532836, 1368532836, 2, 2, 'ID: 22  \nPath: /demo-website/examples/panama/img_0399.jpg  \nimg_0399.jpg', ''),
(23, '/demo-website/examples/panama/img_0411.jpg', 'asset', 'image', 'image', 1, 1368532837, 1368532837, 2, 2, 'ID: 23  \nPath: /demo-website/examples/panama/img_0411.jpg  \nimg_0411.jpg', ''),
(24, '/demo-website/examples/panama/img_0410.jpg', 'asset', 'image', 'image', 1, 1368532838, 1368532838, 2, 2, 'ID: 24  \nPath: /demo-website/examples/panama/img_0410.jpg  \nimg_0410.jpg', ''),
(25, '/demo-website/examples/panama/img_0160.jpg', 'asset', 'image', 'image', 1, 1368532839, 1368532839, 2, 2, 'ID: 25  \nPath: /demo-website/examples/panama/img_0160.jpg  \nimg_0160.jpg', ''),
(16, '/shared/teasers/standard/advanced-examples', 'document', 'snippet', 'snippet', 1, 1368534298, 1370432637, 2, 2, 'ID: 16  \nPath: /shared/teasers/standard/advanced-examples  \n Drag &amp; Drop Interface Etiam rhoncu Content is created by simply dragging &amp; dropping blocks, that can&nbsp;be editited in-place and wysiwyg.&nbsp; ', 'leftNavStartNode:/ language:en '),
(17, '/shared/teasers/standard/experiments', 'document', 'snippet', 'snippet', 1, 1368534344, 1370432641, 2, 2, 'ID: 17  \nPath: /shared/teasers/standard/experiments  \n HTML5 omnipresent Quisque rutrum Drag &amp; drop upload directly&nbsp;into the asset tree, automatic html5 video transcoding, and much more ... ', 'leftNavStartNode:/ language:en '),
(26, '/videos', 'asset', 'folder', 'folder', 1, 1368542684, 1368632471, 2, 2, 'ID: 26  \nPath: /videos  \nvideos', ''),
(27, '/videos/home-trailer-english.mp4', 'asset', 'video', 'video', 1, 1368542794, 1384783789, 2, 2, 'ID: 27  \nPath: /videos/home-trailer-english.mp4  \nhome-trailer-english.mp4', ''),
(20, '/basic-examples/glossary', 'document', 'page', 'page', 1, 1368559903, 1368561466, 2, 2, 'ID: 20  \nPath: /basic-examples/glossary  \n Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. &nbsp; Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. &nbsp; Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. The Glossary ... ... makes it very simple to automatically link keywords, abbreviation and acronyms. This is not only perfect for SEO but also makes it super easy to navigate in the content.&nbsp; &nbsp; ... this is how it looks in the admin interface. Glossary ', 'Glossary '),
(18, '/basic-examples/pdf-viewer', 'document', 'page', 'page', 1, 1368548449, 1378992677, 2, 2, 'ID: 18  \nPath: /basic-examples/pdf-viewer  \n Isn''t that amazing? Just drop a PDF, doc(x), xls(x) or many other formats, et voilÃ¡ ...&nbsp; + &#x21e9; x var pimcore_pdf_pdfcontent1 = new pimcore.pdf({ id: "pimcore-pdf-5231c2258795e", data: {"pages":[{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-1.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-1.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-2.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-2.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-3.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-3.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-4.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-4.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-5.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-5.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-6.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-6.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-7.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-7.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-8.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-8.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-9.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-9.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-10.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-10.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-11.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-11.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-12.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-12.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-13.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-13.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-14.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-14.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-15.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-15.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-16.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-16.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-17.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-17.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-18.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-18.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-19.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-19.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-20.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-20.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-21.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-21.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-22.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-22.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-23.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-23.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-24.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-24.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-25.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-25.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-26.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-26.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-27.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-27.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-28.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-28.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-29.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-29.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-30.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-30.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-31.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-31.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-32.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-32.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-33.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-33.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-34.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-34.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-35.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-35.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-36.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-36.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-37.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-37.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-38.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-38.pjpeg"},{"thumbnail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_ca35914f842e48731761eda9e1b55fa1-39.pjpeg","detail":"\\/website\\/var\\/tmp\\/thumb_36__document_auto_55c4d1de803e2f89c46b9a22287c3b50-39.pjpeg"}],"pdf":"\\/documents\\/documentation.pdf","fullscreen":true} }); ', 'navigation_name:Document Viewer '),
(29, '/documents', 'asset', 'folder', 'folder', 1, 1368548619, 1368632467, 2, 2, 'ID: 29  \nPath: /documents  \ndocuments', ''),
(36, '/demo-website/documents/documentation.pdf', 'asset', 'document', 'document', 1, 1368562442, 1368562442, 2, 2, 'ID: 36  \nPath: /demo-website/documents/documentation.pdf  \ndocumentation.pdf', '39 '),
(37, '/demo-website/examples/italy', 'asset', 'folder', 'folder', 1, 1368596763, 1368596917, 2, 2, 'ID: 37  \nPath: /demo-website/examples/italy  \nitaly', ''),
(38, '/demo-website/examples/venice/dsc04346.jpg', 'asset', 'image', 'image', 1, 1368596767, 1368596767, 2, 2, 'ID: 38  \nPath: /demo-website/examples/venice/dsc04346.jpg  \ndsc04346.jpg', ''),
(39, '/demo-website/examples/venice/dsc04344.jpg', 'asset', 'image', 'image', 1, 1368596768, 1368596768, 2, 2, 'ID: 39  \nPath: /demo-website/examples/venice/dsc04344.jpg  \ndsc04344.jpg', ''),
(40, '/demo-website/examples/venice/dsc04462.jpg', 'asset', 'image', 'image', 1, 1368596769, 1368596769, 2, 2, 'ID: 40  \nPath: /demo-website/examples/venice/dsc04462.jpg  \ndsc04462.jpg', ''),
(41, '/demo-website/examples/venice/dsc04399.jpg', 'asset', 'image', 'image', 1, 1368596770, 1368596770, 2, 2, 'ID: 41  \nPath: /demo-website/examples/venice/dsc04399.jpg  \ndsc04399.jpg', ''),
(42, '/demo-website/examples/south-africa', 'asset', 'folder', 'folder', 1, 1368596785, 1368596785, 2, 2, 'ID: 42  \nPath: /demo-website/examples/south-africa  \nsouth-africa', ''),
(43, '/demo-website/examples/south-africa/img_1414.jpg', 'asset', 'image', 'image', 1, 1368596789, 1368596789, 2, 2, 'ID: 43  \nPath: /demo-website/examples/south-africa/img_1414.jpg  \nimg_1414.jpg', ''),
(44, '/demo-website/examples/south-africa/img_2133.jpg', 'asset', 'image', 'image', 1, 1368596791, 1368596791, 2, 2, 'ID: 44  \nPath: /demo-website/examples/south-africa/img_2133.jpg  \nimg_2133.jpg', ''),
(45, '/demo-website/examples/south-africa/img_2240.jpg', 'asset', 'image', 'image', 1, 1368596793, 1368596793, 2, 2, 'ID: 45  \nPath: /demo-website/examples/south-africa/img_2240.jpg  \nimg_2240.jpg', ''),
(46, '/demo-website/examples/south-africa/img_1752.jpg', 'asset', 'image', 'image', 1, 1368596795, 1368596795, 2, 2, 'ID: 46  \nPath: /demo-website/examples/south-africa/img_1752.jpg  \nimg_1752.jpg', ''),
(47, '/demo-website/examples/south-africa/img_1739.jpg', 'asset', 'image', 'image', 1, 1368596798, 1368596798, 2, 2, 'ID: 47  \nPath: /demo-website/examples/south-africa/img_1739.jpg  \nimg_1739.jpg', ''),
(48, '/demo-website/examples/south-africa/img_0391.jpg', 'asset', 'image', 'image', 1, 1368596800, 1368596800, 2, 2, 'ID: 48  \nPath: /demo-website/examples/south-africa/img_0391.jpg  \nimg_0391.jpg', ''),
(49, '/demo-website/examples/south-africa/img_2155.jpg', 'asset', 'image', 'image', 1, 1368596801, 1368596802, 2, 2, 'ID: 49  \nPath: /demo-website/examples/south-africa/img_2155.jpg  \nimg_2155.jpg', ''),
(50, '/demo-website/examples/south-africa/img_1544.jpg', 'asset', 'image', 'image', 1, 1368596804, 1368596804, 2, 2, 'ID: 50  \nPath: /demo-website/examples/south-africa/img_1544.jpg  \nimg_1544.jpg', ''),
(51, '/demo-website/examples/south-africa/img_1842.jpg', 'asset', 'image', 'image', 1, 1368596806, 1368596806, 2, 2, 'ID: 51  \nPath: /demo-website/examples/south-africa/img_1842.jpg  \nimg_1842.jpg', ''),
(52, '/demo-website/examples/south-africa/img_1920.jpg', 'asset', 'image', 'image', 1, 1368596808, 1368596808, 2, 2, 'ID: 52  \nPath: /demo-website/examples/south-africa/img_1920.jpg  \nimg_1920.jpg', ''),
(53, '/demo-website/examples/south-africa/img_0322.jpg', 'asset', 'image', 'image', 1, 1368596810, 1368596810, 2, 2, 'ID: 53  \nPath: /demo-website/examples/south-africa/img_0322.jpg  \nimg_0322.jpg', ''),
(54, '/demo-website/examples/singapore', 'asset', 'folder', 'folder', 1, 1368596871, 1368596871, 2, 2, 'ID: 54  \nPath: /demo-website/examples/singapore  \nsingapore', ''),
(55, '/demo-website/examples/singapore/dsc03778.jpg', 'asset', 'image', 'image', 1, 1368597116, 1368597116, 2, 2, 'ID: 55  \nPath: /demo-website/examples/singapore/dsc03778.jpg  \ndsc03778.jpg', ''),
(56, '/demo-website/examples/singapore/dsc03807.jpg', 'asset', 'image', 'image', 1, 1368597117, 1368597118, 2, 2, 'ID: 56  \nPath: /demo-website/examples/singapore/dsc03807.jpg  \ndsc03807.jpg', ''),
(57, '/demo-website/examples/singapore/dsc03835.jpg', 'asset', 'image', 'image', 1, 1368597119, 1368597119, 2, 2, 'ID: 57  \nPath: /demo-website/examples/singapore/dsc03835.jpg  \ndsc03835.jpg', ''),
(21, '/basic-examples/thumbnails', 'document', 'page', 'page', 1, 1368602443, 1368606841, 2, 2, 'ID: 21  \nPath: /basic-examples/thumbnails  \n Incredible Possibilities This is the original image This is how it looks in the admin interface ... Thumbnails ', 'Thumbnails '),
(59, '/demo-website/screenshots/thumbnail-configuration.png', 'asset', 'image', 'image', 1, 1368606782, 1368606783, 2, 2, 'ID: 59  \nPath: /demo-website/screenshots/thumbnail-configuration.png  \nthumbnail-configuration.png', ''),
(22, '/en/basic-examples/website-translations', 'document', 'page', 'page', 1, 1368607207, 1382958131, 2, 2, 'ID: 22  \nPath: /en/basic-examples/website-translations  \n &nbsp; Please visit this page to see the German translation of this page. &nbsp; Following some examples:&nbsp; &nbsp; Website Translations Common used terms across the website can be translated centrally, hassle-free and comfortable.&nbsp; &nbsp; &nbsp; This is how it looks in the admin interface ...&nbsp; ', 'navigation_name:Website Translations '),
(23, '/de/einfache-beispiele/website-uebersetzungen', 'document', 'page', 'page', 1, 1368608357, 1382958135, 2, 2, 'ID: 23  \nPath: /de/einfache-beispiele/website-uebersetzungen  \n Folgend ein paar Beispiele:&nbsp; Website Ãœbersetzungen HÃ¤ufig genutzte Begriffe auf der gesamten Website kÃ¶nnen komfortabel, zentral und einfach Ã¼bersetzt werden. ', 'language:de navigation_name:Website Ãœbersetzungen '),
(60, '/demo-website/screenshots/website-translations.png', 'asset', 'image', 'image', 1, 1368608949, 1368608949, 2, 2, 'ID: 60  \nPath: /demo-website/screenshots/website-translations.png  \nwebsite-translations.png', ''),
(24, '/basic-examples/content-page', 'document', 'page', 'page', 1, 1368609059, 1368611682, 2, 2, 'ID: 24  \nPath: /basic-examples/content-page  \nAlbert Einstein Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. &nbsp; Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. &nbsp; Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. This is just a simple Content-Page ... Where some Content-Blocks are mixed together. Nulla consequat massa quis enim Lorem ipsum. Etiam ultricies. African Animals Donec pede justo, fringilla vel, aliquet nec left We can''t solve problems by using the same kind of thinking we used when we created them. Dolor sit amet. Nam eget dui. video a.pimcore_video_flowplayer { display:block; text-align:center; } #video_51935b6301d62 .play { margin-top:108.5px; border:0px; display:inline-block; width:83px; height:83px; background:url(/pimcore/static/js/lib/flowplayer/play_large.png); } var player_config_video_51935b6301d62 = array_merge_recursive({"dummy":true},{"clip":{"url":"\\/demo-website\\/videos\\/home-trailer-english.mp4"}}); flowplayer("video_51935b6301d62", { src: "/pimcore/static/js/lib/flowplayer/flowplayer.swf", width: "100%", height: "300" },player_config_video_51935b6301d62); Content Page ', 'Content Page '),
(25, '/basic-examples/editable-roundup', 'document', 'page', 'page', 1, 1368609569, 1368610457, 2, 2, 'ID: 25  \nPath: /basic-examples/editable-roundup  \n This is an overview of all available &quot;editables&quot; (except area/areablock/block) Please view this page in the editmode (admin interface)! ... nothing to see here ;-)&nbsp; 1 May 16, 2013 2:00:00 AM /basic-examples/thumbnails Some Text My Link document: /basic-examples/glossarydocument: /basic-examples/thumbnailsdocument: /basic-examples/editable-roundupasset: /demo-website/examples/south-africa/img_1842.jpgasset: /demo-website/examples/south-africa/img_2133.jpgasset: /demo-website/examples/south-africa/img_2240.jpg value2,value4 123 option2 Some Text a.pimcore_video_flowplayer { display:block; text-align:center; } #video_5193569a0dcec .play { margin-top:108.5px; border:0px; display:inline-block; width:83px; height:83px; background:url(/pimcore/static/js/lib/flowplayer/play_large.png); } var player_config_video_5193569a0dcec = array_merge_recursive({"dummy":true},{"clip":{"url":"\\/demo-website\\/videos\\/home-trailer-english.mp4"}}); flowplayer("video_5193569a0dcec", { src: "/pimcore/static/js/lib/flowplayer/flowplayer.swf", width: "100%", height: "300" },player_config_video_5193569a0dcec); Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. &nbsp; Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. &nbsp; Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, Value 1Value 2Value 3thisistest Editable Round-Up ', 'Editable Round-Up '),
(26, '/basic-examples/form', 'document', 'page', 'page', 1, 1368610663, 1368610681, 2, 2, 'ID: 26  \nPath: /basic-examples/form  \n Simple Form ', 'Simple Form '),
(27, '/basic-examples/news', 'document', 'page', 'page', 1, 1368613137, 1368614363, 2, 2, 'ID: 27  \nPath: /basic-examples/news  \n News Any kind of structured data is stored in "Objects".&nbsp; News ', 'News '),
(2, '/news', 'object', 'folder', 'folder', 1, 1368613451, 1368613451, 2, 2, 'ID: 2  \nPath: /news  \nnews', ''),
(3, '/news/lorem-ipsum', 'object', 'object', 'news', 1, 1368613483, 1382958769, 2, 2, 'ID: 3  \nPath: /news/lorem-ipsum  \nEr hÃ¶rte leise Schritte hinter sich Das bedeutete nichts Gutes. Wer wÃ¼rde ihm schon folgen, spÃ¤t in der Nacht und dazu noch in dieser engen Gasse mitten im Ã¼bel beleumundeten Hafenviertel? Oder geh&ouml;rten die Schritte hinter ihm zu einem der unz&auml;hligen Gesetzesh&uuml;ter dieser Stadt, und die st&auml;hlerne Acht um seine Handgelenke w&uuml;rde gleich zuschnappen? Er konnte die Aufforderung stehen zu bleiben schon h&ouml;ren. Gehetzt sah er sich um. Pl&ouml;tzlich erblickte er den schmalen Durchgang. Blitzartig drehte er sich nach rechts und verschwand zwischen den beiden Geb&auml;uden. Beinahe w&auml;re er dabei &uuml;ber den umgest&uuml;rzten M&uuml;lleimer gefallen, der mitten im Weg lag. Er versuchte, sich in der Dunkelheit seinen Weg zu ertasten und erstarrte: Anscheinend gab es keinen anderen Ausweg aus diesem kleinen Hof als den Durchgang, durch den er gekommen war. Die Schritte wurden lauter und lauter, er sah eine dunkle Gestalt um die Ecke biegen. Fieberhaft irrten seine Augen durch die n&auml;chtliche Dunkelheit und suchten einen Ausweg. War jetzt wirklich alles vorbei. Lorem ipsum dolor sit amet Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam&nbsp;ultricies&nbsp;nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget&nbsp;condimentum&nbsp;rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Jul 18, 2013 1:45:00 PM /examples/south-africa/img_2155.jpg /examples/south-africa/img_1414.jpg /examples/south-africa/img_1920.jpg ', ''),
(4, '/news/in-enim-justo', 'object', 'object', 'news', 1, 1368613645, 1382958711, 2, 2, 'ID: 4  \nPath: /news/in-enim-justo  \nLi Europan lingues es membres Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. In enim justo Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Nam eget dui. Etiam rhoncus.&nbsp;Maecenas&nbsp;tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed&nbsp;fringilla&nbsp;mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, May 28, 2013 7:15:00 PM /examples/south-africa/img_1842.jpg ', ''),
(5, '/news/nam-eget-dui', 'object', 'object', 'news', 1, 1368613700, 1382958801, 2, 2, 'ID: 5  \nPath: /news/nam-eget-dui  \nZwei flinke Boxer jagen die quirlige Eva Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. ZwÃ¶lf BoxkÃ¤mpfer jagen Viktor quer Ã¼ber den groÃŸen Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim. Victor jagt zw&ouml;lf Boxk&auml;mpfer quer &uuml;ber den gro&szlig;en Sylter Deich. Falsches &Uuml;ben von Xylophonmusik qu&auml;lt jeden gr&ouml;&szlig;eren Zwerg. Heiz&ouml;lr&uuml;cksto&szlig;abd&auml;mpfung. Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. Zw&ouml;lf Boxk&auml;mpfer jagen Viktor quer &uuml;ber den gro&szlig;en Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim. Sylvia wagt quick den Jux bei Pforzheim. Polyfon zwitschernd a&szlig;en M&auml;xchens V&ouml;gel R&uuml;ben, Joghurt und Quark. &quot;Fix, Schwyz!&quot; qu&auml;kt J&uuml;rgen bl&ouml;d vom Pa&szlig;. Victor jagt zw&ouml;lf Boxk&auml;mpfer quer &uuml;ber den gro&szlig;en Sylter Deich. Falsches &Uuml;ben von Xylophonmusik qu&auml;lt jeden gr&ouml;&szlig;eren Zwerg. Heiz&ouml;lr&uuml;cksto&szlig;abd&auml;mpfung.Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer durch Bayern. Zw&ouml;lf Boxk&auml;mpfer jagen Viktor quer &uuml;ber den gro&szlig;en Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim. Sylvia wagt quick den Jux Nam eget dui Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, Jun 1, 2013 12:00:00 AM ', ''),
(6, '/news/in-enim-justo_2', 'object', 'object', 'news', 1, 1368615188, 1382958710, 2, 2, 'ID: 6  \nPath: /news/in-enim-justo_2  \nIn enim justo Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Li Europan lingues es membres Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Dec 3, 2012 7:15:00 PM /examples/panama/img_0160.jpg ', ''),
(7, '/news/in-enim-justo_3', 'object', 'object', 'news', 1, 1368615191, 1382958709, 2, 2, 'ID: 7  \nPath: /news/in-enim-justo_3  \nIn enim justo Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Li Europan lingues es membres Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Feb 11, 2013 7:15:00 PM /examples/panama/img_0117.jpg ', ''),
(8, '/news/in-enim-justo_4', 'object', 'object', 'news', 1, 1368615194, 1382958708, 2, 2, 'ID: 8  \nPath: /news/in-enim-justo_4  \nIn enim justo Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Li Europan lingues es membres Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Feb 4, 2013 7:15:00 PM /examples/panama/img_0089.jpg ', ''),
(9, '/news/in-enim-justo_5', 'object', 'object', 'news', 1, 1368615197, 1382958706, 2, 2, 'ID: 9  \nPath: /news/in-enim-justo_5  \nIn enim justo Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Li Europan lingues es membres Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Nov 13, 2012 7:15:00 PM /examples/panama/img_0037.jpg ', ''),
(28, '/basic-examples/properties', 'document', 'page', 'page', 1, 1368615986, 1368616909, 2, 2, 'ID: 28  \nPath: /basic-examples/properties  \n On this page we use "Properties" to hide the navigation on the left and to change the color of the header to blue.&nbsp; Properties are very useful to control the behavior or to store meta data of documents, assets and objects. And the best: they are inheritable.&nbsp; &nbsp; On the following screens you can see how this is done in this example. Properties Properties ', 'Properties '),
(61, '/demo-website/screenshots/properties-1.png', 'asset', 'image', 'image', 1, 1368616805, 1368616805, 2, 2, 'ID: 61  \nPath: /demo-website/screenshots/properties-1.png  \nproperties-1.png', ''),
(62, '/demo-website/screenshots/properties-2.png', 'asset', 'image', 'image', 1, 1368616805, 1368616805, 2, 2, 'ID: 62  \nPath: /demo-website/screenshots/properties-2.png  \nproperties-2.png', ''),
(63, '/demo-website/screenshots/properties-3.png', 'asset', 'image', 'image', 1, 1368616847, 1368616847, 2, 2, 'ID: 63  \nPath: /demo-website/screenshots/properties-3.png  \nproperties-3.png', ''),
(29, '/basic-examples/tag-and-snippet-management', 'document', 'page', 'page', 1, 1368617118, 1368617704, 2, 2, 'ID: 29  \nPath: /basic-examples/tag-and-snippet-management  \n This page demonstrates how to use the "Tag &amp; Snippet Management" to inject codes into the HTML source code. This functionality can be used to easily integrate tracking codes, conversion codes, social plugins and whatever that needs to go into the HTML. &nbsp; The functionality is similar to this products:&nbsp; http://www.google.com/tagmanager/&nbsp; http://www.searchdiscovery.com/satellite/&nbsp; http://www.tagcommander.com/en/ &nbsp; In our example we use it to integrate a facebook social plugin. Tag &amp; Snippet Management ... gives all the freedom back to the marketing dept. Tag & Snippet Management ', 'Tag & Snippet Management '),
(64, '/demo-website/screenshots/tag-snippet-management.png', 'asset', 'image', 'image', 1, 1368617634, 1368617634, 2, 2, 'ID: 64  \nPath: /demo-website/screenshots/tag-snippet-management.png  \ntag-snippet-management.png', ''),
(10, '/crm', 'object', 'folder', 'folder', 1, 1368620607, 1368620607, 2, 2, 'ID: 10  \nPath: /crm  \ncrm', '');
INSERT INTO `search_backend_data` (`id`, `fullpath`, `maintype`, `type`, `subtype`, `published`, `creationDate`, `modificationDate`, `userOwner`, `userModification`, `data`, `properties`) VALUES
(11, '/inquiries', 'object', 'folder', 'folder', 1, 1368620624, 1368620624, 2, 2, 'ID: 11  \nPath: /inquiries  \ninquiries', ''),
(36, '/advanced-examples/search', 'document', 'page', 'page', 1, 1368629524, 1368630250, 2, 2, 'ID: 36  \nPath: /advanced-examples/search  \n Search &nbsp; The search is using the contents from&nbsp;pimcore.org.&nbsp;TIP: Search for "web".&nbsp; &nbsp; &nbsp; Search ', 'Search '),
(37, '/advanced-examples/contact-form', 'document', 'page', 'page', 1, 1368630444, 1368631569, 2, 2, 'ID: 37  \nPath: /advanced-examples/contact-form  \n Contact Form Contact Form ', 'Contact Form '),
(65, '/demo-website/screenshots/objects-forms.png', 'asset', 'image', 'image', 1, 1368623266, 1368623266, 2, 2, 'ID: 65  \nPath: /demo-website/screenshots/objects-forms.png  \nobjects-forms.png', ''),
(30, '/crm/jane-doe.com', 'object', 'object', 'person', 1, 1368630916, 1368630916, 0, 0, 'ID: 30  \nPath: /crm/jane-doe.com  \nfemale Jane Doe jane@doe.com May 15, 2013 5:15:16 PM ', ''),
(31, '/inquiries/may-15-2013-5-15-16-pm~jane-doe.com', 'object', 'object', 'inquiry', 1, 1368630916, 1368630916, 0, 0, 'ID: 31  \nPath: /inquiries/may-15-2013-5-15-16-pm~jane-doe.com  \nMay 15, 2013 5:15:16 PM object:/crm/jane-doe.com Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 1 ', ''),
(30, '/advanced-examples/content-inheritance', 'document', 'page', 'page', 1, 1368623726, 1368623853, 2, 2, 'ID: 30  \nPath: /advanced-examples/content-inheritance  \n Content Inheritance First Headline This is the Master Document Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.&nbsp; Second Headline Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, Content Inheritance ', 'Content Inheritance '),
(31, '/advanced-examples/content-inheritance/content-inheritance', 'document', 'page', 'page', 1, 1368623866, 1368624030, 2, 2, 'ID: 31  \nPath: /advanced-examples/content-inheritance/content-inheritance  \n Content Inheritance (Slave) This is the Slave Document Slave Document ', 'Slave Document '),
(28, '/crm/john-doe.com', 'object', 'object', 'person', 1, 1368630902, 1368630902, 0, 0, 'ID: 28  \nPath: /crm/john-doe.com  \nmale John Doe john@doe.com May 15, 2013 5:15:02 PM ', ''),
(29, '/inquiries/may-15-2013-5-15-02-pm~john-doe.com', 'object', 'object', 'inquiry', 1, 1368630902, 1368630902, 0, 0, 'ID: 29  \nPath: /inquiries/may-15-2013-5-15-02-pm~john-doe.com  \nMay 15, 2013 5:15:02 PM object:/crm/john-doe.com Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 1 ', ''),
(32, '/basic-examples/pimcore.org', 'document', 'link', 'link', 1, 1368626404, 1368626437, 2, 2, 'ID: 32  \nPath: /basic-examples/pimcore.org  \nExternal Link http://www.pimcore.org/', 'en External Link _blank '),
(33, '/advanced-examples/hardlink/basic-examples', 'document', 'hardlink', 'hardlink', 0, 1368626461, 1368626659, 2, 2, 'ID: 33  \nPath: /advanced-examples/hardlink/basic-examples  \n', 'en Basic Examples '),
(34, '/advanced-examples/hard-link', 'document', 'page', 'page', 1, 1368626655, 1368626835, 2, 2, 'ID: 34  \nPath: /advanced-examples/hard-link  \n This page has a hardlink as child (see navigation on the left).&nbsp; This hardlink points to "Basic Examples", so the whole content of /basic-examples is available in /advaned-examples/hardlink/basic-examples.&nbsp; &nbsp; Want to know more about hardlinks?&nbsp; http://en.wikipedia.org/wiki/Hard_link see also:&nbsp;http://en.wikipedia.org/wiki/Symbolic_link&nbsp; &nbsp; Hard Link Example Hard Link ', 'Hard Link '),
(35, '/advanced-examples/image-with-hotspots-and-markers', 'document', 'page', 'page', 1, 1368626888, 1368629331, 2, 2, 'ID: 35  \nPath: /advanced-examples/image-with-hotspots-and-markers  \n Image with Hotspots &amp; Markers Image with Hotspots ', 'Image with Hotspots '),
(38, '/advanced-examples/contact-form/email', 'document', 'email', 'email', 1, 1368631410, 1368632025, 2, 2, 'ID: 38  \nPath: /advanced-examples/contact-form/email  \nGender: %Text(gender);&nbsp; Firstname: %Text(firstname); Lastname: %Text(lastname); E-Mail: %Text(email);&nbsp; &nbsp; Message: %Text(message);&nbsp; &nbsp; You''ve got a new E-Mail! ', ''),
(19, '/basic-examples/galleries', 'document', 'page', 'page', 1, 1368549805, 1368597503, 2, 2, 'ID: 19  \nPath: /basic-examples/galleries  \n Creating custom galleries is very simple Autogenerated Gallery (using Renderlet) Custom assembled Gallery Drag an asset folder on the following drop area, and the "renderlet" will create automatically a gallery out of the images in the folder. Galleries ', 'Galleries '),
(34, '/screenshots', 'asset', 'folder', 'folder', 1, 1368560793, 1368632470, 2, 2, 'ID: 34  \nPath: /screenshots  \nscreenshots', ''),
(35, '/demo-website/screenshots/glossary.png', 'asset', 'image', 'image', 1, 1368560809, 1368560809, 2, 2, 'ID: 35  \nPath: /demo-website/screenshots/glossary.png  \nglossary.png', ''),
(39, '/error', 'document', 'page', 'page', 1, 1369854325, 1369854422, 2, 2, 'ID: 39  \nPath: /error  \n Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. &nbsp; Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. &nbsp; Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, &nbsp; It seems that the page you were trying to find isn''t around anymore. Oh no! ', 'leftNavStartNode:/ language:en '),
(66, '/documents/example-excel.xlsx', 'asset', 'document', 'document', 1, 1378992590, 1378992590, 2, 2, 'ID: 66  \nPath: /documents/example-excel.xlsx  \nexample-excel.xlsx', ''),
(67, '/documents/example.docx', 'asset', 'document', 'document', 1, 1378992591, 1378992591, 2, 2, 'ID: 67  \nPath: /documents/example.docx  \nexample.docx', ''),
(68, '/documents/example.pptx', 'asset', 'document', 'document', 1, 1378992592, 1378992592, 2, 2, 'ID: 68  \nPath: /documents/example.pptx  \nexample.pptx', ''),
(40, '/en', 'document', 'link', 'link', 1, 1382956013, 1382956551, 2, 2, 'ID: 40  \nPath: /en  \n /', 'mainNavStartNode:/en leftNavStartNode:/en language:en navigation_name:Home '),
(41, '/de', 'document', 'page', 'page', 1, 1382956716, 1382962917, 2, 2, 'ID: 41  \nPath: /de  \nAlbert Einstein 3 Bereit beeindruckt zu werden? Es wird dich umhauen! Oh ja, es ist wirklich so gut See in Action See in Action Checkmate In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. Teste unsere Beispiele und tauche ein in die nÃ¤chste Generation von digitalem Inhaltsmanagement Sieh'' selbst Sieh'' selbst! Lorem ipsum. Oh yeah, it''s that good. And lastly, this one. left left We can''t solve problems by using the same kind of thinking we used when we created them. Cum sociis. See for yourself. Checkmate. video a.pimcore_video_flowplayer { display:block; text-align:center; } #video_526e56e5b684b .play { margin-top:108.5px; border:0px; display:inline-block; width:83px; height:83px; background:url(/pimcore/static/js/lib/flowplayer/play_large.png); } var player_config_video_526e56e5b684b = array_merge_recursive({"dummy":true},{"clip":{"url":"\\/videos\\/home-trailer-english.mp4"}}); flowplayer("video_526e56e5b684b", { src: "/pimcore/static/js/lib/flowplayer/flowplayer.swf", width: "100%", height: "300" },player_config_video_526e56e5b684b); ', 'sidebar:/de/sidebar language:de mainNavStartNode:/de leftNavStartNode:/de navigation_name:Startseite '),
(42, '/de/shared', 'document', 'folder', 'folder', 1, 1382956884, 1382956887, 2, 2, 'ID: 42  \nPath: /de/shared  \nshared', 'language:de mainNavStartNode:/en leftNavStartNode:/en '),
(43, '/de/shared/includes', 'document', 'folder', 'folder', 1, 1382956885, 1382956888, 2, 2, 'ID: 43  \nPath: /de/shared/includes  \nincludes', 'language:de mainNavStartNode:/en leftNavStartNode:/en '),
(44, '/de/shared/teasers', 'document', 'folder', 'folder', 1, 1382956885, 1382956888, 2, 2, 'ID: 44  \nPath: /de/shared/teasers  \nteasers', 'language:de mainNavStartNode:/en leftNavStartNode:/en '),
(45, '/de/shared/teasers/standard', 'document', 'folder', 'folder', 1, 1382956885, 1382956888, 2, 2, 'ID: 45  \nPath: /de/shared/teasers/standard  \nstandard', 'language:de mainNavStartNode:/en leftNavStartNode:/en '),
(46, '/de/shared/includes/footer', 'document', 'snippet', 'snippet', 1, 1382956886, 1382956919, 2, 2, 'ID: 46  \nPath: /de/shared/includes/footer  \npimcore.org Dokumentation Bug Tracker Designed and built with all the love in the world by&nbsp;@mdo&nbsp;and&nbsp;@fat. Code licensed under&nbsp;Apache License v2.0,&nbsp;Glyphicons Free&nbsp;licensed under&nbsp;CC BY 3.0. Â© Templates pimcore.org licensed under BSD License ', ''),
(47, '/de/shared/teasers/standard/basic-examples', 'document', 'snippet', 'snippet', 1, 1382956886, 1382957000, 2, 2, 'ID: 47  \nPath: /de/shared/teasers/standard/basic-examples  \n Voll Responsive Lorem ipsum Diese Demo basiert auf Bootstrap, dem wohl bekanntesten,&nbsp;beliebtesten und flexibelsten Fontend-Framework. ', ''),
(48, '/de/shared/teasers/standard/advanced-examples', 'document', 'snippet', 'snippet', 1, 1382956886, 1382957114, 2, 2, 'ID: 48  \nPath: /de/shared/teasers/standard/advanced-examples  \n Drag &amp; Drop Inhaltserstellung Etiam rhoncu Inhalt wird einfach per drag &amp; drop mit InhaltsblÃ¶cken erstellt, welche dann direkt in-line editiert werden kÃ¶nnen. ', ''),
(49, '/de/shared/teasers/standard/experiments', 'document', 'snippet', 'snippet', 1, 1382956887, 1382957197, 2, 2, 'ID: 49  \nPath: /de/shared/teasers/standard/experiments  \n HTML5 immer &amp; Ã¼berall Quisque rutrum &nbsp; Bilder direkt per drag &amp; drop vom Desktop&nbsp;in den Baum in pimcore hochladen, automatische HTML5 Video Konvertierung&nbsp;und viel mehr ... ', ''),
(50, '/de/einfuehrung', 'document', 'page', 'page', 1, 1382957658, 1382957760, 2, 2, 'ID: 50  \nPath: /de/einfuehrung  \n Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. &nbsp; Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. &nbsp; Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. &nbsp; It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. &nbsp; Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Ãœberblick Ã¼ber das Projekt und wie man mit einer einfachen Vorlage loslegen kann. EinfÃ¼hrung Nullam quis ante Maecenas tempus, tellus eget condimentum rhoncu Ullamcorper Scelerisque Erste Schritte Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Etiam rhoncu Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. snippet snippet ', 'navigation_name:EinfÃ¼hrung '),
(51, '/de/einfache-beispiele', 'document', 'page', 'page', 1, 1382957793, 1382957910, 2, 2, 'ID: 51  \nPath: /de/einfache-beispiele  \n Ãœbersicht Ã¼ber einfache Beispiele Diese Seite dient nur zur Demonstration einer mehrsprachigen Seite.&nbsp; Um die Beispiele zu sehen verwende bitte die Englische Beispielseite.&nbsp; Einfache Beispiele ', 'navigation_name:Einfache Beispiele '),
(52, '/de/beispiele-fur-fortgeschrittene', 'document', 'page', 'page', 1, 1382957961, 1382957999, 2, 2, 'ID: 52  \nPath: /de/beispiele-fur-fortgeschrittene  \n Ãœbersicht Ã¼ber fortgeschrittene Beispiele Diese Seite dient nur zur Demonstration einer mehrsprachigen Seite.&nbsp; Um die Beispiele zu sehen verwende bitte die Englische Beispielseite.&nbsp; Beispiele fÃ¼r Fortgeschrittene ', 'navigation_name:Beispiele fÃ¼r Fortgeschrittene '),
(53, '/de/einfache-beispiele/neuigkeiten', 'document', 'page', 'page', 1, 1382958188, 1382958240, 2, 2, 'ID: 53  \nPath: /de/einfache-beispiele/neuigkeiten  \n Neuigkeiten Alle strukturierten Daten werden in "Objects" gespeichert.&nbsp; ', 'navigation_name:Neuigkeiten '),
(54, '/shared', 'document', 'folder', 'folder', 1, 1382959757, 1382959757, 2, 2, 'ID: 54  \nPath: /shared  \nshared', 'mainNavStartNode:/en leftNavStartNode:/en language:en '),
(55, '/shared/includes', 'document', 'folder', 'folder', 1, 1382959767, 1382959768, 2, 2, 'ID: 55  \nPath: /shared/includes  \nincludes', 'mainNavStartNode:/en leftNavStartNode:/en language:en '),
(56, '/shared/includes/languages', 'document', 'snippet', 'snippet', 1, 1382959774, 1382959822, 2, 2, 'ID: 56  \nPath: /shared/includes/languages  \n English German ', ''),
(57, '/en/sidebar', 'document', 'snippet', 'snippet', 1, 1382962826, 1382962845, 2, 2, 'ID: 57  \nPath: /en/sidebar  \n ', ''),
(58, '/de/sidebar', 'document', 'snippet', 'snippet', 1, 1382962891, 1382962906, 2, 2, 'ID: 58  \nPath: /de/sidebar  \n ', ''),
(59, '/en/introduction/sidebar', 'document', 'snippet', 'snippet', 1, 1382962940, 1382962952, 2, 2, 'ID: 59  \nPath: /en/introduction/sidebar  \n ', ''),
(32, '/news/mijn-test-object', 'object', 'object', 'news', 1, 1384358102, 1384358439, 2, 2, 'ID: 32  \nPath: /news/mijn-test-object  \nmijn test object dit is een test voor een object. Eens kijken of ik pimcore nu foutloos aan de praat heb blablablablabalbalblalalbalalbla Nov 13, 2013 1:00:00 AM /screenshots/glossary.png /screenshots/thumbnail-configuration.png ', ''),
(33, '/product', 'object', 'folder', 'folder', 1, 1384517416, 1384518377, 2, 2, 'ID: 33  \nPath: /product  \nproduct', ''),
(35, '/product/testcat1', 'object', 'object', 'product', 1, 1384523107, 1384867550, 2, 2, 'ID: 35  \nPath: /product/testcat1  \n/examples/south-africa/img_1842.jpg Nov 15, 2013 1:15:00 AM 17 ', ''),
(60, '/product', 'document', 'page', 'page', 1, 1384770487, 1384947681, 2, 2, 'ID: 60  \nPath: /product  \n Dit is een test om content te maken UBER MEGA TEST TEST TEST TEST TEST TEST&nbsp; Pimcore TEST TEST TEST Hier is de wysiwyg Title product /product', 'navigation_name:product '),
(36, '/product/testpinguin1', 'object', 'object', 'product', 1, 1384869915, 1384869938, 2, 2, 'ID: 36  \nPath: /product/testpinguin1  \n/examples/south-africa/img_1414.jpg ', '');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE IF NOT EXISTS `sites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mainDomain` varchar(255) DEFAULT NULL,
  `domains` text,
  `rootId` int(11) unsigned DEFAULT NULL,
  `errorDocument` varchar(255) DEFAULT NULL,
  `redirectToMainDomain` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rootId` (`rootId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staticroutes`
--

CREATE TABLE IF NOT EXISTS `staticroutes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pattern` varchar(255) DEFAULT NULL,
  `reverse` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `variables` varchar(255) DEFAULT NULL,
  `defaults` varchar(255) DEFAULT NULL,
  `siteId` int(11) DEFAULT NULL,
  `priority` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `staticroutes`
--

INSERT INTO `staticroutes` (`id`, `name`, `pattern`, `reverse`, `module`, `controller`, `action`, `variables`, `defaults`, `siteId`, `priority`) VALUES
(1, 'news', '/(.*)_n([\\d]+)/', '%prefix/%text_n%id', '', 'news', 'detail', 'text,id', '', NULL, 2),
(3, 'dynamic-simple', '/\\/([a-z]+)\\/([a-z]+)/', '/%controller/%action', '', '%controller', '%action', 'controller,action', '', NULL, 1),
(5, 'product', '/(.*)_p([\\d]+)/', '%prefix/%text_n%id', NULL, 'product', 'detail', 'text,id', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `targeting_personas`
--

CREATE TABLE IF NOT EXISTS `targeting_personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `conditions` longtext,
  `threshold` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `targeting_rules`
--

CREATE TABLE IF NOT EXISTS `targeting_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `scope` varchar(50) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `conditions` longtext,
  `actions` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tracking_events`
--

CREATE TABLE IF NOT EXISTS `tracking_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `timestamp` bigint(20) unsigned DEFAULT NULL,
  `year` int(5) unsigned DEFAULT NULL,
  `month` int(2) unsigned DEFAULT NULL,
  `day` int(2) unsigned DEFAULT NULL,
  `dayOfWeek` int(1) unsigned DEFAULT NULL,
  `dayOfYear` int(3) unsigned DEFAULT NULL,
  `weekOfYear` int(2) unsigned DEFAULT NULL,
  `hour` int(2) unsigned DEFAULT NULL,
  `minute` int(2) unsigned DEFAULT NULL,
  `second` int(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `year` (`year`),
  KEY `month` (`month`),
  KEY `day` (`day`),
  KEY `dayOfWeek` (`dayOfWeek`),
  KEY `dayOfYear` (`dayOfYear`),
  KEY `weekOfYear` (`weekOfYear`),
  KEY `hour` (`hour`),
  KEY `minute` (`minute`),
  KEY `second` (`second`),
  KEY `category` (`category`),
  KEY `action` (`action`),
  KEY `label` (`label`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `translations_admin`
--

CREATE TABLE IF NOT EXISTS `translations_admin` (
  `key` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `translations_admin`
--

INSERT INTO `translations_admin` (`key`, `language`, `text`, `creationDate`, `modificationDate`) VALUES
('blockquote', 'de', '', 1368611528, 1368611528),
('blockquote', 'en', '', 1368611528, 1368611528),
('content-page', 'en', '', 1368523214, 1368523214),
('contents', 'en', '', 1382958363, 1382958363),
('date', 'en', '', 1368613497, 1368613497),
('dateregister', 'en', '', 1368621929, 1368621929),
('email', 'en', '', 1368621928, 1368621928),
('featurette ', 'de', '', 1368608412, 1368608412),
('featurette ', 'en', '', 1368608412, 1368608412),
('female', 'en', '', 1368621928, 1368621928),
('firstname', 'en', '', 1368621928, 1368621928),
('gallery (folder)', 'de', '', 1368608412, 1368608412),
('gallery (folder)', 'en', '', 1368608412, 1368608412),
('gallery (single)', 'de', '', 1368608412, 1368608412),
('gallery (single)', 'en', '', 1368608412, 1368608412),
('gender', 'en', '', 1368621928, 1368621928),
('header color', 'en', '', 1368616347, 1368616347),
('hide left navigation', 'en', '', 1368616017, 1368616017),
('image', 'de', '', 1368608412, 1368608412),
('image', 'en', '', 1368608412, 1368608412),
('image hotspot', 'de', '', 1368627186, 1368627186),
('image hotspot', 'en', '', 1368627186, 1368627186),
('image hotspot & marker', 'de', '', 1368627476, 1368627476),
('image hotspot & marker', 'en', '', 1368627476, 1368627476),
('inquiry', 'en', '', 1368620428, 1368620428),
('lastname', 'en', '', 1368621928, 1368621928),
('left navigation start node', 'en', '', 1368612685, 1368612685),
('male', 'en', '', 1368621928, 1368621928),
('message', 'en', '', 1368622768, 1368622768),
('news', 'en', '', 1368613317, 1368613317),
('newsletter active', 'en', '', 1368621928, 1368621928),
('newsletter confirmed', 'en', '', 1368621928, 1368621928),
('pdf', 'de', '', 1368608412, 1368608412),
('pdf', 'en', '', 1368608412, 1368608412),
('person', 'en', '', 1368621928, 1368621928),
('persons', 'en', '', 1368620458, 1368620458),
('product', 'en', '', 1384515247, 1384515247),
('short text', 'en', '', 1368613497, 1368613497),
('sidebar', 'en', '', 1382962847, 1382962847),
('standard teaser', 'de', '', 1368608412, 1368608412),
('standard teaser', 'en', '', 1368608412, 1368608412),
('standard-teaser', 'en', '', 1368531641, 1368531641),
('terms of use', 'en', '', 1368622768, 1368622768),
('text', 'en', '', 1368613497, 1368613497),
('title', 'en', '', 1368613497, 1368613497),
('unittest', 'en', '', 1368561373, 1368561373),
('video', 'de', '', 1368608412, 1368608412),
('video', 'en', '', 1368608412, 1368608412),
('wysiwyg', 'de', '', 1368608412, 1368608412),
('wysiwyg', 'en', '', 1368608412, 1368608412);

-- --------------------------------------------------------

--
-- Table structure for table `translations_website`
--

CREATE TABLE IF NOT EXISTS `translations_website` (
  `key` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `creationDate` bigint(20) unsigned DEFAULT NULL,
  `modificationDate` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `translations_website`
--

INSERT INTO `translations_website` (`key`, `language`, `text`, `creationDate`, `modificationDate`) VALUES
('''%value%'' is not a valid email address in the basic format local-part@hostname', 'de', '', 1368631595, 1368631595),
('''%value%'' is not a valid email address in the basic format local-part@hostname', 'en', '', 1368631595, 1368631595),
('advanced examples', 'de', '', 0, 0),
('advanced examples', 'en', '', 0, 0),
('aktuelles', 'de', '', 0, 0),
('aktuelles', 'en', '', 0, 0),
('back to top', 'de', '', 0, 0),
('back to top', 'en', '', 0, 0),
('basic examples', 'de', '', 0, 0),
('basic examples', 'en', '', 0, 0),
('beispiele fÃ¼r fortgeschrittene', 'de', '', 0, 0),
('beispiele fÃ¼r fortgeschrittene', 'en', '', 0, 0),
('check me out', 'de', '', 1368610820, 1368610820),
('check me out', 'en', '', 1368610820, 1368610820),
('combined 1', 'en', '', 1368606496, 1368606496),
('combined 2', 'en', '', 1368606637, 1368606637),
('combined 3', 'en', '', 1368606637, 1368606637),
('contain', 'en', '', 1368603255, 1368603255),
('contain &amp; overlay', 'en', '', 1368605819, 1368605819),
('content inheritance', 'de', '', NULL, NULL),
('content inheritance', 'en', '', NULL, NULL),
('content page', 'de', '', 0, 0),
('content page', 'en', '', 0, 0),
('cover', 'en', '', 1368602697, 1368602697),
('creating objects with a form', 'de', '', NULL, NULL),
('creating objects with a form', 'en', '', NULL, NULL),
('deutsche Ã¼bersetzung', 'de', '', 0, 0),
('deutsche Ã¼bersetzung', 'en', '', 0, 0),
('dimensions', 'en', '', 1368604632, 1368604632),
('document viewer', 'de', '', NULL, NULL),
('document viewer', 'en', '', NULL, NULL),
('download', 'de', 'Herunterladen', 1368608523, 1368608523),
('download', 'en', '', 1368608523, 1368608523),
('download compiled', 'de', 'Herunterladen (kompiliert)', 1368608505, 1368608505),
('download compiled', 'en', '', 1368608505, 1368608505),
('download now (%s)', 'de', '', 1368619727, 1368619727),
('download now (%s)', 'en', '', 1368619727, 1368619727),
('download source', 'de', 'Herunterladen (Quellen)', 1368608508, 1368608508),
('download source', 'en', '', 1368608508, 1368608508),
('e-mail', 'de', '', 1368610820, 1368610820),
('e-mail', 'en', '', 1368610820, 1368610820),
('editable round-up', 'de', '', NULL, NULL),
('editable round-up', 'en', '', NULL, NULL),
('einfache beispiele', 'de', '', 0, 0),
('einfache beispiele', 'en', '', 0, 0),
('einfÃ¼hrung', 'de', '', 0, 0),
('einfÃ¼hrung', 'en', '', 0, 0),
('experiments', 'de', '', 0, 0),
('experiments', 'en', '', 0, 0),
('fastest way to get started: get the compiled and minified versions of our css, js, and images. no docs or original source files.', 'de', 'Der schnellste Weg um loszulegen: Lade die kompilierten und reduzierten Versionen unserer CSS, JS und Grafiken. Keine Dokumentation oder Quelldateien.', 1368608611, 1368608611),
('fastest way to get started: get the compiled and minified versions of our css, js, and images. no docs or original source files.', 'en', '', 1368608611, 1368608611),
('firstname', 'de', '', 1368610819, 1368610819),
('firstname', 'en', '', 1368610819, 1368610819),
('frame', 'en', '', 1368603255, 1368603255),
('galleries', 'de', '', 0, 0),
('galleries', 'en', '', 0, 0),
('gender', 'de', '', 1368622092, 1368622092),
('gender', 'en', '', 1368622092, 1368622092),
('get the original files for all css and javascript, along with a local copy of the docs by downloading the latest version directly from github.', 'de', 'Lade die originalen  CSS und Javascript Dateien zusammen mit einer lokalen Kopie der Dokumentation von github.com', 1368608698, 1368608698),
('get the original files for all css and javascript, along with a local copy of the docs by downloading the latest version directly from github.', 'en', '', 1368608698, 1368608698),
('glossary', 'de', '', NULL, NULL),
('glossary', 'en', '', NULL, NULL),
('grayscale', 'en', '', 1368606077, 1368606077),
('hard link', 'de', '', NULL, NULL),
('hard link', 'en', '', NULL, NULL),
('home', 'de', 'Startseite', 0, 1382961053),
('home', 'en', 'Home', 0, 1382961053),
('html5 video', 'de', '', 0, 0),
('html5 video', 'en', '', 0, 0),
('i accept the terms of use', 'de', '', 1368620808, 1368620808),
('i accept the terms of use', 'en', '', 1368620808, 1368620808),
('image with hotspots', 'de', '', NULL, NULL),
('image with hotspots', 'en', '', NULL, NULL),
('introduction', 'de', '', 0, 0),
('introduction', 'en', '', 0, 0),
('keyword', 'de', '', 0, 0),
('keyword', 'en', '', 0, 0),
('lastname', 'de', '', 1368610820, 1368610820),
('lastname', 'en', '', 1368610820, 1368610820),
('mask', 'en', '', 1368606259, 1368606259),
('message', 'de', '', 1368620708, 1368620708),
('message', 'en', '', 1368620708, 1368620708),
('neuigkeiten', 'de', '', 0, 0),
('neuigkeiten', 'en', '', 0, 0),
('news', 'de', '', 0, 0),
('news', 'en', '', 0, 0),
('newsletter', 'de', '', 1368620340, 1368620340),
('newsletter', 'en', '', 1368620340, 1368620340),
('original dimensions of the image', 'en', '', 1368604779, 1368604779),
('overlay', 'en', '', 1368605562, 1368605562),
('properties', 'de', '', 0, 0),
('properties', 'en', '', 0, 0),
('resize', 'en', '', 1368603801, 1368603801),
('rotate', 'en', '', 1368603255, 1368603255),
('rounded corners', 'en', '', 1368605936, 1368605936),
('scale by height', 'en', '', 1368603959, 1368603959),
('scale by width', 'en', '', 1368603959, 1368603959),
('search', 'de', '', 1368629830, 1368629830),
('search', 'en', '', 1368629830, 1368629830),
('sepia', 'en', '', 1368606075, 1368606075),
('submit', 'de', '', 1368610820, 1368610820),
('submit', 'en', '', 1368610820, 1368610820),
('thank you very much', 'de', '', 1368611300, 1368611300),
('thank you very much', 'en', '', 1368611300, 1368611300),
('thumbnails', 'de', '', NULL, NULL),
('thumbnails', 'en', '', NULL, NULL),
('total %s', 'de', '', 1368619656, 1368619656),
('total %s', 'en', '', 1368619656, 1368619656),
('total: %s', 'de', '', 1368619663, 1368619663),
('total: %s', 'en', '', 1368619663, 1368619663),
('website translations', 'de', '', 0, 0),
('website translations', 'en', '', 0, 0),
('website Ã¼bersetzungen', 'de', '', 0, 0),
('website Ã¼bersetzungen', 'en', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tree_locks`
--

CREATE TABLE IF NOT EXISTS `tree_locks` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` enum('asset','document','object') NOT NULL DEFAULT 'asset',
  `locked` enum('self','propagate') DEFAULT NULL,
  PRIMARY KEY (`id`,`type`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `locked` (`locked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tree_locks`
--

INSERT INTO `tree_locks` (`id`, `type`, `locked`) VALUES
(12, 'document', 'self'),
(46, 'document', 'self'),
(56, 'document', 'self');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(11) unsigned DEFAULT NULL,
  `type` enum('user','userfolder','role','rolefolder') NOT NULL DEFAULT 'user',
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `admin` tinyint(1) unsigned DEFAULT '0',
  `active` tinyint(1) unsigned DEFAULT '1',
  `permissions` varchar(1000) DEFAULT NULL,
  `roles` varchar(1000) DEFAULT NULL,
  `welcomescreen` tinyint(1) DEFAULT NULL,
  `closeWarning` tinyint(1) DEFAULT NULL,
  `memorizeTabs` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_name` (`type`,`name`),
  KEY `parentId` (`parentId`),
  KEY `name` (`name`),
  KEY `password` (`password`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parentId`, `type`, `name`, `password`, `firstname`, `lastname`, `email`, `language`, `admin`, `active`, `permissions`, `roles`, `welcomescreen`, `closeWarning`, `memorizeTabs`) VALUES
(2, 0, 'user', 'admin', '1d5a91a9040484dad3671bcbb7c86429', '', '', '', 'en', 1, 1, 'assets,backup,bounce_mail_inbox,classes,clear_cache,clear_temp_files,documents,document_style_editor,document_types,glossary,http_errors,newsletter,notes_events,objects,plugins,predefined_properties,qr_codes,recyclebin,redirects,reports,robots.txt,routes,seemode,seo_document_editor,system_settings,tag_snippet_management,targeting,thumbnails,translations,website_settings', '', 1, 1, 1),
(6, 0, 'user', 'system', '', '', '', '', '', 1, 1, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_permission_definitions`
--

CREATE TABLE IF NOT EXISTS `users_permission_definitions` (
  `key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_permission_definitions`
--

INSERT INTO `users_permission_definitions` (`key`) VALUES
('assets'),
('backup'),
('bounce_mail_inbox'),
('classes'),
('clear_cache'),
('clear_temp_files'),
('documents'),
('document_style_editor'),
('document_types'),
('glossary'),
('http_errors'),
('newsletter'),
('notes_events'),
('objects'),
('plugins'),
('predefined_properties'),
('qr_codes'),
('recyclebin'),
('redirects'),
('reports'),
('robots.txt'),
('routes'),
('seemode'),
('seo_document_editor'),
('system_settings'),
('tag_snippet_management'),
('targeting'),
('thumbnails'),
('translations'),
('website_settings');

-- --------------------------------------------------------

--
-- Table structure for table `users_workspaces_asset`
--

CREATE TABLE IF NOT EXISTS `users_workspaces_asset` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(255) DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `list` tinyint(1) DEFAULT '0',
  `view` tinyint(1) DEFAULT '0',
  `publish` tinyint(1) DEFAULT '0',
  `delete` tinyint(1) DEFAULT '0',
  `rename` tinyint(1) DEFAULT '0',
  `create` tinyint(1) DEFAULT '0',
  `settings` tinyint(1) DEFAULT '0',
  `versions` tinyint(1) DEFAULT '0',
  `properties` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  KEY `cid` (`cid`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_workspaces_document`
--

CREATE TABLE IF NOT EXISTS `users_workspaces_document` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(255) DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `list` tinyint(1) unsigned DEFAULT '0',
  `view` tinyint(1) unsigned DEFAULT '0',
  `save` tinyint(1) unsigned DEFAULT '0',
  `publish` tinyint(1) unsigned DEFAULT '0',
  `unpublish` tinyint(1) unsigned DEFAULT '0',
  `delete` tinyint(1) unsigned DEFAULT '0',
  `rename` tinyint(1) unsigned DEFAULT '0',
  `create` tinyint(1) unsigned DEFAULT '0',
  `settings` tinyint(1) unsigned DEFAULT '0',
  `versions` tinyint(1) unsigned DEFAULT '0',
  `properties` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  KEY `cid` (`cid`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_workspaces_object`
--

CREATE TABLE IF NOT EXISTS `users_workspaces_object` (
  `cid` int(11) unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(255) DEFAULT NULL,
  `userId` int(11) unsigned NOT NULL DEFAULT '0',
  `list` tinyint(1) unsigned DEFAULT '0',
  `view` tinyint(1) unsigned DEFAULT '0',
  `save` tinyint(1) unsigned DEFAULT '0',
  `publish` tinyint(1) unsigned DEFAULT '0',
  `unpublish` tinyint(1) unsigned DEFAULT '0',
  `delete` tinyint(1) unsigned DEFAULT '0',
  `rename` tinyint(1) unsigned DEFAULT '0',
  `create` tinyint(1) unsigned DEFAULT '0',
  `settings` tinyint(1) unsigned DEFAULT '0',
  `versions` tinyint(1) unsigned DEFAULT '0',
  `properties` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  KEY `cid` (`cid`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uuids`
--

CREATE TABLE IF NOT EXISTS `uuids` (
  `uuid` char(36) NOT NULL,
  `itemId` bigint(20) unsigned NOT NULL,
  `type` varchar(25) NOT NULL,
  `instanceIdentifier` varchar(50) NOT NULL,
  UNIQUE KEY `itemId_type_uuid` (`itemId`,`type`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE IF NOT EXISTS `versions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int(11) unsigned DEFAULT NULL,
  `note` text,
  `date` bigint(1) unsigned DEFAULT NULL,
  `public` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `serialized` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `cid`, `ctype`, `userId`, `note`, `date`, `public`, `serialized`) VALUES
(126, 27, 'asset', 2, NULL, 1384357780, 0, 1),
(127, 27, 'asset', 2, NULL, 1384357791, 0, 1),
(128, 32, 'object', 2, NULL, 1384358102, 0, 1),
(129, 32, 'object', 2, NULL, 1384358188, 0, 1),
(130, 32, 'object', 2, NULL, 1384358192, 0, 1),
(131, 32, 'object', 2, NULL, 1384358240, 0, 1),
(132, 32, 'object', 2, NULL, 1384358439, 0, 1),
(137, 35, 'object', 2, NULL, 1384523198, 0, 1),
(138, 35, 'object', 2, NULL, 1384523476, 0, 1),
(139, 35, 'object', 2, NULL, 1384524725, 0, 1),
(140, 35, 'object', 2, NULL, 1384526193, 0, 1),
(141, 35, 'object', 2, NULL, 1384526212, 0, 1),
(142, 35, 'object', 2, NULL, 1384526236, 0, 1),
(143, 35, 'object', 2, NULL, 1384527345, 0, 1),
(144, 35, 'object', 2, NULL, 1384527642, 0, 1),
(148, 27, 'asset', 2, NULL, 1384783775, 0, 1),
(149, 27, 'asset', 2, NULL, 1384783788, 0, 1),
(161, 60, 'document', 2, NULL, 1384855394, 0, 1),
(162, 60, 'document', 2, NULL, 1384855428, 0, 1),
(163, 60, 'document', 2, NULL, 1384855461, 0, 1),
(164, 60, 'document', 2, NULL, 1384858764, 0, 1),
(165, 60, 'document', 2, NULL, 1384860316, 0, 1),
(166, 60, 'document', 2, NULL, 1384860326, 0, 1),
(167, 60, 'document', 2, NULL, 1384861898, 0, 1),
(168, 35, 'object', 2, NULL, 1384867504, 0, 1),
(169, 35, 'object', 2, NULL, 1384867550, 0, 1),
(170, 60, 'document', 2, NULL, 1384867582, 0, 1),
(171, 60, 'document', 2, NULL, 1384867619, 0, 1),
(172, 36, 'object', 2, NULL, 1384869915, 0, 1),
(173, 36, 'object', 2, NULL, 1384869938, 0, 1),
(174, 60, 'document', 2, NULL, 1384947681, 0, 1);

-- --------------------------------------------------------

--
-- Structure for view `object_2`
--
DROP TABLE IF EXISTS `object_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `object_2` AS select `object_query_2`.`oo_id` AS `oo_id`,`object_query_2`.`oo_classId` AS `oo_classId`,`object_query_2`.`oo_className` AS `oo_className`,`object_query_2`.`date` AS `date`,`object_query_2`.`image_1` AS `image_1`,`object_query_2`.`image_2` AS `image_2`,`object_query_2`.`image_3` AS `image_3`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_2` join `objects` on((`objects`.`o_id` = `object_query_2`.`oo_id`)));

-- --------------------------------------------------------

--
-- Structure for view `object_3`
--
DROP TABLE IF EXISTS `object_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `object_3` AS select `object_query_3`.`oo_id` AS `oo_id`,`object_query_3`.`oo_classId` AS `oo_classId`,`object_query_3`.`oo_className` AS `oo_className`,`object_query_3`.`person__id` AS `person__id`,`object_query_3`.`person__type` AS `person__type`,`object_query_3`.`date` AS `date`,`object_query_3`.`message` AS `message`,`object_query_3`.`terms` AS `terms`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_3` join `objects` on((`objects`.`o_id` = `object_query_3`.`oo_id`)));

-- --------------------------------------------------------

--
-- Structure for view `object_4`
--
DROP TABLE IF EXISTS `object_4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `object_4` AS select `object_query_4`.`oo_id` AS `oo_id`,`object_query_4`.`oo_classId` AS `oo_classId`,`object_query_4`.`oo_className` AS `oo_className`,`object_query_4`.`gender` AS `gender`,`object_query_4`.`firstname` AS `firstname`,`object_query_4`.`lastname` AS `lastname`,`object_query_4`.`email` AS `email`,`object_query_4`.`newsletterActive` AS `newsletterActive`,`object_query_4`.`newsletterConfirmed` AS `newsletterConfirmed`,`object_query_4`.`dateRegister` AS `dateRegister`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_4` join `objects` on((`objects`.`o_id` = `object_query_4`.`oo_id`)));

-- --------------------------------------------------------

--
-- Structure for view `object_5`
--
DROP TABLE IF EXISTS `object_5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `object_5` AS select `object_query_5`.`oo_id` AS `oo_id`,`object_query_5`.`oo_classId` AS `oo_classId`,`object_query_5`.`oo_className` AS `oo_className`,`object_query_5`.`frontimage` AS `frontimage`,`object_query_5`.`Created` AS `Created`,`object_query_5`.`SKU` AS `SKU`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className` from (`object_query_5` join `objects` on((`objects`.`o_id` = `object_query_5`.`oo_id`)));

-- --------------------------------------------------------

--
-- Structure for view `object_localized_2_de`
--
DROP TABLE IF EXISTS `object_localized_2_de`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `object_localized_2_de` AS select `object_query_2`.`oo_id` AS `oo_id`,`object_query_2`.`oo_classId` AS `oo_classId`,`object_query_2`.`oo_className` AS `oo_className`,`object_query_2`.`date` AS `date`,`object_query_2`.`image_1` AS `image_1`,`object_query_2`.`image_2` AS `image_2`,`object_query_2`.`image_3` AS `image_3`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`object_localized_query_2_de`.`ooo_id` AS `ooo_id`,`object_localized_query_2_de`.`language` AS `language`,`object_localized_query_2_de`.`title` AS `title`,`object_localized_query_2_de`.`shortText` AS `shortText`,`object_localized_query_2_de`.`text` AS `text` from ((`object_query_2` join `objects` on((`objects`.`o_id` = `object_query_2`.`oo_id`))) left join `object_localized_query_2_de` on((`object_query_2`.`oo_id` = `object_localized_query_2_de`.`ooo_id`)));

-- --------------------------------------------------------

--
-- Structure for view `object_localized_2_en`
--
DROP TABLE IF EXISTS `object_localized_2_en`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `object_localized_2_en` AS select `object_query_2`.`oo_id` AS `oo_id`,`object_query_2`.`oo_classId` AS `oo_classId`,`object_query_2`.`oo_className` AS `oo_className`,`object_query_2`.`date` AS `date`,`object_query_2`.`image_1` AS `image_1`,`object_query_2`.`image_2` AS `image_2`,`object_query_2`.`image_3` AS `image_3`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`object_localized_query_2_en`.`ooo_id` AS `ooo_id`,`object_localized_query_2_en`.`language` AS `language`,`object_localized_query_2_en`.`title` AS `title`,`object_localized_query_2_en`.`shortText` AS `shortText`,`object_localized_query_2_en`.`text` AS `text` from ((`object_query_2` join `objects` on((`objects`.`o_id` = `object_query_2`.`oo_id`))) left join `object_localized_query_2_en` on((`object_query_2`.`oo_id` = `object_localized_query_2_en`.`ooo_id`)));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keyvalue_keys`
--
ALTER TABLE `keyvalue_keys`
  ADD CONSTRAINT `keyvalue_keys_ibfk_1` FOREIGN KEY (`group`) REFERENCES `keyvalue_groups` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
