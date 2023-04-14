-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 14. 12:46
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `questionnaire`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
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
-- Tábla szerkezet ehhez a táblához `kerdeseks`
--

CREATE TABLE `kerdeseks` (
  `kerdes_id` int(10) UNSIGNED NOT NULL,
  `kerdoiv_id` int(10) UNSIGNED NOT NULL,
  `kerdes_szovege` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `kerdeseks`
--

INSERT INTO `kerdeseks` (`kerdes_id`, `kerdoiv_id`, `kerdes_szovege`) VALUES
(18, 12, 'Mennyire tetszik önnek ez a kérdőív portál?'),
(19, 12, 'Ön szerint mivel lehetne bővíteni a weboldalt?'),
(20, 13, 'Mennyire kedveli a Laravelt 1-5ös skálán?'),
(21, 14, 'Mennyire kedveli a Tailwindet 1-5ös skálán?');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kerdoivs`
--

CREATE TABLE `kerdoivs` (
  `kerdoiv_id` int(10) UNSIGNED NOT NULL,
  `kerdoiv_nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `kerdoivs`
--

INSERT INTO `kerdoivs` (`kerdoiv_id`, `kerdoiv_nev`) VALUES
(12, 'Bemutató kérdőív'),
(13, 'Laravel kérdőív'),
(14, 'Tailwind kérdőív');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_14_182626_create_kerdoivs_table', 1),
(6, '2023_02_14_185354_create_kerdeseks_table', 1),
(7, '2023_02_14_185403_create_valaszoks_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@admin.com', '$2y$10$tG9/9VVW0XCJNk4qbDMLdeMHBEhr2aVXaYKncVnALD2sOhWt1lUGq', '2023-01-18 11:16:48', '2023-01-18 11:16:48'),
(4, 'user', 'user@user.com', '$2y$10$LmROssRLgDiKviBGM54biu00GHVA9WH8wReXCiPEkt/cMDLO187vK', '2023-01-18 11:57:51', '2023-01-18 11:57:51'),
(5, 'Próba', 'asd@asd.com', '$2y$10$qqY5yRXhpBsCuRTf2crLVORAKeLuvt6b8FbaKyX0/Wp9M4qpI1E6m', '2023-01-21 17:03:06', '2023-01-21 17:03:06'),
(6, 'Axel', 'axel01@gmail.com', '$2y$10$nNHFNDIyoXv3PYOoZLgsxO1tsi1tVps2YzqWVh4hUMOS6GMZag4g2', '2023-03-26 12:21:14', '2023-03-26 12:21:14'),
(9, 'Sanyika', 'sanyika@gmail.com', '$2y$10$hrXv1oMM6tbpBy9J.8Y7T.uOTHxzVevU8IJRUjYa6HOImmnvbKrOa', '2023-03-30 14:57:23', '2023-03-30 14:57:23');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `valaszoks`
--

CREATE TABLE `valaszoks` (
  `valaszok_id` int(10) UNSIGNED NOT NULL,
  `kerdes_id` int(10) UNSIGNED NOT NULL,
  `valasz` varchar(255) NOT NULL,
  `fiatalok` int(11) NOT NULL,
  `kozepkoruak` int(11) NOT NULL,
  `idosek` int(11) NOT NULL,
  `ferfi` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `egyeb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `valaszoks`
--

INSERT INTO `valaszoks` (`valaszok_id`, `kerdes_id`, `valasz`, `fiatalok`, `kozepkoruak`, `idosek`, `ferfi`, `no`, `egyeb`) VALUES
(86, 18, 'Nem tetszik.', 0, 0, 0, 0, 0, 0),
(87, 18, 'Kicsit tetszik.', 0, 0, 0, 0, 0, 0),
(88, 18, 'Tetszik is meg nem is.', 1, 0, 0, 1, 0, 0),
(89, 18, 'Egész jó.', 1, 1, 1, 1, 2, 0),
(90, 18, 'Nagyon tetszik.', 2, 0, 1, 2, 0, 1),
(91, 19, 'Több kérdőív opció.', 2, 0, 1, 2, 0, 1),
(92, 19, 'Több válasz opció.', 0, 0, 0, 0, 0, 0),
(93, 19, 'Szebb design.', 0, 1, 0, 0, 1, 0),
(94, 19, 'Elfelejtett jelszó funkció.', 0, 0, 1, 1, 0, 0),
(95, 19, 'Minden rendbe van ezzel az oldallal', 2, 0, 0, 1, 1, 0),
(96, 20, '1', 0, 0, 0, 0, 0, 0),
(97, 20, '2', 0, 0, 0, 0, 0, 0),
(98, 20, '3', 0, 0, 0, 0, 0, 0),
(99, 20, '4', 0, 0, 0, 0, 0, 0),
(100, 20, '5', 0, 0, 0, 0, 0, 0),
(101, 21, '1', 0, 0, 0, 0, 0, 0),
(102, 21, '2', 0, 0, 0, 0, 0, 0),
(103, 21, '3', 0, 0, 0, 0, 0, 0),
(104, 21, '4', 0, 0, 0, 0, 0, 0),
(105, 21, '5', 0, 0, 0, 0, 0, 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `kerdeseks`
--
ALTER TABLE `kerdeseks`
  ADD PRIMARY KEY (`kerdes_id`),
  ADD KEY `kerdeseks_kerdoiv_id_foreign` (`kerdoiv_id`);

--
-- A tábla indexei `kerdoivs`
--
ALTER TABLE `kerdoivs`
  ADD PRIMARY KEY (`kerdoiv_id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A tábla indexei `valaszoks`
--
ALTER TABLE `valaszoks`
  ADD PRIMARY KEY (`valaszok_id`),
  ADD KEY `valaszoks_kerdes_id_foreign` (`kerdes_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kerdeseks`
--
ALTER TABLE `kerdeseks`
  MODIFY `kerdes_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT a táblához `kerdoivs`
--
ALTER TABLE `kerdoivs`
  MODIFY `kerdoiv_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `valaszoks`
--
ALTER TABLE `valaszoks`
  MODIFY `valaszok_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kerdeseks`
--
ALTER TABLE `kerdeseks`
  ADD CONSTRAINT `kerdeseks_kerdoiv_id_foreign` FOREIGN KEY (`kerdoiv_id`) REFERENCES `kerdoivs` (`kerdoiv_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `valaszoks`
--
ALTER TABLE `valaszoks`
  ADD CONSTRAINT `valaszoks_kerdes_id_foreign` FOREIGN KEY (`kerdes_id`) REFERENCES `kerdeseks` (`kerdes_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
