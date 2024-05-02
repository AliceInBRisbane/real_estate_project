-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3316
-- Generation Time: May 02, 2024 at 08:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `token` varchar(150) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `full_name`, `email`, `photo`, `password`, `token`, `status`) VALUES
(1, 'admin', 'admin@test.com', '', '$2y$10$Kr0F0EcrtM4Tlw5sc9TyMOQDVYTMhR22AcKlIjXmgdH6aJ35kMDMO', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `biography` varchar(300) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip_code` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `pinterest` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `token` varchar(150) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `full_name`, `email`, `company`, `designation`, `biography`, `phone`, `country`, `address`, `state`, `city`, `zip_code`, `website`, `facebook`, `twitter`, `linkedin`, `pinterest`, `instagram`, `youtube`, `photo`, `password`, `token`, `status`) VALUES
(1, 'Alan Smith', 'alan@test.com', 'Muscle Factory', 'Casino cashier', '<p>deterruisset ex, mel iuvaret epicurei te.deterruisset ex, mel iuvaret epicurei te.vdeterruisset ex, mel iuvaret epicurei te.</p>', '401-772-2614', 'USA', '1953 Bond Street', 'RI', 'Woonsocket', '02895', 'https://danielyost.com', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.pinterest.com', 'https://www.instagram.com', 'https://www.youtube.com', '1713444382.jpg', '$2y$10$6CBE9jdHJLrTre6MOdcJpO7V5a0Ls3P3XA7M6.KTKWsePp67UdBaO', '', 1),
(2, 'Patrick Henderson', 'patrick@gmail.com', 'MacMarr Stores', 'Graduate teaching assistant', '<p>sdfadfadfadfsfs dfadfsfsf</p>', '405-579-3532', 'USA', '2679 Hott Street', 'OK', 'Norman', '73069', 'https://disposablenylons.com', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.pinterest.com', 'https://www.instagram.com', 'https://www.youtube.com', '1713941663.jpg', '$2y$10$DlNoyYSukB.DDA/OHxB4ueauwW8U61qDkTlwUjqPDnAJUc9pbrPjW', '', 1),
(3, 'Ruben Hill', 'ruben@gmail.com', 'Four Leaf Clover', 'Circulation assistant', '<p>Four Leaf CloverFour Leaf CloverFour Leaf CloverFour Leaf Clover</p>', '405-362-1382', 'USA', '3842 Ottis Street', 'OK', 'Oklahoma City', '73102', '', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', '', '', '', '1713878327.jpg', '$2y$10$cWNRTROgl4bK2dzFjxTBUu1eN38i9f8TZdTQFx0CL9Jp/8JiWiZ5S', '', 1),
(5, 'Larry Nieves', 'larry@gmail.com', 'Idea Infinity', 'Real Estate Agent', '<p>deterruisset ex, mel iuvaret epicurei te.deterruisset ex, mel iuvaret epicurei te.vdeterruisset ex, mel iuvaret epicurei te.</p>', '0416581254', 'USA', '30 Highfield Road', 'OK', 'NewYork', '3126', 'https://danielyost.com', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.pinterest.com', 'https://www.instagram.com', 'https://www.youtube.com', '1714119959.jpg', '$2y$10$1kIu4Y52teA/SHxfUbO8NuQIoT8nEoviuhzPrMwWjhf7j71Ldrxiq', '', 1),
(6, 'James Laubach', 'james@gmail.com', 'AAA', 'Real Estate Agent', '<p>James LaubachJames LaubachvJames LaubachJames Laubachv</p>', '0416581254', 'USA', '30 Oliva Street, Newyork', 'Victoria', 'Newyork', '3126', 'https://danielyost.com', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.pinterest.com', 'https://www.instagram.com', 'https://www.youtube.com', '1714122606.jpg', '$2y$10$qoiItekqrMyde0HIlHIxOOFkYoThBniboJEVrae13/PfdwQRho3DK', '', 1),
(7, 'George Romero', 'george@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1714122937.jpg', '$2y$10$9KlYgZDTILdk0W/UI08U7O4nhZnVSVVM/.4gnZ..gmOiZyECOai72', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`) VALUES
(1, 'swimming pool'),
(2, 'free wifi'),
(3, 'gym'),
(4, 'fitness center'),
(5, 'parking lot');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `token` varchar(150) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `photo`, `password`, `token`, `status`) VALUES
(1, 'amy', 'amy@test.com', '1713444756.jpg', '$2y$10$Aw6vWDzB4YTiS0mW.1frQOz9OqXXre1/h.41L6.zoX6d2e7gpGHp.', '', 1),
(2, 'Peter Smith', 'peter@gmail.com', '', '$2y$10$EcJ/oWey3aTvusHWwJrM/.oNkBIJwl7LPkisYPdvOlWpMzxEWfR/C', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`) VALUES
(1, 'What personal information we collect', '<ul class=\"Ul__StyledUl-sc-akifuz-0 bvaYvi\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style-position: initial; list-style-image: initial; margin-block: 0px; padding-inline-start: 2.5rem; color: #3d3b40; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-cd183a58c95b4f128dda3c3b3117e761 builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">When you join any of our websites, we may collect your email. If you choose to sign in with a social network, we may also collect your username, profile photo and email associated with that account.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-0a667965fec24150930dd09d240cfc66 builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">From time to time you&rsquo;ll have the option to provide other personal information, including your name, age, phone number, occupation, gender and personal interests.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-287142ce5ed74a71988a8ca6f6211eef builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">To use some services, we may need to verify your identity using information from your passport, driver&rsquo;s license or Health Care Card.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-091bb46ea5a14c329fb6c3c8c97944a0 builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">If you apply for a home loan or connect with a mortgage broker through our websites, we may collect some financial information such as your bank account details, credit history, and proof of earnings and expenses.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-1047095a7adc4dc7b24bbd80d4e39d76 builder-has-component css-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">We use tracking technologies like cookies, web beacons and measurement software to collect information about your activities on our websites.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n</ul>'),
(2, 'Why we collect your personal information', '<div class=\"builder-block builder-c8974865bdde43118cedec1c4f6e38fe builder-has-component css-yki5\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; display: flex; flex-direction: column; position: relative; flex-shrink: 0; color: #3d3b40; background-color: #ffffff;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0 kLbtpN\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">We use your personal information to:</p>\r\n</div>\r\n</div>\r\n<div class=\"builder-block builder-77830b934204496e9242a9bf182c4dd4 builder-has-component css-yki5\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; display: flex; flex-direction: column; position: relative; flex-shrink: 0; color: #3d3b40; background-color: #ffffff;\">\r\n<ul class=\"Ul__StyledUl-sc-akifuz-0 bvaYvi\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style-position: initial; list-style-image: initial; margin-block: 0px; padding-inline-start: 2.5rem;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-69fb840fd3e046b58d0df3585ba360ad builder-has-component css-1a1lmyl\" style=\"box-sizing: border-box; margin: 24px 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">Provide access to our websites and services.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-6517a6caa412493aadfb17556a4069d4 builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">Present content in the best format for you and your device.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-bc8b63266b44400e8defc908270f56be builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">Customise and personalise the services, advertising and content on our websites.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-35fd6e39467247019baa936d9541fd23 builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">Keep you informed about any changes to our websites and services.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-99809f423f1047cbaf55f195c4c7c59c builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">Enhance your security when visiting our websites, including account verification and recovery.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-08cd8dbb62bc443e9bc64cfc80076029 builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">Save you time by automatically filling out forms.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-40816d15a007442a8fcc3136aad0a974 builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">Conduct surveys and research into ways we can improve.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-10f40ff765114c66959218ea791f9805 builder-has-component css-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">Fulfil contract obligations and assess credit applications when required.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n</ul>\r\n</div>'),
(3, 'How we disclose your personal information', '<ul class=\"Ul__StyledUl-sc-akifuz-0 bvaYvi\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style-position: initial; list-style-image: initial; margin-block: 0px; padding-inline-start: 2.5rem; color: #3d3b40; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-a76d5d71b4e9458497e95cafb9e48310 builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">We may disclose your information with related REA Group companies and service providers to offer you the products you want.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-f0c7a41042af4168ab9d6ba9db908c6c builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">If you enquire with real estate agents, property developers, builders or landlords through our website, we&rsquo;ll pass on your personal information to complete the request.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-1d6f291cfdee45d8884ccbd4a69968ca builder-has-component css-lrlcit\" style=\"box-sizing: border-box; margin: 0px 0px 24px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">If you apply for credit, we may share your information with credit reporting bodies to help assess your application.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"builder-blocks css-h47494\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; flex-direction: column; -webkit-box-align: stretch; align-items: stretch;\">\r\n<div class=\"builder-block builder-1115b77eb3a1490a9caa3796a762f7bf builder-has-component css-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\r\n<div class=\"Color__Container-sc-1cefugz-0 jcASuJ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: var(--ck-textprimary);\">\r\n<p class=\"Text__Typography-sc-vzn7fr-0 OdxXk Text__TextDecorationContainer-sc-1hgp4i0-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 1rem; line-height: 1.5rem; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline;\">If necessary, we may disclose your personal information to regulatory or legal authorities to ensure the safety and wellbeing of our users.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n</ul>'),
(4, 'How do I create a rental listing?', '<ol style=\"box-sizing: border-box; padding-left: 20px; color: #333f48; font-family: museo-sans, sans-serif; font-size: 16px; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; margin-bottom: calc(var(--line-height-computed) / 2);\"><span style=\"box-sizing: border-box;\"><a style=\"box-sizing: border-box; color: #e4002b; text-decoration-line: none;\" href=\"https://www.realestate.com.au/advertise-property-for-rent/\">Visit our advertise your property for rent page.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /></a></span></li>\r\n<li style=\"box-sizing: border-box; margin-bottom: calc(var(--line-height-computed) / 2);\">Click or tap on&nbsp;<strong style=\"box-sizing: border-box;\">&lsquo;Advertise Now&rsquo;</strong><span style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin-bottom: calc(var(--line-height-computed) / 2);\">Follow the steps to sign in to your realestate.com.au account. If you do not have one already,&nbsp;<span style=\"box-sizing: border-box;\"><a style=\"box-sizing: border-box; color: #e4002b; text-decoration-line: none;\" href=\"https://accounts.realestate.com.au/signup?client_id=2fb06dqab95hci46dgldph0382&amp;redirect_uri=https%3A%2F%2Fwww.realestate.com.au%2Fauth&amp;response_type=code&amp;state=6v09LlBqDmufnaQn_rrqrtDvqMNvnNLSpHybvSf1NqfzDH0-OlkH3mZ6h3eCZlLVBf3Y5fZ81VsUvTbI3jaoAlG9mxqmLFnwFyInplvAFhOw5USjCpo6T9TWGzBeT8yBpxRh22E7kMSHIpZuuQyi8R1bpL87YMMypMAKmGXvA4bpwyaL\">create a realestate.com.au account here.</a></span><span style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /></span></li>\r\n<li style=\"box-sizing: border-box; margin-bottom: calc(var(--line-height-computed) / 2);\">You will need to fill out each step with the details of your rental property to be published online.</li>\r\n</ol>');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `slug`, `photo`) VALUES
(1, 'Newyork', 'newyork', '1713443464.jpg'),
(2, 'Boston', 'boston', '1713443478.jpg'),
(3, 'California', 'california', '1713443517.jpg'),
(4, 'Denvor', 'denvor', '1713443531.jpg'),
(5, 'Chicago', 'chicago', '1713443565.jpg'),
(6, 'Houston', 'houston', '1713443592.jpg'),
(7, 'San Diego', 'san-diego', '1713443693.jpg'),
(8, 'Dallas', 'dalas', '1713444059.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `posted_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `subject`, `message`, `customer_id`, `agent_id`, `posted_on`) VALUES
(2, 'Apartment 01 Enquery', '<p>Could you tell me more about the amenity of that apartment?</p>', 1, 1, '2024-04-28 11:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `message_replies`
--

CREATE TABLE `message_replies` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `reply` text NOT NULL,
  `reply_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `message_replies`
--

INSERT INTO `message_replies` (`id`, `message_id`, `customer_id`, `agent_id`, `sender`, `reply`, `reply_on`) VALUES
(2, 2, 1, 1, 'Agent', 'Yes , My pleasure. This apartment has a swimming pool and free wifi.', '2024-04-28 11:42:16'),
(3, 2, 1, 1, 'Customer', 'Thanks! I would like to pay a visit. Please arrange an inspection for me.', '2024-04-28 11:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `transaction_id` text NOT NULL,
  `payment_method` text NOT NULL,
  `paid_amount` text NOT NULL,
  `status` text NOT NULL,
  `purchase_date` text NOT NULL,
  `expire_date` text NOT NULL,
  `currently_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `agent_id`, `package_id`, `transaction_id`, `payment_method`, `paid_amount`, `status`, `purchase_date`, `expire_date`, `currently_active`) VALUES
(1, 1, 3, 'PAYID-MYQRQUA4GN02495AE736333T', 'PayPal', '39', 'Completed', '2024-04-18', '2024-06-17', 0),
(3, 1, 2, 'PAYID-MYQSCYA85L6171657681071K', 'PayPal', '29', 'Completed', '2024-04-18', '2024-05-18', 0),
(4, 1, 3, 'PAYID-MYQTDCQ1L010810BN109814G', 'PayPal', '39', 'Completed', '2024-04-18', '2024-06-17', 0),
(6, 1, 3, 'pi_3P8OXUDEhOJvhn4C1Xd9UrIb', 'Stripe', '39', 'Completed', '2024-04-22', '2024-06-21', 1),
(7, 2, 3, 'pi_3P8ioCDEhOJvhn4C0Q9t72IP', 'Stripe', '39', 'Completed', '2024-04-23', '2024-06-22', 1),
(8, 3, 3, 'pi_3P8jFfDEhOJvhn4C0tWaqh2f', 'Stripe', '39', 'Completed', '2024-04-23', '2024-06-22', 0),
(9, 3, 2, 'PAYID-MYT3RDQ93954721G22136943', 'PayPal', '29', 'Completed', '2024-04-23', '2024-05-23', 1),
(10, 5, 3, 'pi_3P9k86DEhOJvhn4C1vrLuViQ', 'Stripe', '39', 'Completed', '2024-04-26', '2024-06-25', 1),
(11, 6, 3, 'pi_3P9knXDEhOJvhn4C0a4R5LPE', 'Stripe', '39', 'Completed', '2024-04-26', '2024-06-25', 1),
(12, 7, 3, 'pi_3P9krUDEhOJvhn4C0ux9KEsa', 'Stripe', '39', 'Completed', '2024-04-26', '2024-06-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `allowed_days` int(11) NOT NULL,
  `allowed_properties` int(11) NOT NULL,
  `allowed_featured_properties` int(11) NOT NULL,
  `allowed_photos` int(11) NOT NULL,
  `allowed_videos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `allowed_days`, `allowed_properties`, `allowed_featured_properties`, `allowed_photos`, `allowed_videos`) VALUES
(1, 'Basic', 19, 15, 5, 0, 2, 2),
(2, 'Standard', 29, 30, 15, 5, 5, 5),
(3, 'Gold', 39, 60, -1, 15, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `posted_on` date NOT NULL,
  `total_view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `short_description`, `description`, `photo`, `posted_on`, `total_view`) VALUES
(1, '5 Tips for Finding Your Dream Home', '5-tips-for-finding-your-dream-home', 'Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet e', '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet e</span><span style=\"background-color: #ffffff; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet e</span><span style=\"background-color: #ffffff; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet e</span><span style=\"background-color: #ffffff; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet e</span><span style=\"background-color: #ffffff; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet e</span></p>', '1714573009.jpg', '2024-05-01', 1),
(2, 'Pros & Cons of Renting vs. Buying', 'pros-cons-of-renting-vs-buying', 'Pros & Cons of Renting vs. Buying', '<p>Pros &amp; Cons of Renting vs. BuyingPros &amp; Cons of Renting vs. BuyingPros &amp; Cons of Renting vs. BuyingPros &amp; Cons of Renting vs. BuyingPros &amp; Cons of Renting vs. Buying</p>', '1714573126.png', '2024-05-01', 1),
(3, 'Maximizing Your Investment in 2024', 'maximizing-your-investment-in-2024', 'Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023', '<p>Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023vMaximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023Maximizing Your Investment in 2023</p>', '1714573479.jpg', '2024-05-01', 4),
(4, 'Moving House? 11 tips to keep your new neighbours on side', 'moving-house-11-tips-to-keep-your-new-neighbours-on-side', 'You don’t get a second chance to make a first impression. If you’re moving house, here’s how to get off on the right foot with your new neighbours. ', '<p><span style=\"color: #3d3b40; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Settling into a new neighbourhood involves more than just unpacking boxes and decorating your space - it&rsquo;s about making connections with those who live around you.&nbsp;</span></p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">From finding your new local coffee shop and making friends with the barista to learning where the best trivia nights are &ndash; your move (believe it or not) can actually be hassle and stress free, because&nbsp;<a style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-decoration-line: none;\" href=\"https://www.budgettrucks.com.au/en/home\" target=\"_blank\" rel=\"noreferrer noopener\">Budget Trucks</a>, with over 200 locations in Australia, have a truck or a van for any size move.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Here&rsquo;s how you can get to the good stuff sooner, and create lasting positive impressions that could lead to some very neighbourly friendships.</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">1. Notify neighbours of moving day</h3>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">This one might sound a bit weird considering you A) don&rsquo;t live there yet, and B) haven&rsquo;t met anyone. But trust us, it will go a long way.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">So, a few days before your move, inform your future neighbours about the date and approximate times when you&rsquo;ll be moving in.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">This heads-up can prepare them for any temporary inconveniences, such as increased noise or vehicles that may block parts of the street.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">It&rsquo;s a simple act of courtesy that can prevent frustrations and demonstrate your consideration right from the start.</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">2. Plan your move thoughtfully</h3>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">When you&rsquo;re moving, the chaos can easily spill over from your property to the street, impacting your new neighbours\' lives.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">To keep the peace and show respect, this is where Budget Trucks come in &ndash; because with the right sized truck, you can ensure that all your belongings are neatly contained and transported in fewer trips.&nbsp;</p>\r\n<div class=\"styles__ExpandedContentWrapper-sc-1ru2hv7-0 styles__ExpandedContentImageWrapper-sc-1ru2hv7-1 kDuwIj ipNbJY\" style=\"box-sizing: inherit; margin: 2rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\">&nbsp;</div>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: 400; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">This minimises disruption in the neighbourhood, keeps the street clear, and reduces any potential stress on your moving day.&nbsp;</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">3. Introduce yourself early</h3>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Don&rsquo;t wait until you have everything unpacked to say hello, because a quick introduction as you&rsquo;re moving in, or even a friendly wave, can go a long way.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">If you spot a neighbour, take a moment to pause your activities and introduce yourself.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">This small gesture helps break the ice and lays the groundwork for future interactions.&nbsp;It also signals that you&rsquo;re considerate and open to building a community, not just fences.</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">4. Communicate any planned works</h3>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">If you plan to make significant changes to your property, such as renovations or landscaping that could impact your neighbours (e.g., noise, dust, changes to shared views), it\'s courteous to let them know beforehand.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">A quick chat to explain what\'s happening, how long it\'s expected to last, and any potential disruptions shows respect for their comfort and can help prevent complaints.&nbsp;</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">5. Control Pet Disturbances</h3>\r\n<div class=\"styles__ExpandedContentWrapper-sc-1ru2hv7-0 styles__ExpandedContentImageWrapper-sc-1ru2hv7-1 kDuwIj ipNbJY\" style=\"box-sizing: inherit; margin: 2rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">&nbsp;</div>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: 400; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">If you have pets, ensure they are properly managed during the move, because pets can get stressed and act out with excessive barking or by escaping.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Keeping them secure and as calm as possible not only helps keep them safe but also prevents disturbances that might annoy your new neighbours.</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">6. Dispose of packing materials properly</h3>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">After unpacking, you&rsquo;ll likely have a lot of boxes and packing materials.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Dispose of these items responsibly. Break down boxes and place them in recycling bins if available or arrange for special disposal.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Avoid leaving a mess outside, which could disrupt the cleanliness of the neighbourhood and potentially irritate your neighbours.</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">7. Keep noise to a minimum</h3>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">It&rsquo;s not just pets who make noise &ndash; and while it might be tempting to celebrate your new abode with a big housewarming party, hold off on any major celebrations until you&rsquo;ve settled in.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Blasting music or hosting an all-night rager in the first week might set you off on the wrong note.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">So, be mindful of noise, especially during your moving process&mdash;keep the volume down and restrict any loud activities to reasonable hours.&nbsp;</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">8. Be considerate</h3>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">If you see an opportunity to help out or perform a kind gesture, take it.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Something as simple as bringing in a neighbour\'s bins or mowing the nature strip can earn you lots of goodwill.</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">9. Don&rsquo;t hog any parking real estate</h3>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">In your first few days, take note of how parking and shared spaces are used in your new area.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Make sure to park considerately, not blocking any driveways or taking up more space than necessary.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">If you&rsquo;re unsure, ask your neighbours for any unspoken rules or preferences so that you don&rsquo;t inadvertently get off on the wrong foot.</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">10. Respect Boundaries</h3>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">While being friendly is important, it\'s also crucial to respect your neighbours\' privacy and boundaries.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Avoid overstepping by being too intrusive or letting pets roam freely into their yards.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Understanding and respecting each other&rsquo;s space is fundamental for maintaining good relationships.&nbsp;</p>\r\n<h3 class=\"Text__Typography-sc-vzn7fr-0 kqMDKl StyledH3__CustomizedH3-sc-oxrfo8-0 dpxnUH\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.25rem; line-height: 1.75rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 0, \'APRT\' 0, \'SPAC\' 0; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\" data-testid=\"customizedH3\">11. Maintain Your Property</h3>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Keeping your property tidy and well maintained not only enhances your home&rsquo;s kerb appeal but also contributes positively to the neighbourhood\'s overall aesthetics and atmosphere.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Regular maintenance, like cleaning gutters, mowing the lawn, and keeping the exterior in good shape, shows that you take pride in your home and, by extension, the new neighbourhood in which it&rsquo;s located.</p>', '1714615067.jpg', '2024-05-02', 1);
INSERT INTO `posts` (`id`, `title`, `slug`, `short_description`, `description`, `photo`, `posted_on`, `total_view`) VALUES
(5, 'Character home tipped to fetch new price record for Thebarton at auction', 'character-home-tipped-to-fetch-new-price-record-for-thebarton-at-auction', 'A renovated character home is set to prove itself a hotly contested proposition for buyers when it heads to auction later this month.', '<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">A renovated character home is set to prove itself a hotly contested proposition for buyers when it heads to auction later this month.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Located in Adelaide&rsquo;s tightly-held inner-west which has seen price growth of almost 45 per cent over the past five years, the three-bedroom residence at&nbsp;<a style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-decoration-line: none;\" title=\"www.realestate.com.au\" href=\"https://www.realestate.com.au/property-house-sa-thebarton-144836968\">1 Ross St</a>, is expected to sell upwards of $1.4 when it goes under the hammer, likely setting a new residential sales record for the suburb.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Owned and treasured by the same family for close to 20 years, selling agent Thanasi Mantopoulos of LJ Hooker Mile End/Woodville said buyer interest in the property was diverse with around 40 groups attending the first open on the weekend.</p>\r\n<div id=\"outstream_holder_news\" style=\"box-sizing: inherit; margin: auto; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\"></div>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;Properties like this one come up maybe once a year, so when they do, they are very popular with buyers and that&rsquo;s what&rsquo;s driving up prices,&rdquo; he said.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;In that time, prices will move up five to 10 per cent, so people are paying $50,000 to $100,000 more than they would have the year prior.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;So buyers know that the sooner they can get their hands on a property in Thebarton or the inner-west, the better for them in terms of price, which is why we see such a demand when properties like this one do come to the market.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;As a result, we had interest from buyers looking to upsize, investors but also from people that are interstate.&rdquo;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Situated on a landscaped 613sq m block, Mantopoulos said the home underwent an extensive renovation in 2017, with its Nordic, Japanese and mid-century inspired interior seeing the home featured in the Architectural Digest, Dezeen, Dwell, and The Local Project.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;It comes with very nicely manicured gardens and everything is completely custom throughout, which you don&rsquo;t see very often.&rdquo; he said.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;It&rsquo;s definitely been renovated for people to live in and enjoy, rather than being renovated to sell and I think that makes this home extra special.&rdquo;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Painted in light, modern tones throughout, the home centres around an open-plan living, dining and kitchen space that opens out to an all-weather pergola and carefully crafted gardens.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Meanwhile, the master bedroom, located at the front of the home, is defined by its retro ensuite, while bedrooms two and three sit adjacent to a second lounge area that could also double as a study.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Outside, a second paved outdoor entertaining area will delight, as will three raised, galvanised veggie beds, a chicken coop and a garden gym, yoga or hobby room.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Thebarton has a median house price of $870,000, according to PropTrack.The property will head to auction on May 11 at 10am.</p>', '1714615140.png', '2024-05-02', 1),
(6, 'Robina home sells for $4.6m, smashes suburb record', 'robina-home-sells-for-46m-smashes-suburb-record', 'A showstopper Robina property has sold for $4.6m, smashing the suburb record by almost $2m.', '<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">The sprawling two-level lakefront home at&nbsp;<a style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-decoration-line: none;\" title=\"www.realestate.com.au\" href=\"https://www.realestate.com.au/property-house-qld-robina-144425776\">11 Pipers Point</a>&nbsp;hit the market in March and included a string of features from a private dance studio to an indoor swimming pool.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">The property was marketed by Ben Williams of RE/MAX Regency &ndash; Gold Coast who said he received 15 offers and conducted 189 inspections.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;It absolutely smashed the previous record,&rdquo; Mr Williams said.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;It&rsquo;s an incredible price.&rdquo;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">The buyer is an expat who had been living on the Gold Coast, Mr Williams said.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">The sale eclipsed the previous suburb record of $2.85m, paid for 5 Pipers Point in June, 2022.</p>\r\n<div id=\"outstream_holder_news\" style=\"box-sizing: inherit; margin: auto; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #3d3b40; background-color: #ffffff;\"></div>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Mr Williams said Robina was gaining more traction with buyers able to get &ldquo;more bang for their buck&rdquo; in the central suburb.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;Prestige property in Robina is still really good value when you compare it to blue chip suburbs like Mermaid Waters or Burleigh,&rdquo; he said.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;Robina is close to some of the best schools on the Coast, has Robina Town Centre and you&rsquo;re still close to the water and beaches.&rdquo;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&nbsp;</p>', '1714615191.png', '2024-05-02', 1),
(7, 'Supersized: This is what $8m will buy you in a posh Brisbane suburb', 'supersized-this-is-what-8m-will-buy-you-in-a-posh-brisbane-suburb', 'Queensland developer Azure is releasing the final residence in its New Farm development as the appetite for riverfront living continues unabated.\r\n\r\nThe sub-penthouse on level five of One Five Six at 156 Oxlade Drive has hit the market, offering 226 sqm of internal living space, three bedrooms, three bathrooms, a three-car garage, and a 35 sqm river-facing terrace.', '<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">It comes as the development finally nears completion, which is expected later this year.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">The apartment is on the north-eastern side of the building, taking full advantage of the uninterrupted views of the Brisbane River and Oxlade Park, and is expected to attract offers around $8m.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">The site itself sold to Azure in 2019 for $10.2m, which shows just how far prices have come since.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;Apartment 5.02 is pretty well irreplaceable. In a building without compromise and in the best</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">street in New Farm, someone will be very lucky to secure it,&rdquo; Azure director Trent Keirnan said.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;In the current market, a residential opportunity of this calibre is incredibly scarce. Most importantly, construction is nearing completion, where buyers have the benefit of occupying in the later half of this year.&rdquo;<br style=\"box-sizing: inherit;\" />&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Mr Caulfield said Brisbane remained a standout performer at the prestige end of the market, where positive growth rates were being consistently achieved month on month.&nbsp;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;While Brisbane continues to grapple with limited inventory, particularly in premium</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">locations, there&rsquo;s a noticeable influx of buyers, especially in the upper echelons of the</p>', '1714615346.png', '2024-05-02', 1),
(8, 'New York-style launch for Sydney’s incredible 360-degree penthouse', 'new-yorkstyle-launch-for-sydneys-new-level-83-home-in-the-clouds', 'TRG founder Gavin Rubinstein describes the level 83 King Penthouse as “unlike anything the Sydney market has ever seen” and has planned an appropriately extravagant New York-style launch party to match.', '<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;It&rsquo;s next level, brand new, 245m high in the sky, level 83 of the Greenland building with 360-degree views,&rdquo; says Rubinstein.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;There is no level four, which is bad feng shui, so this is a good luck building.&rdquo;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">&ldquo;And the finish is the absolute best that money can buy!&rdquo;</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">He says it&rsquo;s only fitting that two-storey residence &mdash; with five bedrooms, five bathrooms, six car spaces, an incredible 674sqm of indoor and outdoor space atop Greenland Centre at 115 Bathurst St in the CBD &mdash; is introduced to the market in unique fashion.</p>\r\n<p class=\"Text__Typography-sc-vzn7fr-0 kqoxux StyledP-sc-cebixd-0 bzEerj\" style=\"box-sizing: inherit; margin: 1.5rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.5rem; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: \'XTDR\' 50, \'APRT\' 100, \'SPAC\' 40; vertical-align: baseline; overflow-wrap: break-word; color: #3d3b40; background-color: #ffffff;\">Rubinstein and his co-agent Chrissie Ren have the exclusive listing with a $30m price guide.</p>', '1714625636.jpg', '2024-05-02', 3);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `amenities` text NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `description` text NOT NULL,
  `featured_photo` text NOT NULL,
  `price` int(11) NOT NULL,
  `purpose` text NOT NULL,
  `bedroom` int(11) NOT NULL,
  `bathroom` int(11) NOT NULL,
  `size` text NOT NULL,
  `floor` int(11) NOT NULL,
  `garage` int(11) NOT NULL,
  `balcony` int(11) NOT NULL,
  `address` text NOT NULL,
  `built_year` text NOT NULL,
  `map` text NOT NULL,
  `is_featured` text NOT NULL,
  `status` text NOT NULL,
  `posted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `agent_id`, `location_id`, `type_id`, `amenities`, `name`, `slug`, `description`, `featured_photo`, `price`, `purpose`, `bedroom`, `bathroom`, `size`, `floor`, `garage`, `balcony`, `address`, `built_year`, `map`, `is_featured`, `status`, `posted_on`) VALUES
(1, 1, 2, 2, '4,2,3,5', 'South West Apartment', 'south-west-apartment', '<p>Pro senserit vulputate ea, has erroribus accommodare ea, at cum eius ferri abhorreant. Pro no modo suscipit invidunt, ad honestatis definitiones pri. Mutat soluta tempor te nec, mel ei definiebas deterruisset. Zril honestatis reprehendunt pri ea, no magna albucius his, alia tacimates complectitur at mel. Ius sonet posidonium te, quo dissentiunt comprehensam et</p>', '1713699140.jpg', 120000, 'Sale', 3, 2, '300', 200, 2, 2, '30 Highfield Road', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3629.2542091435403!2d-97.90512175238419!3d38.06450160184029!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited%20States!5e0!3m2!1sen!2sbd!4v1671347381733!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border: 0\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Yes', 'Active', '2022-10-20'),
(3, 1, 2, 4, '5', 'Park Towers South ', 'park-towers-south', '<p>Park Towers South Park Towers South Park Towers South Park Towers South Park Towers South&nbsp;</p>', '1713796619.jpg', 1250000, 'Sale', 4, 3, '450', 200, 2, 3, '315 W 57th St, New York, NY 10019', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.7563146190532!2d-73.9863354242865!3d40.76738413422364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c258587ccef2bb%3A0x26f8e6cbf1ffbbbd!2s315%20W%2057th%20St%2C%20New%20York%2C%20NY%2010019%2C%20USA!5e0!3m2!1sen!2sbd!4v1697045038770!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'Yes', 'Active', '2023-10-18'),
(4, 1, 3, 4, '5,1', 'FRANK 57 WEST', 'frank-57-west', '<p>FRANK 57 WESTFRANK 57 WESTFRANK 57 WESTFRANK 57 WESTFRANK 57 WEST</p>', '1713796830.png', 2300000, 'Sale', 4, 3, '600', 200, 2, 3, '600 W 58th St, New York, NY 10019', '1995', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.5964957464676!2d-73.99435422428633!3d40.77089873400817!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2585b81894a29%3A0x869e1ea9b27ad0f8!2s600%20W%2058th%20St%2C%20New%20York%2C%20NY%2010019%2C%20USA!5e0!3m2!1sen!2sbd!4v1697045201758!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'No', 'Active', '2023-12-20'),
(5, 1, 8, 5, '5,1', 'South Side Flats', 'south-side-flat', '<p>South Side FlatsSouth Side FlatsSouth Side FlatsSouth Side Flats</p>', '1713797057.jpg', 3400000, 'Sale', 5, 4, '700', 300, 3, 3, '1210 Botham Jean Blvd, Dallas, TX 75215', '1995', '\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3354.8399089364057!2d-96.79933252464295!3d32.76998218434604!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864e990343afea6b%3A0x85ad20f4a289dedc!2s1210%20Botham%20Jean%20Blvd%2C%20Dallas%2C%20TX%2075215%2C%20USA!5e0!3m2!1sen!2sbd!4v1697045657127!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'Yes', 'Active', '2024-02-20'),
(6, 1, 8, 3, '2', 'Frankford Rd', 'frankford', '<p>3702 Frankford Rd, Dallas, TX 752873702 Frankford Rd, Dallas, TX 752873702 Frankford Rd, Dallas, TX 752873702 Frankford Rd, Dallas, TX 75287</p>', '1713798843.png', 120865, 'Sale', 4, 3, '200', 150, 2, 3, '3702 Frankford Rd, Dallas, TX 75287', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3346.310798817118!2d-96.85446832463394!3d32.995580572785016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864c2416da7c297f%3A0x78c94b87fb4640f!2s3702%20Frankford%20Rd%2C%20Dallas%2C%20TX%2075287%2C%20USA!5e0!3m2!1sen!2sbd!4v1697045855087!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'Yes', 'Active', '2024-03-08'),
(7, 2, 8, 6, '4', 'The Village Dallas', 'the-village-dallas', '<p>The Village DallasThe Village DallasThe Village DallasThe Village Dallas</p>', '1713876672.jpg', 2900, 'Rent', 3, 2, '390', 180, 2, 3, '5605 Village Glen Dr, Dallas, TX 75206', '1997', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3351.454752992814!2d-96.7666750246394!3d32.85968547975725!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864e9f9a4aaabd3f%3A0x4050c905412fe466!2s5605%20Village%20Glen%20Dr%2C%20Dallas%2C%20TX%2075206%2C%20USA!5e0!3m2!1sen!2sbd!4v1697046098554!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'Yes', 'Active', '2024-03-10'),
(8, 3, 2, 2, '4', '1330 Boylston', '1330-boylston', '<p>1330 Boylston1330 Boylston1330 Boylston</p>', '1713881737.png', 230000, 'Sale', 3, 2, '120', 120, 1, 2, '1330 Boylston St, Boston, MA 02215', '2011', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2948.9235564462165!2d-71.10096652420766!3d42.34415313610694!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e379f5eed08f7f%3A0x264c341133e19fd0!2s1330%20Boylston%20St%2C%20Boston%2C%20MA%2002215%2C%20USA!5e0!3m2!1sen!2sbd!4v1697046401997!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'Yes', 'Active', '2024-04-01'),
(9, 3, 5, 2, '4,2,3', 'Lake Meadows', 'lake-meadows', '<p>Sentral Michigan AvenueSentral Michigan AvenueSentral Michigan AvenueSentral Michigan AvenueSentral Michigan Avenue</p>', '1714030276.png', 2300000, 'Sale', 4, 3, '200', 200, 2, 3, '3233 S King Dr, Chicago, IL 60616', '2009', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2972.6779855119953!2d-87.61918092423339!3d41.835231668097556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880e2bf52db0e6f3%3A0xa0532dcfff690d3b!2s3233%20S%20King%20Dr%2C%20Chicago%2C%20IL%2060616%2C%20USA!5e0!3m2!1sen!2sbd!4v1697047332862!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'Yes', 'Active', '2024-04-20'),
(10, 3, 5, 2, '4,2,3', 'Sentral Michigan Avenue', 'sentral-michigan-avenue', '<p>Sentral Michigan AvenueSentral Michigan AvenuevSentral Michigan AvenueSentral Michigan AvenueSentral Michigan AvenueSentral Michigan Avenue</p>', '1714118413.png', 450000, 'Sale', 3, 2, '150', 230, 2, 3, '808 S Michigan Ave, Chicago, IL 60605', '2009', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2970.9930834895267!2d-87.62714832423157!3d41.871495265828116!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880e2c9940c21341%3A0x1bd04cfb5ed02931!2s808%20S%20Michigan%20Ave%2C%20Chicago%2C%20IL%2060605%2C%20USA!5e0!3m2!1sen!2sbd!4v1697047580648!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'No', 'Active', '2024-04-25'),
(11, 3, 1, 2, '4,2,3', 'The DeSoto Apartments ', 'desoto-apartment', '<p>The DeSoto Apartments The DeSoto Apartments The DeSoto Apartments The DeSoto Apartments&nbsp;</p>', '1714117047.png', 1200000, 'Sale', 3, 2, '200', 1, 2, 3, '1445 P St NW, Washington, DC 20005', '1990', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3104.6155662257866!2d-77.03617742437592!3d38.90990564596648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b7c1e00d30ab%3A0x98726ada62ba226!2s1445%20P%20St%20NW%2C%20Washington%2C%20DC%2020005%2C%20USA!5e0!3m2!1sen!2sbd!4v1697050645985!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'Yes', 'Active', '2024-04-26'),
(12, 3, 2, 6, '4,2', 'Monroe Street Market ', 'monroe-street-market', '<p><span style=\"font-family: \'Open Sans\', Helvetica, Arial, Lucida, sans-serif; font-size: 16px; text-align: center; background-color: #ffffff;\">Monroe Street Market Monroe Street Market Monroe Street Market Monroe Street Market&nbsp;</span></p>', '1714117204.png', 2340000, 'Sale', 3, 2, '230', 2, 3, 3, '625 Monroe St NE, Washington, DC 20017', '2009', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3103.656154302587!2d-76.99969952437485!3d38.93183594467193!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7c7f03b9c8b8f%3A0xd7e010397dabd569!2sCornerstone%2C%20625%20Monroe%20St%20NE%2C%20Washington%2C%20DC%2020017%2C%20USA!5e0!3m2!1sen!2sbd!4v1697050847366!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'No', 'Active', '2024-04-26'),
(13, 3, 6, 1, '4,2', 'The Hecht Villa', 'hecht-villa', '<p>The Hecht VillaThe Hecht VillaThe Hecht VillavThe Hecht Villa</p>', '1714117836.png', 3000, 'Rent', 5, 4, '290', 2, 3, 3, '1475 TEXAS AVE, HOUSTON, TX 77002', '1998', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3104.379086818909!2d-76.98920991602266!3d38.91531207274489!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b91ce08dddc9%3A0x3092e7c86c7be15!2s1401%20New%20York%20Ave%20NE%2C%20Washington%2C%20DC%2020002%2C%20USA!5e0!3m2!1sen!2sbd!4v1697050219413!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'No', 'Active', '2024-04-26'),
(14, 3, 7, 6, '2,5', 'Gables Old Town North ', 'gables-old-town-north', '<p>Gables Old Town North Gables Old Town North vvGables Old Town North&nbsp;</p>', '1714118838.png', 450000, 'Sale', 3, 2, '120', 1, 2, 3, '525 Montgomery St, Alexandria, VA 22314', '2019', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3108.7915307697444!2d-77.04579842438041!3d38.814329751601825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b0f021419483%3A0x2d7baeea0c9b68a6!2s525%20Montgomery%20St%2C%20Alexandria%2C%20VA%2022314%2C%20USA!5e0!3m2!1sen!2sbd!4v1697050442956!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'Yes', 'Active', '2024-04-26'),
(15, 3, 4, 1, '4,3,5', 'Ascend at Pena Station', 'ascent-at-pena-station', '<p>Ascend at Pena StationAscend at Pena StationvAscend at Pena Station</p>', '1714118991.png', 3000, 'Rent', 5, 4, '300', 2, 3, 4, '18591 E 61st Ave, Denver, CO 80249', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3064.959952944086!2d-104.77317192433317!3d39.80789009247107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x876c65cb45de56ed%3A0xe3cec14b03ec2347!2s18591%20E%2061st%20Ave%2C%20Denver%2C%20CO%2080249%2C%20USA!5e0!3m2!1sen!2sbd!4v1697047933012!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'No', 'Active', '2024-04-26'),
(16, 6, 3, 3, '2,5', 'Spring Valley Townhouse', 'spring-valley-townhouse', '<p>Spring Valley TownhouseSpring Valley TownhousevvSpring Valley Townhouse</p>', '1714122740.png', 2340000, 'Sale', 4, 3, '244', 2, 3, 3, '23314 Surrey Way, California, MD 20619', '2000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3132.4904017544495!2d-76.46767262440581!3d38.268123483588944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b761e67fb14075%3A0xc5c87faf799a23cf!2s46533%20Valley%20Ct%2C%20Lexington%20Park%2C%20MD%2020653%2C%20USA!5e0!3m2!1sen!2sbd!4v1697047101903!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'Yes', 'Active', '2024-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `property_photos`
--

CREATE TABLE `property_photos` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `property_photos`
--

INSERT INTO `property_photos` (`id`, `property_id`, `photo`) VALUES
(1, 1, '1713792854.png'),
(2, 1, '1713792915.png'),
(3, 3, '1713796668.png'),
(4, 3, '1713796674.png'),
(5, 4, '1713796840.png'),
(6, 4, '1713796846.png'),
(7, 5, '1713797088.png'),
(8, 5, '1713797100.png'),
(9, 7, '1713876685.png'),
(10, 7, '1713876690.png'),
(11, 7, '1713876697.png'),
(12, 6, '1714026677.png'),
(14, 5, '1714026705.png'),
(15, 4, '1714026746.png'),
(16, 3, '1714026782.png'),
(17, 1, '1714026818.png'),
(18, 8, '1714030091.png'),
(19, 8, '1714030095.png'),
(20, 8, '1714030103.png'),
(21, 9, '1714030291.png'),
(22, 9, '1714030301.png'),
(23, 9, '1714030312.png'),
(24, 11, '1714117072.png'),
(25, 11, '1714117077.png'),
(26, 11, '1714117090.png'),
(27, 12, '1714117222.png'),
(28, 12, '1714117228.png'),
(29, 12, '1714117237.png'),
(30, 13, '1714117846.png'),
(31, 13, '1714117851.png'),
(32, 13, '1714117858.png'),
(33, 14, '1714118850.png'),
(34, 14, '1714118854.png'),
(35, 14, '1714118859.png'),
(36, 15, '1714119003.png'),
(37, 15, '1714119008.png'),
(38, 15, '1714119012.png'),
(39, 16, '1714122749.png'),
(40, 16, '1714122754.png'),
(41, 16, '1714122758.png');

-- --------------------------------------------------------

--
-- Table structure for table `property_videos`
--

CREATE TABLE `property_videos` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `video_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `property_videos`
--

INSERT INTO `property_videos` (`id`, `property_id`, `video_id`) VALUES
(1, 6, 'TgG8EUm9fHc'),
(2, 6, 'aN9DH_GxqEo'),
(3, 6, 'DGCshpSoeoc'),
(4, 5, 'aN9DH_GxqEo&t=3s'),
(5, 5, 'mMstMmhgZmg'),
(6, 5, 'RMsVLYIJ0kw'),
(7, 4, 'YnJKCr7DJfY'),
(8, 4, 'wHZVfuVg_t0'),
(9, 4, 'hqkGIBKhTCs'),
(10, 3, '51ALckqxswY'),
(11, 3, '3r1QYHRESGM'),
(12, 3, 'tElvmuWqtcs'),
(13, 1, 'sL5_DVWFiNc'),
(14, 1, 'mr-uNuzVECg'),
(15, 1, 'bAnqNERdXLU'),
(16, 8, '88KwhpJ4spo'),
(17, 8, 'FRmXeUW5ewA'),
(18, 8, 'T0BI9x_QyrU'),
(19, 9, 'ebbMSse45c0'),
(20, 9, '6Pv3GrWGr9k'),
(21, 9, 'UlyPpunP_A4'),
(22, 11, ' b5AHh4jlTmI'),
(23, 11, '4QngoyQnUUg'),
(24, 11, 'tXDtEQ4OywY'),
(25, 12, 'PlG2jlclEW0'),
(26, 12, 'LGKrv9NQS1Q'),
(27, 12, 't2kgNMnrWfk'),
(28, 13, 'n8Qv2j0kkl4'),
(29, 13, 'nR67fySvaOg'),
(30, 13, 'VMF1MzufNI4'),
(31, 14, ' 78i5P72yjpY'),
(32, 14, 'P0Oh7e0T4Zg'),
(33, 14, 'm_fEW0QYsCs'),
(34, 15, 'RVS5n2dBEGo'),
(35, 15, 'KxK9FnIdVow'),
(36, 15, 'nTPAyV19k9c'),
(37, 16, 'QGW5PLqxh7k'),
(38, 16, '914lPZxvI2A'),
(39, 16, '1Ceyw_kt8mo');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `banner` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `copyright` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `youtube` text NOT NULL,
  `linkedin` text NOT NULL,
  `instagram` text NOT NULL,
  `map` text NOT NULL,
  `hero_heading` text NOT NULL,
  `hero_subheading` text NOT NULL,
  `hero_photo` text NOT NULL,
  `featured_property_heading` text NOT NULL,
  `featured_property_subheading` text NOT NULL,
  `featured_property_status` text NOT NULL,
  `why_choose_heading` text NOT NULL,
  `why_choose_subheading` text NOT NULL,
  `why_choose_photo` text NOT NULL,
  `why_choose_status` text NOT NULL,
  `agent_heading` text NOT NULL,
  `agent_subheading` text NOT NULL,
  `agent_status` text NOT NULL,
  `location_heading` text NOT NULL,
  `location_subheading` text NOT NULL,
  `location_status` text NOT NULL,
  `testimonial_heading` text NOT NULL,
  `testimonial_photo` text NOT NULL,
  `testimonial_status` text NOT NULL,
  `post_heading` text NOT NULL,
  `post_subheading` text NOT NULL,
  `post_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `banner`, `address`, `email`, `phone`, `copyright`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `map`, `hero_heading`, `hero_subheading`, `hero_photo`, `featured_property_heading`, `featured_property_subheading`, `featured_property_status`, `why_choose_heading`, `why_choose_subheading`, `why_choose_photo`, `why_choose_status`, `agent_heading`, `agent_subheading`, `agent_status`, `location_heading`, `location_subheading`, `location_status`, `testimonial_heading`, `testimonial_photo`, `testimonial_status`, `post_heading`, `post_subheading`, `post_status`) VALUES
(1, 'logo.png', 'favicon.png', 'banner.jpg', '46533 Valley Ct, Lexington Park, MD 20653 California', 'admin@test.com', '122-222-1212', 'Copyright 2023, Alice. All Rights Reserved.', 'www.facebook.com', 'www.twitter.com', 'www.youtube.com', 'www.linkedin.com', 'www.instagram.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3132.4904017544495!2d-76.46767262440581!3d38.268123483588944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b761e67fb14075%3A0xc5c87faf799a23cf!2s46533%20Valley%20Ct%2C%20Lexington%20Park%2C%20MD%2020653%2C%20USA!5e0!3m2!1sen!2sbd!4v1697047101903!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n', 'Discover Your New Home', 'You can get your desired awesome properties, homes, condos etc. here by name, category or location.', 'hero_photo.jpg', 'Featured Properties', 'Find out the awesome properties that you must love', 'Show', 'Why Choose Us', 'Describing why we are best in the property business', 'why_choose_photo.jpg', 'Show', 'Agents', 'Meet our expert property agents from the following list', 'Show', 'Locations', 'Check out all the properties of important locations', 'Show', 'Our Happy Clients', 'testimonial_photo.jpg', 'Show', 'Latest News', 'Check our latest news from the following section', 'Show');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `token` text NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`) VALUES
(1, 'alice@gmail.com', '', 1),
(2, 'test@test.com', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `terms_privacy_items`
--

CREATE TABLE `terms_privacy_items` (
  `id` int(11) NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `terms_privacy_items`
--

INSERT INTO `terms_privacy_items` (`id`, `terms`, `privacy`) VALUES
(1, '<p><span style=\"color: #726e75; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; background-color: #ffffff;\">Disclaimer: The information published in this section is of a general nature only and does not consider your personal objectives, financial situation or particular needs. Where indicated, third parties have written and supplied the content and we are not responsible for it. We make no warranty as to the accuracy, completeness or reliability of the information, nor do we accept any liability or responsibility arising in any way from omissions or errors contained in the content. We do not recommend sponsored lenders or loan products and we cannot introduce you to sponsored lenders. We strongly recommend that you obtain independent advice before you act on the content.</span></p>', '<p><span style=\"color: #726e75; font-family: Pangea, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; background-color: #ffffff;\">Disclaimer: The information published in this section is of a general nature only and does not consider your personal objectives, financial situation or particular needs. Where indicated, third parties have written and supplied the content and we are not responsible for it. We make no warranty as to the accuracy, completeness or reliability of the information, nor do we accept any liability or responsibility arising in any way from omissions or errors contained in the content. We do not recommend sponsored lenders or loan products and we cannot introduce you to sponsored lenders. We strongly recommend that you obtain independent advice before you act on the content.</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `comment` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`) VALUES
(1, 'Sal Harvey', 'Director, DEF Company', 'I had the pleasure of working with Smith Brent during my recent home search and I can\'t speak highly enough of their services. Smith Brent listened to my needs and helped me find the perfect home that met all of my requirements. They were always there for me, from the initial search to closing, and made the process seamless and enjoyable. I would recommend Smith Brent to anyone looking for an experienced and dedicated real estate agent.\r\n                                ', '1714569736.jpg'),
(2, 'Sal Harvey', 'Director, DEF Company', ' I had the pleasure of working with Smith Brent during my recent home search and I can\'t speak highly enough of their services. Smith Brent listened to my needs and helped me find the perfect home that met all of my requirements. They were always there for me, from the initial search to closing, and made the process seamless and enjoyable. I would recommend Smith Brent to anyone looking for an experienced and dedicated real estate agent.\r\n                                ', '1714569794.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'villa'),
(2, 'apartment'),
(3, 'townhouse'),
(4, 'house'),
(5, 'duplex'),
(6, 'cottage');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_items`
--

CREATE TABLE `why_choose_items` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `text` text NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `why_choose_items`
--

INSERT INTO `why_choose_items` (`id`, `heading`, `text`, `icon`) VALUES
(1, 'Years of Experience', 'With decades of combined experience in the industry, our agents have the expertise and knowledge to provide you with a seamless home-buying experience.\r\n                            ', 'fas fa-briefcase'),
(2, 'Competitive Prices', 'We understand that buying a home is a significant investment, which is why we strive to offer competitive prices to our clients.', 'fas fa-search'),
(3, 'Responsive Communication', 'Our responsive agents are here to answer your questions and address your concerns, ensuring a smooth and stress-free home-buying experience.', 'fas fa-share-alt');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `customer_id`, `property_id`) VALUES
(1, 1, 1),
(2, 1, 7),
(3, 1, 4),
(4, 1, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_replies`
--
ALTER TABLE `message_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_photos`
--
ALTER TABLE `property_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_videos`
--
ALTER TABLE `property_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_privacy_items`
--
ALTER TABLE `terms_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message_replies`
--
ALTER TABLE `message_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `property_photos`
--
ALTER TABLE `property_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `property_videos`
--
ALTER TABLE `property_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `terms_privacy_items`
--
ALTER TABLE `terms_privacy_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
