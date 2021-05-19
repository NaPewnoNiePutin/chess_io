-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Maj 2021, 20:18
-- Wersja serwera: 10.3.27-MariaDB-31.cba+deb10u1
-- Wersja PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `chessio`
--
CREATE DATABASE IF NOT EXISTS `chessio` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `chessio`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `partie`
--

CREATE TABLE `partie` (
  `id` int(11) NOT NULL,
  `liczba_partii` smallint(10) NOT NULL,
  `wygrane_partie` smallint(10) NOT NULL,
  `przegrane_partie` smallint(10) NOT NULL,
  `zremisowane_partie` smallint(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ranking`
--

CREATE TABLE `ranking` (
  `id` int(11) NOT NULL,
  `aktualny_ranking` smallint(11) NOT NULL,
  `najwyzszy_ranking` smallint(11) NOT NULL,
  `zadania_ranking` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawodnicy`
--

CREATE TABLE `zawodnicy` (
  `id` int(11) NOT NULL,
  `login` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `haslo` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `kiedy_zarejestrowany` date NOT NULL,
  `aktywne` bit(1) NOT NULL,
  `czas_gry` time NOT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `online` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `partie`
--
ALTER TABLE `partie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zawodnicy`
--
ALTER TABLE `zawodnicy`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
