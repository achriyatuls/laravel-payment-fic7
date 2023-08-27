-- -------------------------------------------------------------
-- TablePlus 5.4.0(504)
--
-- https://tableplus.com/
--
-- Database: laravel
-- Generation Time: 2023-08-24 16:16:25.7540
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_23_005802_add_role_at_users', 1),
(7, '2023_08_23_023030_add_phone_bio_at_users', 1);

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `bio`, `role`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jessie Jacobs', 'emmerich.dayne@example.net', '+1-747-935-5017', 'Dolore excepturi et eveniet quis. Recusandae cumque debitis ullam nesciunt et facere. Ipsum tenetur suscipit animi qui tenetur. Repellendus reprehenderit laborum consequatur quisquam tenetur vitae aut. Omnis distinctio hic illo aliquid quidem et et.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'GVfFTCZJwR', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(2, 'Jaclyn Bogisich', 'jayson.steuber@example.net', '+1 (734) 237-3115', 'Velit saepe dignissimos reiciendis similique qui cupiditate. Perspiciatis rerum minus delectus quia rem laborum excepturi. Autem molestiae accusamus laudantium quas nihil omnis.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'S2FNpgWl1j', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(3, 'Michale VonRueden', 'fturcotte@example.com', '201-521-7907', 'Dolorem iure officiis fugit cupiditate. Explicabo voluptas non quia unde eligendi doloribus ut non. Et autem ut aliquam quo dolores non reprehenderit. Consequuntur aut nemo aut.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'icwDtizH42', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(4, 'Soledad Abbott', 'julien.powlowski@example.org', '(574) 561-6860', 'Veniam minima maxime cupiditate. Qui sed deleniti voluptas asperiores quia nemo. Et quia ut libero voluptatem ipsum quaerat quod. Quaerat alias voluptas fugiat quam debitis ut consectetur.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'fNU07p4wEj', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(5, 'Ismael Ryan', 'ofelia.torp@example.org', '1-412-847-6783', 'Repudiandae a ut non repellendus quis repellat. Maiores commodi omnis fuga nemo consectetur. Aut temporibus quas maiores dolores vel omnis eum.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'FG7OOWYaym', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(6, 'Laurianne Renner', 'sydney.pacocha@example.com', '817-731-3279', 'Odit sit quia sunt et. Dolorum ducimus id et ut eveniet. Velit aut molestias earum qui praesentium natus.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Fjxu4J7zgH', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(7, 'Mattie Corwin', 'omoen@example.org', '(218) 920-2544', 'Quia provident nobis voluptas. Et consequatur dolores soluta quia quia molestiae et. Dignissimos inventore et nostrum fuga ut.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vAfctGgwFc', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(8, 'Beaulah Berge', 'elenora44@example.net', '+17855399041', 'Accusantium fuga id molestias ea recusandae. Qui et eum dolorem. Commodi aperiam dignissimos nisi consequatur. Quo qui eaque corrupti necessitatibus nulla.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yB77TVXd8u', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(9, 'Dr. Kendra Ratke II', 'walker.nitzsche@example.com', '+1-270-432-2153', 'Corporis ipsa eum dolores aspernatur. Corporis iure unde ipsam veniam porro voluptas. Debitis sunt quia veniam sapiente tenetur modi.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8tZAqEQxGt', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(10, 'Mrs. Jolie Sporer', 'pwill@example.net', '1-919-461-6348', 'Ut excepturi modi ut sunt. Qui illo unde laudantium eum consequatur quidem et. In adipisci ullam eos quia soluta sint. Est eos sequi voluptatum corporis voluptatem.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'jOlH90kRuZ', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(11, 'Mckenzie Stroman', 'erwin36@example.com', '503-814-3765', 'Suscipit cumque in voluptatem. Voluptates ut quis odio possimus quasi. Eligendi omnis quas facilis laborum consequatur vitae soluta. Et consequuntur ad omnis laboriosam provident velit eum. Id architecto voluptatem vero eos dolorem corrupti et doloremque.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JQnfEbHAGl', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(12, 'Vena Wolf', 'kyler52@example.org', '(234) 405-2529', 'Et fuga eaque nihil soluta. Ullam cum nisi maxime numquam sed. Enim id quibusdam vel in aut et odio. Eos excepturi ipsa laboriosam expedita architecto.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Z62dmzdFuv', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(13, 'Arnoldo Farrell', 'dylan.parisian@example.com', '1-269-392-5180', 'Inventore praesentium ut inventore iste esse sint sit. Possimus sit qui incidunt provident labore repellendus laudantium. Asperiores dignissimos minus tenetur consequatur ut placeat. Earum impedit ullam voluptatem commodi.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'YrJc7qznCL', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(14, 'Enos Lemke', 'rbechtelar@example.net', '(757) 762-0207', 'Beatae facere molestiae voluptatem expedita reprehenderit dolorem aut. Ex ad quod veritatis deleniti minus voluptas culpa libero. Nam soluta provident voluptate iure voluptas exercitationem vero. Enim a sit expedita omnis quas ipsa.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'AT8gnxty3z', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(15, 'Agustin Berge', 'dayton.cassin@example.net', '(320) 654-3749', 'Repellendus voluptas et suscipit. Aut reprehenderit cupiditate qui aliquid error sint debitis. Non nesciunt maxime voluptatibus et ut corporis in. Deleniti deserunt laborum cupiditate et.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'TkgaVi4R3M', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(16, 'Ila Franecki', 'justina26@example.com', '573.380.7693', 'Maxime et ea repellat nesciunt. Iste laudantium dolor sint cumque earum. Id et facere possimus quaerat.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'LztIsgLBJH', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(17, 'Elias Farrell', 'marcia.douglas@example.org', '413.459.6971', 'Repellat placeat architecto et et. Necessitatibus ex dicta illo voluptatum et minus est hic. Blanditiis repudiandae sapiente vero exercitationem illum.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'azWAeHcCXLjz2jdQ8LwciJZ4xN2UrFj3NIQT0twFAZGTa1b8ZjjzpvmN3POE', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(18, 'Ulices Lebsack', 'lillian.barrows@example.com', '628-603-8276', 'Fugit odit temporibus nemo et. Pariatur et eligendi aut dolore ipsum accusamus enim. Est odio inventore aut ut eum et quaerat.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '3s5QY9cVjr', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(19, 'Peggie Littel', 'name47@example.org', '+15135438213', 'Ducimus sunt culpa iure ipsum enim. Culpa sunt veritatis laboriosam.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'VpMC8MZr4K', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(20, 'Loyce Marquardt', 'daugherty.marcelino@example.org', '(347) 529-2047', 'Omnis necessitatibus atque adipisci et eius eum. Quod adipisci officiis libero sed. Minima cumque dignissimos in dolor earum aperiam.', 'user', '2023-08-24 02:15:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'KOOleANti2', '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(21, 'AchriyatulS', 'achriyatuls0101@gmail.com', '081271044444', 'CEO Sadewa CNC', 'admin', '2023-08-24 02:15:37', '$2y$10$uYuYJBprvGaqG.8FBTD/2u2QiAwo84aDLXPGC3aPRLJL/shwdSnqO', NULL, NULL, NULL, NULL, '2023-08-24 02:15:37', '2023-08-24 02:15:37'),
(22, 'Kapten Ibnu Budir', 'ibnubudir@gmail.com', '08125252497', 'Owner Sadewa CNC', 'superadmin', '2023-08-24 02:15:37', '$2y$10$zTEPW6k2106PUICO0hzSZuERQzlcoxdb1v4PLjx9BGIfSOCqBNhnO', NULL, NULL, NULL, NULL, '2023-08-24 02:15:37', '2023-08-24 02:15:37');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;