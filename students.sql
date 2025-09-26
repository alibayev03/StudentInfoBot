-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 25 2024 г., 21:29
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_students`
--

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `number` varchar(512) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `FIO` varchar(512) DEFAULT NULL,
  `LEVEL` int(11) DEFAULT NULL,
  `FACULTY` varchar(512) DEFAULT NULL,
  `GROUP` varchar(512) DEFAULT NULL,
  `order_year` int(11) DEFAULT NULL,
  `LANG` varchar(512) DEFAULT NULL,
  `SEX` varchar(512) DEFAULT NULL,
  `FORM` varchar(512) DEFAULT NULL,
  `Passport` varchar(512) DEFAULT NULL,
  `DEAN` varchar(512) DEFAULT NULL,
  `year` varchar(512) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `subject_name` varchar(512) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `hour` int(11) DEFAULT NULL,
  `exam_type` varchar(512) DEFAULT NULL,
  `subject_type` varchar(512) DEFAULT NULL,
  `department` varchar(512) DEFAULT NULL,
  `head_of_department` varchar(512) DEFAULT NULL,
  `date` varchar(512) DEFAULT NULL,
  `head_of_AAD` varchar(512) DEFAULT NULL,
  `SS` varchar(512) DEFAULT NULL,
  `unnamed_24` varchar(512) DEFAULT NULL,
  `column_1` varchar(512) DEFAULT NULL,
  `group_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`number`, `ID`, `FIO`, `LEVEL`, `FACULTY`, `GROUP`, `order_year`, `LANG`, `SEX`, `FORM`, `Passport`, `DEAN`, `year`, `semester`, `subject_name`, `credit`, `hour`, `exam_type`, `subject_type`, `department`, `head_of_department`, `date`, `head_of_AAD`, `SS`, `unnamed_24`, `column_1`, `group_link`) VALUES
('', 2301367, 'ABDURAXIMOV ABDUQODIR ABDUQAYUM O\'G\'LI', 2, '(B.Eng.) TRAFFIC MANAGEMENT', 'TRMP-101U', 2023, 'UZ', '', 'Сиртқи-FAST', 'AC1562468', 'U.TASHMURATOV', '2024-2025', 4, 'BASICS OF TRAFFIC SAFETY', 4, 60, 'Test (computer)', 'Мажбурий', 'TRAFFIC ENGINEERING AND MANAGEMENT', 'A.YUNUSOV', '', 'R.ALLABERGANOV', '', '', '', 'https://t.me/+bT7IW7mbSN8yMDA6'),
('', 2301353, 'ACHILOV ASADBEK XAYTBAY O\'G\'LI', 2, '(B.Eng.) TRAFFIC MANAGEMENT', 'TRMP-101U', 2023, 'UZ', '', 'Сиртқи-FAST', 'KA1253404', 'U.TASHMURATOV', '2024-2025', 4, 'BASICS OF TRAFFIC SAFETY', 4, 60, 'Test (computer)', 'Мажбурий', 'TRAFFIC ENGINEERING AND MANAGEMENT', 'A.YUNUSOV', '', 'R.ALLABERGANOV', '', '', '', 'https://t.me/+bT7IW7mbSN8yMDA6'),
('', 2301354, 'ALIKULOV LATIF MAXMUDALI O\'G\'LI', 2, '(B.Eng.) TRAFFIC MANAGEMENT', 'TRMP-102R', 2023, 'UZ', '', 'Сиртқи-FAST', 'AB6039527', 'U.TASHMURATOV', '2024-2025', 4, 'BASICS OF TRAFFIC SAFETY', 4, 60, 'Test (computer)', 'Мажбурий', 'TRAFFIC ENGINEERING AND MANAGEMENT', 'A.YUNUSOV', '', 'R.ALLABERGANOV', '', '', '', 'https://t.me/+7ATgbKVkjQVkNWMy'),
('', 2301397, 'AMINOV NODIRBEK ODILBEK O\'G\'LI', 2, '(B.Eng.) TRAFFIC MANAGEMENT', 'TRMP-102R', 2023, 'UZ', '', 'Сиртқи-FAST', 'AD0063352', 'U.TASHMURATOV', '2024-2025', 4, 'BASICS OF TRAFFIC SAFETY', 4, 60, 'Test (computer)', 'Мажбурий', 'TRAFFIC ENGINEERING AND MANAGEMENT', 'A.YUNUSOV', '', 'R.ALLABERGANOV', '', '', '', 'https://t.me/+7ATgbKVkjQVkNWMy'),
('', 2301356, 'BERDIQULOV UMIDJON IXTIYOR O\'G\'LI', 2, '(B.Eng.) TRAFFIC MANAGEMENT', 'TRMP-103E', 2023, 'UZ', '', 'Сиртқи-FAST', 'AC2630899', 'U.TASHMURATOV', '2024-2025', 4, 'BASICS OF TRAFFIC SAFETY', 4, 60, 'Test (computer)', 'Мажбурий', 'TRAFFIC ENGINEERING AND MANAGEMENT', 'A.YUNUSOV', '', 'R.ALLABERGANOV', '', '', '', 'https://t.me/+X0_B4fXW22s3MjAy'),
('', 2301357, 'BOYMATOV ASAD XOLDOR O\'G\'LI', 2, '(B.Eng.) TRAFFIC MANAGEMENT', 'TRMP-103E', 2023, 'UZ', '', 'Сиртқи-FAST', 'AA5464583', 'U.TASHMURATOV', '2024-2025', 4, 'BASICS OF TRAFFIC SAFETY', 4, 60, 'Test (computer)', 'Мажбурий', 'TRAFFIC ENGINEERING AND MANAGEMENT', 'A.YUNUSOV', '', 'R.ALLABERGANOV', '', '', '', 'https://t.me/+X0_B4fXW22s3MjAy'),
('', 2300399, 'FAYZIYEV JASUR IKROM O\'G\'LI', 2, '(B.Eng.) TRAFFIC MANAGEMENT', 'TRMP-104F', 2023, 'UZ', '', 'Сиртқи-FAST', 'AB3328892', 'U.TASHMURATOV', '2024-2025', 4, 'BASICS OF TRAFFIC SAFETY', 4, 60, 'Test (computer)', 'Мажбурий', 'TRAFFIC ENGINEERING AND MANAGEMENT', 'A.YUNUSOV', '', 'R.ALLABERGANOV', '', '', '', 'https://t.me/+-JYHnbvWod84M2Yy'),
('', 2300406, 'JUMANOV SHORASUL BAXTIYOR O\'G\'LI', 2, '(B.Eng.) TRAFFIC MANAGEMENT', 'TRMP-104F', 2023, 'UZ', '', 'Сиртқи-FAST', 'AC1784365', 'U.TASHMURATOV', '2024-2025', 4, 'BASICS OF TRAFFIC SAFETY', 4, 60, 'Test (computer)', 'Мажбурий', 'TRAFFIC ENGINEERING AND MANAGEMENT', 'A.YUNUSOV', '', 'R.ALLABERGANOV', '', '', '', 'https://t.me/+-JYHnbvWod84M2Yy'),
('', 2300396, 'MAHAMADJONOV NAVRUZBEK SHUXRAT O\'G\'LI', 2, '(B.Eng.) TRAFFIC MANAGEMENT', 'TRMP-105I', 2023, 'UZ', '', 'Сиртқи-FAST', 'AA5757827', 'U.TASHMURATOV', '2024-2025', 4, 'BASICS OF TRAFFIC SAFETY', 4, 60, 'Test (computer)', 'Мажбурий', 'TRAFFIC ENGINEERING AND MANAGEMENT', 'A.YUNUSOV', '', 'R.ALLABERGANOV', '', '', '', 'https://t.me/+xNokDN5-mRYxNjYy'),
('', 2301360, 'MAHAMMADIYEV BOBOMUROD HUSAN O\'G\'LI', 2, '(B.Eng.) TRAFFIC MANAGEMENT', 'TRMP-101U', 2023, 'UZ', '', 'Сиртқи-FAST', 'AB1942978', 'U.TASHMURATOV', '2024-2025', 4, 'BASICS OF TRAFFIC SAFETY', 4, 60, 'Test (computer)', 'Мажбурий', 'TRAFFIC ENGINEERING AND MANAGEMENT', 'A.YUNUSOV', '', 'R.ALLABERGANOV', '', '', '', 'https://t.me/+bT7IW7mbSN8yMDA6');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
