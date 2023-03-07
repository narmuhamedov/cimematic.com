-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 07 2023 г., 10:33
-- Версия сервера: 10.5.17-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cinematika`
--

-- --------------------------------------------------------

--
-- Структура таблицы `afisha`
--

CREATE TABLE `afisha` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `afisha`
--

INSERT INTO `afisha` (`id`, `title`, `description`, `image`, `video_url`, `cost`) VALUES
(1, 'Сияние', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'http://horrorzone.ru/uploads/_pages2/61376/hyg.jpg', 'https://www.youtube.com/embed/5oH9Nr3bKfw', 400),
(2, 'Заклятие', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://nsk.mir-kvestov.ru/uploads/quests/6962/large/gipofiz_zaklyatie_photo2.JPG?1643776223', 'https://www.youtube.com/embed/5oH9Nr3bKfw', 500),
(3, 'Гарри Поттер', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://upload.wikimedia.org/wikipedia/ru/b/b4/Harry_Potter_and_the_Philosopher%27s_Stone_%E2%80%94_movie.jpg', 'https://www.youtube.com/embed/5oH9Nr3bKfw', 100);

-- --------------------------------------------------------

--
-- Структура таблицы `film_weeks`
--

CREATE TABLE `film_weeks` (
  `id` int(10) UNSIGNED NOT NULL,
  `video` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `film_weeks`
--

INSERT INTO `film_weeks` (`id`, `video`) VALUES
(1, 'https://www.youtube.com/embed/5oH9Nr3bKfw');

-- --------------------------------------------------------

--
-- Структура таблицы `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `quotes`
--

INSERT INTO `quotes` (`id`, `title`, `description`) VALUES
(1, 'Великий Гэтсби', 'Самые светлые моменты уходят так быстро и безвозвратно.'),
(2, 'Виноваты звезды', '— Мир — это не фабрика по исполнению желаний.'),
(3, 'Двойная жизнь Чарли Сан-Клауда\r\n', '— Прошлым нельзя жить так долго.\r\n');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `afisha`
--
ALTER TABLE `afisha`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `film_weeks`
--
ALTER TABLE `film_weeks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `afisha`
--
ALTER TABLE `afisha`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `film_weeks`
--
ALTER TABLE `film_weeks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
