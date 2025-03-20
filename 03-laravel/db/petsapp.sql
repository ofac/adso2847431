-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-03-2025 a las 16:25:35
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `petsapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adoptions`
--

CREATE TABLE `adoptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_06_160754_create_pets_table', 1),
(5, '2025_03_06_160822_create_adoptions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pets`
--

CREATE TABLE `pets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'no-image.png',
  `kind` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pets`
--

INSERT INTO `pets` (`id`, `name`, `image`, `kind`, `weight`, `age`, `breed`, `location`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Firulais', 'no-image.png', 'Dog', 16, 24, 'Shiba Inu', 'Kioto', 'Agile Japanese breed known for its fox-like appearance, spirited personality, and thick double coat', 0, '2025-03-13 21:54:09', NULL),
(2, 'Michi', 'no-image.png', 'Cat', 4, 18, 'Siamés', 'Osaka', 'Sleek, vocal breed with striking blue eyes, a short coat, and distinctive color points on ears, face, paws, and tail.', 0, '2025-03-13 21:54:09', NULL),
(3, 'Killer', 'no-image.png', 'Dog', 5, 48, 'French Poodle', 'Tokio', 'Intelligent, elegant breed known for its curly coat, playful nature, and versatility in various dog sports', 0, '2025-03-13 21:54:09', NULL),
(4, 'monahan', 'no-image.png', 'Dog', 36, 99, 'Silver', 'North Penelope', 'Voluptas impedit consequatur qui deserunt illum aut dolores illum eveniet sunt sint natus.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(5, 'gleichner', 'no-image.png', 'Dog', 20, 86, 'Gainsboro', 'Murazikmouth', 'Reprehenderit doloribus non nesciunt sint omnis est nulla laborum.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(6, 'senger', 'no-image.png', 'Fish', 79, 50, 'LightGray', 'Jenkinshaven', 'Itaque praesentium omnis nemo repellendus nemo explicabo corrupti.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(7, 'stroman', 'no-image.png', 'Bird', 46, 56, 'HotPink', 'Port Kobefort', 'Optio sint fugit harum ad officiis nulla dolor exercitationem corporis velit.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(8, 'mckenzie', 'no-image.png', 'Bird', 22, 21, 'MediumVioletRed', 'Skilesborough', 'At at saepe laborum nisi velit aut magni eum id et.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(9, 'beatty', 'no-image.png', 'Mouse', 53, 59, 'Aquamarine', 'D\'Amoreville', 'Expedita odio earum odio saepe accusamus in quasi incidunt ipsam neque.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(10, 'keebler', 'no-image.png', 'Cat', 49, 86, 'DarkCyan', 'Carmeloland', 'Voluptatem harum repudiandae non qui nisi veritatis voluptas voluptas quia consectetur ea pariatur aspernatur.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(11, 'wiegand', 'no-image.png', 'Cat', 24, 88, 'WhiteSmoke', 'Port Rossie', 'Ipsum dolorem ut quae et quo ut delectus sed sed.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(12, 'dubuque', 'no-image.png', 'Fish', 3, 26, 'LightSkyBlue', 'Murrayfurt', 'Odio nulla aut reprehenderit illo atque iste beatae quos.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(13, 'okeefe', 'no-image.png', 'Mouse', 11, 77, 'DarkGreen', 'Anissaberg', 'Quisquam harum nobis aut quis ea dicta neque molestiae.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(14, 'grant', 'no-image.png', 'Mouse', 21, 48, 'OrangeRed', 'Langoshchester', 'Repellendus minima impedit sed voluptas in est.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(15, 'stark', 'no-image.png', 'Mouse', 71, 76, 'DarkSlateGray', 'Gorczanyberg', 'Necessitatibus consequatur expedita deserunt et architecto aperiam sed aut.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(16, 'greenfelder', 'no-image.png', 'Bird', 35, 84, 'Bisque', 'West Aimeeview', 'Ut nostrum cumque dolore cumque sed qui sit occaecati ab.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(17, 'kerluke', 'no-image.png', 'Cat', 4, 56, 'Purple', 'Ezratown', 'Harum aut minima quia libero aut neque.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(18, 'schimmel', 'no-image.png', 'Cat', 35, 28, 'LightGreen', 'Lake Leaside', 'Fugiat iusto consequatur dignissimos nostrum maxime sed harum veniam ea impedit facere.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(19, 'oberbrunner', 'no-image.png', 'Cat', 41, 29, 'Ivory', 'Rickfurt', 'Voluptatem odit sit voluptatem suscipit enim ut quo consequatur ullam accusamus quibusdam quos ut.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(20, 'huel', 'no-image.png', 'Cat', 32, 46, 'Aqua', 'North Adellebury', 'Neque nihil neque et et et debitis ratione sint.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(21, 'kuphal', 'no-image.png', 'Fish', 51, 90, 'LightPink', 'South Geovany', 'Omnis aut quia similique quis non tempore quia voluptatem velit.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(22, 'quigley', 'no-image.png', 'Fish', 71, 79, 'DeepSkyBlue', 'Connellystad', 'Maxime rerum vel atque ex mollitia reiciendis ullam sint sit itaque ratione est eos.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(23, 'spencer', 'no-image.png', 'Dog', 25, 67, 'LightSkyBlue', 'North Ottisside', 'Doloremque ratione et ea maiores porro cumque est nesciunt suscipit amet.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(24, 'kessler', 'no-image.png', 'Bird', 26, 94, 'DarkGray', 'Eduardoberg', 'Repellat incidunt similique deserunt id sit minima commodi consequuntur enim quis iste atque.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(25, 'rogahn', 'no-image.png', 'Bird', 15, 94, 'DarkGreen', 'Lake Seth', 'Corporis voluptatem qui dolores adipisci ut explicabo est libero provident.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(26, 'kihn', 'no-image.png', 'Bird', 73, 31, 'PaleTurquoise', 'West Shyannemouth', 'Quaerat dolorem officiis consectetur nulla nam aut nihil.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(27, 'oreilly', 'no-image.png', 'Cat', 9, 25, 'MediumPurple', 'Eugeneshire', 'Asperiores quia vero voluptatem labore qui enim eos quos blanditiis omnis suscipit in.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(28, 'effertz', 'no-image.png', 'Mouse', 77, 54, 'BlanchedAlmond', 'Yoshikoshire', 'Libero deserunt voluptas magnam facilis earum maiores quia nihil placeat.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(29, 'osinski', 'no-image.png', 'Dog', 56, 77, 'LightSteelBlue', 'South Allanville', 'Quam ut illum est libero accusantium et sequi ducimus.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(30, 'green', 'no-image.png', 'Fish', 29, 51, 'Tomato', 'Lake Pietro', 'Aut perferendis consequatur beatae necessitatibus exercitationem est exercitationem.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(31, 'skiles', 'no-image.png', 'Cat', 64, 50, 'Thistle', 'West Lola', 'Molestias nemo omnis eveniet dolor ex reiciendis facere aspernatur et.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(32, 'rosenbaum', 'no-image.png', 'Bird', 43, 36, 'Navy', 'North Reed', 'Tempora quasi itaque perspiciatis omnis qui voluptatum maiores dolorem numquam.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(33, 'rodriguez', 'no-image.png', 'Fish', 78, 83, 'GreenYellow', 'Ritchieview', 'Eum molestiae nostrum maxime voluptas molestiae asperiores provident voluptatem.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(34, 'veum', 'no-image.png', 'Bird', 52, 74, 'GoldenRod', 'New Eugenetown', 'Aut itaque ut ut aut illo omnis molestiae aperiam incidunt beatae quibusdam quibusdam deserunt.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(35, 'deckow', 'no-image.png', 'Cat', 41, 82, 'LightGoldenRodYellow', 'Lake Alana', 'Incidunt impedit omnis aliquid ut qui eos est nostrum fuga doloribus vero.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(36, 'bechtelar', 'no-image.png', 'Mouse', 34, 92, 'Wheat', 'Gloverside', 'Hic voluptatum nam enim qui nam quidem odit omnis omnis sed.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(37, 'feeney', 'no-image.png', 'Bird', 62, 90, 'Green', 'Feestton', 'Esse minus rerum atque provident quis quidem rerum sunt repudiandae dignissimos maiores.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(38, 'wisoky', 'no-image.png', 'Bird', 35, 86, 'Bisque', 'Ebertside', 'Doloribus harum voluptas facilis et similique laborum itaque similique quasi libero odio ex.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(39, 'kuhn', 'no-image.png', 'Mouse', 5, 79, 'Gray', 'Opheliaport', 'Sed debitis velit modi dolor magnam unde dolores magnam dolorem quae.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(40, 'beer', 'no-image.png', 'Mouse', 14, 96, 'HoneyDew', 'Letitiaview', 'Vitae temporibus culpa veniam harum possimus rerum porro.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(41, 'wintheiser', 'no-image.png', 'Bird', 49, 66, 'LawnGreen', 'West Emilio', 'Doloremque unde explicabo quisquam labore tempore voluptate vel perspiciatis ducimus incidunt.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(42, 'mohr', 'no-image.png', 'Cat', 24, 17, 'MediumSlateBlue', 'Claudville', 'At placeat dolore occaecati esse dignissimos beatae corrupti autem ut ad aut est.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(43, 'hill', 'no-image.png', 'Fish', 21, 43, 'Pink', 'Gusikowskibury', 'Quia tenetur voluptatem sit reiciendis amet ratione.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(44, 'gorczany', 'no-image.png', 'Mouse', 13, 48, 'Gray', 'Maxwellchester', 'Voluptatem odit eum aliquam repellendus magnam quia quisquam nihil.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(45, 'turner', 'no-image.png', 'Bird', 11, 99, 'Fuchsia', 'Lake Jovannyside', 'Ut id excepturi aliquid deserunt inventore recusandae aut omnis laudantium quia perferendis.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(46, 'schmeler', 'no-image.png', 'Cat', 9, 32, 'LimeGreen', 'Schaeferborough', 'Sapiente fugiat soluta quia id consequatur quibusdam optio.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(47, 'fritsch', 'no-image.png', 'Mouse', 74, 62, 'RosyBrown', 'Herthahaven', 'Expedita aperiam quidem saepe fugiat aliquam est.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(48, 'lind', 'no-image.png', 'Dog', 28, 23, 'NavajoWhite', 'North Nia', 'Et fuga aut reprehenderit est ex nesciunt nemo aut est magnam.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(49, 'runolfsdottir', 'no-image.png', 'Bird', 31, 46, 'Indigo', 'Port Danny', 'Et dolores voluptatibus voluptatibus minima sit sapiente repellendus eos non.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(50, 'roob', 'no-image.png', 'Mouse', 33, 70, 'SlateGray', 'West Madaline', 'Voluptas repellendus iure voluptatem nostrum minus sequi at consequatur et et aut consequatur accusantium.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(51, 'schumm', 'no-image.png', 'Cat', 14, 57, 'BlueViolet', 'West Royal', 'Repellat sit repellat rerum sed laborum vitae rerum et quis sed quia.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(52, 'bauch', 'no-image.png', 'Dog', 38, 39, 'LimeGreen', 'Hillton', 'Alias rerum at nemo veniam alias ratione dignissimos.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(53, 'batz', 'no-image.png', 'Bird', 5, 51, 'DarkKhaki', 'Kesslerfort', 'Sed consequatur ea ut iusto repudiandae sed nam quia nam.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(54, 'damore', 'no-image.png', 'Fish', 24, 11, 'DarkMagenta', 'Windlerberg', 'Omnis ut vero excepturi quis culpa maxime eos sunt odit excepturi repellendus.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(55, 'white', 'no-image.png', 'Cat', 53, 14, 'Cyan', 'Pietromouth', 'Beatae enim quam quo autem consequatur accusantium architecto itaque doloribus itaque et illo totam.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(56, 'kovacek', 'no-image.png', 'Bird', 56, 86, 'DarkKhaki', 'New Breana', 'Asperiores dignissimos ducimus nemo perspiciatis dolores accusantium.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(57, 'collins', 'no-image.png', 'Mouse', 8, 47, 'SlateGray', 'Lednermouth', 'Non autem eius ex facere sunt quas asperiores et ut maiores voluptatibus quas deserunt.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(58, 'brakus', 'no-image.png', 'Mouse', 12, 68, 'DarkCyan', 'North Myrtis', 'Culpa quae praesentium fugiat debitis ut voluptate et est repellat quia qui voluptate.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(59, 'kemmer', 'no-image.png', 'Dog', 22, 15, 'CornflowerBlue', 'Goldnerborough', 'Dicta optio ducimus sed sit repellat laboriosam magnam minima.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(60, 'will', 'no-image.png', 'Cat', 45, 40, 'BurlyWood', 'Lake Herminia', 'Voluptas voluptate sit quasi quidem ea minus aliquid pariatur porro.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(61, 'rosenbaum', 'no-image.png', 'Dog', 44, 30, 'OliveDrab', 'Lake Noelmouth', 'Rem aut temporibus qui et ducimus et.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(62, 'christiansen', 'no-image.png', 'Mouse', 60, 63, 'SteelBlue', 'West Maeganstad', 'Ut asperiores animi possimus cumque eos nostrum asperiores.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(63, 'mayer', 'no-image.png', 'Fish', 9, 98, 'DarkSeaGreen', 'Port Domenicberg', 'Libero et iste est labore ut voluptatem dolorum aut in aspernatur sunt.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(64, 'gaylord', 'no-image.png', 'Dog', 1, 26, 'Cornsilk', 'Gottliebfurt', 'Omnis ducimus quidem veniam voluptas non nihil necessitatibus ad.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(65, 'gorczany', 'no-image.png', 'Mouse', 38, 89, 'SlateBlue', 'Aidanfort', 'Voluptatum ut aliquid occaecati rerum quis aut tempora.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(66, 'braun', 'no-image.png', 'Cat', 66, 59, 'SaddleBrown', 'South Domenichaven', 'Maxime harum aliquam cumque in beatae ab nostrum.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(67, 'keebler', 'no-image.png', 'Bird', 74, 92, 'DarkGray', 'Lakinfurt', 'Ea excepturi omnis quibusdam sequi vitae sint enim architecto.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(68, 'cole', 'no-image.png', 'Mouse', 75, 37, 'LightSkyBlue', 'North Josiahchester', 'Perferendis suscipit laborum eum adipisci eos et voluptatum totam dolorum ipsa adipisci.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(69, 'hoeger', 'no-image.png', 'Cat', 22, 29, 'Indigo', 'Keelingmouth', 'Vel in eum consequatur tempora suscipit possimus est rem.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(70, 'corkery', 'no-image.png', 'Cat', 16, 13, 'FloralWhite', 'Port Patsyton', 'Tenetur voluptatibus expedita ut amet nihil velit omnis pariatur similique.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(71, 'hodkiewicz', 'no-image.png', 'Mouse', 6, 27, 'SandyBrown', 'West Christelle', 'Mollitia quaerat adipisci illo error enim corrupti est.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(72, 'williamson', 'no-image.png', 'Dog', 68, 11, 'Turquoise', 'O\'Harabury', 'Ipsa ipsam nam repellat nostrum facilis doloribus.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(73, 'gottlieb', 'no-image.png', 'Fish', 34, 92, 'White', 'West Kadenchester', 'Placeat praesentium nemo quisquam nemo est sit hic nesciunt et quo.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(74, 'lowe', 'no-image.png', 'Bird', 66, 56, 'CornflowerBlue', 'East Anibalborough', 'Sed id beatae velit magnam dolores dolorem voluptatem consequatur reprehenderit.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(75, 'schaden', 'no-image.png', 'Dog', 46, 78, 'DarkSlateGray', 'Port Sydni', 'Voluptatibus et commodi sint nobis ut voluptas.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(76, 'will', 'no-image.png', 'Bird', 56, 23, 'LightBlue', 'Aniyaland', 'In porro molestiae nobis delectus harum laboriosam rerum inventore.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(77, 'reichert', 'no-image.png', 'Mouse', 43, 42, 'DarkBlue', 'Gulgowskiburgh', 'Repellendus est et et qui error saepe autem officia dignissimos eos.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(78, 'jaskolski', 'no-image.png', 'Mouse', 27, 43, 'LightGreen', 'Kasandraton', 'Libero expedita quis et tempora nobis aliquid repudiandae molestias porro eos repellendus.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(79, 'schuppe', 'no-image.png', 'Cat', 3, 21, 'SeaGreen', 'Junemouth', 'Aut consequatur accusamus quia blanditiis ut officia perspiciatis esse.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(80, 'kuhic', 'no-image.png', 'Bird', 65, 83, 'Beige', 'West Mariannashire', 'Aspernatur commodi et atque provident non quis accusamus error.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(81, 'brekke', 'no-image.png', 'Cat', 74, 52, 'DarkOrchid', 'Borerstad', 'Et et ut et aut vel quos perferendis at saepe.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(82, 'tromp', 'no-image.png', 'Bird', 40, 33, 'DarkGray', 'Oberbrunnerbury', 'Ipsa laborum suscipit quia enim aut ut est ipsam odio nostrum perspiciatis est quisquam.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(83, 'bogisich', 'no-image.png', 'Fish', 28, 20, 'LemonChiffon', 'Port Taurean', 'Sapiente commodi ab corporis dignissimos nostrum aut ea accusamus alias aspernatur omnis quod.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(84, 'mills', 'no-image.png', 'Fish', 64, 32, 'Cyan', 'Millsshire', 'Quae non repellat eligendi quos aut velit harum aliquid ad a ad officia rem.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(85, 'nikolaus', 'no-image.png', 'Mouse', 9, 25, 'Purple', 'Garfieldshire', 'Ut eum explicabo neque vel odit molestias minima eum.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(86, 'berge', 'no-image.png', 'Mouse', 38, 40, 'Fuchsia', 'East Kaylie', 'Assumenda quam perferendis porro sequi sequi voluptate sint non.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(87, 'nikolaus', 'no-image.png', 'Cat', 7, 33, 'LightYellow', 'Keelingborough', 'Qui qui nostrum nam expedita qui nemo molestiae veritatis voluptatem.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(88, 'stokes', 'no-image.png', 'Mouse', 26, 47, 'Yellow', 'Zionhaven', 'Nulla sunt voluptas facere eius occaecati aut.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(89, 'greenfelder', 'no-image.png', 'Cat', 56, 59, 'Bisque', 'Port Linnie', 'Est quae repudiandae placeat eaque illo ut.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(90, 'kuhic', 'no-image.png', 'Dog', 58, 50, 'Snow', 'Cummerataton', 'Qui qui quos corporis molestiae corporis atque ea recusandae asperiores sint.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(91, 'botsford', 'no-image.png', 'Bird', 61, 49, 'PapayaWhip', 'Cheyannemouth', 'Officiis alias autem saepe nam suscipit rem omnis earum.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(92, 'mclaughlin', 'no-image.png', 'Mouse', 8, 90, 'Bisque', 'Trevionville', 'Modi ex pariatur voluptatem dolor asperiores ex voluptatum aut.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(93, 'roob', 'no-image.png', 'Fish', 65, 71, 'DarkOliveGreen', 'Shakirastad', 'Beatae accusantium eaque iste qui qui aut voluptas consequuntur sint sunt.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(94, 'bashirian', 'no-image.png', 'Fish', 37, 20, 'Thistle', 'Nienowmouth', 'Non impedit recusandae et quaerat perferendis qui.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(95, 'bednar', 'no-image.png', 'Dog', 77, 93, 'Red', 'North Cordeliaville', 'Magnam a adipisci quia consectetur perferendis eum tempore molestias fuga deserunt ab consequatur harum.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(96, 'bode', 'no-image.png', 'Bird', 40, 43, 'DarkRed', 'West Jeff', 'Sed omnis doloribus sint optio reprehenderit omnis iure aut ipsum non officiis ratione molestiae.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(97, 'cummings', 'no-image.png', 'Dog', 56, 36, 'DarkSalmon', 'East Daryltown', 'Laborum totam qui eum praesentium quasi aspernatur dolores possimus.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(98, 'mann', 'no-image.png', 'Mouse', 78, 78, 'LavenderBlush', 'Gusikowskichester', 'Vitae nihil impedit aspernatur nulla ratione debitis.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(99, 'huels', 'no-image.png', 'Fish', 7, 17, 'Blue', 'East Jordaneshire', 'Dolorem consequatur debitis quam dolorem explicabo similique minima dicta optio deleniti rerum magnam ullam dignissimos.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(100, 'tremblay', 'no-image.png', 'Dog', 9, 87, 'Navy', 'Dachmouth', 'Est deleniti quia ipsam et ea magnam porro aliquam.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(101, 'hessel', 'no-image.png', 'Mouse', 54, 40, 'MediumSeaGreen', 'South Gia', 'Fugiat perferendis quibusdam quasi voluptatem dolores pariatur dignissimos est est commodi nihil.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(102, 'spencer', 'no-image.png', 'Fish', 22, 33, 'MediumSpringGreen', 'Boydmouth', 'Ad fuga tenetur ducimus inventore reprehenderit modi est praesentium voluptates consequatur in.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(103, 'rowe', 'no-image.png', 'Bird', 53, 16, 'Ivory', 'West Leta', 'Voluptatem doloribus enim voluptas omnis omnis est dolorem expedita unde sunt ipsam repellendus.', 0, '2025-03-13 21:54:09', '2025-03-13 21:54:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('XiNGCH2jHRktqIXy38TRej9e3j2T9xDxvzCz8nH5', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVFOVlRSUlV6TGZ4Z3pta1lkcjByTHYzTnU5U3BMZDBISTY3TnZNVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93L3VzZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1742482859);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document` bigint(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'no-photo.png',
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'Customer',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `document`, `fullname`, `gender`, `birthdate`, `photo`, `phone`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 75000001, 'John Wick', 'Male', '1984-10-12', 'no-photo.png', '3205673456', 'jwick@mail.com', NULL, '$2y$12$OHfE9hamcbnxfdVnpxbE1uGOY3X61BsASJSkufp0mj9.APo7ShR26', 'Admin', NULL, '2025-03-13 21:54:08', '2025-03-13 21:54:08'),
(2, 75000002, 'Lara Croft', 'Female', '1994-08-05', 'no-photo.png', '3209890976', 'lara@mail.com', NULL, '$2y$12$FO9eFWk0V/3Ybpz/bcfz4e7vS.fSIXdjY94XeU9SgLQq0WB6wShRC', 'Customer', NULL, '2025-03-13 21:54:09', '2025-03-13 21:54:09'),
(3, 75148497, 'Otilia Reichert', 'Female', '1983-06-04', '75148497.png', '3206557487', 'ulynch@example.net', '2025-03-13 21:54:12', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', '354xbmMa4A', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(4, 75187441, 'Christophe Weber', 'Male', '1999-06-16', '75187441.png', '3205118426', 'gibson.bailey@example.org', '2025-03-13 21:54:14', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'kCJ106tmCL', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(5, 75680446, 'Hildegard Kutch', 'Female', '1989-06-05', '75680446.png', '3205988298', 'dhagenes@example.net', '2025-03-13 21:54:17', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'isuak0QcSU', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(6, 75277304, 'Camden Rodriguez', 'Male', '1998-05-24', '75277304.png', '3208751628', 'vpfeffer@example.com', '2025-03-13 21:54:20', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'b8GToLgUah', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(7, 75901085, 'Alison Champlin', 'Female', '1981-07-06', '75901085.png', '3209052895', 'schamberger.leora@example.org', '2025-03-13 21:54:24', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'VGJOBlmDAn', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(8, 75604222, 'Sandra Hansen', 'Female', '1980-04-04', '75604222.png', '3203378312', 'vcollier@example.org', '2025-03-13 21:54:26', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'kHjG0osrSj', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(9, 75745622, 'Ole Bruen', 'Male', '1980-03-20', '75745622.png', '3202466445', 'waylon.cremin@example.com', '2025-03-13 21:54:28', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'kteUZK1aAU', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(10, 75021076, 'Sarah Crona', 'Female', '2002-09-15', '75021076.png', '3200775250', 'bud.davis@example.net', '2025-03-13 21:54:31', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'V7UGZevcGT', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(11, 75540138, 'Carolanne Sporer', 'Female', '1982-03-04', '75540138.png', '3204424162', 'welch.adelle@example.com', '2025-03-13 21:54:33', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'ezbx1miTjT', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(12, 75147636, 'Torrance Runolfsson', 'Male', '1978-03-30', '75147636.png', '3209279145', 'mschultz@example.net', '2025-03-13 21:54:35', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'uitteLELPx', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(13, 75673604, 'Chris Hudson', 'Male', '1978-08-19', '75673604.png', '3203836640', 'kuhlman.yolanda@example.org', '2025-03-13 21:54:37', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'IyboHY8B32', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(14, 75483901, 'Lenore Moore', 'Female', '1983-05-01', '75483901.png', '3205608298', 'destini76@example.org', '2025-03-13 21:54:40', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'a8VlEnIOd3', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(15, 75916409, 'Monique Breitenberg', 'Female', '1987-05-24', '75916409.png', '3201664203', 'jbrown@example.org', '2025-03-13 21:54:42', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'fHFx9sfTVC', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(16, 75052290, 'Kirsten Haley', 'Female', '2002-02-23', '75052290.png', '3204055780', 'freida.little@example.com', '2025-03-13 21:54:46', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'jpKI7YVeiT', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(17, 75550760, 'Brent Reinger', 'Male', '1980-02-20', '75550760.png', '3200604296', 'jadon54@example.org', '2025-03-13 21:54:48', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'KvwqKFKOBJ', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(18, 75299461, 'Marielle Goodwin', 'Female', '1977-08-04', '75299461.png', '3200209116', 'brenner@example.net', '2025-03-13 21:54:50', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'qIPs8C3jok', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(19, 75400591, 'Chelsey Tromp', 'Male', '1988-04-23', '75400591.png', '3208711924', 'christiansen.sidney@example.com', '2025-03-13 21:54:52', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'ijw7mGwKo7', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(20, 75633586, 'Vinnie Kassulke', 'Male', '1989-07-23', '75633586.png', '3204008257', 'jaeden.cruickshank@example.net', '2025-03-13 21:54:54', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'zBKBFgFMhI', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(21, 75295865, 'Jamie Morissette', 'Male', '2000-05-12', '75295865.png', '3204287821', 'fkautzer@example.com', '2025-03-13 21:54:57', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', '17ndJpdNFV', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(22, 75836830, 'Melany Streich', 'Male', '1997-09-01', '75836830.png', '3203426477', 'gustave65@example.org', '2025-03-13 21:54:59', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'Bziu68MQDK', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(23, 75873203, 'Cameron Buckridge', 'Male', '2003-03-21', '75873203.png', '3203129435', 'rudolph89@example.com', '2025-03-13 21:55:01', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'yEEfJTT4sy', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(24, 75830806, 'Jovanny Dicki', 'Male', '1982-10-11', '75830806.png', '3207189461', 'hauck.earnest@example.net', '2025-03-13 21:55:03', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'TsjX4ht9my', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(25, 75461705, 'Shakira Ratke', 'Female', '1982-11-27', '75461705.png', '3200588943', 'zackery.macejkovic@example.com', '2025-03-13 21:55:05', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'MMhfFgFDob', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(26, 75967834, 'Kailey McGlynn', 'Female', '1997-06-26', '75967834.png', '3209386253', 'boyle.colby@example.org', '2025-03-13 21:55:09', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'NAgFkAnWfb', '2025-03-13 21:55:14', '2025-03-13 21:55:14'),
(27, 75353257, 'Monica Strosin', 'Female', '1976-11-23', '75353257.png', '3202214038', 'demarco08@example.net', '2025-03-13 21:55:14', '$2y$12$25oW9yy08d4TNVVD7u/k6e1iUYMmGWpisYBmWDirCUJXLEKTo80hO', 'Customer', 'wyjOTSZrKk', '2025-03-13 21:55:14', '2025-03-13 21:55:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adoptions_user_id_foreign` (`user_id`),
  ADD KEY `adoptions_pet_id_foreign` (`pet_id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_document_unique` (`document`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pets`
--
ALTER TABLE `pets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD CONSTRAINT `adoptions_pet_id_foreign` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`),
  ADD CONSTRAINT `adoptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
