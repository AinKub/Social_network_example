-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 21 2023 г., 10:51
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `social_network`
--

-- --------------------------------------------------------

--
-- Структура таблицы `PhotoLikes`
--

CREATE TABLE `PhotoLikes` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `photoId` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `PhotoLikes`
--

INSERT INTO `PhotoLikes` (`id`, `userId`, `photoId`, `created_at`, `updated_at`) VALUES
(1, 10, 15, '2023-03-16 14:47:50', '2023-03-16 14:50:30'),
(2, 4, 15, '2023-03-16 14:47:50', '2023-03-16 14:51:22'),
(3, 17, 15, '2023-03-16 14:47:50', '2023-03-16 14:51:48'),
(4, 6, 16, '2023-03-16 14:50:30', '2023-03-16 14:50:30'),
(5, 12, 16, '2023-03-16 14:50:30', '2023-03-16 14:50:30'),
(6, 3, 16, '2023-03-16 14:50:30', '2023-03-16 14:50:30'),
(7, 3, 17, '2023-03-16 14:50:30', '2023-03-16 14:50:30'),
(8, 6, 18, '2023-03-16 14:50:30', '2023-03-16 14:50:30'),
(9, 10, 18, '2023-03-16 14:50:30', '2023-03-16 14:50:30'),
(10, 1, 18, '2023-03-16 14:50:30', '2023-03-16 14:50:30'),
(11, 2, 19, '2023-03-16 14:50:30', '2023-03-16 14:50:30'),
(12, 5, 19, '2023-03-16 14:50:30', '2023-03-16 14:50:30'),
(13, 20, 20, '2023-03-16 14:50:30', '2023-03-16 14:50:30');

-- --------------------------------------------------------

--
-- Структура таблицы `Photos`
--

CREATE TABLE `Photos` (
  `id` int NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userId` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Photos`
--

INSERT INTO `Photos` (`id`, `file_name`, `userId`, `created_at`, `updated_at`) VALUES
(15, 'img15.png', 15, '2023-03-16 14:40:07', '2023-03-17 12:41:40'),
(16, 'img16.png', 16, '2023-03-16 14:40:07', '2023-03-17 12:41:49'),
(17, 'img17.png', 17, '2023-03-16 14:40:07', '2023-03-17 12:41:55'),
(18, 'img18.png', 18, '2023-03-16 14:40:07', '2023-03-17 12:42:01'),
(19, 'img19.png', 19, '2023-03-16 14:40:07', '2023-03-17 12:42:06'),
(20, 'img20.png', 20, '2023-03-16 14:40:07', '2023-03-17 12:42:12');

-- --------------------------------------------------------

--
-- Структура таблицы `PostLikes`
--

CREATE TABLE `PostLikes` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `postId` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `PostLikes`
--

INSERT INTO `PostLikes` (`id`, `userId`, `postId`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2023-03-16 14:46:44', '2023-03-16 14:46:44'),
(2, 5, 1, '2023-03-16 14:46:44', '2023-03-16 14:46:44'),
(3, 15, 3, '2023-03-16 14:46:44', '2023-03-16 14:46:44'),
(4, 6, 3, '2023-03-16 14:46:44', '2023-03-16 14:46:44'),
(5, 8, 3, '2023-03-16 14:46:44', '2023-03-16 14:46:44'),
(6, 10, 4, '2023-03-16 14:46:44', '2023-03-16 14:46:44'),
(7, 20, 5, '2023-03-16 14:46:44', '2023-03-16 14:46:44'),
(8, 1, 5, '2023-03-16 14:46:44', '2023-03-16 14:46:44'),
(10, 8, 5, '2023-03-20 12:58:18', '2023-03-20 12:58:18'),
(14, 8, 2, '2023-03-20 20:59:12', '2023-03-20 20:59:12');

-- --------------------------------------------------------

--
-- Структура таблицы `Posts`
--

CREATE TABLE `Posts` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `userId` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Posts`
--

INSERT INTO `Posts` (`id`, `title`, `body`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'What is love', 'Baby dont hurt me, baby dont hurt me, no more', 4, '2023-03-16 14:44:48', '2023-03-16 14:44:48'),
(2, 'It is amaizing!', NULL, 15, '2023-03-16 14:44:48', '2023-03-16 14:44:48'),
(3, 'Super social network!!!', NULL, 17, '2023-03-16 14:44:48', '2023-03-16 14:44:48'),
(4, 'How do you do?', NULL, 18, '2023-03-16 14:44:48', '2023-03-16 14:44:48'),
(5, 'I am first!', 'I published a new post in new social network!', 1, '2023-03-16 14:44:48', '2023-03-16 14:44:48');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `photoId` int DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `balance` float NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `email`, `password`, `first_name`, `last_name`, `photoId`, `birthday`, `country`, `city`, `gender`, `balance`, `created_at`, `updated_at`) VALUES
(1, 'Peter_Ashwell9453@1wa8o.solutions', 'U7PU5p0vhp', 'Peter', 'Ashwell', NULL, NULL, NULL, NULL, NULL, 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(2, 'Anne_Stone 9584@yvu30.video', 'mbNTIq8WdD', 'Anne', 'Stone ', NULL, NULL, NULL, NULL, NULL, 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(3, 'Gemma_Mccall6562@crzq7.works', '6rRdzxzj4b', 'Gemma', 'Mccall', NULL, NULL, NULL, NULL, NULL, 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(4, 'Gil_Taylor799@yfxpw.ca', 'wE16tdSo83', 'Gil', 'Taylor', NULL, NULL, NULL, NULL, NULL, 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(5, 'Michaela_Woods2873@urn0m.org', 'Utvopihyln', 'Michaela', 'Woods', NULL, NULL, NULL, NULL, NULL, 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(6, 'Tess_Harris9168@crzq7.online', 'Gxw8xXidYn', 'Tess', 'Harris', NULL, NULL, NULL, NULL, NULL, 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(7, 'Adalie_Widdows9660@voylg.mobi', 'txtRTSwOhC', 'Adalie', 'Widdows', NULL, NULL, 'Ecuador', 'Toledo', 'female', 20, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(8, 'Owen_Wren5461@iaart.meet', 'mftE6KRPBD', 'Owen', 'Wren', NULL, NULL, 'Luxembourg', 'Lakewood', 'male', 30, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(9, 'Enoch_Cobb2023@avn7d.site', 'ExAibvCcYx', 'Enoch', 'Cobb', NULL, NULL, 'Nicaragua', 'Indianapolis', 'male', 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(10, 'Crystal_Eaton1172@evyvh.zone', 'wHBDuK6Krl', 'Crystal', 'Eaton', NULL, NULL, 'United Kingdom', 'Fremont', 'female', 100, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(11, 'Melinda_Ashwell9587@bu2lo.business', 'RT4r2cBmLZ', 'Melinda', 'Ashwell', NULL, '1997-04-16', 'Papua New Guinea', 'San Jose', 'female', 150, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(12, 'Joseph_Lee3717@nmz0p.website', 'U1GJii4EP4', 'Joseph', 'Lee', NULL, '1985-08-02', 'Slovenia', 'Denver', 'male', 20.6, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(13, 'Benny_Gunn7573@yahoo.audio', 'op7diVMWkw', 'Benny', 'Gunn', NULL, '2000-05-12', 'United Kingdom', 'Madison', 'male', 30, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(14, 'Johnny_Harrison425@nmz0p.store', 'Egh4Khyt0E', 'Johnny', 'Harrison', NULL, '0195-11-12', 'Georgia', 'Zurich', 'male', 15, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(15, 'Michael_Stark9307@fhuux.works', 'iVRPfdaElJ', 'Michael', 'Stark', 15, '1991-02-06', 'Haiti', 'Milwaukee', 'male', 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(16, 'Regina_Sheldon5131@ds59r.pro', 'x275kJe5TY', 'Regina', 'Sheldon', 16, '1990-05-08', 'Iraq', 'St. Louis', 'female', 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(17, 'Kieth_Bradley2955@qu9ml.zone', 'IUSAsx2xw4', 'Kieth', 'Bradley', 17, '1999-11-17', 'Chad', 'Glendale', 'male', 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(18, 'Vanessa_Spencer4978@bqkv0.digital', '2IhdxdgDCs', 'Vanessa', 'Spencer', 18, '2000-02-10', 'Saint Vincent and the Grenadines', 'Colorado Springs', 'female', 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(19, 'Harry_Thomas593@y96lx.center', '4urjEdEANa', 'Harry', 'Thomas', 19, '2001-12-28', 'Jamaica', 'Toledo', 'male', 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50'),
(20, 'Candace_Asher7569@cke3u.zone', '7hwUFn3P9V', 'Candace', 'Asher', 20, '1975-06-13', 'Paraguay', 'Miami', 'female', 0, '2023-03-16 13:06:50', '2023-03-16 13:06:50');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `PhotoLikes`
--
ALTER TABLE `PhotoLikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photoId` (`photoId`),
  ADD KEY `userId` (`userId`);

--
-- Индексы таблицы `Photos`
--
ALTER TABLE `Photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Индексы таблицы `PostLikes`
--
ALTER TABLE `PostLikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postId` (`postId`),
  ADD KEY `userId` (`userId`);

--
-- Индексы таблицы `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `PhotoLikes`
--
ALTER TABLE `PhotoLikes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `Photos`
--
ALTER TABLE `Photos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `PostLikes`
--
ALTER TABLE `PostLikes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `Posts`
--
ALTER TABLE `Posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `PhotoLikes`
--
ALTER TABLE `PhotoLikes`
  ADD CONSTRAINT `photolikes_ibfk_1` FOREIGN KEY (`photoId`) REFERENCES `Photos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `photolikes_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Photos`
--
ALTER TABLE `Photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `PostLikes`
--
ALTER TABLE `PostLikes`
  ADD CONSTRAINT `postlikes_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `Posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postlikes_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Posts`
--
ALTER TABLE `Posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
