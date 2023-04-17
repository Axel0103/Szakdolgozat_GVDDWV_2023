-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 17. 00:29
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
(1, 1, 'Mennyi az idő?'),
(2, 1, 'Hol van Budapest?'),
(3, 2, 'Mennyire kedveli a Laravelt 1-5ös skálán?'),
(4, 3, 'Mennyire tartja ezt a kérdőívet varázslatosnak?');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kerdoivs`
--

CREATE TABLE `kerdoivs` (
  `kerdoiv_id` int(10) UNSIGNED NOT NULL,
  `kerdoiv_nev` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `kerdoivs`
--

INSERT INTO `kerdoivs` (`kerdoiv_id`, `kerdoiv_nev`, `created_by`) VALUES
(1, 'Próba kérdőív', 2),
(2, 'Laravel kérdőív', 3),
(3, 'Bemutató kérdőív', 1);

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
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `authority` varchar(255) NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `authority`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$rGdoEaPVcz2NUW5JIlo/Ju1PtVqb2.IusPKETAZE6EkI4V.UDq52i', 'admin', NULL, NULL),
(2, 'Test', 'test@test.com', '$2y$10$doYCsErR518z2DlMi2URvOnDpryrq.xlH8uR8Z3CpJmEW.keEHQ8W', 'user', '2023-04-16 21:24:53', '2023-04-16 21:24:53'),
(3, 'user', 'user@gmail.com', '$2y$10$KA1SKAX.VUrO77N8Q2H/s.I/aXpairsH3wWtCwkiynHSpby3TWIbm', 'user', '2023-04-16 21:25:49', '2023-04-16 21:25:49');

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
(1, 1, '1', 0, 0, 0, 0, 0, 0),
(2, 1, '2', 0, 0, 0, 0, 0, 0),
(3, 1, '3', 0, 0, 0, 0, 0, 0),
(4, 1, '4', 0, 0, 0, 0, 0, 0),
(5, 1, '5', 0, 0, 0, 0, 0, 0),
(6, 2, 'Pest megye', 0, 0, 0, 0, 0, 0),
(7, 2, 'Zala megye', 0, 0, 0, 0, 0, 0),
(8, 2, 'Borsod Abaúj Zemplén', 0, 0, 0, 0, 0, 0),
(9, 2, 'Heves', 0, 0, 0, 0, 0, 0),
(10, 2, 'Pécs', 0, 0, 0, 0, 0, 0),
(11, 3, '1', 0, 0, 0, 0, 0, 0),
(12, 3, '2', 0, 0, 0, 0, 0, 0),
(13, 3, '3', 0, 0, 0, 0, 0, 0),
(14, 3, '4', 0, 0, 1, 0, 1, 0),
(15, 3, '5', 1, 0, 0, 1, 0, 0),
(16, 4, '1', 0, 0, 0, 0, 0, 0),
(17, 4, '2', 0, 0, 0, 0, 0, 0),
(18, 4, '3', 0, 0, 0, 0, 0, 0),
(19, 4, '4', 0, 0, 0, 0, 0, 0),
(20, 4, '5', 0, 0, 0, 0, 0, 0);

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
  ADD PRIMARY KEY (`kerdoiv_id`),
  ADD KEY `kerdoivs_created_by_foreign` (`created_by`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `kerdes_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `kerdoivs`
--
ALTER TABLE `kerdoivs`
  MODIFY `kerdoiv_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `valaszoks`
--
ALTER TABLE `valaszoks`
  MODIFY `valaszok_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kerdeseks`
--
ALTER TABLE `kerdeseks`
  ADD CONSTRAINT `kerdeseks_kerdoiv_id_foreign` FOREIGN KEY (`kerdoiv_id`) REFERENCES `kerdoivs` (`kerdoiv_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `kerdoivs`
--
ALTER TABLE `kerdoivs`
  ADD CONSTRAINT `kerdoivs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Megkötések a táblához `valaszoks`
--
ALTER TABLE `valaszoks`
  ADD CONSTRAINT `valaszoks_kerdes_id_foreign` FOREIGN KEY (`kerdes_id`) REFERENCES `kerdeseks` (`kerdes_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
