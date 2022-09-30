-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 30 2022 г., 07:24
-- Версия сервера: 5.6.47
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ocean-agency`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_09_29_052916_create_predictions_table', 1),
(5, '2022_09_29_054446_create_sings_table', 2),
(6, '2022_09_29_122418_add_sing_id_to_predictions_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `predictions`
--

CREATE TABLE `predictions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `sing_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `predictions`
--

INSERT INTO `predictions` (`id`, `content`, `is_open`, `date`, `sing_id`) VALUES
(1, 'Все загаданные желания и намеченные планы осуществятся', 1, '2022-09-29', 1),
(2, 'Не стоит пренебрегать чужим мнением. Рядом с Вами находятся люди, которые искренне хотят помочь', 1, '2022-09-29', 2),
(3, 'Пришло время заявить о себе, даже если это кому-то не понравится', 1, '2022-09-29', 3),
(4, 'Сейчас в Вашей жизни наступает переломный момент, от которого зависит будущее', 1, '2022-09-29', 4),
(5, 'Пришло время показать, кем же Вы являетесь на самом деле', 1, '2022-09-29', 5),
(6, 'На протяжении многих лет Вам будут сопутствовать счастье, здоровье, удача и благополучие', 1, '2022-09-29', 6),
(7, 'Впереди Вас ждет неожиданное получение денег, которое поправит Ваше пошатнувшееся материальное положение', 1, '2022-09-29', 7),
(8, 'Не огорчайтесь, если дела идут не так, как Вам бы этого хотелось, удача уже на пороге', 1, '2022-09-29', 8),
(9, 'Пора собирать чемоданы: Вас ждет путешествие в приятной компании', 1, '2022-09-29', 9),
(10, 'Ваши отношения с любимым человеком продлятся долго, если Вы не будете рассказывать о них незнакомым людям', 1, '2022-09-29', 10),
(11, 'Если вы судите кого-либо, то у вас не остается времени его любить', 1, '2022-09-29', 11),
(12, 'Не позволяйте шуму чужих мнений перебить ваш внутренний голос', 1, '2022-09-29', 12),
(13, 'Имейте храбрость следовать своему сердцу и интуиции', 0, '2022-09-28', 0),
(14, 'Холостой мужчина однозначно больше знает о женщинах, чем женатый мужчина. Иначе он бы тоже уже был женат', 0, '2022-09-28', 0),
(18, 'Візьми від життя ВСЕ!', 0, '2022-09-28', 0),
(19, 'Вчися знаходити в житті радість', 0, '2022-09-28', 0),
(20, 'Видали те, що забруднює серце', 0, '2022-09-28', 0),
(21, 'Багатий той, у кого на все є час', 0, '2022-09-28', 0),
(22, 'Гарна презентація – це 80% успіху', 0, '2022-09-28', 0),
(23, 'Гроші однаково важливі й для тих, у кого вони є, і для тих, у кого їх немає', 0, '2022-09-28', 0),
(24, 'Якщо є готовність до конфлікту, привід для конфлікту знайдеться завжди', 0, '2022-09-28', 0),
(25, 'Не встигнеш ти - зроблять інші', 0, '2022-09-28', 0),
(26, 'У грошей немає ідей, але ідеї можуть робити гроші', 0, '2022-09-28', 0),
(27, 'Якщо відомо, про що йде мова, то все зрозуміло. Якщо не відомо, про що йде мова, то мова йде про гроші', 0, '2022-09-28', 0),
(28, 'Мастило одержує те колесо, яке скрипить більше за інших', 0, '2022-09-28', 0),
(29, 'Позичайте тільки в тих людей, які не пам\'ятають зла', 0, '2022-09-28', 0),
(30, 'Все загаданные желания и намеченные планы осуществятся', 0, '2022-09-28', 0),
(31, 'Не стоит пренебрегать чужим мнением. Рядом с Вами находятся люди, которые искренне хотят помочь', 0, '2022-09-28', 0),
(32, 'Пришло время заявить о себе, даже если это кому-то не понравится', 0, '2022-09-28', 0),
(33, 'Сейчас в Вашей жизни наступает переломный момент, от которого зависит будущее', 0, '2022-09-28', 0),
(34, 'Пришло время показать, кем же Вы являетесь на самом деле', 0, '2022-09-28', 0),
(35, 'На протяжении многих лет Вам будут сопутствовать счастье, здоровье, удача и благополучие', 0, '2022-09-28', 0),
(36, 'Впереди Вас ждет неожиданное получение денег, которое поправит Ваше пошатнувшееся материальное положение', 0, '2022-09-28', 0),
(37, 'Не огорчайтесь, если дела идут не так, как Вам бы этого хотелось, удача уже на пороге', 0, '2022-09-28', 0),
(38, 'Пора собирать чемоданы: Вас ждет путешествие в приятной компании', 0, '2022-09-28', 0),
(39, 'Ваши отношения с любимым человеком продлятся долго, если Вы не будете рассказывать о них незнакомым людям', 0, '2022-09-28', 0),
(41, 'Если вы судите кого-либо, то у вас не остается времени его любить', 0, '2022-09-28', 0),
(42, 'Слава есть любовь, доступная немногим; любовь есть слава, доступная всем', 0, '2022-09-28', 0),
(43, 'Первый вздох любви - это последний вздох мудрости', 0, '2022-09-28', 0),
(44, 'Любовь - главный способ бегства от одиночества', 0, '2022-09-28', 0),
(45, 'Любовь подобна удаче: она не любит, чтобы за ней гонялись', 0, '2022-09-28', 0),
(46, 'Возможно, в этом мире ты всего лишь человек, но для кого-то ты - весь мир!', 0, '2022-09-28', 0),
(47, 'Любовь - не внешнее проявление, она всегда внутри нас', 0, '2022-09-28', 0),
(48, 'Женщина лишь тогда верит слову \"люблю\", когда оно сказано тихо и просто', 0, '2022-09-28', 0),
(49, 'Любовь - единственное в природе, где даже сила воображения не находит дна и не видит предела', 0, '2022-09-28', 0),
(50, 'Любовь как ртуть: можно удержать её в открытой ладони, но не в сжатой руке', 0, '2022-09-28', 0),
(51, 'Не позволяйте шуму чужих мнений перебить ваш внутренний голос', 0, '2022-09-28', 0),
(52, 'Настоящий мужчина всегда добьется того, чего хочет женщина', 0, '2022-09-28', 0),
(53, 'Мужчина не думает о себе лишь в те минуты, когда он уверен, что кто-то другой думает только о нем', 0, '2022-09-28', 0),
(54, 'Настоящий мужчина - это мужчина, который точно помнит день рождения женщины и никогда не знает, сколько ей лет', 0, '2022-09-28', 0),
(55, 'Мужчина, который никогда не помнит дня рождения женщины, но точно знает, сколько ей лет - это ее муж', 0, '2022-09-28', 0),
(56, 'Фейерверк ярких событий ожидает вас в третьей декаде года. Незамедлительно начинайте подготовку', 0, '2022-09-28', 0),
(57, 'В новом году твой кошелек не будет пуст: знать будет ежедневно денег хруст!', 0, '2022-09-28', 0),
(58, 'В новом году ты будешь много улыбаться, и жизнь твоя будет легкой и веселой!', 0, '2022-09-28', 0),
(59, 'В новом году у тебя есть шанс выиграть крупную сумму денег', 0, '2022-09-28', 0),
(60, 'Пусть уходит старый год, унося с собой несчастья, а новый больше принесет здоровья, радости и счастья!', 0, '2022-09-28', 0),
(61, 'Желаем в наступающем году забот не знать, деньжат не мерить, Любить, Надеяться и Верить!', 0, '2022-09-28', 0),
(62, 'Пусть радость и удача стучатся в каждый дом! Быть не должно иначе в году, который ждем!', 0, '2022-09-28', 0),
(63, 'Среди друзей с веселой песней желаем встретить Новый год! Пусть жизнь цветет еще чудесней, не зная горя и забот!', 0, '2022-09-28', 0),
(64, 'Пусть зима серебристой порошею запорошит любую беду, мы желаем всего вам хорошего в наступающем новом году!', 0, '2022-09-28', 0),
(65, 'Вы сияйте, как звезда, и сегодня, и всегда! Новогодних Вам сюрпризов и здоровья на года!', 0, '2022-09-28', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sings`
--

CREATE TABLE `sings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sings`
--

INSERT INTO `sings` (`id`, `name`, `image`) VALUES
(1, 'Близнецы', 'images/blizneci.png'),
(2, 'Дева', 'images/deva.png'),
(3, 'Козерог', 'images/kozirog.png'),
(4, 'Лев', 'images/lev.png'),
(5, 'Овен', 'images/oven.png'),
(6, 'Рак', 'images/rak.png'),
(7, 'Рыбы', 'images/ribi.png'),
(8, 'Скорпион', 'images/scorpion.png'),
(9, 'Стрелец', 'images/strelec.png'),
(10, 'Телец', 'images/telec.png'),
(11, 'Весы', 'images/vesi.png'),
(12, 'Водолей', 'images/vodoley.png');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `predictions`
--
ALTER TABLE `predictions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sings`
--
ALTER TABLE `sings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `predictions`
--
ALTER TABLE `predictions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `sings`
--
ALTER TABLE `sings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
