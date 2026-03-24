-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2026 at 12:38 PM
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
-- Database: `doctor_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `knowledge`
--

CREATE TABLE `knowledge` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `selected_answer` text NOT NULL,
  `total_score` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `knowledge`
--

INSERT INTO `knowledge` (`id`, `user_id`, `question_text`, `selected_answer`, `total_score`, `created_at`) VALUES
(126, 123, 'A student repeatedly complains of headaches and stomachaches with no medical basis, particularly during school hours. This suggests:', '', 0, '2025-08-18 13:53:18'),
(127, 123, 'When evaluating the emotional wellbeing of a student who has been involved in repeated fights, which area is most important for the school counselor to assess?', '', 0, '2025-08-18 13:53:19'),
(128, 123, 'Some counselors worry that discussing suicide in school may increase the risk of such behavior. According to recent perspectives, the more accurate understanding is:', '', 0, '2025-08-18 13:53:19'),
(129, 123, 'A counselor believes that emotional health concerns should only be addressed if a student shows severe behavioural issues. This belief may:', '', 0, '2025-08-18 13:53:19'),
(130, 123, 'A counselor avoids discussing emotional well-being because they believe it is “not their job” to guide students on such topics. This belief:', '', 0, '2025-08-18 13:53:19'),
(131, 123, 'A counselor who encourages open discussion about emotional stress in class is most likely to:', '', 0, '2025-08-18 13:53:19'),
(132, 123, 'Believing that a child’s academic difficulties are purely motivational — without exploring emotional or cognitive causes — may result in:', '', 0, '2025-08-18 13:53:19'),
(133, 123, 'If a counselor views referral to a mental health professional as a last resort, it may:', '', 0, '2025-08-18 13:53:19'),
(134, 123, 'A belief that students with psychological issues should adjust to regular school routines without extra support may result in:', '', 0, '2025-08-18 13:53:19'),
(135, 123, 'If a counselor assumes that discussing emotions in school will reduce discipline and focus, this attitude:', '', 0, '2025-08-18 13:53:19'),
(136, 123, 'Which of the following reflects an inclusive and rights-focused attitude?', '', 0, '2025-08-18 13:53:19'),
(137, 123, 'A counselor worries that parents will react negatively to a mental health referral. Which attitude best balances concern with responsibility?', '', 0, '2025-08-18 13:53:19'),
(138, 123, 'You observe a student displaying social withdrawal, frequent mood changes, and verbal expressions of hopelessness. What should be your first immediate step?', '', 0, '2025-08-18 13:53:19'),
(139, 123, 'A student with ADHD is disrupting class repeatedly despite behavioural reinforcement. What should your next step be?', '', 0, '2025-08-18 13:53:19'),
(140, 123, 'When a child shows sensory distress and avoids assemblies, what immediate school-level response is appropriate?', '', 0, '2025-08-18 13:53:19'),
(141, 123, 'You suspect a student has Specific Learning Disability, but they are still performing well in most subjects. What is the most appropriate action?', '', 0, '2025-08-18 13:53:19'),
(142, 123, 'During play observation, a child repeats past abuses, avoids interaction, and acts withdrawn. What is your practical next step?', '', 0, '2025-08-18 13:53:19'),
(143, 123, 'A child is constantly failing to follow classroom routines and showing poor IQ with adaptive delays. What is your first step?', '', 0, '2025-08-18 13:53:19'),
(144, 123, 'You observe a student bullying peers repeatedly, even after warning. After showing empathy, what should be your next action?', '', 0, '2025-08-18 13:53:19'),
(145, 123, 'A student with anxiety avoids tasks and complains of illness before exams. What is the best school-based practice?', '', 0, '2025-08-18 13:53:19'),
(146, 123, 'What is the best way to assess if a classroom behaviour issue is due to emotional distress?', '', 0, '2025-08-18 13:53:19'),
(147, 123, 'What should a counselor do when a student expresses suicidal thoughts?', '', 0, '2025-08-18 13:53:20'),
(148, 123, '', '[{\"question\":\"Which behavioral pattern in a student most strongly suggests an underlying neurodevelopmental disorder rather than situational stress?\",\"answer\":\"\"},{\"question\":\"A student with a history of good academic performance suddenly starts missing school, appears underweight, and is withdrawn. Which factor should be explored first in understanding this sudden change in behavior?\",\"answer\":\"\"},{\"question\":\"What distinguishes Specific Learning Disability (SLD) from general poor academic performance?\",\"answer\":\"\"},{\"question\":\"Which is NOT a barrier to early identification of emotional issues in school children?\",\"answer\":\"\"},{\"question\":\"Which of the following would be the best indicator for referring a student for possible Intellectual Disability (ID)?\",\"answer\":\"\"},{\"question\":\"A student frequently complains of headaches and stomachaches, yet medical tests show no physical illness. According to a high school counselor, an area often linked to such symptoms is:\",\"answer\":\"\"},{\"question\":\"A student persistently displays aggressive behavior towards peers and has a history of vandalism and rule-breaking. Inconsistent attendance and disciplinary referrals suggest:\",\"answer\":\"\"},{\"question\":\"A student repeatedly complains of headaches and stomachaches with no medical basis, particularly during school hours. This suggests:\",\"answer\":\"\"},{\"question\":\"When evaluating the emotional wellbeing of a student who has been involved in repeated fights, which area is most important for the school counselor to assess?\",\"answer\":\"\"},{\"question\":\"Some counselors worry that discussing suicide in school may increase the risk of such behavior. According to recent perspectives, the more accurate understanding is:\",\"answer\":\"\"},{\"question\":\"A counselor believes that emotional health concerns should only be addressed if a student shows severe behavioural issues. This belief may:\",\"answer\":\"\"},{\"question\":\"A counselor avoids discussing emotional well-being because they believe it is \\u201cnot their job\\u201d to guide students on such topics. This belief:\",\"answer\":\"\"},{\"question\":\"A counselor who encourages open discussion about emotional stress in class is most likely to:\",\"answer\":\"\"},{\"question\":\"Believing that a child\\u2019s academic difficulties are purely motivational \\u2014 without exploring emotional or cognitive causes \\u2014 may result in:\",\"answer\":\"\"},{\"question\":\"If a counselor views referral to a mental health professional as a last resort, it may:\",\"answer\":\"\"},{\"question\":\"A belief that students with psychological issues should adjust to regular school routines without extra support may result in:\",\"answer\":\"\"},{\"question\":\"If a counselor assumes that discussing emotions in school will reduce discipline and focus, this attitude:\",\"answer\":\"\"},{\"question\":\"Which of the following reflects an inclusive and rights-focused attitude?\",\"answer\":\"\"},{\"question\":\"A counselor worries that parents will react negatively to a mental health referral. Which attitude best balances concern with responsibility?\",\"answer\":\"\"},{\"question\":\"You observe a student displaying social withdrawal, frequent mood changes, and verbal expressions of hopelessness. What should be your first immediate step?\",\"answer\":\"\"},{\"question\":\"A student with ADHD is disrupting class repeatedly despite behavioural reinforcement. What should your next step be?\",\"answer\":\"\"},{\"question\":\"When a child shows sensory distress and avoids assemblies, what immediate school-level response is appropriate?\",\"answer\":\"\"},{\"question\":\"You suspect a student has Specific Learning Disability, but they are still performing well in most subjects. What is the most appropriate action?\",\"answer\":\"\"},{\"question\":\"During play observation, a child repeats past abuses, avoids interaction, and acts withdrawn. What is your practical next step?\",\"answer\":\"\"},{\"question\":\"A child is constantly failing to follow classroom routines and showing poor IQ with adaptive delays. What is your first step?\",\"answer\":\"\"},{\"question\":\"You observe a student bullying peers repeatedly, even after warning. After showing empathy, what should be your next action?\",\"answer\":\"\"},{\"question\":\"A student with anxiety avoids tasks and complains of illness before exams. What is the best school-based practice?\",\"answer\":\"\"},{\"question\":\"What is the best way to assess if a classroom behaviour issue is due to emotional distress?\",\"answer\":\"\"},{\"question\":\"What should a counselor do when a student expresses suicidal thoughts?\",\"answer\":\"Speak to student privately and refer for immediate support\"}]', 1, '2025-08-18 14:02:09'),
(149, 16, 'Which behavioral pattern in a student most strongly suggests an underlying neurodevelopmental disorder rather than situational stress?', 'Fatigue following physical education class', 1, '2025-12-26 13:02:39'),
(150, 16, 'A student with a history of academic success has suddenly started showing signs of underachievement, marked by increased irritability, social withdrawal, and complaints of physical discomfort. Which factor should be explored first?', 'A desire to avoid school due to bullying or peer rejection', 1, '2025-12-26 13:02:39'),
(151, 16, 'What distinguishes Specific Learning Disability (SLD) from general poor academic performance?', 'It affects only verbal communication', 1, '2025-12-26 13:02:39'),
(152, 16, 'What should a counselor do when a child repeatedly says they feel unloved and want to disappear?', 'Document expression, assess risk, and refer for mental health evaluation', 1, '2025-12-26 13:02:39'),
(153, 17, 'Which behavioral pattern in a student most strongly suggests an underlying neurodevelopmental disorder rather than situational stress?', 'Difficulty adjusting to sudden changes in class schedule', 4, '2025-12-26 17:40:19'),
(154, 17, 'A student with a history of academic success has suddenly started showing signs of underachievement, marked by increased irritability, social withdrawal, and complaints of physical discomfort. Which factor should be explored first?', 'A possible depressive episode manifesting as somatic complaints', 4, '2025-12-26 17:40:19'),
(155, 17, 'What distinguishes Specific Learning Disability (SLD) from general poor academic performance?', 'It persists despite adequate instruction and normal intelligence', 4, '2025-12-26 17:40:19'),
(156, 17, 'What should a counselor do when a child repeatedly says they feel unloved and want to disappear?', 'Document expression, assess risk, and refer for mental health evaluation', 4, '2025-12-26 17:40:19'),
(157, 18, 'Which behavioral pattern in a student most strongly suggests an underlying neurodevelopmental disorder rather than situational stress?', 'Difficulty adjusting to sudden changes in class schedule', 2, '2025-12-26 17:55:23'),
(158, 18, 'A student with a history of academic success has suddenly started showing signs of underachievement, marked by increased irritability, social withdrawal, and complaints of physical discomfort. Which factor should be explored first?', 'A possible depressive episode manifesting as somatic complaints', 2, '2025-12-26 17:55:23'),
(159, 18, 'What distinguishes Specific Learning Disability (SLD) from general poor academic performance?', 'It affects only verbal communication', 2, '2025-12-26 17:55:23'),
(160, 18, 'What should a counselor do when a child repeatedly says they feel unloved and want to disappear?', 'Reassure them it’s just teenage mood', 2, '2025-12-26 17:55:23'),
(161, 19, 'Which behavioral pattern in a student most strongly suggests an underlying neurodevelopmental disorder rather than situational stress?', 'Difficulty adjusting to sudden changes in class schedule', 4, '2025-12-26 18:06:20'),
(162, 19, 'A student with a history of academic success has suddenly started showing signs of underachievement, marked by increased irritability, social withdrawal, and complaints of physical discomfort. Which factor should be explored first?', 'A possible depressive episode manifesting as somatic complaints', 4, '2025-12-26 18:06:20'),
(163, 19, 'What distinguishes Specific Learning Disability (SLD) from general poor academic performance?', 'It persists despite adequate instruction and normal intelligence', 4, '2025-12-26 18:06:21'),
(164, 19, 'What should a counselor do when a child repeatedly says they feel unloved and want to disappear?', 'Document expression, assess risk, and refer for mental health evaluation', 4, '2025-12-26 18:06:21'),
(165, 20, 'Which behavioral pattern in a student most strongly suggests an underlying neurodevelopmental disorder rather than situational stress?', 'Difficulty adjusting to sudden changes in class schedule', 4, '2025-12-26 18:20:01'),
(166, 20, 'A student with a history of academic success has suddenly started showing signs of underachievement, marked by increased irritability, social withdrawal, and complaints of physical discomfort. Which factor should be explored first?', 'A possible depressive episode manifesting as somatic complaints', 4, '2025-12-26 18:20:01'),
(167, 20, 'What distinguishes Specific Learning Disability (SLD) from general poor academic performance?', 'It persists despite adequate instruction and normal intelligence', 4, '2025-12-26 18:20:01'),
(168, 20, 'What should a counselor do when a child repeatedly says they feel unloved and want to disappear?', 'Document expression, assess risk, and refer for mental health evaluation', 4, '2025-12-26 18:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(50) NOT NULL,
  `receiver_id` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `referral_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `referral_id`, `timestamp`) VALUES
(8, '12', '11', 'Hello Doctor, please review this student', '11', '2026-01-01 17:00:43'),
(9, '11', '12', 'I have reviewed the case', '11', '2026-01-01 17:00:43'),
(10, '12', '11', 'okay thank you', '11', '2026-01-01 17:27:51'),
(11, '15', '12', 'okay', '11', '2026-01-01 17:28:35'),
(12, '15', '12', 'nnnxdn', '11', '2026-01-01 17:28:40'),
(13, '15', '16', 'bhdhhd', '10', '2026-01-01 17:28:55'),
(14, '16', '11', 'okay', '10', '2026-01-01 17:29:31'),
(15, '15', '16', 'hi', '10', '2026-01-08 12:10:18'),
(16, '16', '11', 'okay', '10', '2026-01-08 15:56:44'),
(17, '16', '11', 'hi', '10', '2026-01-08 15:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `messages_backup`
--

CREATE TABLE `messages_backup` (
  `id` int(11) NOT NULL DEFAULT 0,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` enum('sent','delivered','seen') DEFAULT 'sent',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `referral_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages_backup`
--

INSERT INTO `messages_backup` (`id`, `sender_id`, `receiver_id`, `message`, `status`, `timestamp`, `referral_id`) VALUES
(1, 0, 0, '', 'sent', '2025-08-24 10:35:59', 0),
(2, 1, 2, 'Hello, this is a test message from Postman!', 'delivered', '2025-08-24 13:35:27', 0),
(3, 1, 2, 'Hello, this is a test message from Postman!', 'delivered', '2025-08-25 04:44:39', 0),
(4, 1, 2, 'Hello', 'delivered', '2025-08-25 04:51:15', 0),
(5, 1, 2, 'hi joshna', 'delivered', '2025-08-25 04:52:48', 0),
(7, 16, 2, 'hi', 'sent', '2025-12-26 13:02:47', 0),
(8, 2, 1, 'Test message', 'sent', '2026-01-01 15:33:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `standard` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `reason` text NOT NULL,
  `behavior` text NOT NULL,
  `academic` text NOT NULL,
  `disciplinary` text NOT NULL,
  `special_need` text NOT NULL,
  `doctor_suggestion` text DEFAULT NULL,
  `precautions` text DEFAULT NULL,
  `counselor_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `unique_id`, `name`, `age`, `gender`, `standard`, `address`, `reason`, `behavior`, `academic`, `disciplinary`, `special_need`, `doctor_suggestion`, `precautions`, `counselor_id`) VALUES
(9, '', 'udhayanithi', 18, NULL, 'hdhdh', 'chennai', 'doctor', 'school', 'jjdjr', 'hdndn', 'jdjjdjf', NULL, NULL, 0),
(10, '', 'savin', 18, NULL, 'hdh', 'hshehe', 'jsjdj', 'jdjdj', 'hdhdh', 'bsbsb', 'hdhddh', 'gggu', 'ndndnnd', 16),
(11, '', 'Test Student', 15, NULL, '10th', '', 'Test Reason', '', '', '', '', 'bbdbd\nthank you', NULL, 12),
(12, '123456', 'sa', 18, NULL, 'ggdgd', 'hdgg', 'xv x', 'gdg', 'vdvdgd', 'hshdgdg', 'vcxgd', 'gfdg', 'cxcfgh', 16);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `scenario` text NOT NULL,
  `answer1` text DEFAULT NULL,
  `answer2` text DEFAULT NULL,
  `answer3` text DEFAULT NULL,
  `answer4` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `username`, `scenario`, `answer1`, `answer2`, `answer3`, `answer4`, `created_at`) VALUES
(17, 'lalith@gmail.com', 'Trina, a 9-year-old child, faces an exceptional memory for trivia and academic facts...', 'hi joshna ', 'hi ', 'hi', 'hi', '2025-08-25 08:42:27'),
(18, 'lalith@gmail.com', 'Krishna, an 11-year-old, often submits incomplete homework, struggles to stay organized...', 'ji ', 'ji', 'ji', 'ji', '2025-08-25 08:42:50'),
(19, 'mani@gmail.com', 'Trina, a 9-year-old child, faces an exceptional memory for trivia and academic facts...', '', '', '', '', '2025-12-26 13:02:06'),
(20, 'mani@gmail.com', 'Krishna, an 11-year-old, often submits incomplete homework, struggles to stay organized...', '', '', '', '', '2025-12-26 13:02:09'),
(21, 'mani@gmail.com', 'Priya, a 9-year-old, impresses teachers with her ability to explain complex concepts...', '', '', '', '', '2025-12-26 13:02:12'),
(22, 'mani@gmail.com', 'Ajay, a 15-year-old, has been suspended twice this term for vandalizing school property...', '', '', '', '', '2025-12-26 13:02:18'),
(23, 'mani@gmail.com', 'Kartik, a 14-year-old, has recently started avoiding participation in debates...', '', '', '', '', '2025-12-26 13:02:19'),
(24, 'mani@gmail.com', 'Meena, an 8-year-old, has been mispronouncing certain words and avoids reading aloud...', '', '', '', '', '2025-12-26 13:02:28'),
(25, 'mani@gmail.com', 'Mohan, a 10-year-old, enjoys sports but has been getting into frequent fights...', '', '', '', '', '2025-12-26 13:02:28'),
(26, 'kishore@gmail.com', 'Trina, a 9-year-old child, faces an exceptional memory for trivia and academic facts...', '', '', '', '', '2025-12-26 17:39:36'),
(27, 'kishore@gmail.com', 'Krishna, an 11-year-old, often submits incomplete homework, struggles to stay organized...', 'b', '', '', '', '2025-12-26 17:39:49'),
(28, 'kishore@gmail.com', 'Priya, a 9-year-old, impresses teachers with her ability to explain complex concepts...', '', '', '', '', '2025-12-26 17:39:51'),
(29, 'kishore@gmail.com', 'Ajay, a 15-year-old, has been suspended twice this term for vandalizing school property...', '', '', '', '', '2025-12-26 17:39:52'),
(30, 'kishore@gmail.com', 'Kartik, a 14-year-old, has recently started avoiding participation in debates...', '', '', '', '', '2025-12-26 17:39:53'),
(31, 'kishore@gmail.com', 'Meena, an 8-year-old, has been mispronouncing certain words and avoids reading aloud...', '', '', '', '', '2025-12-26 17:39:54'),
(32, 'kishore@gmail.com', 'Mohan, a 10-year-old, enjoys sports but has been getting into frequent fights...', '', '', '', '', '2025-12-26 17:39:55'),
(33, 'counsellor@gmail.com', 'Trina, a 9-year-old child, faces an exceptional memory for trivia and academic facts...', '', '', '', '', '2025-12-26 17:54:23'),
(34, 'counsellor@gmail.com', 'Krishna, an 11-year-old, often submits incomplete homework, struggles to stay organized...', 'd', '', '', '', '2025-12-26 17:54:36'),
(35, 'counsellor@gmail.com', 'Priya, a 9-year-old, impresses teachers with her ability to explain complex concepts...', 'u', '', '', '', '2025-12-26 17:54:46'),
(36, 'counsellor@gmail.com', 'Ajay, a 15-year-old, has been suspended twice this term for vandalizing school property...', 'j', '', '', '', '2025-12-26 17:54:56'),
(37, 'counsellor@gmail.com', 'Kartik, a 14-year-old, has recently started avoiding participation in debates...', 'i', '', '', '', '2025-12-26 17:55:02'),
(38, 'counsellor@gmail.com', 'Meena, an 8-year-old, has been mispronouncing certain words and avoids reading aloud...', '', 'b', '', '', '2025-12-26 17:55:08'),
(39, 'counsellor@gmail.com', 'Mohan, a 10-year-old, enjoys sports but has been getting into frequent fights...', 'b', '', '', '', '2025-12-26 17:55:13'),
(40, 'q@gmail.com', 'Trina, a 9-year-old child, faces an exceptional memory for trivia and academic facts...', '', '', '', '', '2025-12-26 18:06:05'),
(41, 'q@gmail.com', 'Krishna, an 11-year-old, often submits incomplete homework, struggles to stay organized...', '', '', '', '', '2025-12-26 18:06:07'),
(42, 'q@gmail.com', 'Priya, a 9-year-old, impresses teachers with her ability to explain complex concepts...', '', '', '', '', '2025-12-26 18:06:08'),
(43, 'q@gmail.com', 'Ajay, a 15-year-old, has been suspended twice this term for vandalizing school property...', '', '', '', '', '2025-12-26 18:06:09'),
(44, 'q@gmail.com', 'Kartik, a 14-year-old, has recently started avoiding participation in debates...', '', '', '', '', '2025-12-26 18:06:09'),
(45, 'q@gmail.com', 'Meena, an 8-year-old, has been mispronouncing certain words and avoids reading aloud...', '', '', '', '', '2025-12-26 18:06:11'),
(46, 'q@gmail.com', 'Mohan, a 10-year-old, enjoys sports but has been getting into frequent fights...', '', '', '', '', '2025-12-26 18:06:11'),
(47, 'u@gmail.com', 'Trina, a 9-year-old child, faces an exceptional memory for trivia and academic facts...', '', '', '', '', '2025-12-26 18:19:39'),
(48, 'u@gmail.com', 'Krishna, an 11-year-old, often submits incomplete homework, struggles to stay organized...', '', '', '', '', '2025-12-26 18:19:41'),
(49, 'u@gmail.com', 'Priya, a 9-year-old, impresses teachers with her ability to explain complex concepts...', '', '', '', '', '2025-12-26 18:19:44'),
(50, 'u@gmail.com', 'Ajay, a 15-year-old, has been suspended twice this term for vandalizing school property...', '', '', '', '', '2025-12-26 18:19:44'),
(51, 'u@gmail.com', 'Kartik, a 14-year-old, has recently started avoiding participation in debates...', '', '', '', '', '2025-12-26 18:19:45'),
(52, 'u@gmail.com', 'Meena, an 8-year-old, has been mispronouncing certain words and avoids reading aloud...', '', '', '', '', '2025-12-26 18:19:47'),
(53, 'u@gmail.com', 'Mohan, a 10-year-old, enjoys sports but has been getting into frequent fights...', '', '', '', '', '2025-12-26 18:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `score` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `user_name`, `score`, `total`) VALUES
(36, 'mani@gmail.com', 6, 30),
(37, 'kishore@gmail.com', 1, 30),
(38, 'counsellor@gmail.com', 13, 30),
(39, 'q@gmail.com', 13, 30),
(40, 'u@gmail.com', 13, 30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `year_in_school` varchar(50) DEFAULT NULL,
  `father_occ` varchar(255) DEFAULT NULL,
  `mother_occ` varchar(255) DEFAULT NULL,
  `father_phone` varchar(20) DEFAULT NULL,
  `mother_phone` varchar(20) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `standard` varchar(50) DEFAULT NULL,
  `register_number` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `password`, `phone`, `age`, `qualification`, `school`, `year_in_school`, `father_occ`, `mother_occ`, `father_phone`, `mother_phone`, `student_name`, `standard`, `register_number`, `created_at`) VALUES
(11, 'Doctor', 'loki', 'loki@gmail.com', '12345', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-25 10:38:35'),
(12, 'Counselor', 'lalith', 'lalith@gmail.com', '12345', '9361911043', 21, '10', 'aim', '2024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-25 10:39:18'),
(13, 'Parent', 'joshna', 'joshna@gmail.com', '12345', '', 12, '10', NULL, NULL, 'farmer', 'farmer', '98230498249', '214u23u', 'raghav', '5', '252434024', '2025-08-25 10:40:07'),
(14, 'Counselor', 'jjjj', 'udhaya@gmail.com', '12345', 'jmbp', 0, 'uuy', 'huo', 'hjj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-15 16:44:59'),
(15, 'Doctor', 'siva', 'siva@gmail.com', '12345678', '9600689746', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-26 12:25:04'),
(16, 'Counselor', 'mani', 'mani@gmail.com', '12345678', '1234567890', 18, 'it', 'sse', '2026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-26 12:26:23'),
(17, 'Counselor', 'kishore', 'kishore@gmail.com', '12345678', '1234567890', 18, 'it', 'sse', '2026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-26 17:38:30'),
(18, 'Counselor', 'counsellor', 'counsellor@gmail.com', '12345678', '156263673737', 17, 'it', 'see', '2026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-26 17:53:07'),
(19, 'Counselor', 'hehdhr', 'q@gmail.com', '12345678', 'euxhjsjd', 0, 'jsjsj', 'jsjjd', 'uehxjd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-26 18:04:55'),
(20, 'Counselor', 'usndj', 'u@gmail.com', '1234', 'jxjdhdh', 0, 'nxjdjr', 'jdjdj', 'jxjxjd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-26 18:18:35'),
(21, 'Parent', 'udhaya', 'udh@gmail.com', '12345678', '', 18, 'it', NULL, NULL, 'bzbbx', 'bsbbd', '78866799998', '878998777', 'siva', 'jdjjf', '244252626727273', '2026-01-10 05:25:43'),
(22, 'Parent', 'udhaya', 'udh@gmail.com', '12345678', '', 18, 'it', NULL, NULL, 'bzbbx', 'bsbbd', '78866799998', '878998777', 'siva', 'jdjjf', '244252626727273', '2026-01-10 05:25:46'),
(23, 'Parent', 'sa', 'sa@gmail.com', '12345678', '', 18, 'it', NULL, NULL, 'hhh', 'jhb', '369076', 'hhfd', NULL, NULL, NULL, '2026-01-10 05:34:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knowledge`
--
ALTER TABLE `knowledge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_referral` (`referral_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knowledge`
--
ALTER TABLE `knowledge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
