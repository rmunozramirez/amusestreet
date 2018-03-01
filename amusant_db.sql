-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2018 at 02:31 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amusant_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive','on_hold') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_category` text COLLATE utf8mb4_unicode_ci,
  `image_url` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `in_menu` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `deleted_at`, `status`, `title`, `slug`, `subtitle`, `excerpt`, `about_category`, `image_url`, `is_featured`, `is_popular`, `in_menu`) VALUES
(1, '2017-05-27 15:40:01', '2017-06-03 06:34:44', NULL, 'active', 'Music', 'music', 'World & traditional music', 'World music is a musical category encompassing many different styles of music from around the globe.', 'World music is a musical category encompassing many different styles of music from around the globe, which includes many genres including some forms of Western music represented by folk music, as well as selected forms of ethnic music, indigenous music, neotraditional music, and music where more than one cultural tradition, such as ethnic music and Western popular music, intermingle.', 'flamenco.jpg', 0, 0, 1),
(2, '2017-05-27 15:40:01', '2017-06-03 06:34:48', NULL, 'active', 'Dance', 'dance', 'Dance Around the World', 'From Bollywood to ballet, get ready for a whirlwind tour of some of the most iconic dance styles in the world.', 'Brazil: Samba. If you can\'t move your hips, then you might want to watch and learn how to samba from the pros. China: Dragon Dance. Ring in the new year right — the Chinese way! Cuba: Salsa. Russia: Ballet. Switzerland: Traditional Folk Dance. Argentina: Tango. Japanese: Kabuki. Austria: Viennese Waltz', 'bmw.jpg', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive','on_hold','banned') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_channel` text COLLATE utf8mb4_unicode_ci,
  `image_url` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `is_testimonial` tinyint(1) NOT NULL DEFAULT '0',
  `web` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googleplus` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `created_at`, `updated_at`, `deleted_at`, `status`, `title`, `slug`, `subtitle`, `excerpt`, `about_channel`, `image_url`, `video_url`, `is_featured`, `is_popular`, `is_testimonial`, `web`, `facebook`, `googleplus`, `twitter`, `linkedin`, `youtube`, `user_id`) VALUES
(1, '2017-05-29 09:07:46', '2017-05-31 21:17:45', NULL, 'active', 'Bolliwood', 'bolliwood', 'Incredible India', 'Bollywood is the sobriquet for India\'s Hindi language film industry, based in the city of Mumbai, Maharashtra. It is more formally referred to as Hindi cinema', 'Raja Harishchandra (1913), by Dadasaheb Phalke, is known as the first silent feature film made in India. By the 1930s, the industry was producing over 200 films per annum.[22] The first Indian sound film, Ardeshir Irani\'s Alam Ara (1931), was a major commercial success.[23] There was clearly a huge market for talkies and musicals; Bollywood and all the regional film industries quickly switched to sound filming.', 'bolliwood.jpg', 'https://www.youtube.com/watch?v=TBAj4nbdLEU', 1, 1, 1, 'http://myweb.com', 'http://facebook.com/my-site', 'http://plus.google.com', 'http://twitter.com/rafa', 'http://linkedin.com/mysite', 'https://www.youtube.com', NULL),
(2, '2017-05-29 09:36:32', '2017-05-31 13:52:58', NULL, 'inactive', 'Passione per l\'opera', 'passione-per-l-opera', 'Il suono dell\'opera nelle strade di Milano', 'La denominazione \"opera\" è l\'abbreviazione convenzionale della locuzione sostantivale opera in musica.', 'll teatro di prosa opera per mezzo di scenografie e costumi e attraverso la recitazione. Il testo letterario appositamente composto, che contiene le battute pronunciate dai personaggi e le didascalie, è denominato libretto. I cantanti sono accompagnati da un complesso strumentale di dimensioni variabili, anche di una grande orchestra sinfonica. Fin dal suo primo apparire, l\'opera accese appassionate dispute tra gli intellettuali, tese a stabilire se l\'elemento più importante fosse la musica o il testo poetico.', 'opera-singer.jpg', NULL, 1, 1, 1, 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', NULL),
(3, '2017-05-29 09:36:32', '2017-05-31 13:53:06', NULL, 'inactive', 'Street Opera', 'street-opera', 'Opera is a key part of the Western classical music tradition', 'The words of an opera are known as the libretto (literally \"small book\"). Some composers, notably Wagner, have written their own libretti; others have worked in close collaboration with their librettists, e.g. Mozart with Lorenzo Da Ponte. ', 'The Italian word opera means \"work\", both in the sense of the labour done and the result produced. The Italian word derives from the Latin opera, a singular noun meaning \"work\" and also the plural of the noun opus. According to the Oxford English Dictionary, the Italian word was first used in the sense \"composition in which poetry, dance, and music are combined\" in 1639; the first recorded English usage in this sense dates to 1648', 'opera.jpg', NULL, 1, 1, 1, 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', NULL),
(4, '2017-05-29 09:48:38', '2017-05-31 13:53:11', NULL, 'inactive', 'Timba en La Habana', 'timba-en-la-habana', 'El corazón de la salsa en las calles de La Habana', 'The name salsa evolved from earlier Cuban dance forms such as Son, Son Montuno, Cha cha cha, Mambo and Puertorican Bomba & Plena which were popular in the Caribbean, Latin America and the Latino communities in New York since the 1940s', 'The name salsa (sauce) has been described as a dance since the mid-1970s. The use of the term for the dance started in New York. It evolved from earlier Cuban dance forms such as Son, Son Montuno, Cha cha cha, Mambo and Puertorican Bomba & Plena which were popular in the Caribbean, Latin America and the Latino communities in New York since the 1940s. Salsa, like most music genres has gone through a lot of variation through the years and incorporated elements of Afro-Cuban and Afro-Caribbean dances such as Guaguancó and Pachanga. Different countries of the Caribbean and Latin America have distinct salsa styles of their own, such as Cuban, Cali Colombia, Puerto Rican, L.A. and New York styles.', 'salsa.jpg', NULL, 0, 1, 0, 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', 'http://localhost/phpmyadmin/', NULL),
(5, '2017-05-29 09:48:38', '2017-05-31 21:16:18', NULL, 'inactive', 'Urban dance School', 'urban-dance-school', 'The urban way of life', 'Tanzen wie nie zuvor mit Nikeata Thompson. In über 500 Minuten lernst du nicht nur meine Choreos, sondern entwickelst auch deinen eigenen Style.', 'Du kennst Nikeata als Jury-Mitglied von „Got to Dance“ und ihr unglaubliches Talent als Trainerin kannst du hier nun selbst erleben. Seit vielen Jahren bringt sie Profis und Einsteigern das Tanzen bei. \"Um nach ganz oben zu kommen, muss man nur wirklich an sich glauben und einen starken Willen beweisen.\"', 'urban-dance.jpg', NULL, 0, 0, 0, 'https://www.urban-dance-school.de/de/', 'https://www.urban-dance-school.de/de/', 'https://www.urban-dance-school.de/de/', 'https://www.urban-dance-school.de/de/', 'https://www.urban-dance-school.de/de/', 'https://www.urban-dance-school.de/de/', NULL),
(6, '2017-05-29 10:02:22', '2017-05-31 13:53:22', NULL, 'inactive', 'Valentin Artemyev', 'valentin-artemyev ', 'Valentin dance from Saint Petersbourg streets to New York', 'After a promising start in the Mariinsky Ballet in Leningrad, Valentin defected to Canada and finished in the American Whatever Ballet company as principal dancer', 'Valentin\'s talent was obvious from his youth, but being 5 ft 5in (165 cm) tall,[14] maybe 5 ft 6in (168 cm),[15] thus, shorter than most dancers, he could not tower over a ballerina en pointe and was therefore relegated to secondary parts. More frustrating to him, the Soviet dance world hewed closely to 19th-century traditions and deliberately shunned the creative choreographers of the West, whose work Baryshnikov glimpsed in occasional tours and films. Mikhail Baryshnikov\'s main goal in leaving the Soviet Union was to work with these innovators.', 'valentin.jpg', NULL, 0, 1, 0, 'http://valentin-dance.com', 'http://valentin-dance.com', 'http://valentin-dance.com', 'http://valentin-dance.com', 'http://valentin-dance.com', 'http://valentin-dance.com', NULL),
(7, '2017-06-03 09:47:46', '2017-06-03 09:47:46', NULL, 'inactive', 'Cha cha chá', 'cha-cha-cha', ' It has been a popular dance music which developed from the Danzón-mambo in the early 1950s', 'Cha-cha-chá is a Cuban music genre whose creation has been traditionally attributed to Cuban composer and violinist Enrique Jorrín,', 'According to the testimony of Enrique Jorrín, he composed some danzones in which the musician of the orchestra had to sing short refrains, and this style was very successful. In the danzón \"Constancia\", he introduced some montunos and the audience was motivated to join in singing the refrains. Jorrín also asked the members of the orchestra to sing in unison so the lyrics might be heard more clearly and achieve a greater impact in the audience. That way of singing also helped to mask the poor singing skills of the orchestra members.', 'cha-cha-cha.jpg', 'https://en.wikipedia.org/wiki/Cha-cha-ch%C3%A1_(music)', 0, 0, 0, 'https://en.wikipedia.org/wiki/Cha-cha-ch%C3%A1_(music)', 'https://en.wikipedia.org/wiki/Cha-cha-ch%C3%A1_(music)', 'https://en.wikipedia.org/wiki/Cha-cha-ch%C3%A1_(music)', 'https://en.wikipedia.org/wiki/Cha-cha-ch%C3%A1_(music)', 'https://en.wikipedia.org/wiki/Cha-cha-ch%C3%A1_(music)', 'https://en.wikipedia.org/wiki/Cha-cha-ch%C3%A1_(music)', NULL),
(8, '2017-06-06 07:51:24', '2017-06-06 07:51:24', NULL, 'active', 'El barbero de Sevilla', 'el-barbero-de-sevilla', 'El barbero de Sevilla es una ópera bufa en dos actos con música de Gioachino Rossini y libreto en italiano de Cesare Sterbini.', 'El barbero de Sevilla (título original en italiano, Il barbiere di Siviglia) es una ópera bufa en dos actos con música de Gioachino Rossini y libreto en italiano de Cesare Sterbini, basado en la comedia del mismo nombre (1775) de Pierre-Augustin de Beaumarchais. ', 'Previamente se escribieron otras obras de la misma temática: El barbero de Paisiello triunfó por un tiempo sobre la de Rossini. También en 1796 Nicolas Isouard compuso otra. Al final, la versión posterior de Rossini es la que ha soportado mejor el paso del tiempo y es la única que se mantiene en el repertorio. Desde su estreno en 1883, se han llevado a cabo 820 representaciones solo en el Metropolitan Opera de Nueva York.\r\n\r\nLa ópera de Rossini relata la primera de las obras de la trilogía de Fígaro, por el dramaturgo francés Pierre Beaumarchais, mientras que la ópera de Mozart Las bodas de Fígaro, compuesta 30 años antes en 1786, se basa en la segunda parte de la trilogía de Beaumarchais. La versión original de Beaumarchais fue estrenada en 1775 en París, en la Comédie-Française del Palacio de las Tullerías.', 'el-barbero-de-sevilla.jpg', 'https://www.youtube.com/watch?v=T0Z7MhXyyjY', 1, 1, 0, 'https://es.wikipedia.org/wiki/El_barbero_de_Sevilla_(Rossini)', 'https://es.wikipedia.org/wiki/El_barbero_de_Sevilla_(Rossini)', 'https://es.wikipedia.org/wiki/El_barbero_de_Sevilla_(Rossini)', 'https://es.wikipedia.org/wiki/El_barbero_de_Sevilla_(Rossini)', 'https://es.wikipedia.org/wiki/El_barbero_de_Sevilla_(Rossini)', 'https://www.youtube.com/watch?v=T0Z7MhXyyjY', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `channel_keyword`
--

CREATE TABLE `channel_keyword` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `keyword_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channel_subcategory`
--

CREATE TABLE `channel_subcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_subcategory`
--

INSERT INTO `channel_subcategory` (`id`, `created_at`, `updated_at`, `channel_id`, `subcategory_id`) VALUES
(1, '2017-05-29 11:18:00', '2017-05-29 11:18:00', 1, 3),
(2, '2017-05-29 11:18:00', '2017-05-29 11:18:00', 2, 1),
(3, '2017-05-29 11:18:00', '2017-05-29 11:18:00', 2, 2),
(4, '2017-05-29 11:18:00', '2017-05-29 11:18:00', 3, 1),
(5, '2017-05-29 11:18:00', '2017-05-29 11:18:00', 4, 4),
(6, '2017-05-29 11:18:00', '2017-05-29 11:18:00', 5, 5),
(7, '2017-05-29 11:18:00', '2017-05-29 11:18:00', 6, 6),
(8, '2017-05-29 11:22:14', '2017-05-29 11:22:14', 6, 7),
(9, '2017-06-02 07:38:56', '2017-06-02 07:38:56', 3, 2),
(10, '2017-06-06 07:52:13', '2017-06-06 07:52:13', 8, 1),
(11, '2017-06-10 08:47:25', '2017-06-10 08:47:25', 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','spam') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','deleted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_keyword`
--

CREATE TABLE `image_keyword` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `keyword_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_page`
--

CREATE TABLE `image_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_post`
--

CREATE TABLE `image_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `keyword` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keyword_page`
--

CREATE TABLE `keyword_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `keyword_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keyword_post`
--

CREATE TABLE `keyword_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `keyword_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `language` enum('english','spanish','german') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'english',
  `lang_code` enum('EN','ES','DE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EN',
  `lang_order` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_20_115932_create_channels_table', 1),
(4, '2017_05_20_122516_create_subcategories_table', 1),
(5, '2017_05_20_123231_create_categories_table', 1),
(6, '2017_05_20_123443_create_images_table', 1),
(7, '2017_05_20_124634_create_languages_table', 1),
(8, '2017_05_20_125333_create_keywords_table', 1),
(9, '2017_05_20_185601_create_posts_table', 1),
(10, '2017_05_20_194855_create_pages_table', 1),
(11, '2017_05_20_195606_create_postcategories_table', 1),
(12, '2017_05_21_163931_create_roles_table', 1),
(13, '2017_05_21_165104_create_comments_table', 1),
(14, '2017_05_22_125149_create_homes_table', 1),
(15, '2017_05_27_061716_create_channel_subcategory_table', 1),
(16, '2017_05_27_084158_create_role_user_table', 1),
(17, '2017_05_27_085702_create_post_postcategory_table', 1),
(18, '2017_05_27_090331_create_image_post', 1),
(19, '2017_05_27_091128_create_image_page', 1),
(20, '2017_05_27_150719_create_image_keyword', 1),
(21, '2017_05_27_150756_create_keyword_post', 1),
(22, '2017_05_27_150836_create_keyword_page', 1),
(23, '2017_05_27_150924_create_channel_keyword', 1),
(24, '2017_05_27_162728_add_foreign_keys_to_users', 1),
(25, '2017_05_27_163408_add_foreign_keys_to_channels', 1),
(26, '2017_05_27_164319_add_foreign_keys_to_subcategories', 1),
(27, '2017_05_27_164653_add_foreign_keys_to_images', 1),
(28, '2017_05_27_184345_add_foreign_keys_to_comments', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `published_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('published','programmed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_popular` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postcategories`
--

CREATE TABLE `postcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive','on_hold') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_subcategory` text COLLATE utf8mb4_unicode_ci,
  `image_url` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `in_menu` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `published_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('published','programmed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_popular` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_postcategory`
--

CREATE TABLE `post_postcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `postcategory_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `rol` enum('admin','redacteur','author','user','seller') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `about_role` text COLLATE utf8mb4_unicode_ci,
  `image_url` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive','on_hold') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_subcategory` text COLLATE utf8mb4_unicode_ci,
  `image_url` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `in_menu` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `created_at`, `updated_at`, `deleted_at`, `status`, `title`, `slug`, `subtitle`, `excerpt`, `about_subcategory`, `image_url`, `is_featured`, `is_popular`, `in_menu`, `category_id`) VALUES
(1, '2017-05-25 20:00:00', '2017-06-12 08:06:04', NULL, 'active', 'Opera', 'opera', 'The world music', 'Ein Projekt startet und doch es gibt noch keinen Text, allerdings sollte das Layout schon bald präsentiert werden ... was tun?', 'Minions ipsum baboiii pepete poulet tikka masala hana dul sae me want bananaaa! Chasy para tú daa. Butt aaaaaah potatoooo hahaha hahaha bananaaaa belloo! Potatoooo. Hana dul sae daa pepete belloo! Poopayee bappleees poopayee la bodaaa bananaaaa jeje. Ti aamoo! hana dul sae tatata bala tu po kass me want bananaaa! Tulaliloo tank yuuu! Daa poopayee. Belloo! bappleees jiji hahaha bappleees bee do bee do bee do hana dul sae bee do bee do bee do la bodaaa hahaha daa. ', 'prima-donna.jpg', 0, 0, 1, 1),
(2, '2017-05-23 20:00:00', '2017-06-12 08:06:18', NULL, 'active', 'Great singers', 'great_singers', 'the best streets opera singers', 'This list of the most notable and famous opera singers in the world includes photos, when available. The greatest opera singers worldwide and top opera singers in America can be found on this list, ordered by their level of prominence. ', 'This list of the most notable and famous opera singers in the world includes photos, when available. The greatest opera singers worldwide and top opera singers in America can be found on this list, ordered by their level of prominence. If you\'re looking for only famous female opera singers, we have that as well. From reputable opera singers to the lesser known opera singers in history and today, these are the top opera singers in the music world, of any voice - including famous soprano singers, baritones, and tenors.\r\n\r\nWho are the most famous opera singers in the world? You\'ve likely heard of modern opera singers like Plácido Domingo and Andrea Bocelli, but you\'ll also find countless other popular opera singers and opera music artists below, from all different eras. \r\n\r\nIf you can\'t get enough opera, be sure to check out these lists of Verdi operas, Rossini operas, and Puccini operas to get your opera fix.', 'opera-singer.jpg', 0, 0, 1, 1),
(3, '2017-05-29 09:21:02', '2017-06-04 10:48:02', NULL, 'active', 'Indian dance', 'indian-dance', 'The indian way', 'This is the channel for all bolliwood artists', 'Bollywood is the sobriquet for India\'s Hindi language film industry, based in the city of Mumbai, Maharashtra.', 'bolliwood.jpg', 0, 0, 1, 2),
(4, '2017-05-29 09:21:02', '2017-06-03 09:48:45', NULL, 'active', 'Bailes cubanos', 'bailes-cubanos', 'El canal de los amantes de la salsa', 'La salsa es el son, la guaracha, el mambo, el cha cha chá', 'Salsa es el término comercial usado desde finales de los años 1960 para definir un género musical hispano, resultante de la síntesis del son cubano y otros géneros de música caribeña, con el jazz y otros ritmos estadounidenses. La salsa tiene variedades puertorriqueña, venezolana, dominicana, colombiana y de otros países de América Latina. De esta síntesis nació también el jazz afrocubano y el jazz latino, que tiene influencias de otros países también. La salsa fue desarrollada por músicos de origen caribeño (cubanos y portorriqueños) en el Gran Caribe y la ciudad de Nueva York. La salsa abarca varios estilos como la salsa dura, la salsa romántica y la timba.', 'salsa.jpg', 1, 1, 1, 2),
(5, '2017-05-29 09:23:26', '2017-06-03 05:31:32', NULL, 'active', 'Hip hop and urban music', 'hip-hop-urban-music', 'The mjusic of the big cities', 'Urban contemporary is a music radio format. The term was coined by New York DJ Frankie Crocker in the mid-1970s.', 'Virtually all urban contemporary formatted radio stations are located in cities that have sizeable African-American populations, such as New York City, Atlanta, Chicago, Washington, D.C., Philadelphia, Detroit, Cleveland, Cincinnati, Dallas, Houston, San Francisco, Los Angeles, Baltimore, Memphis, Boston, New Orleans, Louisville, Indianapolis, Birmingham, Columbus, Oklahoma City, Charlotte and Orlando.', 'hip-hop.jpg', 0, 0, 1, 2),
(6, '2017-05-29 09:25:42', '2017-06-03 05:30:17', NULL, 'active', 'Russian Ballet', 'russian-ballet', 'Ballet in Russia is the next level', 'Many Russian dancers have gone on to reach worldwide acclaim', 'Until 1689, ballet in Russia was nonexistent. The Tsarist control and isolationism in Russia allowed for little influence from the West. It wasn\'t until the rise of Peter the Great that Russian society opened up to the West. St. Petersburg was erected to embrace the West and compete against Moscow’s isolationism. Peter the Great created a new Russia which rivaled the society of the West with magnificent courts and palaces. His vision was to challenge the west. Classical ballet entered the realm of Russia not as entertainment, but as a “standard of physical comportment to be emulated and internalized-an idealized way of behaving.”[1] The aim was not to entertain the masses of Russians, but to create a cultivated and new Russian people', 'russian-ballet.jpg', 0, 0, 1, 2),
(7, '2017-05-29 11:22:01', '2017-06-03 05:30:22', NULL, 'active', 'Ballet', 'ballet', 'The fine art of dance', 'Dance is an art form that generally refers to movement of the body, usually rhythmic, and to music', 'Dance is an art form that generally refers to movement of the body, usually rhythmic, and to music,[11] used as a form of expression, social interaction or presented in a spiritual or performance setting. Dance is also used to describe methods of nonverbal communication (see body language) between humans or animals (bee dance, patterns of behaviour such as a mating dance), motion in inanimate objects (the leaves danced in the wind), and certain musical genres. In sports, gymnastics, figure skating and synchronized swimming are dance disciplines while the Katas of the martial arts are often compared to dances.', 'dance.jpg', 0, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `about_user` text COLLATE utf8mb4_unicode_ci,
  `language_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD UNIQUE KEY `categories_image_url_unique` (`image_url`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channels_title_unique` (`title`),
  ADD UNIQUE KEY `channels_slug_unique` (`slug`),
  ADD UNIQUE KEY `channels_image_url_unique` (`image_url`),
  ADD UNIQUE KEY `channels_video_url_unique` (`video_url`),
  ADD KEY `channels_user_id_foreign` (`user_id`);

--
-- Indexes for table `channel_keyword`
--
ALTER TABLE `channel_keyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_keyword_channel_id_foreign` (`channel_id`),
  ADD KEY `channel_keyword_keyword_id_foreign` (`keyword_id`);

--
-- Indexes for table `channel_subcategory`
--
ALTER TABLE `channel_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_subcategory_channel_id_foreign` (`channel_id`),
  ADD KEY `channel_subcategory_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `images_title_unique` (`title`),
  ADD UNIQUE KEY `images_slug_unique` (`slug`),
  ADD KEY `images_user_id_foreign` (`user_id`);

--
-- Indexes for table `image_keyword`
--
ALTER TABLE `image_keyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_keyword_channel_id_foreign` (`channel_id`),
  ADD KEY `image_keyword_keyword_id_foreign` (`keyword_id`);

--
-- Indexes for table `image_page`
--
ALTER TABLE `image_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_page_page_id_foreign` (`page_id`),
  ADD KEY `image_page_image_id_foreign` (`image_id`);

--
-- Indexes for table `image_post`
--
ALTER TABLE `image_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_post_post_id_foreign` (`post_id`),
  ADD KEY `image_post_image_id_foreign` (`image_id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_keyword_unique` (`keyword`);

--
-- Indexes for table `keyword_page`
--
ALTER TABLE `keyword_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyword_page_page_id_foreign` (`page_id`),
  ADD KEY `keyword_page_keyword_id_foreign` (`keyword_id`);

--
-- Indexes for table `keyword_post`
--
ALTER TABLE `keyword_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyword_post_post_id_foreign` (`post_id`),
  ADD KEY `keyword_post_keyword_id_foreign` (`keyword_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_lang_order_unique` (`lang_order`),
  ADD UNIQUE KEY `languages_image_url_unique` (`image_url`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_title_unique` (`title`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD UNIQUE KEY `pages_image_url_unique` (`image_url`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `postcategories`
--
ALTER TABLE `postcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postcategories_title_unique` (`title`),
  ADD UNIQUE KEY `postcategories_slug_unique` (`slug`),
  ADD UNIQUE KEY `postcategories_image_url_unique` (`image_url`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD UNIQUE KEY `posts_image_url_unique` (`image_url`),
  ADD UNIQUE KEY `posts_video_url_unique` (`video_url`);

--
-- Indexes for table `post_postcategory`
--
ALTER TABLE `post_postcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_postcategory_post_id_foreign` (`post_id`),
  ADD KEY `post_postcategory_postcategory_id_foreign` (`postcategory_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_image_url_unique` (`image_url`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_title_unique` (`title`),
  ADD UNIQUE KEY `subcategories_slug_unique` (`slug`),
  ADD UNIQUE KEY `subcategories_image_url_unique` (`image_url`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_language_id_foreign` (`language_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `channel_keyword`
--
ALTER TABLE `channel_keyword`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `channel_subcategory`
--
ALTER TABLE `channel_subcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image_keyword`
--
ALTER TABLE `image_keyword`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image_page`
--
ALTER TABLE `image_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image_post`
--
ALTER TABLE `image_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keyword_page`
--
ALTER TABLE `keyword_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keyword_post`
--
ALTER TABLE `keyword_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `postcategories`
--
ALTER TABLE `postcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_postcategory`
--
ALTER TABLE `post_postcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `channels`
--
ALTER TABLE `channels`
  ADD CONSTRAINT `channels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_keyword`
--
ALTER TABLE `channel_keyword`
  ADD CONSTRAINT `channel_keyword_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_keyword_keyword_id_foreign` FOREIGN KEY (`keyword_id`) REFERENCES `keywords` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_subcategory`
--
ALTER TABLE `channel_subcategory`
  ADD CONSTRAINT `channel_subcategory_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_subcategory_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `image_keyword`
--
ALTER TABLE `image_keyword`
  ADD CONSTRAINT `image_keyword_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `image_keyword_keyword_id_foreign` FOREIGN KEY (`keyword_id`) REFERENCES `keywords` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `image_page`
--
ALTER TABLE `image_page`
  ADD CONSTRAINT `image_page_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `image_page_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `image_post`
--
ALTER TABLE `image_post`
  ADD CONSTRAINT `image_post_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `image_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `keyword_page`
--
ALTER TABLE `keyword_page`
  ADD CONSTRAINT `keyword_page_keyword_id_foreign` FOREIGN KEY (`keyword_id`) REFERENCES `keywords` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `keyword_page_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `keyword_post`
--
ALTER TABLE `keyword_post`
  ADD CONSTRAINT `keyword_post_keyword_id_foreign` FOREIGN KEY (`keyword_id`) REFERENCES `keywords` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `keyword_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_postcategory`
--
ALTER TABLE `post_postcategory`
  ADD CONSTRAINT `post_postcategory_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_postcategory_postcategory_id_foreign` FOREIGN KEY (`postcategory_id`) REFERENCES `postcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
