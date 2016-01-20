-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2016-01-20 09:25:27
-- 伺服器版本: 10.0.17-MariaDB
-- PHP 版本： 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `hilmc`
--

-- --------------------------------------------------------

--
-- 資料表結構 `mcs`
--

CREATE TABLE `mcs` (
  `id` int(11) NOT NULL,
  `questionText` varchar(1000) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `choiceA` varchar(255) NOT NULL,
  `choiceB` varchar(255) NOT NULL,
  `choiceC` varchar(255) NOT NULL,
  `choiceD` varchar(255) NOT NULL,
  `correctAns` enum('A','B','C','D') NOT NULL,
  `responseA` varchar(1000) NOT NULL,
  `responseB` varchar(1000) NOT NULL,
  `responseC` varchar(1000) NOT NULL,
  `responseD` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `mcs`
--

INSERT INTO `mcs` (`id`, `questionText`, `topic`, `choiceA`, `choiceB`, `choiceC`, `choiceD`, `correctAns`, `responseA`, `responseB`, `responseC`, `responseD`) VALUES
(1, '求通過點\\(\\;A(1,3)\\;\\)及\\(\\;B(0,5)\\;\\)的直線\\(\\;L\\;\\)的斜率。', '理解直線斜率的概念', '\\(-2\\)', '\\(2\\)', '\\(\\frac{5}{2}\\)', '\\(\\frac{2}{5}\\)', 'A', '\\(L\\;\\)的斜率為\\(\\;m=\\frac{3-5}{1-0} = -2\\)。', '直線的斜率公式為\\(\\;m=\\frac{y_2-y_1}{x_2-x_1}\\)，分子和分母中相減的次序必須相同。', '直線的斜率公式為\\(\\;m=\\frac{y_2-y_1}{x_2-x_1}\\)，應以對應的\\(\\;x\\;\\)和\\(\\;y\\;\\)坐標相減，而不是以同一點的兩個坐標相減。', '直線的斜率公式為\\(\\;m=\\frac{y_2-y_1}{x_2-x_1}\\)，應以對應的\\(\\;x\\;\\)和\\(\\;y\\;\\)坐標相減，而不是以同一點的兩個坐標相減。'),
(2, '求通過點\\(\\;A(0,3)\\;\\)及\\(\\;B(0,1)\\;\\)的直線\\(\\;L\\;\\)的斜率。', '理解直線斜率的概念', '\\(0\\)', '沒有定義', '\\(-2\\)', '\\(2\\)', 'B', '直線的斜率公式為\\(\\;m=\\frac{y_2-y_1}{x_2-x_1}\\)，把這兩點代入此式中，會出現甚麼結果？', '\\(A\\;\\)和\\(\\;B\\;\\)有相同的\\(\\;x\\;\\)坐標，所以\\(\\;L\\;\\)是一條鉛垂線，其斜率沒有定義。', '直線的斜率公式為\\(\\;m=\\frac{y_2-y_1}{x_2-x_1}\\)，把這兩點代入此式中，會出現甚麼結果？', '直線的斜率公式為\\(\\;m=\\frac{y_2-y_1}{x_2-x_1}\\)，把這兩點代入此式中，會出現甚麼結果？'),
(3, '若\\(\\;L_1\\;\\)和\\(\\;L_2\\;\\)是兩條直線，以下哪一項描述是不正確的？', '理解平行線、垂直線及它們斜率的關係', '若\\(\\;L_1\\;\\)和\\(\\;L_2\\;\\)的斜率相同，則它們互相平行。', '若\\(\\;L_1\\;\\)和\\(\\;L_2\\;\\)互相平行，則它們的斜率相同。', '若\\(\\;L_1\\;\\)和\\(\\;L_2\\;\\)的斜率之積為\\(\\;-1\\)，則它們互相垂直。', '若\\(\\;L_1\\;\\)和\\(\\;L_2\\;\\)互相垂直，則它們的斜率之積為\\(\\;-1\\)。', 'D', '這是正確描述。', '這是正確描述。', '這是正確描述。', '水平線垂直於鉛垂線，但水平線的斜率為\\(\\;0\\)，而鉛垂線的斜率沒有定義，它們斜率的積也沒有定義。');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `mcs`
--
ALTER TABLE `mcs`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `mcs`
--
ALTER TABLE `mcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
