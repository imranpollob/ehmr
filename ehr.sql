-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2017 at 02:50 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ehr`
--

-- --------------------------------------------------------

--
-- Table structure for table `approval`
--

CREATE TABLE `approval` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `requested_user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_approved` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank`
--

CREATE TABLE `bloodbank` (
  `id` int(10) UNSIGNED NOT NULL,
  `hospital_id` int(10) NOT NULL,
  `blood_group` int(3) NOT NULL,
  `count` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `id` int(3) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'A+', '2017-07-03 11:09:00', '2017-07-03 11:09:00'),
(2, 'A-', '2017-07-03 11:09:09', '2017-07-03 11:09:09'),
(3, 'B+', '2017-07-03 11:09:15', '2017-07-03 11:09:15'),
(4, 'B-', '2017-07-03 11:09:21', '2017-07-03 11:09:21'),
(5, 'AB+', '2017-07-03 11:09:28', '2017-07-03 11:09:28'),
(6, 'AB-', '2017-07-03 11:09:34', '2017-07-03 11:09:34'),
(7, 'O+', '2017-07-03 11:09:39', '2017-07-03 11:09:39'),
(8, 'O-', '2017-07-03 11:09:45', '2017-07-03 11:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recommended_for` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `name`, `recommended_for`, `created_at`, `updated_at`) VALUES
(1, 'AFP Maternal Test', 'Down Syndrome', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(2, 'AFP Tumour Markers Test', 'Cancer', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(3, 'Alanine aminotransferase Tests for Liver Function', 'Liver Cancer', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(4, 'Albumin Test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(5, 'Aldolase Test', 'Infectious Mononucleosis,Liver Cancer,Muscular Dystrophy,Prostate cancer,Polymyositis', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(6, 'Aldosterone Blood Test', 'Fecal Occult Blood Test,ProstateSpecific Antigen Blood Test (PSA Test)', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(7, 'Aldosterone Urine Test', 'Urinary Tract Infection in Men,Urinary Tract Infection in Women', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(8, 'Alkaline Phosphatase Test', 'Bile Duct Diseases,Liver Cancer', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(9, 'Ammonia Test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(10, 'Amniocentesis', 'Pregnancy', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(11, 'Amylase Test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(12, 'Anti Smooth Muscle Antibody Test', 'Cirrhosis,Infectious Mononucleosis', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(13, 'Antimitochondrial Antibodies Test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(14, 'AntithrombinTest', 'Heart Attack,Heart Lung Transplant', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(15, 'Aspartate aminotransferase Tests for Liver Function', 'Liver Cancer', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(16, 'B-type Natriuretic peptide Test', 'Heart Failure', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(17, 'BRCA1 BRCA2 test for Breast cancer', 'Breast Cancer', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(18, 'Biotinidase deficiency', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(19, 'Blood Catecholamines Test', 'Cancer', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(20, 'Blood Chloride Test', 'Kidney Failure', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(21, 'Blood Erythropoietin Test', 'Aplastic Anemia,Hemolytic Anemia,Sickle Cell Anemia', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(22, 'Blood Gases Test', 'Diabetes', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(23, 'Blood Ketones Test', 'Diabetic Ketoacidosis', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(24, 'Blood Lactate Dehydrogenase Test', 'Aplastic Anemia,Hemolytic Anemia,Sickle Cell Anemia', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(25, 'Blood Lead Level Test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(26, 'Blood Luteinizing hormone Test', 'Diabetes,Peripheral Vascular Disease', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(27, 'Blood Magnesium Test', 'Diarrhea', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(28, 'Blood Magnesium Test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(29, 'Blood Phosphorus Test', 'Type 1 Diabetes Mellitus,Type 2 Diabetes Mellitus', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(30, 'Blood Porphyrins Test', 'Porphyria', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(31, 'Blood Potassium Test', 'Kidney Failure', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(32, 'Blood Progesterone Test', 'Female Infertility,Male Infertility', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(33, 'Blood ProlactinTest', 'Endometriosis,Female Infertility,Male Infertility', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(34, 'Blood Sodium Test', 'Polycystic Kidney Disease', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(35, 'Blood Testosterone Test', 'Vaginal Discharge', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(36, 'Blood Typing Test', 'Fecal Occult Blood Test,ProstateSpecific Antigen Blood Test (PSA Test)', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(37, 'Blood Uric Acid Test', 'Gout', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(38, 'Brain Natriuretic Peptide Test', 'Heart Failure', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(39, 'C Peptide Blood Test', 'Diabetes', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(40, 'CD4 and CD8 Test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(41, 'Calcium Test', 'Heart Health', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(42, 'Cardiac Troponin test', 'Heart Health', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(43, 'Chorionic villus sampling CVS', 'Pregnancy', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(44, 'Congenital Hypothyroidism', 'Hypothyroidism', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(45, 'Creatinine clearance test for Kidney Disorders', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(46, 'Cryoglobulin Test', 'Leukemia,Lymphoma', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(47, 'Cystic Fibrosis', 'Cystic Fibrosis', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(48, 'Direct Antiglobulin Test', 'Hemolytic Anemia', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(49, 'FASTING BLOOD GLUCOSE FASTING PLASMA GLUCOSE', 'Diabetes', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(50, 'Factor II Test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(51, 'Factor IX Test', 'Bleeding in the Digestive Tract,Dysfunctional Uterine Bleeding', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(52, 'Factor V Test', 'Bleeding in the Digestive Tract,Dysfunctional Uterine Bleeding', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(53, 'Factor VII Test', 'Bleeding in the Digestive Tract,Dysfunctional Uterine Bleeding', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(54, 'Factor VIII Test', 'Bleeding in the Digestive Tract,Dysfunctional Uterine Bleeding', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(55, 'Factor X Test', 'Bleeding in the Digestive Tract,Dysfunctional Uterine Bleeding', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(56, 'Factor XII Test', 'Bleeding in the Digestive Tract,Dysfunctional Uterine Bleeding', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(57, 'Fetal monitoring', 'Pregnancy', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(58, 'Fetal ultrasound', 'Pregnancy', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(59, 'Fluorescent Antinuclear Antibody FANA Test', 'Lupus (Systemic Lupus Erythematosus)', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(60, 'Functional Antithrombin III Test', 'Kidney Transplant', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(61, 'Genetic screening test', 'Pregnancy', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(62, 'Glucose challenge test', 'Diabetes,Gestational Diabetes', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(63, 'Group B strep culture', 'Pregnancy', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(64, 'HIV antibody test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(65, 'HIV viral load test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(66, 'Hemoglobin A1c HbA1c Test for Diabetes', 'Diabetes', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(67, 'Indirect Antiglobulin Test', 'Anaemia', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(68, 'Ionized Calcium Test', 'Kidney Stones', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(69, 'Lab Tests for Rheumatoid Arthritis', 'Rheumatoid Arthritis', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(70, 'Lab test for lipid profile', 'High Cholesterol (Hypercholesterolemia)', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(71, 'Leucine Aminopeptidase Urine Test', 'Cancer', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(72, 'Leucine aminopeptidase Serum Test', 'Cancer', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(73, 'Lipase Test', 'Gallbladder And Bile Duct Cancer', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(74, 'Lung Function Test for Asthma', 'Asthma', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(75, 'Lung Function Tests for Asthma', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(76, 'Maple Serum Urine Disease', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(77, 'Oral Glucose Tolerance Test', 'Diabetes', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(78, 'PSA LABORATORY TEST FOR PROSTATE CANCER', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(79, 'Peripheral Smear for Malarial Parasite', 'Malaria', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(80, 'Phenylketonuria', 'Phenylketonuria PKU', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(81, 'Prenatal Screening', 'Pregnancy', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(82, 'Rapid Diagnostic Tests for Malaria', 'Malaria', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(83, 'Serotonin Test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(84, 'Serum Cortisol Test', 'Weight Management', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(85, 'Serum Estradiol Test', 'STDs', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(86, 'Serum Osmolality Test', 'Weight Management', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(87, 'Sickle Cell Anaemia', 'Sickle Cell Anemia', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(88, 'Skin Test For Allergy', 'Allergy', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(89, 'Smooth Muscle Antibody Test', 'Hepatitis Overview', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(90, 'Stool Trypsin And Chymotrypsin Test', 'Cystic Fibrosis', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(91, 'Thyroid AntibodiesTest', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(92, 'Thyroid Stimulating Immunoglobulin Test', 'Graves Disease', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(93, 'Thyroid stimulating hormoneTest', 'Hypothyroidism', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(94, 'Thyroperoxidase Antibody Test', 'Hypothyroidism', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(95, 'ThyroxineTest', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(96, 'Total Bilirubin test for Liver Disorders', 'Liver Cancer', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(97, 'Triiodothyronine Test', 'Hypothyroidism', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(98, 'Urine Catecholamines Test', 'Brain Cancer ,Brain Tumor', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(99, 'Urine Chloride Test 24 Hour', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(100, 'Urine Copper Test 24 Hour', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(101, 'Urine Cortisol Test', 'Weight Management', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(102, 'Urine Ketones Test', 'Diabetic Ketoacidosis', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(103, 'Urine MicroalbuminTest', 'Kidney Failure', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(104, 'Urine Osmolality Test', 'Weight Management', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(105, 'Urine Phosphorus Test', 'Urinary Tract Infection in Men,Urinary Tract Infection in Women', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(106, 'Urine Porphyrins Test', 'Porphyria', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(107, 'Urine Potassium Test', 'Kidney Stones,Urinary Incontinence,Urinary Retention', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(108, 'Urine pH Test', 'Kidney Stones', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(109, 'Vitamin A Test', NULL, '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(110, 'Vitamin B12 Test', 'Aplastic Anemia,Sickle Cell Anemia,Vitamin B12 Deficiency', '2017-07-05 19:28:00', '2017-07-05 19:28:00'),
(111, 'Vitamin D Test', 'Skin conditions', '2017-07-05 19:28:00', '2017-07-05 19:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Allergy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(2, 'Allergy Proofing Your Home', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(3, 'Anaphylaxis (Severe Allergic Reaction)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(4, 'Chronic Rhinitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(5, 'Cold / Flu / Allergies', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(6, 'Food Allergy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(7, 'Hives', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(8, 'Latex Allergy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(9, 'Sinusitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(10, 'Alzheimer\'s Disease', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(11, 'Alzheimer\'s Warning Signs', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(12, 'Bladder Incontinence', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(13, 'Dementia', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(14, 'Arthritis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(15, 'Ankylosing Spondylitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(16, 'Fibromyalgia', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(17, 'Gout', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(18, 'Lupus', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(19, 'Osteoarthritis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(20, 'Psoriatic Arthritis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(21, 'Reactive Arthritis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(22, 'Rheumatoid Arthritis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(23, 'Air Filtration', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(24, 'Asthma', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(25, 'Asthmatic Complexities', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(26, 'Asthma: Over The Counter Treatment', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(27, 'Cancer Causes', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(28, 'Cancer Detection', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(29, 'Cancer - General', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(30, 'Brain Tumor', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(31, 'Bladder Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(32, 'Breast Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(33, 'Cervical Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(34, 'Colon Polyps', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(35, 'Liver Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(36, 'Lung Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(37, 'Pancreatic Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(38, 'Prostate Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(39, 'Skin Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(40, 'Testicular Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(41, 'Cholesterol', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(42, 'Fiber', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(43, 'Heart Attack', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(44, 'Stroke Prevention', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(45, 'Acupuncture', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(46, 'Acute and Chronic Pain', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(47, 'Cortisone Injection', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(48, 'Degenerative Disc', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(49, 'Low Back Pain', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(50, 'Aches, Pain, Fever', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(51, 'Chronic Cough', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(52, 'Cold, Flu, Allergy: (OTC Remedies)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(53, 'Common Cold', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(54, 'Encephalitis and Meningitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(55, 'Eustachian Tube Problems', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(56, 'Flu (Influenza)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(57, 'Flu Vaccination', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(58, 'Immunizations', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(59, 'Pneumonia', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(60, 'Pneumonia Vaccination', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(61, 'SARS', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(62, 'Sinusitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(63, 'Sore Throat', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(64, 'Strep Throat', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(65, 'Swine Flu (H1N1 Virus)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(66, 'Tonsillitis and Adenoiditis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(67, 'Bipolar Disorder', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(68, 'Depression', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(69, 'Dysthymia', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(70, 'Panic Disorder', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(71, 'Post Traumatic Stress Disorder', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(72, 'Seasonal Affective Disorder (SAD)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(73, 'Stress', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(74, 'Diabetes Mellitus', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(75, 'Diabetic Home Care and Monitoring', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(76, 'Diabetes Insipidus', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(77, 'Diabetes Treatment', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(78, 'Insulin', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(79, 'Insulin Pump', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(80, 'Abdominal Pain', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(81, 'Appendicitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(82, 'Ulcerative Colitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(83, 'Constipation', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(84, 'Crohn\'s Disease', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(85, 'Diarrhea', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(86, 'Dyspepsia (Indigestion)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(87, 'Inflammatory Bowel Disease (IBD)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(88, 'Intestinal Gas', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(89, 'GERD (Heartburn, Acid Reflux)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(90, 'Hemorrhoids', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(91, 'Irritable Bowel Syndrome (IBS)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(92, 'Lactose Intolerance', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(93, 'Laxatives for Constipation', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(94, 'Motion Sickness', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(95, 'Ulcerative Colitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(96, 'Disease Prevention', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(97, 'Exercise & Activity', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(98, 'First Aid', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(99, 'Home and Family', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(100, 'Nutrition: Healthy Eating', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(101, 'Obesity', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(102, 'Cataracts', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(103, 'Eye Allergy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(104, 'Eye Care', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(105, 'Glaucoma', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(106, 'LASIK Eye Surgery', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(107, 'Macular Degeneration', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(108, 'Pink Eye (Conjunctivitis)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(109, 'Retinal Detachment', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(110, 'Sjogren\'s Syndrome', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(111, 'Angina', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(112, 'Atherosclerosis Prevention', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(113, 'Congenital Heart Disease', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(114, 'Coronary Angiogram', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(115, 'Coronary Angioplasty', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(116, 'Coronary Artery Bypass', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(117, 'Heart Attack', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(118, 'Heart Murmurs', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(119, 'Heart Palpitations', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(120, 'High Cholesterol', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(121, 'Stroke', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(122, 'Cirrhosis of the Liver', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(123, 'Essential Mixed Cryoglobulinemia', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(124, 'Hepatitis B', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(125, 'Hepatitis C', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(126, 'Hepatitis A and B Immunizations', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(127, 'Jaundice in NewBorns', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(128, 'Lichen Planus', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(129, 'High Blood Pressure (Hypertension)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(130, 'High Blood Pressure Treatment', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(131, 'Pulmonary Hypertension', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(132, 'Human Immunodeficiency Virus (HIV)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(133, 'Acquired Immunodeficiency Syndrome (AIDS)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(134, 'Botulism', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(135, 'Dengue Fever', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(136, 'Mad Cow Disease', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(137, 'Malaria', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(138, 'Meningitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(139, 'MRSA', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(140, 'Rabies', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(141, 'Staph Infection', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(142, 'Thrush', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(143, 'West Nile Virus', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(144, 'Cirrhosis of the Liver', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(145, 'Non-alcoholic Fatty Liver', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(146, 'Hemochromatosis (Iron Overload)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(147, 'Hepatitis B', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(148, 'Hepatitis C', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(149, 'Jaundice', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(150, 'Liver Blood Tests', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(151, 'Primary Biliary Cirrhosis (PBC)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(152, 'Primary Sclerosing Cholangitis (PSC)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(153, 'Asthma', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(154, 'Chronic Obstructive Pulmonary Disease (COPD)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(155, 'Emphysema', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(156, 'Lung Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(157, 'Pneumonia', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(158, 'Severe Acute Respiratory Syndrome (SARS)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(159, 'Smoker\'s Lung Photo Essay', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(160, 'Smoking and Quitting Smoking', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(161, 'Hormone Creams', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(162, 'Hormone Replacement Therapy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(163, 'Hot Flashes - Alternative Treatments', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(164, 'Menopause', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(165, 'Vitamin and Calcium Supplements', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(166, 'Angina', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(167, 'Benign Prostatic Hyperplasia (BPH)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(168, 'Erectile Dysfunction (Impotence)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(169, 'Hair Loss (Baldness)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(170, 'Prostate Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(171, 'Prostatitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(172, 'Sexually Transmitted Diseases', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(173, 'Testicular Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(174, 'Vasectomy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(175, 'Viagra', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(176, 'Anxiety', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(177, 'Body Dysmorphic Disorder', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(178, 'Panic Attacks', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(179, 'Postpartum Depression', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(180, 'Separation Anxiety', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(181, 'Stress', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(182, 'Cluster Headaches', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(183, 'Headache', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(184, 'Migraine Headaches and Prevention', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(185, 'Tension Headache', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(186, 'Bone Density', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(187, 'Calcium Supplements', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(188, 'Estradiol', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(189, 'Hormone Replacement Therapy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(190, 'Menopause', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(191, 'Osteoporosis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(192, 'Hyperactivity Disorder (ADHD) in Children', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(193, 'Bedwetting', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(194, 'Birth Defects', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(195, 'Chickenpox', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(196, 'Colic', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(197, 'Diaper Rash', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(198, 'Lactose Intolerance', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(199, 'Nosebleeds', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(200, 'Pink Eye', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(201, 'Measles', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(202, 'Mumps', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(203, 'Tonsillectomy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(204, 'Vaccinations and Immunizations', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(205, 'Arthroscopy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(206, 'Celebrex', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(207, 'Cortisone Injection', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(208, 'Remicade', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(209, 'Rheumatoid Arthritis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(210, 'Total Hip Replacement', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(211, 'Total Knee Replacement', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(212, 'Alzheimer\'s Disease', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(213, 'Anemia', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(214, 'Angina', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(215, 'Cataracts', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(216, 'Dementia', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(217, 'Glaucoma', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(218, 'Macular Degeneration', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(219, 'Hearing Loss', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(220, 'Heart Attack Prevention', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(221, 'Sleep Disturbance', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(222, 'Stroke', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(223, 'Acne', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(224, 'Actinic Keratosis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(225, 'Atopic Dermatitis (Eczema)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(226, 'Boils', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(227, 'Bumps and Bruises', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(228, 'Burns', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(229, 'Dandruff', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(230, 'Hives', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(231, 'Itch', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(232, 'Keloid', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(233, 'Melanoma', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(234, 'Nail Fungus', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(235, 'Poison Ivy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(236, 'Psoriasis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(237, 'Rash (Dermatitis)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(238, 'Rosacea', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(239, 'Scleroderma', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(240, 'Shingles', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(241, 'Skin Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(242, 'Warts', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(243, 'Wrinkles', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(244, 'Insomnia', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(245, 'Insomnia Treatment', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(246, 'Jet Lag', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(247, 'Narcolepsy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(248, 'Sleep', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(249, 'Sleep Apnea', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(250, 'Snoring (Somnoplasty)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(251, 'Hashimoto\'s Thyroiditis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(252, 'Hyperthyroidism', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(253, 'Hypothyroidism', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(254, 'Hypothyroidism During Pregnancy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(255, 'Synthroid (levothyroxine sodium)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(256, 'Thyroid Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(257, 'Thyroid Nodules', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(258, 'Bladder Infection', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(259, 'Bladder Spasms', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(260, 'Blood In Urine (Hematuria)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(261, 'Cystinuria', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(262, 'Interstitial Cystitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(263, 'Kegel Exercises for Men', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(264, 'Kegel Exercises for Women', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(265, 'Kidney Stones', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(266, 'Nerve Disease and Bladder Control', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(267, 'Overactive Bladder', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(268, 'Prostatitis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(269, 'Urethral Stricture', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(270, 'Urinalysis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(271, 'Urinary Incontinence in Men', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(272, 'Urinary Incontinence in Women', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(273, 'Urinary Retention', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(274, 'Urinary Tract Infections', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(275, 'Anorexia Nervosa', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(276, 'Bulimia Nervosa', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(277, 'Calories Burned During Exercise', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(278, 'Cellulite', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(279, 'Childhood Obesity', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(280, 'Diet & Weight Loss', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(281, 'Diet & Weight Management Health Center', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(282, 'Obesity and Weight Loss', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(283, 'Birth Control Methods', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(284, 'Breast Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(285, 'Breastfeeding', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(286, 'Hormone Therapy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(287, 'Hysterectomy', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(288, 'Menopause', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(289, 'Miscarriage', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(290, 'Osteoporosis', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(291, 'Ovarian Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(292, 'Ovarian Cysts', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(293, 'PMS (Premenstrual Syndrome)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(294, 'Sexually Transmitted Diseases (STDs)', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(295, 'Uterine Cancer', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(296, 'Varicose Veins', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(297, 'Yeast Infections', '2017-07-26 04:08:42', '2017-07-26 04:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` int(3) NOT NULL,
  `is_married` int(3) NOT NULL,
  `mobile` int(15) NOT NULL,
  `alt_mobile` int(15) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` int(3) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `dob`, `gender`, `is_married`, `mobile`, `alt_mobile`, `address`, `blood_group`, `designation`, `degree`, `hospital_id`, `created_at`, `updated_at`) VALUES
(2, 'mr. Doctor', '2017-07-02', 1, 1, 111, 111, NULL, 6, 'MBBS', 'Lecturer', NULL, '2017-07-04 11:39:48', '2017-07-04 11:39:48'),
(3, 'doctor 1', '2017-07-11', 1, 2, 98484, 864864, 'JU', 2, NULL, NULL, NULL, '2017-07-24 11:50:39', '2017-07-24 11:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `doctorassistant`
--

CREATE TABLE `doctorassistant` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` int(3) NOT NULL,
  `is_married` int(3) NOT NULL,
  `mobile` int(15) NOT NULL,
  `alt_mobile` int(15) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` int(3) NOT NULL,
  `hospital_id` int(10) DEFAULT NULL,
  `doctor_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctorassistant`
--

INSERT INTO `doctorassistant` (`id`, `name`, `dob`, `gender`, `is_married`, `mobile`, `alt_mobile`, `address`, `blood_group`, `hospital_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 'da1', '2017-07-04', 1, 1, 1541541, 41541, 'dhaka', 2, 1, 1, '2017-07-24 23:43:17', '2017-07-24 23:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doctor_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lab_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documenttype`
--

CREATE TABLE `documenttype` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documenttype`
--

INSERT INTO `documenttype` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Prescription', '2017-07-04 11:54:47', '2017-07-04 11:54:47'),
(2, 'Lab Report', '2017-07-04 11:55:14', '2017-07-04 11:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hospital_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `hospital_type`, `address`, `phone`, `alt_phone`, `registration_no`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Apollo Hospitals Dhaka', '6', 'Plot: 81, Block: E, Bashundhara R/A, Dhaka 1229, Bangladesh, Dhaka 1229', '02-55037242', NULL, NULL, 'coo@apollodhaka.com', '2017-07-04 13:14:27', '2017-07-04 13:14:27'),
(2, 'Dhaka Shishu Hospital', '7', 'Syed Mahbub Morshed Ave, Dhaka 1207', '02-8116061', NULL, NULL, 'dhakashishu2010@gmail.com', '2017-07-04 13:16:09', '2017-07-04 13:16:09'),
(3, 'United Hospital Limited', '7', 'Plot 15, Rd No 71, Dhaka 1212', '02-8836000', NULL, NULL, NULL, '2017-07-04 13:17:34', '2017-07-04 13:17:34'),
(4, 'Ispahani Islamia Eye Institute and Hospital', '2', 'Krishi Khamar Rd, Dhaka 1215', '02-8112856', NULL, NULL, NULL, '2017-07-04 13:18:13', '2017-07-04 13:18:13'),
(5, 'Ahsania Mission Cancer and General Hospital', '5', 'Plot 3 IUBAT Rd, Dhaka 1230', '02-8119521', NULL, NULL, NULL, '2017-07-04 13:19:58', '2017-07-04 13:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalassistant`
--

CREATE TABLE `hospitalassistant` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` int(3) NOT NULL,
  `is_married` int(3) NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `alt_mobile` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` int(3) NOT NULL,
  `hospital_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hospitalassistant`
--

INSERT INTO `hospitalassistant` (`id`, `name`, `dob`, `gender`, `is_married`, `mobile`, `alt_mobile`, `address`, `blood_group`, `hospital_id`, `created_at`, `updated_at`) VALUES
(1, 'ha1', '2017-07-04', 1, 2, '015', '899', 'du', 2, 2, '2017-07-24 23:37:37', '2017-07-24 23:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `hospitaltype`
--

CREATE TABLE `hospitaltype` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hospitaltype`
--

INSERT INTO `hospitaltype` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'General Hospital', '2017-07-04 12:08:48', '2017-07-04 12:09:11'),
(2, 'Eye Hospital', '2017-07-04 12:09:02', '2017-07-04 12:09:02'),
(3, 'Cardiology Hospital', '2017-07-04 12:09:56', '2017-07-04 12:12:56'),
(4, 'Neurology Hospital', '2017-07-04 12:12:50', '2017-07-04 12:12:50'),
(5, 'Cancer Hospital', '2017-07-04 12:13:14', '2017-07-04 12:13:14'),
(6, 'Specialized Hospital', '2017-07-04 13:12:41', '2017-07-04 13:12:41'),
(7, 'Child Hospital', '2017-07-04 13:15:16', '2017-07-04 13:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hospital_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lab_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `name`, `hospital_id`, `lab_type`, `address`, `phone`, `alt_phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'x lab', NULL, '1', 'dahak', '4566987', NULL, NULL, '2017-07-24 23:40:12', '2017-07-24 23:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `labassistant`
--

CREATE TABLE `labassistant` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` int(3) NOT NULL,
  `is_married` int(3) NOT NULL,
  `mobile` int(15) NOT NULL,
  `alt_mobile` int(15) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` int(3) NOT NULL,
  `hospital_id` int(10) NOT NULL,
  `lab_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labassistant`
--

INSERT INTO `labassistant` (`id`, `name`, `dob`, `gender`, `is_married`, `mobile`, `alt_mobile`, `address`, `blood_group`, `hospital_id`, `lab_id`, `created_at`, `updated_at`) VALUES
(1, 'la1', '2017-07-04', 1, 1, 45164187, 4541541, 'Dhaka', 1, 2, 1, '2017-07-24 23:41:06', '2017-07-24 23:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `labtype`
--

CREATE TABLE `labtype` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labtype`
--

INSERT INTO `labtype` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Blood test', '2017-07-04 12:15:06', '2017-07-04 12:15:06'),
(2, 'Urine test', '2017-07-04 12:15:22', '2017-07-04 12:15:22'),
(3, 'Tumor markers', '2017-07-04 12:15:30', '2017-07-04 12:15:30'),
(4, 'Ultrasonography', '2017-07-04 12:17:28', '2017-07-04 12:17:28'),
(5, 'X-Ray', '2017-07-04 12:18:06', '2017-07-04 12:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(10) UNSIGNED NOT NULL,
  `drug_for` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `drug_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contains` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `drug_for`, `drug_class`, `brand_name`, `contains`, `type`, `manufacturer`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Drugs for hypertension', 'Osmotic diuretics', 'OSMOSOL 20%', 'Mannitol 200gm (20%)/liter', 'I.V Infusion', 'Beximco Infusion Ltd.', '500ml bot with set: 126.40 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(2, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'DINOVO 375/20', 'Naproxen sodium 375mg & esomeprazole 20mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd', '375mg x 50s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(3, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'DINOVO 500/20', 'Naproxen sodium 500mg & esomeprazole 20mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd', '500mg x 50s pack: 500.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(4, 'Analgesics & Antipyretics', 'Opoid analgesics', 'NAPADOL', 'Paracetamol 325mg & tramadol 37.5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(5, 'Drugs for hypertension', 'Angiotensin-converting enzyme (ACE) inhibitors', 'CARDOPRIL', 'Captopril 25mg & 50mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '25mg x 100s pack: 301.00 IP; 50mg x 100s pack: 602.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(6, 'Drugs for hypertension', 'Angiotensin-converting enzyme (ACE) inhibitors', 'ENARIL', 'Enalapril maleate 5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '5mgx 100s: 100.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(7, 'Drugs for hypertension', 'Angiotensin-converting enzyme (ACE) inhibitors', 'NEOPRIL', 'Lisinopril 5mg & 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '5mg x 100s: 301.00 IP; 10mg x 50s: 301.00 IP;', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(8, 'Drugs for hypertension', 'Angiotensin-converting enzyme (ACE) inhibitors', 'PRIMACE', 'Ramipril BP 1.25mg, 2.5mg & 5mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '1.25mg x 30s:75.00 IP 2.5mg x 30s:150.00 IP 5mg x 30s: 240.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(9, 'Drugs for hypertension', 'Angiotensin-II receptor blocker', 'PROSAN', 'Losartan potassium INN 25mg & 50mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '25mg x 50s pack: 225.00 IP 50mg x 50s pack: 400.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(10, 'Drugs for emetics', 'Prokinetic drugs', 'DEFLUX', 'Domperidone maleate 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 200.00 MRP; 150s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(11, 'Drugs for emetics', 'Prokinetic drugs', 'DEFLUX DT', 'Domperidone maleate 20mg/tablet (dispersible)', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(12, 'Drugs for emetics', 'Prokinetic drugs', 'DEFLUX', 'Domperidone 5mg/5ml', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 38.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(13, 'Drugs for emetics', 'Prokinetic drugs', 'DEFLUX', 'Domperidone 5mg/ml', 'Drop', 'Beximco Pharmaceuticals Ltd.', '15ml drop: 20.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(14, 'Drugs for peptic ulcer', 'H2 antagonists', 'YAMADIN', 'Famotidine 20mg & 40mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '20mg x 200s pack: 380.00 MRP  40mg x 100s pack: 382.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(15, 'Drugs for peptic ulcer', 'H2 antagonists', 'NEOCEPTIN-R', 'Ranitidine 150mg and 300 mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '150mg x 150s pack: 375.00 MRP 300mg x 100s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(16, 'Drugs for peptic ulcer', 'H2 antagonists', 'NEOCEPTIN-R', 'Ranitidine 75mg/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot : 45.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(17, 'Drugs for peptic ulcer', 'H2 antagonists', 'NEOCEPTIN-R', 'Ranitidine Hydrochloride 50mg in 100ml(0.5mg/ml)', 'I.V Infusion', 'Beximco Pharmaceuticals Ltd.', '100ml bottle:101.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(18, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'AZMASOL', 'Salbutamol 100 mcg/puff or actuation', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '200 doses unit: 140.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(19, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'AZMASOL', 'Salbutamol 100 mcg/puff or actuation: each canister contains 200 metered doses', 'Inhaler (Refill Can)', 'Beximco Pharmaceuticals Ltd.', '200 doses canister: 100.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(20, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'AZMASOL HFA', 'Salbutamol 100 mcg/puff or actuation & HFA (hydrofluoroalkane) as propellant', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '200 doses unit: 175.00 MRP; 300 doses unit: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(21, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'AZMASOL HFA', 'Salbutamol 100 mcg/puff or actuation: each canister contains 200 metered doses & HFA (hydrofluoroalkane) as propellant', 'Inhaler (Refill Can)', 'Beximco Pharmaceuticals Ltd.', '200 doses canister: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(22, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'BRONKOLAX-2', 'Salbutamol 2mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 26.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(23, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'BRONKOLAX-4', 'Salbutamol 4mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 34.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(24, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'BRONKOLAX', 'Salbutamol 2mg/5ml syrup', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 22.93 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(25, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'RESPIRA', 'Levosalbutamol sulphate INN equivalent to 1mg & 2mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '1mg x 100s pack: 90.00 MRP 2mg x 100s pack: 170.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(26, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'RESPIRA', 'Levosalbutamol sulphate INN equivalent to 1mg/5ml syrup', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(27, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'RESPIRA', 'Levosalbutamol sulphate INN equivalent to 50mcg/puff or dose', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '200 doses unit: 200.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(28, 'Drugs for asthma & prophylaxis', 'Long-acting selective beta2-adrenoceptor stimulants', 'BEXITROL', 'Salmeterol xinafoate 25mcg/puff or dose', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '120 inhalations unit: 190.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(29, 'Drugs for peptic ulcer', 'Anticholinergics(antimuscarinics)', 'LOVERIN', 'Dicycloverine hydrochloride BP 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50s pack:100.50 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(30, 'Drugs for peptic ulcer', 'Anticholinergics(antimuscarinics)', 'LOVERIN', 'Dicycloverine hydrochloride BP 10mg/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '50ml bot: 30.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(31, 'Drugs for asthma & prophylaxis', 'Anticholinergic bronchodilators', 'IPRAMID', 'Ipratropium bromide 20mcg/puff (spray); Each canister of Ipramid inhaler contains 4mg of ipratropium bromide BP', 'Oral inhaler', 'Beximco Pharmaceuticals Ltd.', '200 puffs inhaler: 200.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(32, 'Drugs for asthma & prophylaxis', 'Anticholinergic bronchodilators', 'TRIOMID', 'Tiotropium bromide monohydrate INN 9mcg/puff', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '120 puffs unit: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(33, 'Drugs for asthma & prophylaxis', 'Methyl xanthine derivatives', 'LARNOX-LA', 'Aminophylline BP 350mg/tablet', 'Tablet (sustained release-long acting)', 'Beximco Pharmaceuticals Ltd.', '350mg x 50s pack: 111.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(34, 'Drugs for asthma & prophylaxis', 'Combined bronchodilators', 'IPRASOL', 'salbutamol BP 100 mcg & ipratropium bromide BP 20 mcg/ actuation or puff', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '200 puffs unit: 230.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(35, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'DECOMIT', 'Decomit 100: Beclomethasone dipropionate 100 mcg/ puff or actuation; Decomit 250: Beclomethasone dipropionate 250 mcg/puff or actuation', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', 'Decomit 100 x 200 doses unit: 200.00 IP; Decomit 250 x 200 doses unit: 250.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(36, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'DECOMIT', 'Decomit 50 HFA: Beclomethasone dipropionate 50 mcg/puff or actuation & HFA (hydrofluoroalkane) as propellant; Decomit 100 HFA: Beclomethasone dipropionate 100 mcg/puff or actuation & HFA (hydrofluoroalkane) as propellant', 'HFA Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', 'Decomit 50 HFA x 200 doses unit: 220.00 IP; Decomit 100 HFA x 200 doses unit: 270.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(37, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'AERONID', 'Budesonide BP 200 mcg per metered dose or actuation (puff)', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '200mcg x 120 doses (puffs): 400.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(38, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'CESONIDE 80', 'Ciclesonide 80 mcg/actuation or metered dose (or puff )', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '80mcg x 120 doses unit: 250.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(39, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'CESONIDE 160', 'Ciclesonide 160 mcg/actuation or metered dose (or puff)', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '160mcg x 120 doses unit: 350.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(40, 'Drugs for asthma & prophylaxis', 'Cromoglycate & related drugs', 'TOFEN', 'Ketotifen fumerate 1mg/5ml syrup', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 45.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(41, 'Drugs for asthma & prophylaxis', 'Cromoglycate & related drugs', 'TOFEN', 'Ketotifen fumerate 1mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '200s pack: 400.00 IP; 100s pack: 200.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(42, 'Drugs for peptic ulcer', 'Antacids', 'FLATAMEAL DS', 'Dried aluminium hydroxide gel BP & magnesium hydroxide BP + Simethicone 30mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '200s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(43, 'Drugs for peptic ulcer', 'Antacids', 'FLATAMEAL DS', 'Dried aluminium hydroxide gel BP & magnesium hydroxide BP + Simethicone 30mg/5ml', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '200ml bot: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(44, 'Drugs for peptic ulcer', 'Antacids', 'LACTAMEAL', 'Dried aluminium hydroxide gel BP 200mg, magnesium hydroxide BP 200mg / tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '200s pack: 106.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(45, 'Drugs for peptic ulcer', 'Antacids', 'LACTAMEAL', 'Aluminium hydroxide gel. BP125mg, magnesium hydroxide BP 225mg /5ml', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '200ml bot: 33.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(46, 'Drugs for peptic ulcer', 'Antacids', 'NEODROP', 'Simethicone USP 67mg/ml', 'Drop', 'Beximco Pharmaceuticals Ltd.', '15ml drop:30.00', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(47, 'Drugs for peptic ulcer', 'Anticholinergics(antimuscarinics)', 'SPANIL', 'Hyoscine butylbromide 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 344.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(48, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'TAVERIN', 'Drotaverine hydrochloride 40mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 175.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(49, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'ROSTIL', 'Mebeverine hydrochloride 135mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(50, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'EMONIUM', 'Tiemonium methylsulfate 50mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50s pack: 250.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(51, 'Drugs for peptic ulcer', 'Ulcer protective', 'GASTALFET', 'Sucralfate 500mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 402.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(52, 'Drugs for peptic ulcer', 'Anti H pylori drugs', 'NEOKIT', '1 omeprazole 20mg capsule, 1 metronidazole 400mg tablet & 1 clarithromycin 500mg tablet /kit', 'Kit', 'Beximco Pharmaceuticals Ltd.', '14s pack: 770.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(53, 'Drugs for constipation', 'Osmotic purgatives', 'SERELOSE', 'lactulose USP 3.35gm/concentrate oral solution; 1 tsf (5ml)', 'Oral solution', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(54, 'Drugs for asthma & prophylaxis', 'Leukotriene receptor antagonists', 'MONOCAST', 'Montelukast sodium INN 4mg, 5mg & 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '4mg x 20s pack: 110.00 MRP; 5mg x 20s pack: 150.00 MRP; 10mg x 20s pack: 280.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(55, 'Drugs for cough & cold', 'Cough suppressants', 'DEXTROMETHORPHAN', 'Dextromethorphan 10mg/5mi syrup', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(56, 'Drugs for cough & cold', 'Combined cough suppressants', 'PRUDEX', 'Dextromethorphan hydrobromide 10mg, pseudoephedrine hydrochloride 30mg & triprolidine hydrochloride 1.25mg/5ml syrup', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 60.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(57, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'MUCOSOL', 'Ambroxol hydrochloride BP 15mg/5ml syrup', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(58, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'MUCOSOL', 'Ambroxol hydrochloride BP 6mg/ml drop', 'Drop', 'Beximco Pharmaceuticals Ltd.', '15ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(59, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'SPULYT', 'Bromhexine hydrochloride BP 4mg/5ml syrup', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 40.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(60, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'PROCEPTIN', 'Omeprazole 20mg & 40mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '20mg x 100s pack: 500.00 MRP; 20mg x 60s pack: 300.00 MRP; 40mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(61, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'NOKOF', 'Carbocisteine BP 125mg/5ml syrup', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 30.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(62, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'NOKOF DS', 'Carbocisteine BP 250mg/5ml syrup', 'Syrup(double strength)', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 40.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(63, 'Drugs for cough & cold', 'Combined cough expectorants', 'TRIPEC', 'Pseudoephedrine BP 30mg, guaiphenesin BP 100mg & triprolidine BP 1.25mg/5ml syrup', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 55.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(64, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'OPTON', 'Esomeprazole INN 20mg & 40mg/tablet', 'Tablet(enteric coated )', 'Beximco Pharmaceuticals Ltd.', '20mg x 30s pack: 150.00 IP; 20mg x 60s pack: 300.00 IP; 40mg x 30s pack: 240.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(65, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'PROTOLAN', 'Lansoprazole 15mg & 30mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '15mg x 30s pack: 120.00 IP; 30mg x 30s pack: 180.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(66, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'PANTOBEX', 'Pantoprazole sodium sesquihydrate 20mg & 40mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '20mg x 100s pack: 400.00 IP; 40mg x 50s pack: 300.00 IP; 40mg x 100s pack: 600.00 IP;', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(67, 'Drugs for diarrhoea', 'Anti-diarrhoeal Antiprotozoal', 'NITAXIDE', 'Nitazoxanide INN l00mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '30ml bot: 35.00 IP; 60ml bot: 50.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(68, 'Local preparation for anal and rectal disorder', 'Compound steroidal preprations', 'ANUSTAT', 'Aesculin 1%, cinchocaine HCl 0.5%, hydrocortisone 0.5%, neomycine sulphate 1%/ointment preparation', 'Ointment', 'Beximco Pharmaceuticals Ltd.', '15gm tube: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(69, 'Drug affecting intestinal secretions', 'Digestive Enzyme', 'ZYMET', 'Pancreatin 325mg/tablet', 'Tablet(enteric coated )', 'Beximco Pharmaceuticals Ltd.', '100s pack: 250.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(70, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'BEXITROL-F', 'Bexitrol-F 25/50 - contains 25mcg of salmeterol xinafoate INN and 50mcg of fluticasone propionate BP per actuation', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '120 doses unit x1s: 500.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(71, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'BEXITROL-F', 'Bexitrol-F 25/125 - contains 25mcg of salmeterol xinafoate INN and 125mcg of fluticasone propionate BP per actuation', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '120 doses unit x1s: 500.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(72, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'BEXITROL-F', 'Bexitrol-F 25/250 - contains 25mcg of salmeterol xinafoate INN and 250mcg of fluticasone propionate BP per actuation', 'Inhaler (MDI)', 'Beximco Pharmaceuticals Ltd.', '120 doses unit x1s: 750.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(73, 'Drugs for angina & ischaemic heart diseases', 'Nitrates: Coronary vasodilators', 'NITROSOL', 'Glyceryl trinitrate (nitroglycerin) 400mcg/ metered dose aerosol spray', 'Aerosol Spray', 'Beximco Pharmaceuticals Ltd.', '200 doses unit: 215.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(74, 'Drugs for angina & ischaemic heart diseases', 'Nitrates: Coronary vasodilators', 'MONATE', 'Isosorbide mononitrate 20mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 142.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(75, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'AMDOCAL', 'Amlodipine 5mg & 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '5mg x 100s pack: 500.00 IP; 10mg x 60s pack: 420.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(76, 'Drugs for peripheral and cerebral vasodilatation & neurosensory oxygenator', 'Cerebral vasodilator & Neurosensory oxygenator drugs', 'CERIVIN', 'Vinpocetine (apovincaminic ethylester) INN 5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 402.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(77, 'Drugs for peripheral and cerebral vasodilatation & neurosensory oxygenator', 'Peripheral Vasodilator drugs: Intermitent Claudication', 'ZOCIL', 'Cilostazol INN 50mg & 100mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50mg x 30s pack: 450.00 IP ; 100mg x 20s pack: 500.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(78, 'Drugs for peripheral and cerebral vasodilatation & neurosensory oxygenator', 'Drugs for muscular energy metabolism', 'CARNITAB', 'Levocarnitine USP 330mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(79, 'Drugs for hypertension', 'Potassium-sparing diuretics with other diuretics', 'RESITONE', 'Frusemide 20mg & spironolactone 50mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 180.60 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(80, 'Drugs for arrhythmias', 'Agents widening AP (Potassium channel blockers)', 'PACET', 'Amiodarone hydrochloride BP 100mg & 200mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100mg x 30s pack: 150.60 IP; 200mg x 30s pack: 301.20 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(81, 'Drugs for hypertension', 'Beta-adrenoceptor blocking drugs', 'LONET', 'Atenolol 50mg & 100mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50mg x 100s pack: 77.00 MRP; 100mg x 100s pack: 137.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(82, 'Drugs for hypertension', 'Beta-adrenoceptor blocking drugs', 'DILAPRESS', 'Carvedilol 6.25mg, 12.5mg & 25mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '6.25mg x 30s pack: 90.00 IP; 12.5mg x 30s pack: 150.00 IP; 25mg x 30s pack: 240.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(83, 'Drugs for hypertension', 'Beta-adrenoceptor blocking drugs', 'LABETA', 'Labetalol hydrochloride USP 100mg & 200mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100mg x 60s pack: 361.20 MRP; 200mg x 30s pack: 301.20 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(84, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antiplatelet drugs', 'ODREL', 'Clopidogrel bisulphate INN equivalent to clopidogrel 75mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(85, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antiplatelet drugs', 'ODREL Plus', 'Clopidogrel bisulphate INN equivalent to clopidogrel 75mg & aspirin BP 75mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '30s pack: 330.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(86, 'Drugs for lipid regulation', 'Ezetimibe', 'EZETA', 'Ezetimibe INN 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '20s pack: 200.80 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(87, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'AMDOCAL Plus 25', 'Atenolol 25mg & amlodipine 5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 157.50 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(88, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'AMDOCAL Plus 50', 'Atenolol 50mg & amlodipine 5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '60s pack: 360.30 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(89, 'Drugs for lipid regulation', 'Fibrates', 'LOFAT', 'Fenofibrate BP 200mg/capsule', 'Capsule (Micronized)', 'Beximco Pharmaceuticals Ltd.', '30s pack: 210.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(90, 'Drugs for lipid regulation', 'Statins', 'ATOVA', 'Atorvastatin 10mg, 20mg & 40mg /tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '10mg x 30s pack: 300.00 IP; 20mg x 20s pack: 360.00 IP; 40mg x 20s pack: 480.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(91, 'Drugs for lipid regulation', 'Statins', 'SIMASTIN', 'Simvastatin 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 451.80 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(92, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'AMDOPRIL 10/2.5', 'Benazepril 10mg & amlodipine 2.5mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '60s pack: 240.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(93, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'AMDOPRIL 10/5', 'Benazepril 10mg & amlodipine 5mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '60s pack: 360.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(94, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'AMDOPRIL 20/10', 'Benazepril 20mg & amlodipine 10mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '30s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(95, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'PROSAN HZ', 'Losartan potassium 50mg & hydrochlorothiazide 12.5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 240.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(96, 'Drugs for Sedation & Hypnosis', 'Non-Benzodiazepine hypnotics', 'S-CLON', 'Eszopiclone INN 1mg & 2mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '1mg x 60s pack: 120.60 IP ; 2mg x 30s pack: 90.30 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(97, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'ZOLAX', 'Alprazolam 0.25mg & 0.5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '0.25mg x 100s pack: 100.00 IP ; 0.5mg x 100s pack: 175.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(98, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'NIGHTUS', 'Bromazepam BP 3mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100spack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(99, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'KEOLAX', 'Clobazam 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 277.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(100, 'Drugs for psychosis', 'Atypical neuroleptic drugs', 'SENSIPIN', 'Clozapine 25mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '25mg x 30s pack: 115.20 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(101, 'Drugs for psychosis', 'Phenothiazine related drugs', 'FRENXIT', 'Flupenthixol dihydrochloride 0.5mg & melitracen hydrochloride 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '150s pack: 600.00 IP; 100s pack: 400.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(102, 'Drugs for depression', 'SSRIs & related antidepressant drugs', 'MODIPRAN', 'Fluoxetine hydrochloride 20mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '100s pack: 289.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(103, 'Drugs for depression', 'SSRIs & related antidepressant drugs', 'MELEV 20', 'Paroxetine hydrochloride 20mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 286.20 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(104, 'Drugs for depression', 'SSRIs & related antidepressant drugs', 'ATRALIN', 'Sertraline hydrochloride INN 50mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50mg x 50s pack: 250.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(105, 'Drugs for depression', 'Atypical antidepressant drugs', 'ZYBEX SR', 'Bupropion hydrochloride USP 150mg/tablet', 'Sustained Release Tablet', 'Beximco Pharmaceuticals Ltd.', '150mg x 30s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(106, 'Drugs for viral infections', 'Drugs for HIV / Antiretroviral drugs', 'AVIFANZ', 'Efavirenz INN 600mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '10s pack: 2000.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(107, 'Drugs for viral infections', 'Drugs for HIV / Antiretroviral drugs', 'AVIFIX', 'Nelfinavir mesylate 250mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '10s pack: 450.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(108, 'Drugs for viral infections', 'Drugs for HIV / Antiretroviral drugs', 'DIAVIX', 'Lamivudine INN 150mg and zidovudine USP 300mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '10s pack: 450.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(109, 'Drugs for viral infections', 'Drugs for HIV / Antiretroviral drugs', 'TRIOVIX', 'Lamivudine INN 150mg, Zidovudine USP 300mg & Nevirapine INN 200mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '10s pack: 700.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(110, 'Drugs for viral infections', 'Hepatic viral infections (Hepatitis B)', 'AVILAM', 'Lamivudine INN 150mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '10s pack: 250.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(111, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'CLOBEX', 'Cloxacillin 500mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '100s pack: 595.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(112, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'CLOBEX', 'Cloxacillin BP 125mg/5ml syrup', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100 ml bot: 43.69 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(113, 'Drugs for depression', 'Combined antidepressant drugs', 'APRESIN', 'Fluphenazine hydrochloride 0.5mg & Nortriptyline hydrochloride 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 105.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(114, 'Drugs for nausea, vomiting & vertigo', 'Anti vertigo drugs', 'INARZIN', 'Cinnarizine 15mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 90.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(115, 'Drugs for nausea, vomiting & vertigo', 'Antiemetic drugs', 'VOMEC', 'Meclizine hydrochloride 50mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '50s pack: 125.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(116, 'Drugs for nausea, vomiting & vertigo', 'Antiemetic drugs', 'ONSAT 8', 'Ondansetron hydrochloride dihydrate 8mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '8mg x 30s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(117, 'Drugs for epilepsy', 'Primary drugs', 'EPILEP', 'Carbamazepine BP 200mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50s pack: 175.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(118, 'Drugs for epilepsy', 'Primary drugs', 'EPILEP CR', 'Carbamazepine BP 200mg/tablet', 'Tablet (Controlled Release)', 'Beximco Pharmaceuticals Ltd.', '50s pack: 226.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(119, 'Drugs for epilepsy', 'Primary drugs', 'XETRIL', 'Clonazepam 0.5mg & 2mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '0.5mg x 100s pack: 300.00 IP ; 2mg x 50s pack: 250.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(120, 'Drugs for epilepsy', 'Adjunct drugs', 'EPIPEN', 'Gabapentin INN 300mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '300mg x 30s pack: 541.80 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(121, 'Drugs for neurodegenerative diseases', 'Anti – Parkinson drugs', 'REPITOL', 'Ropinirole hydrochloride INN 0.25mg & 2mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '0.25mg x 30s pack: 60.30 MRP ; 2mg x 30s pack: 301.20 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(122, 'Drugs for other CNS diseases', 'Appetite suppressant drugs', 'SIBULIN', 'Sibutramine hydrochloride monohydrate INN equivalent to 5mg sibutramine hydrochloride INN/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '60s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(123, 'Drugs for neurodegenerative diseases', 'Anti – Alzheimer drugs', 'MEMORIN', 'Donepezil hydrochloride INN 5mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '5mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(124, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'FLUBEX', 'Flucloxacillin 250mg & 500mg /capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '250mg x 50s pack: 275.00 IP ; 500mg x 30s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(125, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'FLUBEX', 'Flucloxacillin 125mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(126, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'FLUBEX DS', 'Flucloxacillin 250mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 110.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(127, 'Oral hypoglycemic drugs', 'Sulfonylureas', 'DIAPRO', 'Gliclazide 80mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50s pack: 350.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(128, 'Oral hypoglycemic drugs', 'Sulfonylureas', 'DIARYL', 'Glimepiride INN 1mg, 2mg & 3mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '1mg x 30s pack: 90.00 IP; 2mg x 30s pack: 150.00 IP; 2mg x 30s pack: 210.00 IP;', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(129, 'Oral hypoglycemic drugs', 'Sulfonylureas', 'DIACTIN', 'Glipizide 5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '5mg x 100s pack: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(130, 'Oral hypoglycemic drugs', 'Biguanides', 'INFORMET', 'Metformin hydrochloride 500mg & 850mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '500mg x 100s pack: 300.00 IP; 850mg x 60s pack: 270.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(131, 'Oral hypoglycemic drugs', 'Biguanides', 'INFORMET LA', 'Metformin hydrochloride BP 500mg/tablet', 'Tablet (Long Acting)', 'Beximco Pharmaceuticals Ltd.', '500mg x 100s pack: 500.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(132, 'Oral hypoglycemic drugs', 'Thiazolidinedione Group', 'DIAGLIT', 'Pioglitazone hydrochloride INN 15mg & 30mg /tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '15mg x 30s pack: 240.00 IP; 30mg x 30s pack: 450.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(133, 'Oral hypoglycemic drugs', 'Meglitinide Analogues', 'PREMIL', 'Repaglinide INN 0.5mg, 1mg & 2mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '0.5mg x 30s pack: 60.00 IP; 1mg x 30s pack: 90.00 IP; 2mg x 30s pack: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(134, 'Hypothalamic & Pituitary hormones & Anti oestrogens', 'Drugs for Infertility', 'FERTIL', 'Clomiphene citrate 50mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50mg x 50s pack: 251.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(135, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'TYCIL', 'Amoxycillin 500mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '500mg x 50s pack: 337.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(136, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'TYCIL', 'Amoxycillin 125mg/5ml', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 46.43 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(137, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'TYCIL DS', 'Amoxycillin 250mg/5ml', 'Suspension(Double Strength)', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 65.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(138, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'TYCIL', 'Amoxycillin 125mg/1.25ml', 'Paediatric Drop', 'Beximco Pharmaceuticals Ltd.', '15ml bot: 30.14 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(139, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'NAPA', 'Paracetamol 500mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '500s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(140, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'NAPA DT', 'Paracetamol 500mg/tablet', 'Dispersible Tablet', 'Beximco Pharmaceuticals Ltd.', '200s pack: 256.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(141, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'NAPA', 'Paracetamol 120mg/5ml', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '50ml bot: 14.67 MRP; 60ml bot: 20.63 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(142, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'NAPA', 'Paracetamol 120mg/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '50ml bot: 18.24 MRP; 60ml bot: 20.64 MRP; l00ml bot: 31.77 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(143, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'NAPA', 'Paracetamol 60mg, 125mg, 250mg & 500mg/stick', 'Suppository', 'Beximco Pharmaceuticals Ltd.', '60mg x 20s pack: 70.00 MRP; 125mg x 20s pack: 80.00 MRP; 250mg x 20s pack: 100.00 MRP; 500mg x 20s pack: 160.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(144, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'NAPA', 'Paracetamol 80mg/ml', 'Paediatric Drop', 'Beximco Pharmaceuticals Ltd.', '15ml bot: 12.30 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(145, 'Drugs for bacterial infections', 'Tetracycline Group of drugs', 'MEGADOX', 'Doxycycline 100mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '100s pack: 216.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(146, 'Drugs for bacterial infections', 'Tetracycline Group of drugs', 'MEGADOX', 'Doxycycline 100mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '100s pack: 215.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(147, 'Drugs for bacterial infections', 'Aminoglycosides', 'INVIGEN', 'Gentamicin sulphate 80mg/100ml (i.e 0.08% w/v)', 'Infusion (IV)', 'Beximco Pharmaceuticals Ltd.', '100ml bot for i.v infusion: 47.03 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(148, 'Drugs for bacterial infections', 'Macrolides', 'ETROCIN', 'Erythromycin 250mg & 500mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '250mg x 100s pack: 455.00 MRP; 500mg x 50s pack: 450.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(149, 'Drugs for bacterial infections', 'Macrolides', 'ETROCIN', 'Erythromycin 125mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 61.25 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(150, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'NAPA EXTRA', 'Paracetamol BP 500mg + caffeine USP 65mg/tablet', 'Tablet (film-coated)', 'Beximco Pharmaceuticals Ltd.', '200s pack: 380.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(151, 'Drugs for bacterial infections', 'Macrolides', 'AZITHROCIN', 'Azithromycin 250mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '10s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(152, 'Drugs for bacterial infections', 'Macrolides', 'AZITHROCIN', 'Azithromycin 500mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '9s pack: 270.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(153, 'Drugs for bacterial infections', 'Macrolides', 'AZITHROCIN', 'Azithromycin 200mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '15ml bot: 85.00 MRP; 30ml bot: 130.00 MRP; 50ml bot: 185.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(154, 'Analgesics & Antipyretics', 'Opoid analgesics', 'LUCIDOL', 'Tramadol hydrochloride 50mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '50mg x 30s pack: 225.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(155, 'Drugs for bacterial infections', 'Macrolides', 'ROLACIN', 'Clarithromycin 250mg & 500mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '250mg x 20s pack: 500.00 IP; 500mg x 10s pack: 400.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(156, 'Analgesics & Antipyretics', 'Topical Analgesics', 'ICYKOOL', 'Methyl salicylate BP 150mg (0.15gm or 15%) and menthol BP 100mg (0.10gm or 10%)/1 gm cream', 'Cream', 'Beximco Pharmaceuticals Ltd.', '25gm tube: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(157, 'Analgesics & Antipyretics', 'Topical Analgesics', 'ICYKOOL MAX', 'Methyl salicylate BP 0.30gm (30%) and menthol BP 0.08gm (8%)/1 gm cream', 'Cream', 'Beximco Pharmaceuticals Ltd.', '25gm tube: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(158, 'Prophylactics of Migraine', 'Antihistamine Preparations', 'AVIDRO', 'Pizotifen malate 0.5mg & 1.5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '0.5mg x 100s pack: 300.00 MRP; 1.5mg x 50s pack: 350.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(159, 'Prophylactics of Migraine', 'Miscellaneous preparations', 'FLURIUM', 'Flunarizine 5mg & 10mg/tablet.', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '5mg x 30s pack: 90.00 IP; 10mg x 30s pack: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(160, 'Drugs for bacterial infections', 'Oxazolidinones', 'ARLIN', 'Linezolid INN 400mg & 600mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '400mg x 20s pack: 1200.00 IP; 600mg x 20s pack: 1700.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(161, 'Drugs for bacterial infections', 'Oxazolidinones', 'ARLIN', 'Linezolid INN 100mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 280.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(162, 'Drugs for bacterial infections', 'Sulphonamides & Trimethoprim', 'MEGATRIM-DS', 'Cotrimoxazole 960mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '150s pack: 390.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(163, 'Drugs for bacterial infections', 'Sulphonamides & Trimethoprim', 'MEGATRIM', 'Cotrimoxazole 240mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '60ml bot: 22.10 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(164, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'TRIOCIM', 'Cefixime trihydrate 200mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '200mg x 16s pack: 480.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(165, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'TRIOCIM', 'Cefixime trihydrate 125mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '50ml bot: 195.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(166, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'ZOLFIN', 'Aceclofenac BP 100mg/tablet', 'Tablet (film-coated)', 'Beximco Pharmaceuticals Ltd.', '150s pack: 450.00 IP; 100s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(167, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'COX B-100', 'Celecoxib INN 100mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '100mg x 50s pack: 225.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(168, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'COX B-200', 'Celecoxib INN 200mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '200mg x 50s pack: 400.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(169, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'DEXIFEN', 'Dexibuprofen INN 200mg, 300mg &400mg/tablet.', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '200mg x 100s pack: 300.00 IP; 300mg x 100s pack: 400.00 IP; 400mg x 100s pack: 500.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(170, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'CEPHALEN', 'Cephalexin 250mg & 500mg/tablet', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '250mg x 100s : 670.00 IP; 500mg x 50s: 627.50 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(171, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'CEPHALEN', 'Cephalexin 125mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 81.50 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(172, 'Drugs for bacterial infections', '4-Quinolone preparations', 'NEOFLOXIN', 'Ciprofloxacin 250mg, 500mg & 750mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '250mg x 50s pack: 425.00 MRP; 500mg x 20s pack: 280.00 MRP; 500mg x 50s pack: 700.00 MRP; 750mg x 30s pack: 540.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(173, 'Drugs for bacterial infections', '4-Quinolone preparations', 'NEOFLOXIN XR', 'Ciprofloxacin 500mg/tablet', 'Tablet (Extended Release)', 'Beximco Pharmaceuticals Ltd.', '500mg x 20s pack: 220.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(174, 'Drugs for bacterial infections', '4-Quinolone preparations', 'NEOFLOXIN XR 1000', 'Ciprofloxacin 1000mg/tablet', 'Tablet (Extended Release)', 'Beximco Pharmaceuticals Ltd.', '1000mg x 10s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(175, 'Drugs for bacterial infections', '4-Quinolone preparations', 'NEOFLOXIN', 'Ciprofloxacin 250mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '60ml bot: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(176, 'Drugs for bacterial infections', '4-Quinolone preparations', 'NEOFLOXIN', 'Ciprofloxacin 200mg in 100ml bottle', 'Infusion (IV)', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 146.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(177, 'Drugs for bacterial infections', '4-Quinolone preparations', 'XEGAL', 'Gatifloxacin INN 400mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '400mg x 30s pack: 302.10 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(178, 'Drugs for bacterial infections', '4-Quinolone preparations', 'EVO', 'Levofloxacin hemihydrate INN 250mg, 500mg & 750mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '250mg x 30s pack: 270.00 IP; 500mg x 20s pack: 320.00 IP; 750mg x 10s pack: 200.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(179, 'Drugs for bacterial infections', '4-Quinolone preparations', 'EVO', 'Levofloxacin hemihydrate INN 125mg/5ml Oral Solution', 'Oral Solution', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 75.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(180, 'Drugs for bacterial infections', '4-Quinolone preparations', 'ISOFLOXIN', 'Pefloxacine 400mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50s pack: 602.50 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(181, 'Drugs for bacterial infections', '4-Quinolone preparations', 'SPARLIN', 'Sparfloxacin INN 200mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '10s pack: 150.60 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(182, 'Drugs for viral infections', 'Respiratory viral infections (Influenza)', 'OSEFLU', 'Oseltamivir phosphate INN equivalent to Oseltamivir 75mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '10s pack: 1500.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(183, 'Drugs for fungal infections', 'Drugs for cutaneous mycoses', 'FUNGISTIN', 'Nystatin 100,000 units/1ml drop', 'Drop', 'Beximco Pharmaceuticals Ltd.', '12ml bot: 22.74 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(184, 'Drugs for fungal infections', 'Drugs for subcutaneous and systemic mycoses', 'OMASTIN', 'Fluconazole 50mg & 150mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '50mg x 50s pack: 400.00 IP; 150mg x 20s pack: 440.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(185, 'Drugs for fungal infections', 'Drugs for subcutaneous and systemic mycoses', 'OMASTIN', 'Fluconazole 50mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '35ml bot: 78.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(186, 'Drugs for fungal infections', 'Drugs for cutaneous mycoses', 'TERBEX', 'Terbinafine hydrochloride 250mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '10s pack: 500.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(187, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'ULTRAFEN', 'Diclofenac sodium 25mg & 50mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '25mg x 100s pack: 54.00 IP; 25mg x 200s pack: 108.00 IP; 50mg x 200s pack: 166.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(188, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'ULTRAFEN-100 SR', 'Diclofenac sodium 100mg/tablet', 'Tablet (sustained release)', 'Beximco Pharmaceuticals Ltd.', '100s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(189, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'ULTRAFEN', 'Diclofenac sodium 12.5mg & 50mg/stick', 'Suppository', 'Beximco Pharmaceuticals Ltd.', '12.5mg x 10s pack: 90.00 IP; 50mg x 10s pack: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(190, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'ULTRAFEN', 'Diclofenac diethylammonium salt 1.16% (equivalent to diclofenac sodium 1%): gel preparation.', 'Gel', 'Beximco Pharmaceuticals Ltd.', '10gm tube: 13.00 IP; 25mg tube: 35.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(191, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'REUMAFEN', 'Ibuprofen BP 100mg/5ml', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 33.71 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(192, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'REUMAFEN', 'Ibuprofen 200mg & 400mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '200mg x 100s pack: 88.00 MRP; 400mg x 100s pack: 142.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(193, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'XYNOFEN SR', 'Ketoprofen 100mg/capsule', 'Capsule (sustained release)', 'Beximco Pharmaceuticals Ltd.', '50s pack: 377.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43');
INSERT INTO `medicine` (`id`, `drug_for`, `drug_class`, `brand_name`, `contains`, `type`, `manufacturer`, `price`, `created_at`, `updated_at`) VALUES
(194, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'FENAMIC', 'Mefenamic acid 250mg & 500mg/tablet', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '250mg x 100s pack: 201.00 IP; 500mg x 30s pack: 114.60 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(195, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'FENAMIC', 'Mefenamic acid 50mg/5ml', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '60ml bot: 15.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(196, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'INTRACEF', 'Cephradine 250mg & 500mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '250mg x 50s pack: 325.00 IP; 500mg x 40s pack: 500.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(197, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'INTRACEF', 'Cephradine 125mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 80.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(198, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'INTRACEF DS', 'Cephradine 250mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 120.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(199, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'INTRACEF', 'Cephradine 100mg/1ml drop', 'Drop', 'Beximco Pharmaceuticals Ltd.', '15ml bot: 50.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(200, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'INTRACEF', 'Cephradine 250mg & 500mg/vial', 'Injection (IV/IM)', 'Beximco Pharmaceuticals Ltd.', '250mg x 10 vials: 350.00 MRP; 500mg x 10 vials: 500.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(201, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'NUPRAFEN', 'Naproxen sodium 250mg & 500mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '250mg x 100s pack: 420.00 IP; 500mg x 50s pack: 392.50 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(202, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'TOLMIC', 'Tolfenamic acid BP 200mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '200mg x 30s pack: 240.90 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(203, 'Drugs for Neuromuscular Disorders', 'Centrally acting Skeletal Muscle Relaxants', 'RELENTUS', 'Tizanidine hydrochloride equivalent to tizanidine base 2mg/tablet.', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50s pack: 250.00 IP ;30s pack: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(204, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'ULTRAFEN Plus', 'Diclofenac sodium BP 50mg + misoprostol INN 200mcg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 300.00 IP ;50s pack: 500.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(205, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'ULTRAFEN Plus 75', 'Diclofenac sodium BP 75mg + misoprostol INN 200mcg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 330.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(206, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'VERCEF', 'Cefpodoxime proxetil INN 40mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '50ml bot: 98.00 IP; 100ml bot: 195.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(207, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'VERCEF DS', 'Cefpodoxime proxetil INN 80mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '50ml bot: 175.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(208, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'VERCEF', 'Cefpodoxime proxetil INN 20mg/1ml drop', 'Drop', 'Beximco Pharmaceuticals Ltd.', '15ml bot: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(209, 'Drugs for Allergic Disorders', 'Sedating Antihistamines', 'PEDEAMIN', 'Diphenhydramine hydrochloride 10mg/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 22.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(210, 'Drugs for Allergic Disorders', 'Sedating Antihistamines', 'BEXIDAL', 'Mebhydrolin napadisylate 50mg/tablet.', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '200s pack: 400.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(211, 'Drugs for protozoal infections', 'Amoebicides', 'FILMET', 'Metronidazole 200mg & 400 mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '200mg x 200s: 138.00 MRP; 400mg x 250s: 252.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(212, 'Drugs for protozoal infections', 'Amoebicides', 'FILMET DS', 'Metronidazole 800 mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '800mg x 100s: 201.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(213, 'Drugs for protozoal infections', 'Amoebicides', 'FILMET', 'Metronidazole 200mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '60ml bot: 25.75 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(214, 'Drugs for protozoal infections', 'Amoebicides', 'FILMET', 'Metronidazole 500mg in 100ml bottle', 'Infusion (IV)', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 52.60 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(215, 'Drugs for Allergic Disorders', 'Sedating Antihistamines', 'AEROVIL', 'Pheniramine maleate 15mg/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 20.07 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(216, 'Drugs for Allergic Disorders', 'Sedating Antihistamines', 'PROMEZIN', 'Promethazine hydrochloride 5mg/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 15.50 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(217, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'ATRIZIN', 'Cetirizine dihydrochloride 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '150s pack: 375.00 MRP; 100s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(218, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'ATRIZIN', 'Cetirizine dihydrochloride 5mg/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '60ml bot: 20.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(219, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'ATRIZIN', 'Cetirizine dihydrochloride 2.5mg/1ml', 'Drop', 'Beximco Pharmaceuticals Ltd.', '15ml bot: 22.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(220, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'AXODIN', 'Fexofenadine hydrochloride INN USP 60mg, 120mg & 180mg/tablet.', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '60mg x 50s pack: 250.00 IP; 120mg x 30s pack: 195.00 IP; 180mg x 30s pack: 240.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(221, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'CURIN', 'Levocetirizine dihydrochloride INN 5mg/tablet.', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(222, 'Drugs for protozoal infections', 'Amoebicides', 'XYNOR', 'Ornidazole INN 500mg/tablet', 'Tablet (Film Coated)', 'Beximco Pharmaceuticals Ltd.', '30s pack: 195.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(223, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'PRETIN', 'Loratadine INN 10mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(224, 'Drugs for helminthiasis', 'Drugs for worms', 'ALPHIN-DS', 'Albendazole 400mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50s pack: 200.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(225, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'MOMENTO', 'Desloratadine INN 5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 250.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(226, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'MOMENTO', 'Desloratadine INN 2.5mg/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '60ml bot: 25.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(227, 'Drugs for helminthiasis', 'Drugs for worms', 'IVERA 6', 'Ivermectin BP 6mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '10s pack: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(228, 'Drugs for helminthiasis', 'Drugs for worms', 'MELPHIN', 'Pyrantel pamoate 125mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 166.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(229, 'Drugs for helminthiasis', 'Drugs for worms', 'MELPHIN', 'Pyrantel pamoate 50mg/ml Suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '10ml bot: 11.45 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(230, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'ZILAPRO', 'Cefprozil 250mg/5ml suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '50ml bot: 275.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(231, 'Drugs for Allergic Disorders', 'Combination Preparation', 'PRETIN D', 'Loratadine USP 10mg & pseudoephedrine hydrochloride USP 240mg/tablet', 'Tablet (extended release)', 'Beximco Pharmaceuticals Ltd.', '50s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(232, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'CEFIDA', 'Cefdinir INN 300mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '300mg x 8s pack: 360.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(233, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'CEFIDA', 'Cefdinir INN 125mg/5ml dry suspension', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '60ml bot: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(234, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'ARIXON IV', 'Ceftriaxone 250mg, 500mg & 1gm vial (with water)', 'Injection (IV)', 'Beximco Pharmaceuticals Ltd.', '250mg vial: 90.00 IP; 500mg vial: 125.00 IP; 1gm vial: 185.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(235, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'ARIXON IM', 'Ceftriaxone 250mg, 500mg & 1gm vial (with lidocaine)', 'Injection (IM)', 'Beximco Pharmaceuticals Ltd.', '250mg vial: 90.00 IP; 500mg vial: 125.00 IP; 1gm vial: 185.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(236, 'Neuromuscular blocking drugs (muscle relaxants)', 'Central Depolarizing muscle relaxants', 'PERILAX', 'Tolperisone hydrochloride 50mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(237, 'Drugs for post operative pain', 'Non opiod analgesics', 'XIDOLOC', 'Ketorolac tromethamine 10mg/tablet', 'Tablet (film-coated)', 'Beximco Pharmaceuticals Ltd.', '20s pack: 200.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(238, 'Topical Anti-infective Drugs', 'Topical Antibiotic preparations', 'GENTOSEP', 'Gentamicin 0.3%', 'Cream', 'Beximco Pharmaceuticals Ltd.', '15gm tube: 18.45 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(239, 'Nasal preparations', 'Nasal Anti-histamine preparations', 'NAZOLIN', 'Oxymetazoline hydrochloride 0.05% nasal spray delivers 25mcg/actuation', 'Nasal Spray(MDI)', 'Beximco Pharmaceuticals Ltd.', '200 doses: 80.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(240, 'Anti-eczema & Anti-psoriasis preparations', 'Topical Retinoid & related preparations', 'SORITENE', 'Tazarotene INN 1mg/gm (0.1% w/w)', 'Cream', 'Beximco Pharmaceuticals Ltd.', '25gm tube: 151.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(241, 'Anti-eczema & Anti-psoriasis preparations', 'Zinc & Combined preparations', 'Q-RASH', 'Zinc oxide BP 400mg/gm (40%w/w) ointment', 'Ointment', 'Beximco Pharmaceuticals Ltd.', '25gm pack: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(242, 'Anti-eczema & Anti-psoriasis preparations', 'Drugs affecting the immune response', 'ATOLIMUS', 'Tacrolimus INN 0.3mg/gm ointment', 'Ointment', 'Beximco Pharmaceuticals Ltd.', '5gm tube: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(243, 'Ophthalmic preparations', 'Antioxidant vitamins & minerals for eye', 'VIVIS', 'Vitamin C 60mg, vitamin E 30mg, lutein 6mg, copper 2mg and zinc 15mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '30s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(244, 'Drugs for Acne & Rosacea', 'Topical retinoid and related preparations', 'COSMOTRIN', 'Tretinoin 0.025% w/w cream', 'Cream', 'Beximco Pharmaceuticals Ltd.', '10gm tube: 45.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(245, 'Drugs for Ichthyosis & Scaly skin', 'Topical urea preparations', 'EUKRIM', '100mg urea BP (10%)/gm cream', 'Cream', 'Beximco Pharmaceuticals Ltd.', '15gm tube: 34.50 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(246, 'Topical Anti-infective Drugs', 'Topical Antibiotic preparations', 'FURASEP', 'Nitrofurazone 0.2% cream', 'Cream', 'Beximco Pharmaceuticals Ltd.', '20gm tube: 17.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(247, 'Topical Anti-infective Drugs', 'Topical Antibiotic preparations', 'BURNSIL', 'Silver sulphadiazine 1% cream', 'Cream', 'Beximco Pharmaceuticals Ltd.', '25gm tube: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(248, 'Topical Anti-infective Drugs', 'Topical Anti-fungal preparations', 'NEOSTEN', 'Clotrimazole 1%', 'Cream', 'Beximco Pharmaceuticals Ltd.', '20gm tube: 40.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(249, 'Specific Vitamin Preparations', 'Vitamin-D preparations', 'BEXTRAM KlDZ', 'Vitamin A, D, B1, B2, B6, C, E, nicotinamaide & cod liver oil', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bottle: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(250, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'AVITRON-V', 'Thiamine hydrochloride 100mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '250s pack: 185.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(251, 'Topical Anti-infective Drugs', 'Other Antifungal preparations', 'TENAFIN', 'Butenafine hydrochloride 1%', 'Cream', 'Beximco Pharmaceuticals Ltd.', '15gm tube: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(252, 'Topical Anti-infective Drugs', 'Other Antifungal preparations', 'TERBEX', 'Terbinafine hydrochloride 1%', 'Cream', 'Beximco Pharmaceuticals Ltd.', '5gm tube: 35.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(253, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'MYOLIN', 'Thiamine mononitrate (B1) BP 100mg, pyridoxine hydrochloride (B6) BP 200mg and cyanocobalamin (B12) BP 200mcg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 120.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(254, 'Topical Anti-infective Drugs', 'Parasiticidal preparations', 'NOSCAB', 'Permethrin 5% w/w', 'Cream', 'Beximco Pharmaceuticals Ltd.', '25gm tube: 35.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(255, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'ARISTOVIT B', 'Vitamin B complex', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '45s pack: 23.40 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(256, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'ARISTOPLEX', 'Vitamin B complex', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 20.92 MRP; 200ml bot: 38.17 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(257, 'Specific Vitamin Preparations', 'Vitamin-C Preparations', 'ASCOBEX', 'Ascorbic acid 250mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '200s pack: 264.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(258, 'Specific Vitamin Preparations', 'Vitamin-C Preparations', 'C-GUM', 'Ascorbic acid 125mg/tablet', 'Tablet (chewing gum)', 'Beximco Pharmaceuticals Ltd.', '30s pack: 113.70 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(259, 'Specific Vitamin Preparations', 'Vitamin-E Preparations', 'FORMULA E', 'Alpha tocopheryl acetate 200mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '15s pack: 57.30 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(260, 'Combined vitamin preparations', 'Anti-oxidant Multivitamin preparations', 'CAROCET', 'Beta carotene 6mg USP, vitamin C 200mg BP & vitamin E 50mg BP/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '20s pack: 50.80 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(261, 'Topical corticosteroids & combined preparations', 'Clobetasol/Clobetasone & Combined Preparations', 'EXOVATE', 'Clobetasol propionate 0.05% w/w', 'Cream', 'Beximco Pharmaceuticals Ltd.', '10gm tube (cream): 45.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(262, 'Topical corticosteroids & combined preparations', 'Clobetasol/Clobetasone & Combined Preparations', 'EXOVATE', 'Clobetasol propionate 0.05% w/w', 'Ointment', 'Beximco Pharmaceuticals Ltd.', '10gm tube (oint): 50.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(263, 'Combined vitamin preparations', 'Nonspecific multivitamin preparations', 'TYNISOL', 'Multivitamin preparation', 'Drop', 'Beximco Pharmaceuticals Ltd.', '15ml drop: 16.04 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(264, 'Mineral preparations', 'Specific mineral preparations', 'ARISTOCAL', 'Calcium carbonate 1250mg (equivalent to 500mg elemental calcium)/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 400.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(265, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'ARISTOCAL D', 'Calcium carbonate USP 1250mg equivalent to 500mg elemental calcium and vitamin D3 (cholecalciferol) USP 200 i.u/tablet.', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50s pack: 250.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(266, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'ARISTOCAL M', 'Calcium (as calcium carbonate) 600mg, vitamin D3 (colecalciferol) 200 i.u, magnesium (as magensium oxide) 40mg, zinc (as zinc oxide) 7.5mg, copper (as cupric oxide) 1mg, manganese (as manganese sulphate) 1.8mg. boron (as boron citrate) 0.25mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '20s pack: 110.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(267, 'Mineral preparations', 'Specific mineral preparations', 'NALEPSIN 4%', 'Magnesium sulphate heptahydrate BP 4% w/v in 100ml i.v. solution', 'Infusion (i.v)', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 70.79 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(268, 'Mineral preparations', 'Specific mineral preparations', 'ZEDEX 20', 'Zinc sulphate monohydrate USP equivalent to 20mg elemental zinc/tablet', 'Tablet (coated)', 'Beximco Pharmaceuticals Ltd.', '30s pack: 45.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(269, 'Mineral preparations', 'Specific mineral preparations', 'ZEDEX DS', 'Zinc sulphate monohydrate equivalent to 10mg elemental zinc USP/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 30.00 IP; 200ml bot: 50.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(270, 'Mineral preparations', 'Specific mineral preparations', 'ZEDEX Max', 'Zinc sulphate monohydrate equivalent to 20mg elemental zinc USP/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '100ml bot: 55.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(271, 'Multivitamin & Multimineral combined preparations', 'Nonspecific Multivitamin & Multimineral combined preparations', 'ARISTOVIT-M', 'Multivitamin + multimineral preparation', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 54.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(272, 'Multivitamin & Multimineral combined preparations', 'Super Anti-oxidant vitamins & Multimineral preparations', 'ARISTOVIT-X', 'Vitamin A 2000 IU, vitamin C 200mg, vitamin E 50 IU, vitamin K 75mcg, zinc 15mg, selenium 70mcg, copper 1mg and manganese 3mg', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(273, 'Multivitamin & Multimineral combined preparations', 'Specialized Multivitamin & Multimineral preparations', 'BEXTRAM', '20 high potency vitamins and minerals including iron & zinc', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(274, 'Multivitamin & Multimineral combined preparations', 'Specialized Multivitamin & Multimineral preparations', 'BEXTRAM GOLD', 'High potency multivitamin & multimineral formulation comprising of 32 components from vitamin A to Zinc including the complete anti-oxidant group', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '15s pack: 90.00 IP; 30s pack: 180.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(275, 'Multivitamin & Multimineral combined preparations', 'Specialized Multivitamin & Multimineral preparations', 'MOMVIT', 'Vitamin A 26,667 IU (8mg), vitamin C 60 mg, vitamin D 400 IU, calcium 40mg, and potassium iodide 130mcg.', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 60.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(276, 'Drugs for Iron Deficiency Anaemias', 'Oral Iron preparations', 'ARISTOFERON', 'Ferrous sulphate 200mg/5ml', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '200ml bot: 26.75 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(277, 'Topical corticosteroids & combined preparations', 'Clobetasol/Clobetasone & Combined Preparations', 'EXOVATE N', 'Clobetasol propionate 0.05% w/w, neomycin sulphate 0.5% w/w and nystatin 100,000 units/gm', 'Cream', 'Beximco Pharmaceuticals Ltd.', '25gm tube: 75.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(278, 'Topical corticosteroids & combined preparations', 'Hydrocortisone & Combined preparations', 'FUSIDIC Plus', 'Hydrocortisone acetate 1% & fusidic acid 2% ointment', 'Ointment', 'Beximco Pharmaceuticals Ltd.', '10gm tube: 125.47 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(279, 'Drugs for Iron Deficiency Anaemias', 'Iron & Vitamin Combined preparations', 'ARISTOFOL-Fe', 'Ferrous fumerate 200mg + folic acid 0.5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '100s pack: 47.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(280, 'Drugs for Iron Deficiency Anaemias', 'Iron & Vitamin Combined preparations', 'PREGVIT', 'Dried ferrous sulfate USP 150mg, folic acid USP 0.5mg, thiamine mononitrate USP 2mg, pyridoxine USP 1mg, nicotinamide USP 10mg and ascorbic acid USP 50mg/capsule', 'Capsule (timed release)', 'Beximco Pharmaceuticals Ltd.', '50s pack: 150.50 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(281, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'EFOL-ER', 'Ferrous sulphate BP 150mg+ folic acid BP 0.5mg + zinc sulphate monohydrate USP 61.8mg/capsule', 'Capsule (extended release)', 'Beximco Pharmaceuticals Ltd.', '50s pack: 125.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(282, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'CAROFOL Z', 'Carbonyl iron INN Ph. grade 51mg (equivalent to 50mg elemental iron), folic acid BP 0.50mg and zinc sulfate BP 6I.80mg (equivalent to 22.5mg elemental zinc)/capsule', 'Capsule (pellet)', 'Beximco Pharmaceuticals Ltd.', '50s pack: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(283, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'VITONIC', 'Non- ionic iron (i.e iron polymaltose complex), vitamin B complex & zinc.', 'Syrup', 'Beximco Pharmaceuticals Ltd.', '50ml bot: 30.00 IP; 100ml bot: 50.00 IP; 200ml bot: 80.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(284, 'Urinary anti-infectives', 'Irrigation Solution used in Urological Surgery', 'IRIGON', 'Glycine 1.5% solution in water for bladder irrigation during urological surgery.', 'Solution', 'Beximco Pharmaceuticals Ltd.', '1000ml bag: 70.80 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(285, 'Drugs used in bone formation', 'Bisphosphonate preparations', 'ALENDON-70', 'Alendronate sodium, equivalent to alendronic acid 70mg/tablet.', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 750.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(286, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'OMNIVIT', 'Carbonyl iron, folic acid, vitamin-B complex, vitamin C & zinc.', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '50s pack: 175.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(287, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'PROSFIN', 'Finasteride 5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 301.20 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(288, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'RECUR', 'Finasteride 1mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 120.60 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(289, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'URICON', 'Oxybutynin chloride 5mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '30s pack: 180.60 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(290, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'UROFLO', 'Tamsulosin hydrochloride INN 0.4mg/capsule', 'Capsule', 'Beximco Pharmaceuticals Ltd.', '20s pack: 200.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(291, 'Drugs used in genital problems', 'Drugs used in Vaginal and Vulval conditions', 'NEOSTEN VT', 'Clotrimazole BP 200mg/tablet (vaginal) with applicator.', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '200mg x 3s pack: 60.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(292, 'Urinary anti-infectives', 'Systemic Urinary Anti- infectives', 'NEBACTIL', 'Nalidixic acid 250mg/5ml', 'Suspension', 'Beximco Pharmaceuticals Ltd.', '50ml bot: 30.79 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(293, 'Drugs used in cartilage formation', 'Stimulation of Cartilage formation', 'JOINTEC Plus', 'Glucosamine sulfate INN 250mg & chondroitin sulfate INN 200mg/tablet.', 'Tablet (film coated)', 'Beximco Pharmaceuticals Ltd.', '60s pack: 480.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(294, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'ACIFIX', 'Rabeprazole sodium INN 20mg/tablet', 'Tablet', 'Beximco Pharmaceuticals Ltd.', '50s pack: 250 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(295, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'OMENIX', 'Omeprazole 20mg & 40mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd', '20mg x 60s pack: 240.00 MRP; 40mg x 20s pack: 140.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(296, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'OMENIX IR 20', 'Omeprazole BP 20mg & sodium bicarbonate BP 1100mg/capsule', 'Capsule(immediate release)', 'Incepta Pharmaceuticals Ltd', '20mg x 60s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(297, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'OMENIX IR 40', 'Omeprazole BP 40mg & sodium bicarbonate BP 1100mg/capsule', 'Capsule(immediate release)', 'Incepta Pharmaceuticals Ltd', '40mg x 20s pack: 140.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(298, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'OMENIX 20', 'Omeprazole 20mg/packet', 'Powder for suspension', 'Incepta Pharmaceuticals Ltd', '20mg packet x 30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(299, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'OMENIX 40', 'Omeprazole 40mg/packet', 'Powder for suspension', 'Incepta Pharmaceuticals Ltd', '40mg packet x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(300, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'OMENIX 40', 'Omeprazole sodium BP 40mg/vial (as lyophilized powder for solution', 'I.V Injection', 'Incepta Pharmaceuticals Ltd', '40mg vial x 1s pack: 70.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(301, 'Drugs for macrocytic Anaemias', 'Drugs for Megaloblastic Anaemias', 'MECOLAGIN', 'Mecobalamin 500mcg/tablet.', 'Tablet', 'Incepta Pharmaceuticals Ltd', '60s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(302, 'Drugs for macrocytic Anaemias', 'Drugs for Megaloblastic Anaemias', 'MECOLAGIN', 'Mecobalamin 500mcg/1ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd', '5 amps pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(303, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'PROGESIC 375', 'Naproxen sodium 375mg & esomeprazole 20mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd', '375mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(304, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'PROGESIC 500', 'Naproxen sodium 500mg & esomeprazole 20mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd', '500mg x 28s pack: 280.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(305, 'Drugs for hypertension', 'Angiotensin-converting enzyme (ACE) inhibitors', 'PERIPRIL', 'Perindopril erbumine 2mg, 4mg & 8mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '2mg x 20s pack: 140.00 MRP; 4mg x 20s pack: 240.00 MRP; 8mg x 20s pack: 480.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(306, 'Drugs for hypertension', 'Angiotensin-converting enzyme (ACE) inhibitors', 'RAMORIL', 'Ramipril BP 1.25mg, 2.5mg. 5mg&10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '1.25mgx50s: 125.00 MRP 2.5mg x 50s: 250.00 MRP 5mg x 50s: 400.00 MRP 10mg x 30s: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(307, 'Drugs for hypertension', 'Angiotensin-II receptor blocker', 'OSARTIL', 'Losartan potassium INN 25mg, 50mg & 100mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '25mg x 50s pack: 175.00 MRP 50mg x 50s pack: 300.00 MRP 100mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(308, 'Drugs for arrhythmias', 'Membrane stabilizing agent (Sodium channel blockers)', 'NORBIT', 'Disopyramide phosphate 100 mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(309, 'Drugs for emetics', 'Prokinetic drugs', 'OMIDON', 'Domperidone maleate 10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(310, 'Drugs for emetics', 'Prokinetic drugs', 'OMIDON D', 'Domperidone maleate 20mg/dispersible tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(311, 'Drugs for emetics', 'Prokinetic drugs', 'OMIDON', 'Domperidone 5mg/5ml', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '15ml bot: 20.00 MRP 30ml bot: 25.00 MRP 60ml bot: 28.00 MRP 100ml bot: 38.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(312, 'Drugs for emetics', 'Prokinetic drugs', 'OMIDON', 'Domperidone 5mg/ml', 'Drop', 'Incepta Pharmaceuticals Ltd.', '15ml drop: 20.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(313, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'OMENIX 20', 'Omeprazole 20mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '20mg x 60s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(314, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'WINDEL', 'Salbutamol 2mg & 4mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '2mg x 200s pack: 52.00 MRP 4mg x 200s pack: 68.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(315, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'WINDEL', 'Salbutamol sulphate 2mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 16.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(316, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'WINDEL', 'Salbutamol sulphate 5mg/ml (i.e 0.5%) for use with a nebuliser or ventilator', 'Respiratory Solution', 'Incepta Pharmaceuticals Ltd.', '20ml pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(317, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'PURISAL', 'Levosalbutamol sulphate INN equivalent to 1mg & 2mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '1mg x 100s pack: 90.00 MRP 2mg x 100s pack: 170.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(318, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'PURISAL', 'Levosalbutamol sulphate INN equivalent to 1mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 25.00 MRP 100ml bot: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(319, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'PURISAL', 'Levosalbutamol sulphate 0.31mg/3ml ampoule, 0.63mg/3ml ampoule, & 1.25mg/3ml ampoule: for use with a nebuliser or ventilator', 'Nebuliser Solution', 'Incepta Pharmaceuticals Ltd.', '0.31mg (3ml amp) x 10s pack: 100.00 MRP 0.63mg (3ml amp) x 10s pack: 150.00 MRP 1.25mg (3ml amp) x', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(320, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'BAMBELOR', 'Bambuterol hydrochloride 10mg & 20mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '10mg x 100s pack: 150.00 MRP 20mg x 100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(321, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'BAMBELOR', 'Bambuterol hydrochloride 5mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '60ml bot: 25.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(322, 'Drugs for peptic ulcer', 'Prostaglandin analogues', 'CYTOMIS', 'Misoprostol INN 200mcg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '200mcg x 30s pack: 450.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(323, 'Drugs for peptic ulcer', 'Anticholinergics(antimuscarinics)', 'CYCLOPAN', 'Dicycloverine hydrochloride BP 10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack:200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(324, 'Drugs for peptic ulcer', 'Anticholinergics(antimuscarinics)', 'CYCLOPAN', 'Dicycloverine hydrochloride BP 10mg/5ml', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(325, 'Drugs for peptic ulcer', 'Anticholinergics(antimuscarinics)', 'CYCLOPAN', 'Dicycloverine hydrochloride BP 20mg/2ml ampoule', 'IM Injection', 'Incepta Pharmaceuticals Ltd.', '5 amps pack: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(326, 'Drugs for asthma & prophylaxis', 'Other adrenoceptor stimulants', 'NORDRINE', 'Ephedrine hydrochloride 25mg/5ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '10 ampoules pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(327, 'Drugs for asthma & prophylaxis', 'Methyl xanthine derivatives', 'AROFIL 300', 'Theophylline sodium glycinate 300mg/tablet', 'Tablet (sustained release)', 'Incepta Pharmaceuticals Ltd.', '50s pack: 100.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(328, 'Drugs for asthma & prophylaxis', 'Methyl xanthine derivatives', 'AROFIL 400', 'Theophylline sodium glycinate 400mg/tablet', 'Tablet (sustained release)', 'Incepta Pharmaceuticals Ltd.', '50s pack: 133.50 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(329, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'BUDICORT', 'Budesonide BP 0.5mg/2ml ampoule', 'Nebuliser Solution', 'Incepta Pharmaceuticals Ltd.', '2ml ampoule (O.5mg) x 5s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(330, 'Drugs for peptic ulcer', 'Antacids', 'MARLOX', 'Dried aluminium magnesium polyhydroxy complex USP & magnesium carbonate: magaldrate preparation', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '200s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(331, 'Drugs for peptic ulcer', 'Antacids', 'LEFOAM', 'Simethicone USP 67mg/ml', 'Drop', 'Incepta Pharmaceuticals Ltd.', '15ml drop: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(332, 'Drugs for asthma & prophylaxis', 'Cromoglycate & related drugs', 'KETOMAR', 'Ketotifen fumerate 1mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(333, 'Drugs for asthma & prophylaxis', 'Cromoglycate & related drugs', 'KETOMAR', 'Ketotifen fumerate 1mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(334, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'DROTAPAN', 'Drotaverine hydrochloride 40mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 175.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(335, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'IRIBAN', 'Mebeverine hydrochloride 135mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(336, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'TIMOZIN', 'Tiemonium methylsulfate INN 50mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(337, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'TIMOZIN', 'Tiemonium methylsulfate 5mg/2ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '5 amps pack: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(338, 'Drugs for constipation', 'Osmotic purgatives', 'INOLAC', 'lactulose USP 3.4gm/concentrate oral solution; 1 tsf (5ml)', 'Oral solution', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 70.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(339, 'Drugs for constipation', 'Osmotic purgatives', 'AQUALAX', 'polyethylene glycol 85gm/bottle', 'Powder for solution', 'Incepta Pharmaceuticals Ltd.', '85gm bot: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(340, 'Drugs for asthma & prophylaxis', 'Leukotriene receptor antagonists', 'MONTAIR', 'Montelukast sodium INN 4mg, 5mg & 10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '4mg x 30s pack: 210.00 MRP 5mg x 30s pack: 300.00 MRP 10mg x 20s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(341, 'Drugs for cough & cold', 'Cough suppressants', 'TOMEPHEN', 'Dextromethorphan 10mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 25.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(342, 'Drugs for cough & cold', 'Combined cough suppressants', 'SUDOCOF', 'Dextromethorphan hydrobromide 10mg, pseudoephedrine hydrochloride 30mg & triprolidine hydrochloride 1.25mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 50.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(343, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'AMBOLYT', 'Ambroxol hydrochloride BP 15mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(344, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'AMBOLYT', 'Ambroxol hydrochloride BP 6mg/ml drop', 'Drop', 'Incepta Pharmaceuticals Ltd.', '15ml bot: 20.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(345, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'MUCOLYT 8', 'Bromhexine hydrochloride BP 8mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(346, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'MUCOLYT', 'Bromhexine hydrochloride BP 4mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(347, 'Drugs for cough & cold', 'Combined cough expectorants', 'AQUAPHEN', 'Pseudoephedrine BP 30mg, guaiphenesin BP 100mg & triprolidine BP 1.25mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 32.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(348, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'ESONIX', 'Esomeprazole INN 20mg & 40mg/tablet', 'Tablet(enteric coated )', 'Incepta Pharmaceuticals Ltd.', '20mg x 50s pack: 200.00 MRP; 40mg x 30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(349, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'PANTONIX', 'Pantoprazole sodium sesquihydrate 20mg & 40mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '20mg x 50s pack: 150.00 MRP; 40mg x 50s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(350, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'PANTONIX', 'Pantoprazole sodium sesquihydrate 40mg/ampoule', 'I.V Injection', 'Incepta Pharmaceuticals Ltd.', '40mg amp x 1s pack: 70.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(351, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'RASONIX', 'Rabeprazole sodium INN 20mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '20mg x 50s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(352, 'Drugs for diarrhoea', 'Anti-diarrhoeal Antiprotozoal', 'NITAZOX', 'Nitazoxanide INN 500mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(353, 'Drugs for diarrhoea', 'Anti-diarrhoeal Antiprotozoal', 'NITAZOX', 'Nitazoxanide INN l00mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '30ml bot: 35.00 MRP; 60ml bot: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(354, 'Drugs for chronic inflammatory disease', 'Drugs for Irritable Bowel Syndrome', 'DORESA', 'Tegaserod maleate INN 6mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(355, 'Local preparation for anal and rectal disorder', 'Phlebotonic & Vascular protecting preparations', 'DIORIN', 'Micronised diosmin INN 450mg & hesperidin INN 50mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(356, 'Drugs for hypertension', 'Angiotensin-II receptor blocker', 'VALSARTIL', 'Valsartan 40mg, 80mg & 160mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '40mg x 30s pack: 150.00 MRP; 80mg x 30s pack: 270.00 MRP; 160mg x 30s pack: 480.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(357, 'Drugs for angina & ischaemic heart diseases', 'Nitrates: Coronary vasodilators', 'TROCER 2.6', 'Glyceryl trinitrate (nitroglycerin) 2.6mg/tablet', 'Tablet (sustained release)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(358, 'Drugs for angina & ischaemic heart diseases', 'Nitrates: Coronary vasodilators', 'TROCER 2.6', 'Glyceryl trinitrate (nitroglycerin) 2.6mg/capsule', 'Capsule (sustained release)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(359, 'Drugs for angina & ischaemic heart diseases', 'Nitrates: Coronary vasodilators', 'ANGIFIX 20', 'Isosorbide-5-mononitrate 20mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 71.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(360, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'AMLOTAB', 'Amlodipine 5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '5mg x 50s pack: 175.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(361, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'LITIZEM', 'Diltiazem hydrochloride 30mg & 60mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30mg x 50s pack: 100.00 MRP ; 60mg x 30s pack: 114.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(362, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'LARCADIP', 'Lercanidipine hydrochloride INN 10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(363, 'Drugs for hypertension', 'Thiazide diuretics', 'ACUREN', 'Hydrochlorothiazide 25mg & 50mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '25mg x 100s pack: 70.00 MRP; 50mg x 100s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(364, 'Drugs for hypertension', 'Thiazide diuretics', 'IDATIX', 'Indapamide 2.5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(365, 'Drugs for hypertension', 'Thiazide diuretics', 'IDATIX SR', 'Indapamide 1.5mg/tablet', 'Tablet (sustained release)', 'Incepta Pharmaceuticals Ltd.', '50s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(366, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'VERACAL', 'Verapamil hydrochloride 40mg & 80mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '40mg x 50s pack: 112.50 MRP ; 80mg x 50s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(367, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'VERACAL SR 180', 'Verapamil hydrochloride 180mg/tablet', 'Tablet (sustained release)', 'Incepta Pharmaceuticals Ltd.', '180mg x 30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(368, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'VERACAL SR', 'Verapamil hydrochloride 240mg/tablet', 'Tablet (sustained release)', 'Incepta Pharmaceuticals Ltd.', '240mg x 30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(369, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'VERACAL', 'Verapamil hydrochloride 2.5mg/ml injection', 'Injection', 'Incepta Pharmaceuticals Ltd.', '2ml ampoule (5mg) x 5s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(370, 'Drugs for angina & ischaemic heart diseases', 'Other Antianginal & Anti-ischaemic drugs', 'FEELNOR', 'Trimetazidine dihydrochloride INN 20mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '50s pack: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(371, 'Drugs for peripheral and cerebral vasodilatation & neurosensory oxygenator', 'Drugs for muscular energy metabolism', 'OCARNIX', 'Levocarnitine USP 330mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '20s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(372, 'Drugs for peripheral and cerebral vasodilatation & neurosensory oxygenator', 'Drugs for muscular energy metabolism', 'OCARNIX', 'Levocarnitine USP 100mg/ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(373, 'Drugs for hypertension', 'Loop diuretics', 'DILAST 20', 'Torasemide INN 20mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '20mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(374, 'Drugs for hypertension', 'Potassium-sparing diuretics & Aldosterone antagonists', 'EPLERON', 'Eplerenone INN 25mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '25mg x 20s pack: 900.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(375, 'Drugs for hypertension', 'Potassium-sparing diuretics with other diuretics', 'EDELOSS', 'Frusemide 20mg & Spironolactone 50mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(376, 'Drugs for hypertension', 'Potassium-sparing diuretics with other diuretics', 'EDELOSS Plus', 'Frusemide 40mg & Spironolactone 50mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(377, 'Drugs for hypertension', 'Beta-adrenoceptor blocking drugs', 'CARVISTA', 'Carvedilol 6.25mg, 12.5mg & 25mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '6.25mg x 100s pack: 300.00 MRP; 12.5mg x 50s pack: 250.00 MRP; 25mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(378, 'Drugs for hypertension', 'Centrally acting antihypertensive drugs(central sympatholytic)', 'SARDOPA', 'Methyldopa 250mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 154.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(379, 'Drugs for hypertension', 'Beta-adrenoceptor blocking drugs', 'PRESONIL', 'Metoprolol tartrate 50mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 130.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(380, 'Drugs for hypertension', 'Alpha adrenoceptor blocking drugs', 'TERAZON', 'Terazosin hydrochloride 2mg & 5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '2mg x 50s pack: 250.00 MRP; 5mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(381, 'Anticoagulants', 'Parenteral anticoagulants', 'PARINOX', 'Enoxaperin sodium 20mg(2000IU)/ampoule,40mg(400IU)/ampoule & 60mg(6000IU)/ampoule & 80mg(8000IU)/ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '20mg ampoule: 175.00 MRP; 40mg ampoule: 325.00 MRP; 60mg ampoule: 475.00 MRP; 80mg ampoule: 525.00 M', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(382, 'Anticoagulants', 'Oral Anticoagulants', 'WARIN', 'Warfarin sodium 5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(383, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antiplatelet drugs', 'LOPIREL', 'Clopidogrel bisulphate INN equivalent to clopidogrel 75mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(384, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antiplatelet drugs', 'LOPIREL Plus', 'Clopidogrel bisulphate INN equivalent to clopidogrel 75mg & aspirin BP 75mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '20s pack: 220.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43');
INSERT INTO `medicine` (`id`, `drug_for`, `drug_class`, `brand_name`, `contains`, `type`, `manufacturer`, `price`, `created_at`, `updated_at`) VALUES
(385, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antifibrinolytic drugs', 'K MM', 'Phytomenadione 10mg/1ml ampoule', 'Injection (Oral/IM/IV)', 'Incepta Pharmaceuticals Ltd.', '10mg ampoule x 5s pack: 228.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(386, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antifibrinolytic drugs', 'K MM', 'Phytomenadione 2mg/0.2ml ampoule', 'Injection (Oral/IM/IV)', 'Incepta Pharmaceuticals Ltd.', '2mg ampoule x 5s pack: 99.10 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(387, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antifibrinolytic drugs', 'INTRAX', 'Tranexamic acid 500mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '20s pack: 320.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(388, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antifibrinolytic drugs', 'INTRAX', 'Tranexamic acid 500mg/5ml ampoule', 'Injection (IV/IM)', 'Incepta Pharmaceuticals Ltd.', '5 ampoules pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(389, 'Drugs for lipid regulation', 'Ezetimibe', 'EZETIM', 'Ezetimibe INN 10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(390, 'Drugs for lipid regulation', 'Fibrates', 'NOFIATE', 'Fenofibrate BP 200mg/capsule', 'Capsule (Micronized)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(391, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'FIXOCARD 25', 'Atenolol 25mg & amlodipine 5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 212.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(392, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'FIXOCARD 50', 'Atenolol 50mg & amlodipine 5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 225.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(393, 'Drugs for lipid regulation', 'Statins', 'TIGINOR', 'Atorvastatin 10mg & 20mg /tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '10mg x 30s pack: 240.00 MRP; 20mg x 20s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(394, 'Drugs for lipid regulation', 'Statins', 'VASTOCOR', 'Simvastatin 10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(395, 'Drugs for lipid regulation', 'Nicotinic acid group', 'NTCOSIT', 'Inositol nicotinate BP 500mg & 750mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '500mg x 20s pack: 100.00 MRP; 750mg x 20s pack: 140.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(396, 'Drugs for lipid regulation', 'Nicotinic acid group', 'RIDEL', 'Inositol nicotinate (niacin) BP 500mg/tablet', 'Tablet (Extended Release)', 'Incepta Pharmaceuticals Ltd.', '500mg x 20s pack: 280.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(397, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'BENADIP 10/2.5', 'Benazepril 10mg & amlodipine 2.5mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '20s pack: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(398, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'BENADIP 10/5', 'Benazepril 10mg & amlodipine 5mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '20s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(399, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'BENADIP 20/5', 'Benazepril 20mg & amlodipine 5mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '20s pack: 160.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(400, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'INDAPRIL 2', 'Indapamide 0.625mg and perindopril erbumine 2mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(401, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'INDAPRIL 4', 'Indapamide 1.25mg and perindopril erbumine 4mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '20s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(402, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'OSARTIL 50 Plus', 'Losartan potassium 50mg & hydrochlorothiazide 12.5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(403, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'OSARTIL 100 Plus', 'Losartan potassium 100mg & hydrochlorothiazide 12.5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(404, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'RAMORIL 2.5 Plus', 'Ramipril BP 2.5mg & hydrochlorothiazide BP 12.5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(405, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'RAMORIL 5 Plus', 'Ramipril BP 5mg & hydrochlorothiazide BP 25mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(406, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'AMLOSARTAN 80/5', 'Valsartan INN USP 80mg & Amlodipine BP 5mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 270.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(407, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'AMLOSARTAN 160/5', 'Valsartan INN USP 160mg & Amlodipine BP 5mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 480.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(408, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'AMLOSARTAN 160/10', 'Valsartan INN USP 160mg & Amlodipine BP 10mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 480.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(409, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'VALSARTIL 80 Plus', 'Valsartan INN USP 80mg + hydrochlorothiazide BP 12.5mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 270.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(410, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'VALSARTIL 160/12.5', 'Valsartan INN USP 160mg + hydrochlorothiazide BP 12.5mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 480.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(411, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'VALSARTIL 160 Plus', 'Valsartan INN USP 160mg + hydrochlorothiazide BP 25mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 480.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(412, 'Drugs for psychosis', 'Butyrophenone drugs', 'HALOPID', 'Haloperidol 5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '5mg x 100s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(413, 'Drugs for psychosis', 'Butyrophenone drugs', 'HALOPID', 'Haloperidol 5mg/1ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '10 ampoules pack: 108.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(414, 'Drugs for psychosis', 'Atypical neuroleptic drugs', 'ARIPRA', 'Aripiprazole INN 10mg & 15mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '10mg x 30s pack: 150.00 MRP; 15mg x 30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(415, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine hypnotics', 'HYPNOFAST', 'Midazolam 7.5mg & 15mg/ tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '7.5mg x 30s pack: 240.00 MRP ; 15mg x 10s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(416, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine hypnotics', 'HYPNOFAST', 'Midazolam 5mg/lml ampoule, 5mg/5ml ampoule & 15mg/3ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '1ml ampoule x 1s pack: 50.00 MRP ; 5ml ampoule x 1s pack: 55.00 MRP ; 3ml ampoule x 1s pack: 150.00', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(417, 'Drugs for psychosis', 'Atypical neuroleptic drugs', 'OLANAP', 'Olanzapine INN 5mg & 10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '5mg x 50s pack: 75.00 MRP; 10mg x 50s pack: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(418, 'Drugs for Sedation & Hypnosis', 'Non-Benzodiazepine hypnotics', 'ZOPILONE', 'Eszopiclone INN 1mg & 2mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '1mg x 50s pack: 100.00 MRP ; 2mg x 50s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(419, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'ZOLIUM', 'Alprazolam 0.25mg & 0.5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '0.25mg x 100s pack: 100.00 MRP ; 0.5mg x 100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(420, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'SIESTA', 'Bromazepam BP 3mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 75.00MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(421, 'Drugs for psychosis', 'Atypical neuroleptic drugs', 'QUIET', 'Quetiapine fumarate INN equivalent to quetiapine 25mg & 100mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '25mg x 50s pack: 150.00 MRP; 100mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(422, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'LOZICUM', 'Lorazepam USP 1mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '1mg x 100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(423, 'Drugs for psychosis', 'Atypical neuroleptic drugs', 'FRENIA', 'Risperidone INN 1mg, 2mg & 4mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '1mg x 50s pack: 75.00 MRP; 2mg x 50s pack: 125.00 MRP; 4mg x 30s pack: 105.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(424, 'Drugs for psychosis', 'Phenothiazine drugs', 'FENAZINE', 'Fluphenazine decanoate 25mg/lml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '1ml ampoule x 5s pack; 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(425, 'Drugs for depression', 'SSRIs & related antidepressant drugs', 'ARPOLAX', 'Citalopram hydrobromide INN equivalent to Citalopram 20mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '20mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(426, 'Drugs for psychosis', 'Phenothiazine related drugs', 'TENAXIT', 'Flupenthixol dihydrochloride 0.5mg & melitracen hydrochloride 10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 175.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(427, 'Drugs for depression', 'SSRIs & related antidepressant drugs', 'DULOXEN', 'Duloxetine hydrochloride INN equivalent to Duloxetine 20mg & 30mg/tablet', 'Tablet (Enteric Coated)', 'Incepta Pharmaceuticals Ltd.', '20mg x 30 s pack: 210.00 MRP; 30mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(428, 'Drugs for depression', 'SSRIs & related antidepressant drugs', 'REPOSE', 'Sertraline hydrochloride INN 25mg, 50mg & 100mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '25mg x 50s pack: 150.00 MRP; 50mg x 50s pack: 250.00 MRP; 100mg x 30s pack: 285.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(429, 'Drugs for viral infections', 'Hepatic viral infections (Hepatitis B)', 'LAMIVIR', 'Lamivudine INN 150mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '20s pack: 500.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(430, 'Drugs for viral infections', 'Hepatic viral infections (Hepatitis B)', 'INFOVIR', 'Adefovir dipivoxil INN 10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '10s pack: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(431, 'Drugs for viral infections', 'Hepatic viral infections (Hepatitis B)', 'BARCAVIR', 'Entecavir INN 0.5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '10s pack: 650.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(432, 'Drugs for nausea, vomiting & vertigo', 'Antiemetic drugs', 'EMENIL', 'Meclizine hydrochloride 50mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '100s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(433, 'Drugs for nausea, vomiting & vertigo', 'Antiemetic drugs', 'EMENIL Plus', 'Meclizine hydrochloride USP 25mg & Pyridoxine hydrochloride BP 50mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(434, 'Drugs for nausea, vomiting & vertigo', 'Anti vertigo drugs', 'MENARIL', 'Betahistine dihydrochloride INN 8mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(435, 'Drugs for nausea, vomiting & vertigo', 'Antiemetic drugs', 'ONASERON', 'Ondansetron hydrochloride dihydrate 8mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '8mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(436, 'Drugs for nausea, vomiting & vertigo', 'Antiemetic drugs', 'ONASERON', 'Ondansetron hydrochloride dihydrate BP 2.49mg equivalent to ondansetron 8mg/4ml ampoule', 'Injection (IV)', 'Incepta Pharmaceuticals Ltd.', '4ml ampoule x 5s pack: 125.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(437, 'Drugs for epilepsy', 'Primary drugs', 'CARMAPINE', 'Carbamazepine BP 200mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(438, 'Drugs for epilepsy', 'Primary drugs', 'CARMAPINE CR', 'Carbamazepine 200mg/tablet', 'Tablet (Controlled Release)', 'Incepta Pharmaceuticals Ltd.', '50s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(439, 'Drugs for epilepsy', 'Primary drugs', 'CARMAPINE', 'Carbamazepine 100mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(440, 'Drugs for epilepsy', 'Primary drugs', 'DISOPAN', 'Clonazepam 0.5mg & 2mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '0.5mg x 100s pack: 200.00 MRP ; 2mg x 50s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(441, 'Drugs for epilepsy', 'Primary drugs', 'DISOPAN', 'Clonazepam 2.5mg/ml drop', 'Drop', 'Incepta Pharmaceuticals Ltd.', '10ml drop: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(442, 'Drugs for epilepsy', 'Adjunct drugs', 'GABAPEN', 'Gabapentin INN 300mg & 600mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '300mg x 30s pack: 480.00 MRP ; 600mg x 20s pack: 600.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(443, 'Drugs for epilepsy', 'Primary drugs', 'OXAZEP', 'Oxcarbazepine INN 300mg & 600mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '300mg x 30s pack: 540.00 MRP ; 600mg x 20s pack: 600.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(444, 'Drugs for epilepsy', 'Primary drugs', 'OXAZEP', 'Oxcarbazepine INN 300mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(445, 'Drugs for epilepsy', 'Primary drugs', 'BARBIT', 'Phenobarbitone BP 30mg & 60mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30mg x 100s pack: 78.00 MRP ; 60mg x 100s pack: 114.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(446, 'Drugs for epilepsy', 'Primary drugs', 'BARBIT', 'Phenobarbitone sodium BP 200mg/1ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '1ml ampoule: x 5s pack: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(447, 'Drugs for epilepsy', 'Other antiepileptic drugs', 'PREGABEN', 'Pregabalin INN 75mg & 150mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '75mg x 30s pack: 480.00 MRP ; 150mg x 20s pack: 600.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(448, 'Drugs for epilepsy', 'Primary drugs', 'VALEX', 'Sodium valproate 200mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(449, 'Drugs for epilepsy', 'Primary drugs', 'VALEX CR 200', 'Sodium valproate BP 133.2mg & valproic acid BP 58mg equivalent to sodium valproate 200mg/tablet', 'Tablet (Controlled Release)', 'Incepta Pharmaceuticals Ltd.', '200mg x 50s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(450, 'Drugs for epilepsy', 'Primary drugs', 'VALEX CR 300', 'Sodium valproate BP 199.8mg & valproic acid BP 87mg equivalent to sodium valproate 300mg/tablet', 'Tablet (Controlled Release)', 'Incepta Pharmaceuticals Ltd.', '300mg x 50s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(451, 'Drugs for epilepsy', 'Primary drugs', 'VALEX CR 500', 'Sodium valproate BP 333mg & valproic acid BP 145mg equivalent to sodium valproate 500mg /tablet', 'Tablet (Controlled Release)', 'Incepta Pharmaceuticals Ltd.', '500mg x 28s pack: 280.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(452, 'Drugs for epilepsy', 'Primary drugs', 'VALEX', 'Valproic acid as sodium valproate 200mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(453, 'Drugs for epilepsy', 'Adjunct drugs', 'TOPIRVA', 'Topiramate INN 25mg & 50mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '25mg x 50s pack: 150.00 MRP ; 50mg x 50s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(454, 'Drugs for neurodegenerative diseases', 'Anti – Parkinson drugs', 'ROPINOL', 'Ropinirole hydrochloride INN 0.25mg, 1mg & 2mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '0.25mg x 50s pack: 100.00 MRP ; 1mg x 30s pack: 120.00 MRP ; 2mg x 30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(455, 'Drugs for neurodegenerative diseases', 'Anti – Parkinson drugs', 'CYCLID 5', 'Procyclidine hydrochloride 5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(456, 'Drugs for neurodegenerative diseases', 'Anti – Parkinson drugs', 'CYCLID', 'Procyclidine hydrochloride 10mg/2ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '1 ampoule pack: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(457, 'Drugs for other CNS diseases', 'Appetite suppressant drugs', 'ADIPONIL', 'Orlistat 120mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '10s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(458, 'Drugs for neurodegenerative diseases', 'Anti – Alzheimer drugs', 'AMELOSS', 'Donepezil hydrochloride INN 5mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '5mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(459, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'INCLOX', 'Flucloxacillin 250mg & 500mg /capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '250mg x 50s pack: 275.00 MRP ; 500mg x 50s pack: 500.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(460, 'Insulin preparations', 'Short Acting Insulin', 'MAXSULIN R', 'Soluble or regular human insulin (rDNA) BP 40 i.u/ml & 100 i.u/ml', 'Injection', 'Incepta Pharmaceuticals Ltd.', '40 i.u x 10ml vial: 195.00 MRP; 100 i.u x 10ml vial: 415.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(461, 'Insulin preparations', 'Medium Acting Insulin', 'MAXSULIN 30/70', 'Biphasic human insulin (rDNA), as soluble (regular) human insulin 30% & isophane human insulin (NPH) 70%; 40 i.u/ml & 100 i.u/ml', 'Injection', 'Incepta Pharmaceuticals Ltd.', '40 i.u x 10ml vial: 195.00 MRP ;100 i.u x 10ml vial: 415.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(462, 'Insulin preparations', 'Medium Acting Insulin', 'MAXSULIN 50/50', 'Biphasic human insulin (rDNA), as soluble (regular) human insulin 50% & isophane human insulin (NPH) 50%; 100 i.u/ml', 'Injection', 'Incepta Pharmaceuticals Ltd.', '100 i.u x 10ml vial: 415.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(463, 'Insulin preparations', 'Medium Acting Insulin', 'MAXSULIN N', 'Neutral isophane human insulin (rDNA) BP 40 i.u/ml & 100 i.u/ml', 'Injection', 'Incepta Pharmaceuticals Ltd.', '40 i.u x 10ml vial: 195.00 MRP ; 100 i.u x 10ml vial: 415.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(464, 'Oral hypoglycemic drugs', 'Sulfonylureas', 'CONSUCON', 'Gliclazide 80mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 300,00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(465, 'Oral hypoglycemic drugs', 'Sulfonylureas', 'CONSUCON MR', 'Gliclazide 30mg/tablet', 'Tablet (Modified Release)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(466, 'Oral hypoglycemic drugs', 'Sulfonylureas', 'LOSUCON', 'Glimepiride INN 1mg & 2mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '1mg x 50s pack: 150.00 MRP; 2mg x 50s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(467, 'Oral hypoglycemic drugs', 'Thiazolidinedione Group', 'PIODAR', 'Pioglitazone hydrochloride INN 15mg & 30mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '15mg x 30s pack: 240.00 MRP; 30mg x 20s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(468, 'Oral hypoglycemic drugs', 'Combination preparations', 'MEFOGLIP 250', 'Glipizide 2.5mg + Metformin hydrochloride 250mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '50s pack: 95.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(469, 'Oral hypoglycemic drugs', 'Combination preparations', 'MEFOGLIP 500', 'Glipizide 2.5mg + Metformin hydrochloride 500mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 84.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(470, 'Oral hypoglycemic drugs', 'Combination preparations', 'MEFOGLIP DS', 'Glipizide 5mg + Metformin hydrochloride 500mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30spack: 111.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(471, 'Oral hypoglycemic drugs', 'Combination preparations', 'COMPIMET 500', 'Pioglitazone 15mg + Metformin hydrochloride 500mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 270.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(472, 'Oral hypoglycemic drugs', 'Combination preparations', 'COMPIMET 850', 'Pioglitazone 15mg + Metformin hydrochloride 850mg/tablet', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(473, 'Thyroid hormones & Anti Thyroid drugs', 'Thyroid drugs & hormones', 'EUTHYCIN', 'Levothyroxine sodium 50mcg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(474, 'Corticosteroid hormones', 'Glucocorticoids', 'INTASONE', 'Hydrocortisone sodium succinate 100mg/2ml vial', 'Injection', 'Incepta Pharmaceuticals Ltd.', '100mg (2ml) vial: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(475, 'Corticosteroid hormones', 'Glucocorticoids', 'CORTAN', 'Prednisolone 5mg, 10mg & 20mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '5mg x 200s pack: 150.00 MRP; 10mg x 100s pack: 120.00 MRP; 20mg x 50s pack: 107.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(476, 'Oral hypoglycemic drugs', 'Biguanides', 'NOBESIT', 'Metformin hydrochloride 500mg & 850mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '500mg x 50s pack: 100.00 MRP; 850mg x 50s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(477, 'Oral hypoglycemic drugs', 'Biguanides', 'NOBESIT XR 500', 'Metformin hydrochloride 500mg/tablet', 'Tablet (Extended Release)', 'Incepta Pharmaceuticals Ltd.', '500mg x 50s pack: 200.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(478, 'Oral hypoglycemic drugs', 'Meglitinide Analogues', 'NOMOPIL', 'Repaglinide INN 0.5mg, 1mg & 2mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '0.5mg x 100s pack: 200.00 MRP; 1mg x 100s pack: 300.00 MRP; 2mg x 50s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(479, 'Gonadal hormones (sex hormones) and their antagonists', 'Male Sex hormones (Androgens)', 'Y-45', 'Testosterone USP 1% (10mg/gm)', 'Gel', 'Incepta Pharmaceuticals Ltd.', '20gm gel tube: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(480, 'Hypothalamic & Pituitary hormones & Anti oestrogens', 'Drugs for Infertility', 'OVUCLON', 'Clomiphene citrate 50mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50mg x 30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(481, 'Hypothalamic & Pituitary hormones & Anti oestrogens', 'Drugs for menopausal symptoms: Hormone replacement therapy', 'UBILON', 'Tibolone INN 2.5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 600.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(482, 'Other hormonal drugs', 'Drugs affecting (inhibiting) gonadotrophin', 'LOZANA', 'Danazol 100mg & 200mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '100mg x 20s pack: 400.00 MRP; 200mg x 14s pack: 532.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(483, 'Drugs for bacterial infections', 'Aminoglycosides', 'INTAMYCIN', 'Gentamicin sulphate 20mg & 80mg/2ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '20mg (2ml) x 10 ampoules pack: 60.00 MRP; 80mg (2ml) x 10 ampoules pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(484, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'RESET', 'Paracetamol 500mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '200s pack: 160.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(485, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'RESET', 'Paracetamol 125mg/5ml', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '60ml bot: 16.28 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(486, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'RESET', 'Paracetamol 80mg/ml', 'Paediatric Drop', 'Incepta Pharmaceuticals Ltd.', '15ml bot: 12.27 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(487, 'Drugs for bacterial infections', 'Macrolides', 'FIRMAC', 'Erythromycin 250mg & 500mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '250mg x 50s pack: 225.00 MRP; 500mg x 30s pack: 258.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(488, 'Drugs for bacterial infections', 'Macrolides', 'FIRMAC', 'Erythromycin 125mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(489, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'NEFOREX', 'Nefopam hydrochloride INN 20mg/1ml ampoule', 'i.m/i.v Injection', 'Incepta Pharmaceuticals Ltd.', '1ml amp x 5s pack: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(490, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'NEFOREX', 'Nefopam hydrochloride INN 30mg/tablet', 'Tablet (film-coated)', 'Incepta Pharmaceuticals Ltd.', '30mg x 30s pack: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(491, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'RESET Plus', 'Paracetamol BP 500mg + caffeine USP 65mg/tablet', 'Tablet (film-coated)', 'Incepta Pharmaceuticals Ltd.', '100s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(492, 'Drugs for Acute Migraine Attack', '5-HT Agonists', 'ZOMITAN', 'Zolmitriptan INN 2.5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '10s pack: 250.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(493, 'Drugs for bacterial infections', 'Macrolides', 'TRIDOSIL', 'Azithromycin 250mg & 500mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '250mg x 6s pack: 120.00 MRP; 500mg x 6s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(494, 'Drugs for bacterial infections', 'Macrolides', 'TRIDOSIL', 'Azithromycin 200mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '20ml bot: 85.00 MRP; 35ml bot: 130.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(495, 'Drugs for bacterial infections', 'Macrolides', 'TRIDOSIL IV', 'Azithromycin dihydrate USP 500mg/5ml vial', 'Injection (IV)', 'Incepta Pharmaceuticals Ltd.', '500mg (5ml vial) x 1s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(496, 'Analgesics & Antipyretics', 'Opoid analgesics', 'NALBUN', 'Nalbuphine hydrochloride INN 10mg in 1ml ampoule and 20mg in 2ml ampoule', 'i.m/i.v Injection', 'Incepta Pharmaceuticals Ltd.', '1ml (l0mg) amp x 5s pack: 300.00 MRP 2ml (20mg) amp x 5s pack: 500.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(497, 'Drugs for bacterial infections', 'Macrolides', 'PEDILID', 'Roxithromycin BP 150mg & 300mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '150mg x 50s pack: 350.00 MRP; 300mg x 30s pack: 420.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(498, 'Drugs for bacterial infections', 'Macrolides', 'PEDILID', 'Roxithromycin BP 50mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(499, 'Drugs for bacterial infections', 'Miscellaneous Antibiotics', 'CLINDACIN', 'Clindamycin hydrochloride 150mg & 300mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '150mg x 30s pack: 240.00 MRP; 300mg x 30s pack: 450.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(500, 'Drugs for bacterial infections', 'Miscellaneous Antibiotics', 'CLINDACIN 300', 'Clindamycin phosphate BP equivalent to Clindamycin 300mg/2ml ampoule', 'Injection (IV/IM)', 'Incepta Pharmaceuticals Ltd.', '300mg (2ml) amp x 5s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(501, 'Drugs for bacterial infections', 'Miscellaneous Antibiotics', 'CLINDACIN 600', 'Clindamycin phosphate BP equivalent to Clindamycin 600mg/4ml ampoule', 'Injection (IV/IM)', 'Incepta Pharmaceuticals Ltd.', '600mg (4ml) amp x 5s pack: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(502, 'Analgesics & Antipyretics', 'Opoid analgesics', 'WINPAIN', 'Tramadol hydrochloride 50mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '50mg x 40s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(503, 'Analgesics & Antipyretics', 'Opoid analgesics', 'WINPAIN', 'Tramadol hydrochloride 50mg/ml & 100mg/2ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '50mg (1ml) amp x 5s pack: 75.00 MRP; 100mg (2ml) amp x 5s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(504, 'Analgesics & Antipyretics', 'Topical Analgesics', 'TOPICACIN', 'Capsaicin USP 0.25mg (i.e 0.025% w/w)/1gm cream', 'Cream', 'Incepta Pharmaceuticals Ltd.', '20gm tube: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(505, 'Analgesics & Antipyretics', 'Topical Analgesics', 'SALINIX 15', 'Methyl salicylate BP 150mg (0.15gm or 15%) and menthol BP 100mg (0.10gm or 10%)/1 gm cream', 'Cream', 'Incepta Pharmaceuticals Ltd.', '20gm tube: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(506, 'Analgesics & Antipyretics', 'Topical Analgesics', 'SALINIX 30', 'Methyl salicylate BP 0.30gm (30%) and menthol BP 0.08gm (8%).', 'Cream', 'Incepta Pharmaceuticals Ltd.', '20gm tube: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(507, 'Drugs for bacterial infections', 'Oxazolidinones', 'TINOBAC', 'Spectinomycin 2gm vial', 'Injection', 'Incepta Pharmaceuticals Ltd.', '2gm vial: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(508, 'Drugs for bacterial infections', 'Oxazolidinones', 'VANMYCIN', 'Vancomycin hydrochloride USP 500mg/vial & 1gm/vial', 'Injection', 'Incepta Pharmaceuticals Ltd.', '500mg vial x 1s pack: 250.00 MRP; 1gm vial x 1s pack: 480.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(509, 'Drugs for bacterial infections', 'Oxazolidinones', 'TERGOCIN', 'Teicoplanin INN 200mg lyophilized powder/vial', 'Injection (IV/IM)', 'Incepta Pharmaceuticals Ltd.', '200mg vial x 1s pack: 1600.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(510, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'RESERVIX', 'Aceclofenac BP 100mg/tablet', 'Tablet (film-coated)', 'Incepta Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(511, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'CELENTA', 'Celecoxib INN 100mg & 200mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '100mg x 50s pack: 225.00 MRP; 200mg x 40s pack: 320.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(512, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'PURIFEN', 'Dexibuprofen INN 200mg, 300mg &400mg/tablet.', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '200mg x 20s pack: 60.00 MRP; 300mg x 20s pack: 80.00 MRP; 400mg x 20s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(513, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'ACTIDEX', 'Dexketoprofen trometamol equivalent to dexketoprofen INN 25mg/tablet.', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(514, 'Drugs for bacterial infections', '4-Quinolone preparations', 'BEUFLOX', 'Ciprofloxacin 250mg, 500mg & 750mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '250mg x 18s pack: 153.00 MRP; 500mg x 20s pack: 280.00 MRP; 750mg x 20s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(515, 'Drugs for bacterial infections', '4-Quinolone preparations', 'BEUFLOX', 'Ciprofloxacin 250mg granules/sachet', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '250mg sachet x 14s pack: 168.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(516, 'Drugs for bacterial infections', '4-Quinolone preparations', 'BEUFLOX', 'Ciprofloxacin 125mg granules/sachet', 'Suspension (Paediatric)', 'Incepta Pharmaceuticals Ltd.', '125mg sachet x 14s pack: 112.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(517, 'Drugs for bacterial infections', '4-Quinolone preparations', 'BEUFLOX', 'Ciprofloxacin 200mg in 100ml bottle & 400mg in 200mL bottle', 'Infusion (IV)', 'Incepta Pharmaceuticals Ltd.', '100ml (200mg) bot: 70.00 MRP; 200ml (400mg) bot: 130.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(518, 'Drugs for bacterial infections', '4-Quinolone preparations', 'GATIFLOX', 'Gatifloxacin INN 400mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '400mg x 20s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(519, 'Drugs for bacterial infections', '4-Quinolone preparations', 'LEVOXIN', 'Levofloxacin hemihydrate INN 250mg, 500mg & 750mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '250mg x 30s pack: 240.00 MRP; 500mg x 20s pack: 300.00 MRP; 750mg x 10s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(520, 'Drugs for bacterial infections', '4-Quinolone preparations', 'LEVOXIN', 'Levofloxacin hemihydrate INN 125mg/5ml syrup', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(521, 'Drugs for bacterial infections', '4-Quinolone preparations', 'LEVOXIN IV', 'Levofloxacin hemihydrate INN 500mg/100ml bottle', 'Infusion (IV)', 'Incepta Pharmaceuticals Ltd.', '500mg (100ml) bot: x 1s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(522, 'Drugs for viral infections', 'Hepatic viral infections (Hepatitis C)', 'CELBARIN', 'Ribavirin BP 200mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '20s pack: 700.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(523, 'Drugs for fungal infections', 'Drugs for subcutaneous and systemic mycoses', 'NISPORE', 'Fluconazole 50mg & 150mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '50mg x 30s pack: 240.00 MRP; 150mg x 10s pack: 220.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(524, 'Drugs for fungal infections', 'Drugs for subcutaneous and systemic mycoses', 'NISPORE', 'Fluconazole 50mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '35ml bot: 78.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(525, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'INTAFENAC 50', 'Diclofenac sodium 50mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '200s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(526, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'INTAFENAC', 'Diclofenac sodium 75mg/3ml ampoule', 'Injection (deep i.m)', 'Incepta Pharmaceuticals Ltd.', '10 amps pack: 95.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(527, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'INTAFENAC Plus', 'Diclofenac sodium 75mg & lidocaine hydrochloride 20mg/2ml', 'Injection (deep i.m)', 'Incepta Pharmaceuticals Ltd.', '2ml amp x 10s pack: 95.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(528, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'ADORA', 'Cefadroxil monohydrate USP 500mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '500mg x 20s: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(529, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'ADORA', 'Cefadroxil monohydrate 125rng/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '60ml bot: 50.00 MRP; 100ml bot: 70.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(530, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'ADORA', 'Cefadroxil monohydrate 100mg/1ml drop', 'Drop', 'Incepta Pharmaceuticals Ltd.', '15ml bot: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(531, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'INTAFENAC K', 'Diclofenac potassium 50mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50mg x 50s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(532, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'EDOPAIN', 'Etodolac BP 300mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '300mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(533, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'EDOPAIN 600 ER', 'Etodolac USP 600mg/tablet', 'Tablet (extended release)', 'Incepta Pharmaceuticals Ltd.', '600mg x 20s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(534, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'ORICOX', 'Etoricoxib INN 60mg, 90mg & 120mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '60mg x 30s pack: 210.00 MRP; 90mg x 30s pack: 360.00 MRP; 120mg x 20s pack: 280.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(535, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'WAKOFLEX', 'Ketoprofen 50mg & 100mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50mg x 50s pack: 175.00 MRP; 100mg x 50s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(536, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'WAKOFLEX', 'Ketoprofen 2.5% w/w gel, containing ethyl alcohol, triethanolamine & lavender oil', 'Gel', 'Incepta Pharmaceuticals Ltd.', '30gm tube: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(537, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'WAKOFLEX', 'Ketoprofen 100mg/2ml ampoule', 'Injection (i.m)', 'Incepta Pharmaceuticals Ltd.', '5 amps pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(538, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'TICOFLEX', 'Naproxen sodium 250mg & 500mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '15gm pack: 62.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(539, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'TICOFLEX SR', 'Naproxen sodium 500mg/tablet', 'Tablet (sustained release)', 'Incepta Pharmaceuticals Ltd.', '250mg x 50s pack: 200.00 MRP; 500mg x 50s pack: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(540, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'TICOFLEX', 'Naproxen sodium 125mg/5ml: suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(541, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'TICOFLEX', 'Naproxen 10% w/w gel preparation', 'Gel', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(542, 'Drugs for Inflammation and Rheumatic Diseases', 'Drugs used for Rheumatoid Arthritis', 'RECONIL', 'Hydroxychloroquine sulphate BP 200mg/ tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(543, 'Drugs for Inflammation and Rheumatic Diseases', 'Drugs used for Rheumatoid Arthritis', 'NODIA', 'Leflunomide INN 10mg, 20mg &100mg/tablet', 'Tablet (film-coated)', 'Incepta Pharmaceuticals Ltd.', '10mg x 100s pack: 300.00 MRP; 20mg x 50s pack: 250.00 MRP; 100mg x 3s pack: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(544, 'Drugs for Inflammation and Rheumatic Diseases', 'Drugs used in Gout', 'ALUROL', 'Allopurinol 100mg/tablet.', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100mg x 100s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(545, 'Drugs for Neuromuscular Disorders', 'Locally acting Skeletal Muscle Relaxants', 'FLEXOR', 'Cyclobenzaprine hydrochloride USP 5mg & 10mg/tablet.', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '5mg x 100s pack: 200.00 MRP; 10mg x 100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(546, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'PROCEF', 'Cephradine 250mg & 500mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '250mg x 20s pack: 130.00 MRP; 500mg x 20s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(547, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'PROCEF', 'Cephradine 125mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(548, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'PROCEF Forte', 'Cephradine 250mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(549, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'PROCEF', 'Cephradine 100mg/1ml drop', 'Drop', 'Incepta Pharmaceuticals Ltd.', '15ml bot: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(550, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'PROCEF', 'Cephradine 250mg, 500mg & 1gm/vial', 'Injection (IV/IM)', 'Incepta Pharmaceuticals Ltd.', '250mg vial x 4s pack: 120.00 MRP; 500mg vial x 4s pack: 200.00 MRP; 1gm vial x 1s pack: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(551, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'XIMEPROX', 'Cefpodoxime proxetil INN 100mg & 200mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100mg x 20s pack: 440.00 MRP; 200mg x 12s pack: 504.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(552, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'XIMEPROX', 'Cefpodoxime proxetil INN 40mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 98.00 MRP; 100ml bot: 195.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(553, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'XIMEPROX DS', 'Cefpodoxime proxetil INN 80mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 175.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(554, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'XIMEPROX', 'Cefpodoxime proxetil INN 20mg/1ml drop', 'Drop', 'Incepta Pharmaceuticals Ltd.', '15ml bot: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(555, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'SIDOBAC', 'Ceftazidime pentahydrate 250mg, 500mg & 1gm vial', 'Injection (IV/IM)', 'Incepta Pharmaceuticals Ltd.', '250mg vial: 70.00 MRP; 500mg vial: 115.00 MRP; 1gm vial: 215.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(556, 'Drugs for Allergic Disorders', 'Sedating Antihistamines', 'ALERVIL', 'Pheniramine maleate 15mg/5ml', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 20.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(557, 'Drugs for protozoal infections', 'Amoebicides', 'FLAMYD', 'Metronidazole 250mg & 500mg tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '250mg x 100s: 78.00 MRP; 500mg x 100s: 135.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(558, 'Drugs for protozoal infections', 'Amoebicides', 'FLAMYD', 'Metronidazole 500mg in 100ml bottle', 'Infusion (IV)', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 53.18 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(559, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'FENOFEX', 'Fexofenadine hydrochloride INN USP 60mg, 120mg & 180mg/tablet.', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '60mg x 30s pack: 105.00 MRP; 120mg x 20s pack: 140.00 MRP; 180mg x 20s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(560, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'FENOFEX', 'Fexofenadine hydrochloride INN USP 30mg/5ml', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 48.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(561, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'SEASONIX', 'Levocetirizine dihydrochloride INN 5mg/tablet.', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(562, 'Drugs for protozoal infections', 'Amoebicides', 'SECNIZOL DS', 'Secnidazole 1gm/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '6s pack: 96.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(563, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'ENCILOR', 'Loratadine INN 10mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(564, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'NEOCILOR', 'Desloratadine INN 5mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(565, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'NEOCILOR', 'Desloratadine INN 2.5mg/5ml', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 25.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(566, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'OTICLOR', 'Cefaclor monohydrate 250mg & 500mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '250mg x 20 s pack: 420.00 MRP; 500mg x 12s pack: 480.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(567, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'OTICLOR', 'Cefaclor monohydrate 125mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(568, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'OTICLOR', 'Cefaclor monohydrate 100mg/1ml drop', 'Drop', 'Incepta Pharmaceuticals Ltd.', '15ml bot:125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(569, 'Drugs for Allergic Disorders', 'Combination Preparation', 'SUDOLOR 120', 'Loratadine USP 5mg & pseudoephedrine hydrochloride USP 120mg/tablet', 'Tablet (extended release)', 'Incepta Pharmaceuticals Ltd.', '50s pack: 175.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(570, 'Drugs for Allergic Disorders', 'Combination Preparation', 'SUDOLOR 240', 'Loratadine USP 10mg & pseudoephedrine hydrochloride USP 240mg/tablet', 'Tablet (extended release)', 'Incepta Pharmaceuticals Ltd.', '50s pack: 300.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(571, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'KILBAC', 'Cefuroxime axetil 125mg, 250mg & 500mg/tablet', 'Tablet (Film Coated)', 'Incepta Pharmaceuticals Ltd.', '125mg x 20s pack: 300.00 MRP; 250mg x 16s pack: 400.00 MRP; 500mg x 8s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(572, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'KILBAC', 'Cefuroxime axetil 125mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '70ml bot: 198.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(573, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'KILBAC DS', 'Cefuroxime axetil 250mg/5ml suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(574, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'KILBAC', 'Cefuroxime (as sodium salt) 250mg/vial & 750mg/vial', 'Injection (IV/IM)', 'Incepta Pharmaceuticals Ltd.', '250mg x 1 vial combipack: 55.00 MRP; 750mg x 1 vial combipack: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(575, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'KILBAC', 'Cefuroxime (as sodium salt) 1.5gm/vial', 'Injection (IV)', 'Incepta Pharmaceuticals Ltd.', '1.5gm x 1 vial combipack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43');
INSERT INTO `medicine` (`id`, `drug_for`, `drug_class`, `brand_name`, `contains`, `type`, `manufacturer`, `price`, `created_at`, `updated_at`) VALUES
(576, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'EFDINIR', 'Cefdinir INN 300mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '300mg x 8s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(577, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'EFDINIR', 'Cefdinir INN 125mg/5ml dry suspension', 'Suspension', 'Incepta Pharmaceuticals Ltd.', '60ml bot: 175.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(578, 'Drugs for bacterial infections', 'Fourth generation Cephalosporins', 'ULTRAPIME', 'Cefepime hydrochloride 500mg & 1gm vial', 'Injection (IV/IM)', 'Incepta Pharmaceuticals Ltd.', '500mg vial with water: 300.00 MRP; 1gm vial with water: 550.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(579, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'EXEPHIN IM', 'Ceftriaxone 250mg, 500mg & 1gm vial (with lidocaine)', 'Injection (IM)', 'Incepta Pharmaceuticals Ltd.', '250mg vial: 90.00 MRP; 500mg vial: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(580, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'EXEPHIN IV', 'Ceftriaxone 250mg, 500mg, 1gm & 2gm vial (with water)', 'Injection (IV)', 'Incepta Pharmaceuticals Ltd.', '250mg vial: 90.00 MRP; 500mg vial: 120.00 MRP; 1gm vial: 160.00 MRP; 2gm vial: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(581, 'Drugs for general anesthesia', 'General (Intravenous) anesthetics', 'ANESTHO', 'Thiopental sodium USP 500mg & 1gm/vial', '(powder for reconstitution): i.v injection or rectal instillation', 'Incepta Pharmaceuticals Ltd.', '500mg vial x 1s pack: 69.59 MRP; 1gm vial x 1s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(582, 'Drugs for post operative pain', 'Opioid analgesics', 'OPIFEN', 'Fentanyl citrate 50mcg/ml; 2ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '100mcg (2ml amp) x 5s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(583, 'Neuromuscular blocking drugs (muscle relaxants)', 'Central Depolarizing muscle relaxants', 'MYOLAX', 'Tolperisone hydrochloride INN 50mg & 100mg/tablet.', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '50mg x 100s pack: 300.00 MRP; 100mg x 50s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(584, 'Neuromuscular blocking drugs (muscle relaxants)', 'Central Depolarizing muscle relaxants', 'MYOLAX', 'Tolperisone hydrochloride INN 100mg/1ml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '1ml amp (100mg) x 5s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(585, 'Neuromuscular blocking drugs (muscle relaxants)', 'Central Depolarizing muscle relaxants', 'MYOLAX', 'Tolperisone hydrochloride INN 100mg & lidocaine hydrochloride 2.5mg/lml amp', 'Injection', 'Incepta Pharmaceuticals Ltd.', '1ml amp x 5s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(586, 'Local anesthetics', 'Intermediate potency and duration', 'NORDRINE', 'Ephedrine hydrochloride 5mg/ml; 5ml (25mg) ampoule', 'i.m/i.v Injection', 'Incepta Pharmaceuticals Ltd.', '5ml amp x 10s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(587, 'Drugs for post operative pain', 'Non opiod analgesics', 'ETORAC', 'Ketorolac tromethamine 10mg/tablet', 'Tablet (film-coated)', 'Incepta Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(588, 'Drugs for post operative pain', 'Non opiod analgesics', 'ETORAC', 'Ketorolac tromethamine 30mg/1ml ampoule & 60mg/1ml ampoule', 'i.m/i.v Injection', 'Incepta Pharmaceuticals Ltd.', '30mg (1ml) amp x 1s pack: 55.00 MRP; 60mg (2ml) amp x 1s pack: 95.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(589, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'I-GUARD', 'Chloramphenicol 0.5%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '10ml bot: 25.81 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(590, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'BEUFLOX', 'Ciprofloxacin 0.3%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '10ml drop: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(591, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'GATIFLOX', 'Gatifloxacin sesquihydrat INN 0.3%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(592, 'Topical Anti-infective Drugs', 'Topical Antibiotic preparations', 'TREGO', 'Mupirocin 2% w/w in a water soluble polyethylene glycol base', 'Ointment', 'Incepta Pharmaceuticals Ltd.', '10gm tube: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(593, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'INTOBAC', 'Tobramycin USP 0.3%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(594, 'Ophthalmic preparations', 'Ophthalmic Steroid preparations', 'EYEBET', 'Betamethasone sodium phosphate 0.1%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(595, 'Ophthalmic preparations', 'Ophthalmic Steroid preparations', 'METADAXAN', 'Dexamethasone sodium phosphate 0.1%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5mI drop: 60 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(596, 'Ophthalmic preparations', 'Ophthalmic Steroid- antibiotic combined preparations', 'DEXAGURD', 'Dexamethasone sodium phosphate 0.1 % & chloramphenicol 0.5%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml pack: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(597, 'Ophthalmic preparations', 'Ophthalmic Steroid- antibiotic combined preparations', 'BEUFLOX-D', 'Dexamethasone sodium phosphate 0.1 % & ciprofloxacin 0.3%', 'Eye/Ear Drop', 'Incepta Pharmaceuticals Ltd.', '6mI drop: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(598, 'Ophthalmic preparations', 'Ophthalmic Steroid- antibiotic combined preparations', 'DEXTROBAC', 'Dexamethasone 0.1% and tobramycin 0.3%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(599, 'Ophthalmic preparations', 'Ophthalmic Non-Steroid drugs', 'INTAFENAC', 'Diclofenac sodium 0.1%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(600, 'Ophthalmic preparations', 'Ophthalmic Non-Steroid drugs', 'ETORAC', 'Ketorolac tromethamine 0.5%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 60.68 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(601, 'Ophthalmic preparations', 'Ophthalmic Non-Steroid drugs', 'KETOMAR', 'Ketotifen fumarate BP 0.03%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 95.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(602, 'Ophthalmic preparations', 'Ophthalmic Non-Steroid drugs', 'LOPADINE', 'Olopatadine hydrochloride INN 1mg/ml (0.1%)', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(603, 'Ophthalmic preparations', 'Ophthalmic Non-Steroid drugs', 'MIROLAST', 'Pemirolast potassium INN 0.1% (i.e 1mg/ml)', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '10ml drop: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(604, 'Ophthalmic preparations', 'Ophthalmic Non-Steroid drugs', 'MASTGUARD', 'Sodium cromoglycate 2%', 'Eye/Nasal Drop', 'Incepta Pharmaceuticals Ltd.', '10ml drop: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(605, 'Aural preparations', 'Aural Steroid & Steroid/Antibiotic combined preparations', 'EYEBET', 'Betamethasone sodium phosphate 0.1% ear drop', 'Ear Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(606, 'Aural preparations', 'Aural Steroid & Steroid/Antibiotic combined preparations', 'METADAXAN', 'Dexamethasone 0.1% ear/eye drop', 'Ear/Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(607, 'Aural preparations', 'Aural Steroid & Steroid/Antibiotic combined preparations', 'BEUFLOX-D', 'Dexamethasone sodium phosphate 0.1% & ciprofloxacin 0.3% ear/eye drop', 'Ear/Eye Drop', 'Incepta Pharmaceuticals Ltd.', '6ml drop: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(608, 'Nasal preparations', 'Nasal Anti-histamine preparations', 'AZELAST', 'Azelastine hydrochloride BP 137mcg/actuation of metered dose nasal spray solution', 'Nasal Spray(MDI)', 'Incepta Pharmaceuticals Ltd.', '120 doses (spray) unit: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(609, 'Nasal preparations', 'Nasal Anti-histamine preparations', 'SUDORIN', 'Pseudoephedrine hydrochloride 60mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(610, 'Nasal preparations', 'Nasal Anti-histamine preparations', 'RYNEX', 'Oxymetazoline hydrochloride 0.05% nasal drop', 'Nasal Drop', 'Incepta Pharmaceuticals Ltd.', '10ml drop: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(611, 'Nasal preparations', 'Nasal Anti-histamine preparations', 'RYNEX', 'Oxymetazoline hydrochloride 0.05% nasal spray delivers 25mcg/actuation', 'Nasal Spray(MDI)', 'Incepta Pharmaceuticals Ltd.', '200 doses: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(612, 'Ophthalmic preparations', 'Mydriatic and Cycloplegic agents', 'DILATE', 'Tropicamide 0.5% & 1.0%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '0.5% x 5ml drop: 60.00 MRP; 1.0% x 5ml drop: 76.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(613, 'Ophthalmic preparations', 'Drugs for miotics and glaucoma', 'TIMOPRESS', 'Timolol maleate 0.25% & 0.50%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '0.25% x 5ml: 55.00 MRP; 0.50% x 5ml: 70.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(614, 'Ophthalmic preparations', 'Drugs for miotics and glaucoma', 'TRAVAST', 'Travoprost 40mcg/ml (i.e 0.004% w/v) and benzalkonium chloride', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '3ml drop: 470.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(615, 'Ophthalmic preparations', 'Drugs for Dry eyes', 'LUBRIC', 'Hypromellose 0.3%', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '10ml drop: 65.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(616, 'Anti-eczema & Anti-psoriasis preparations', 'Topical Retinoid & related preparations', 'TAZOSKIN', 'Tazarotene INN 1mg/gm (0.1% w/w)', 'Cream', 'Incepta Pharmaceuticals Ltd.', '20gm tube: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(617, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'LEVOXIN', 'Levofloxacin hemihhydrate INN equivalent to levofloxacin 0.5% (i.e 5mg/ml)', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 80 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(618, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'LOMEQUIN', 'Lomefloxacin hydrochloride 0.3% w/v', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(619, 'Anti-eczema & Anti-psoriasis preparations', 'Zinc & Combined preparations', 'NAPGUARD', 'Zinc oxide BP 400mg/gm (40%w/w) ointment', 'Ointment', 'Incepta Pharmaceuticals Ltd.', '25gm pack: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(620, 'Anti-eczema & Anti-psoriasis preparations', 'Drugs affecting the immune response', 'TACROLIM', 'Tacrolimus INN 0.3mg/gm ointment', 'Ointment', 'Incepta Pharmaceuticals Ltd.', '5gm tube: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(621, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'MOXQUIN', 'Moxifloxacin hydrochloride INN 0.5% (or 5mg/ml)', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(622, 'Ophthalmic preparations', 'Antioxidant vitamins & minerals for eye', 'AZECOL', 'Vitamin C 60mg, vitamin E 30mg, lutein 6mg, copper 2mg and zinc 15mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '28s pack: 224.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(623, 'Ophthalmic preparations', 'Drugs for lens opacification', 'CATRIX', 'Adenosine BP 2mg. cytochrome C 0.5mg, sodium succinate 0.6mg and nicotinamide BP 20mg.', 'Eye Drop', 'Incepta Pharmaceuticals Ltd.', '5ml drop: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(624, 'Drugs for Acne & Rosacea', 'Topical antibiotics for Acne', 'CLINDACIN', 'Clindamycin phosphate USP 10mg/ml(1%w/v)lotion', 'Lotion', 'Incepta Pharmaceuticals Ltd.', '25ml bot: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(625, 'Drugs for hyperpigmentation', 'Hydroquinone Preparations', 'SPOTCLEN', 'Hydroquinone BP 40mg/gm(4%) cream', 'Cream', 'Incepta Pharmaceuticals Ltd.', '10gm pack: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(626, 'Drugs for hyperpigmentation', 'Hydroquinone Preparations', 'SPOTCLEN Plus', 'Hydroquinone BP 40mg/gm(4%), octydimethyl p-aminobenzoate USP 80mg, dioxybenzone USP 30mg and oxybenzone USP 20mg', 'Cream', 'Incepta Pharmaceuticals Ltd.', '10gm pack: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(627, 'Shampoos & Other scalp preparations / anti-dandruff preparations', 'Medicated Shampoos', 'DANCEL', 'Ketoconazole 2% (20mg/gm) shampoo', 'Shampoo', 'Incepta Pharmaceuticals Ltd.', '60ml pack: 150.00 MRP; 100ml pack: 230.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(628, 'Specific Vitamin Preparations', 'Vitamin-D preparations', 'OSTEO-D', 'Cholecalciferol (vitamin Da) BP 200,000 i.u/ml', 'Injection', 'Incepta Pharmaceuticals Ltd.', '1ml amp (200,000 i.u/ml) x 1s pack: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(629, 'Specific Vitamin Preparations', 'Vitamin-D preparations', 'OSTEO-D', 'Cholecalciferol (vitamin Ds) BP 200 i.u (or 5mcg)/ml', 'Oral solution', 'Incepta Pharmaceuticals Ltd.', '15ml bot (200 i.u/ml) x 1s pack: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(630, 'Specific Vitamin Preparations', 'Vitamin-D preparations', 'COLITROL', 'Calcitriol (1,25-dihydroxycholecalciferol) 0.25mcg/capsule.', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '0.25mcg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(631, 'Specific Vitamin Preparations', 'Vitamin-D preparations', 'COLITROL', 'Calcitriol (1,25-dihydroxycholecalciferol) 1mcg/lml ampoule', 'Injection', 'Incepta Pharmaceuticals Ltd.', '1ml amp x 1s pack: 155.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(632, 'Topical Anti-infective Drugs', 'Topical Anti-viral preparations', 'LAFROST', 'Docosanol INN 100 mg', 'Cream', 'Incepta Pharmaceuticals Ltd.', '5gm tube: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(633, 'Specific Vitamin Preparations', 'Vitamin-D preparations', 'VITAGROW', 'Vitamin A, D, B1, B2, B6, C, E, nicotinamaide & cod liver oil', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bottle: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(634, 'Topical Anti-infective Drugs', 'Topical Anti-fungal preparations', 'ECONATE', 'Econazole nitrate 1%', 'Cream', 'Incepta Pharmaceuticals Ltd.', '10gm tube: 28.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(635, 'Topical Anti-infective Drugs', 'Other Antifungal preparations', 'DERBICIL', 'Terbinafine hydrochloride 1%', 'Cream', 'Incepta Pharmaceuticals Ltd.', '5gm tube: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(636, 'Topical Anti-infective Drugs', 'Parasiticidal preparations', 'ELIMATE', 'Permethrin 5% w/w', 'Cream', 'Incepta Pharmaceuticals Ltd.', '30gm tube: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(637, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'VITABION', 'Thiamine mononitrate (B1) BP 100mg, pyridoxine hydrochloride (B6) BP 200mg and cyanocobalamin (B12) BP 200mcg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 200.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(638, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'VITABION', 'Thiamine mononitrate (B1) BP 100mg, pyridoxine hydrochloride (B6) BP 100mg and cyanocobalamin (B12) BP 1mg/3ml', 'Injection (i.m)', 'Incepta Pharmaceuticals Ltd.', '3ml amp x 5s pack: 125.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(639, 'Specific Vitamin Preparations', 'Vitamin-C Preparations', 'CEEGRAM 500', 'Ascorbic acid BP & sodium ascorbate BP 500mg/tablet', 'Tablet (effervescent)', 'Incepta Pharmaceuticals Ltd.', '10s pack: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(640, 'Specific Vitamin Preparations', 'Vitamin-E Preparations', 'INOVIT E', 'Alpha tocopheryl acetate 200mg & 400mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '200mg x 30s pack: 120.00 MRP; 400mg x 30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(641, 'Combined vitamin preparations', 'Specific combined vitamin preparations', 'CARDIVIT', 'Vitamin C (ascorbic acid BP) 400mg, vitamin D3 (colecalciferol BP) 400 IU & folic acid BP 2mg', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(642, 'Topical corticosteroids & combined preparations', 'Clobetasol/Clobetasone & Combined Preparations', 'XYCLOBATE', 'Clobetasol propionate 0.05% w/w', 'Cream', 'Incepta Pharmaceuticals Ltd.', '10gm tube (cream): 45.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(643, 'Topical corticosteroids & combined preparations', 'Clobetasol/Clobetasone & Combined Preparations', 'XYCLOBATE', 'Clobetasol propionate 0.05% w/w', 'Ointment', 'Incepta Pharmaceuticals Ltd.', '10gm tube (oint): 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(644, 'Mineral preparations', 'Specific mineral preparations', 'CALCICAR 250', 'Calcium carbonate chewable tablet containing elemental calcium equivalent to 250mg/tablet.', 'Tablet (chewable)', 'Incepta Pharmaceuticals Ltd.', '100s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(645, 'Mineral preparations', 'Specific mineral preparations', 'CALCICAR 500', 'Calcium carbonate 1250mg (equivalent to 500mg elemental calcium)/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(646, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'CAVIC-C', 'Calcium lactate-gluconate 1000mg, calcium carbonate BP 327mg (260mg Ca++), & ascorbic acid (vitamin C) BP 500mg', 'Tablet (effervescent)', 'Incepta Pharmaceuticals Ltd.', '10s pack: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(647, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'CALVIMAX', 'Calcium carbonate USP 1250mg equivalent to 500mg elemental calcium and vitamin D3 (cholecalciferol) USP 200 i.u/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '15s pack: 49.50 MRP; 30s pack: 99.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(648, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'CAVIC-C Plus', 'Calcium lactate gluconate USP 1000mg, calcium carbonate USP 327mg, vitamin C (ascorbic acid) USP 500mg) & vitamin D3 (colecalciferol) USP 400 IU.', 'Tablet (Effervescent)', 'Incepta Pharmaceuticals Ltd.', '10s pack: 80.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(649, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'CALVIMAX Plus', 'Calcium (as calcium carbonate) 600mg, vitamin D3 (colecalciferol) 200 i.u, magnesium (as magensium oxide) 40mg, zinc (as zinc oxide) 7.5mg, copper (as cupric oxide) 1mg, manganese (as manganese sulphate) 1.8mg. boron (as boron citrate) 0.25mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 120.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(650, 'Mineral preparations', 'Specific mineral preparations', 'ZIFLU 20', 'Zinc sulphate monohydrate equivalent to 20mg elemental zinc USP/5ml', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(651, 'Mineral preparations', 'Specific mineral preparations', 'ZIFLU', 'Zinc sulphate monohydrate equivalent to 10mg elemental zinc USP/5ml', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(652, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'ARITONE Z', 'Each 5ml of syrup contains vitamin-B complex and 10mg elemental zinc.', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '100ml bot: 45.00 MRP; 200ml bot: 85.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(653, 'Multivitamin & Multimineral combined preparations', 'Super Anti-oxidant vitamins & Multimineral preparations', 'EVAGREN', 'Vitamin A 2000 IU, vitamin C 200mg, vitamin E 50 IU, vitamin K 75mcg, zinc 15mg, selenium 70mcg, copper 1mg and manganese 3mg', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(654, 'Multivitamin & Multimineral combined preparations', 'Specialized Multivitamin & Multimineral preparations', 'PRECARE', '20 high potency vitamins and minerals including iron & zinc', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 150.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(655, 'Multivitamin & Multimineral combined preparations', 'Specialized Multivitamin & Multimineral preparations', 'PROVITEN A-Z', 'High potency multivitamin & multimineral formulation comprising of 32 components from vitamin A to Zinc including the complete anti-oxidant group', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '15s pack: 90.00 MRP; 30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(656, 'Nutritional & Energy supplement preparations', 'Parenteral Nutritional preparations', 'PROSOL IV 5%', '5% amino acid preparation, containing essential and semi-essential amino acids with D-sorbitol', 'i.v injection for infusion.', 'Incepta Pharmaceuticals Ltd.', '500ml bot: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(657, 'Drugs for Iron Deficiency Anaemias', 'Oral Iron preparations', 'COMPIRON', 'Iron (III) hydroxide polymaltose complex INN 200mg equivalent to 50mg of elemental iron/5ml', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 20.00 MRP; 200ml bot: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(658, 'Drugs for Iron Deficiency Anaemias', 'Oral Iron preparations', 'COMPIRON', 'Iron (III) hydroxide polymaltose complex INN 200mg equivalent to 50mg of elemental iron/5ml', 'Paediatric Drop', 'Incepta Pharmaceuticals Ltd.', '30ml drop: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(659, 'Topical corticosteroids & combined preparations', 'Clobetasol/Clobetasone & Combined Preparations', 'NYCLOBATE NN', 'Clobetasol propionate 0.05% w/w, neomycin sulphate 0.5% w/w and nystatin 100,000 units/gm', 'Cream', 'Incepta Pharmaceuticals Ltd.', '10gm tube: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(660, 'Topical corticosteroids & combined preparations', 'Fluocinolone & Combined Preparations', 'LUTISONE', 'Fluticasone propionate 0.005% ointment', 'Ointment', 'Incepta Pharmaceuticals Ltd.', '10gm tube: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(661, 'Topical corticosteroids & combined preparations', 'Hydrocortisone & Combined preparations', 'INTASONE', 'Hydrocortisone acetate BP 1% cream', 'Cream', 'Incepta Pharmaceuticals Ltd.', '10gm tube: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(662, 'Topical corticosteroids & combined preparations', 'Hydrocortisone & Combined preparations', 'FORTISON', 'Hydrocorisone acetate BP 1 % & fusidic acid BP 2% cream', 'Cream', 'Incepta Pharmaceuticals Ltd.', '10gm tube: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(663, 'Drugs for Iron Deficiency Anaemias', 'Iron & Vitamin Combined preparations', 'ALNEED', 'Dried ferrous sulfate USP 150mg, folic acid USP 0.5mg, thiamine mononitrate USP 2mg, pyridoxine USP 1mg, nicotinamide USP 10mg and ascorbic acid USP 50mg/capsule', 'Capsule (timed release)', 'Incepta Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(664, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'PRENEED', 'Carbonyl iron INN Ph. grade 51mg (equivalent to 50mg elemental iron), folic acid BP 0.50mg and zinc sulfate BP 6I.80mg (equivalent to 22.5mg elemental zinc)/capsule', 'Capsule (pellet)', 'Incepta Pharmaceuticals Ltd.', '50s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(665, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'ARITONE ZI', 'Non- ionic iron (i.e iron polymaltose complex), vitamin B complex & zinc.', 'Syrup', 'Incepta Pharmaceuticals Ltd.', '50ml bot: 30.00 IP; 100ml bot: 50.00 IP; 200ml bot: 90.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(666, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'ALFASIN XR', 'Alfuzosin hydrochloride BP 10mg/tablet.', 'Tablet (extended release)', 'Incepta Pharmaceuticals Ltd.', '10mg x 24s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(667, 'Urinary anti-infectives', 'Systemic Urinary Anti- infectives', 'NINTOIN', 'Nitrofurantoin USP 100mg/tablet.', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(668, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'ALNEED Plus', 'Dried ferrous sulfate BP 150mg, folic acid (B9) BP 0.5mg, thiamine mononitrate (Bl) USP 2mg, riboflavin (B2) USP 2mg, nicotinamide (B3) USP 10mg, pyridoxine (B6) USP 1mg, vitamin C (ascorbic acid) USP 50mg and zinc sulphate monohydrate BP 61.8mg/capsule.', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '100s pack: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(669, 'Drugs for Other Anaemias', 'Drugs for Haemolytic, Hypoplastic & Renal Anaemias', 'EPOETIN', 'Epoetin 2000 IU. 3000 IU, 5000 IU & 10000 IU pre-filled syringes', 'i.v or s.c injection', 'Incepta Pharmaceuticals Ltd.', '2000 IU pre-filled syringe x 1s: 900.00 MRP; 3000 IU pre-filled syringe x 1s: 1250.00 MRP; 5000 IU pre-filled syringe x 1s: 1900.00 MRP; 10000 IU pre-filled syringe x 1s: 3800.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(670, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'URILAX', 'Flavoxate hydrochloride BP 100mg & 200mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100mg x 30s pack: 300.00 MRP; 200mg x 30s pack: 540.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(671, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'PROSTACIN', 'Tamsulosin hydrochloride INN 0.4mg/capsule', 'Capsule', 'Incepta Pharmaceuticals Ltd.', '20s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(672, 'Drugs used in genital problems', 'Drugs used in Vaginal and Vulval conditions', 'CLINDACIN', 'Clindamycin phosphate BP equivalent to clindamycin 20mg/gm (i.e 2% w/w)', 'Cream', 'Incepta Pharmaceuticals Ltd.', '20gm tube: 70.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(673, 'Drugs used in genital problems', 'Drugs used in Vaginal and Vulval conditions', 'ECONATE-VT', 'Econazole nitrate 150mg/tablet (for vaginal use)', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '3 tabs pack: 70.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(674, 'Drugs used in genital problems', 'Drugs used in Vaginal and Vulval conditions', 'ECONATE-G', 'Econazole nitrate 1 % cream for gynaecological use.', 'Cream', 'Incepta Pharmaceuticals Ltd.', '30gm tube: 70.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(675, 'Drugs used in bone formation', 'Combined preparations: Inhibiting bone resorption', 'BONEMASS D', 'Alendronate monosodium trihydrate USP equivalent to 70mg of alendronic acid, and colecalciferol BP 70mcg equivalent to 2800 IU vitamin D3/tablet.', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '(70mg + 70mcg or 2800 IU) x 10s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(676, 'Drugs used in bone formation', 'Other preparations: Inhibiting bone resorption', 'ALOXIF', 'Raloxifene hydrochloride INN 60mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '30s pack: 420.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(677, 'Drugs used in cartilage formation', 'Stimulation of Cartilage formation', 'JOINIX', 'Glucosamine hydrochloride INN 500mg/tablet', 'Tablet', 'Incepta Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(678, 'Drugs used in cartilage formation', 'Stimulation of Cartilage formation', 'JOINIX Plus', 'Glucosamine sulfate INN 250mg & chondroitin sulfate INN 200mg/tablet.', 'Tablet (film coated)', 'Incepta Pharmaceuticals Ltd.', '50s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(679, 'Drugs used in inflammatory diseases of bones & joints', 'Drugs for Osteoarthritis', 'HYRONATE', 'Sodium hyaluronate BP 20mg/2ml solution/pre-filled syringe', 'Injection (intra-articular)', 'Incepta Pharmaceuticals Ltd.', '2ml pre-filled syringe x 1s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(680, 'Drugs for hypertension', 'Angiotensin-converting enzyme (ACE) inhibitors', 'VASOPRIL', 'Enalapril maleate 5mg & 10mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '5mg x 100s: 125.00 MRP; 10mg x 50s: 112.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(681, 'Drugs for hypertension', 'Angiotensin-converting enzyme (ACE) inhibitors', 'CADNYL 4', 'Perindopril erbumine INN 4mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '4mg x 30s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(682, 'Drugs for hypertension', 'Angiotensin-converting enzyme (ACE) inhibitors', 'RIPRIL', 'Ramipril BP 1.25mg, 2.5mg & 5mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '1.25mgx 30s: 75.00 MRP 2.5mg x 30s: 150.00 MRP 5mg x 30s: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(683, 'Drugs for emetics', 'Prokinetic drugs', 'MOTIFAST', 'Domperidone maleate 10mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(684, 'Drugs for emetics', 'Prokinetic drugs', 'MOTIGUT', 'Domperidone maleate 10mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(685, 'Drugs for emetics', 'Prokinetic drugs', 'MOTIGLT', 'Domperidone 5mg/5ml', 'Suspension', 'Square Pharmaceutical Ltd.', '60ml bot: 28.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(686, 'Drugs for emetics', 'Prokinetic drugs', 'MOTIGUT', 'Domperidone 5mg/ml', 'Drop', 'Square Pharmaceutical Ltd.', '15ml drop: 20.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(687, 'Drugs for peptic ulcer', 'H2 antagonists', 'FAMOTACK', 'Famotidine 20mg & 40mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '20mg x 100s pack: 150.00 MRP 40mg x 50s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(688, 'Drugs for peptic ulcer', 'H2 antagonists', 'NEOTACK', 'Ranitidine 150mg & 300mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '150mg x 150s pack: 300.00 MRP 300mg x 100s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(689, 'Drugs for peptic ulcer', 'H2 antagonists', 'NEOTACK', 'Ranitidine 75mg/5ml', 'Syrup', 'Square Pharmaceutical Ltd.', '100ml bot: 45.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(690, 'Drugs for peptic ulcer', 'H2 antagonists', 'NEOTACK', 'Ranitidine 50mg/2ml ampoule', 'Injection', 'Square Pharmaceutical Ltd.', '10 amps pack:60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(691, 'Drugs for psychosis', 'Butyrophenone drugs', 'PERIDOL', 'Haloperidol 5mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '5mg x 100s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(692, 'Drugs for psychosis', 'Atypical neuroleptic drugs', 'DEPREX', 'Olanzapine INN 5mg & 10mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '5mg x 100s pack: 150.00 MRP; 10mg x 100s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(693, 'Drugs for depression', 'Tricyclic & related antidepressant drugs', 'TRYPTIN', 'Amitriptyline hydrochloride 10mg & 25mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '10mg x 200s pack: 110.00 MRP; 25mg x 200s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(694, 'Drugs for depression', 'SSRIs & related antidepressant drugs', 'OXAPRO', 'Escitalopram oxalate INN equivalent to Escitalopram 10mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceutical Ltd.', '10mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(695, 'Drugs for depression', 'SSRIs & related antidepressant drugs', 'DILINER DR', 'Duloxetine hydrochloride INN equivalent to Duloxetine 60mg/capsule', 'Capsule (Delayed Release )', 'Square Pharmaceutical Ltd.', '60mg x 18s pack: 288.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(696, 'Drugs for depression', 'SSRIs & related antidepressant drugs', 'PROLERT', 'Fluoxetine hydrochloride 20mg/capsule', 'Capsule', 'Square Pharmaceutical Ltd.', '50s pack: 129.68 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(697, 'Drugs for depression', 'SSRIs & related antidepressant drugs', 'OXAT 20', 'Paroxetine hydrochloride 20mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '30s pack: 285.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(698, 'Oral hypoglycemic drugs', 'Thiazolidinedione Group', 'TOS', 'Pioglitazone hydrochloride INN 15mg & 30mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '15mg x 30s pack: 240.00 MRP; 30mg x 30s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(699, 'Oral hypoglycemic drugs', 'Thiazolidinedione Group', 'SENSULIN', 'Rosiglitazone maleate INN 2mg & 4mg/tablet', 'Tablet (film coated)', 'Square Pharmaceutical Ltd.', '2mg x 30s pack: 150.00 MRP; 4mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(700, 'Oral hypoglycemic drugs', 'Combination preparations', 'TOSIRIN 2', 'Glimepiride INN 2mg + Pioglitazone hydrochloride INN 30mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '15 s pack: 195.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(701, 'Oral hypoglycemic drugs', 'Combination preparations', 'TOSIRIN 4', 'Glimepiride INN 4mg + Pioglitazone hydrochloride INN 30mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '15 s pack: 225.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(702, 'Oral hypoglycemic drugs', 'Combination preparations', 'GLYROS 1', 'Glimepiride 1mg + Rosiglitazone 4mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(703, 'Oral hypoglycemic drugs', 'Combination preparations', 'GLYROS 2', 'Glimepiride 2mg + Rosiglitazone 4mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '30s pack: 330.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(704, 'Oral hypoglycemic drugs', 'Combination preparations', 'REZULIN 500', 'Pioglitazone 15mg + Metformin hydrochloride 500mg/tablet', 'Tablet (film coated)', 'Square Pharmaceutical Ltd.', '50s pack: 270.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(705, 'Oral hypoglycemic drugs', 'Combination preparations', 'REZULIN 850', 'Pioglitazone 15mg + Metformin hydrochloride 850mg/tablet', 'Tablet (film coated)', 'Square Pharmaceutical Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(706, 'Oral hypoglycemic drugs', 'Combination preparations', 'SENSIMET 1', 'Rosiglitazone 1mg + Metformin hydrochloride 500mg/tablet', 'Tablet (film coated)', 'Square Pharmaceutical Ltd.', '30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(707, 'Oral hypoglycemic drugs', 'Combination preparations', 'SENSIMET 1 DS', 'Rosiglitazone 1mg + Metformin hydrochloride 1000mg/tablet', 'Tablet (film coated)', 'Square Pharmaceutical Ltd.', '30s pack: 225.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(708, 'Oral hypoglycemic drugs', 'Combination preparations', 'SENSIMET 2', 'Rosiglitazone 2mg + Metformin hydrochloride 500mg/tablet', 'Tablet (film coated)', 'Square Pharmaceutical Ltd.', '30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(709, 'Oral hypoglycemic drugs', 'Combination preparations', 'SENSIMET 2 DS', 'Rosiglitazone 4mg + Metformin hydrochloride 1000mg/tablet', 'Tablet (film coated)', 'Square Pharmaceutical Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(710, 'Oral hypoglycemic drugs', 'Combination preparations', 'SENSIMET 4', 'Rosiglitazone 4mg + Metformin hydrochloride 500mg/tablet', 'Tablet (film coated)', 'Square Pharmaceutical Ltd.', '30s pack: 255.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(711, 'Thyroid hormones & Anti Thyroid drugs', 'Antithyroid drugs', 'CARBIZOL', 'Carbimazole BP 5mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '5mg x 60s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(712, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACIL', 'Amoxycillin 250mg & 500mg/capsule', 'Capsule', 'Square Pharmaceutical Ltd.', '250mg x 100s pack: 360.00 MRP;500mg x 50s pack: 337.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(713, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACIL 875', 'Amoxycillin 875mg/tablet', 'Tablet', 'Square Pharmaceutical Ltd.', '875mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(714, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACIL DT', 'Amoxycillin 250mg/tablet', 'Dispersible Tablet', 'Square Pharmaceutical Ltd.', '100s pack: 348.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(715, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACIL', 'Amoxycillin 125mg/5ml', 'Suspension', 'Square Pharmaceutical Ltd.', '100ml bot: 45.52 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(716, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACIL Forte', 'Amoxycillin 250mg/5ml', 'Suspension(Double Strength)', 'Square Pharmaceutical Ltd.', '100ml bot: 65.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(717, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACIL', 'Amoxycillin 125mg/1.25ml', 'Paediatric Drop', 'Square Pharmaceutical Ltd.', '15ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(718, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACIL', 'Amoxycillin 500mg/vial', 'Injection', 'Square Pharmaceutical Ltd.', '500mg vial x 5s pack: 125.60 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(719, 'Aural preparations', 'Aural Anti-bacterial preparations', 'SQ-MYCETIN', 'Chloramphenicol 0.5%/eye or ear drop', 'Eye/Ear drop', 'Square Pharmaceutical Ltd.', '10ml bot: 25.81 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(720, 'Aural preparations', 'Aural Anti-bacterial preparations', 'GENACYN', 'Gentamicin sulphate 0.3% (or 3000 i.u/ml)/ear or eye drop', 'Eye/Ear drop', 'Square Pharmaceutical Ltd.', '10ml bot: 31.91 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(721, 'Drugs for macrocytic Anaemias', 'Drugs for Megaloblastic Anaemias', 'METHICOL', 'Mecobalamin 500mcg/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd', '60s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(722, 'Drugs for macrocytic Anaemias', 'Drugs for Megaloblastic Anaemias', 'METHICOL', 'Mecobalamin 500mcg/1ml ampoule', 'Injection', 'Square Pharmaceuticals Ltd', '5 amps pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(723, 'Drugs for hypertension', 'Angiotensin-II receptor blocker', 'ARB 8', 'Candesartan cilexetil INN 8mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '8mg x 30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(724, 'Drugs for hypertension', 'Angiotensin-II receptor blocker', 'ANGILOCK', 'Losartan potassium INN 25mg, 50mg &100mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '25mg x 50s pack: 175.00 MRP 50mg x 50s pack: 300.00 MRP 100mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(725, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'SULTOLIN', 'Salbutamol 4mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '200s x 4mg: 68.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(726, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'SULTOLIN-SR', 'Salbutamol 8mg/tablet (sustained release)', 'Tablet', 'Square Pharmaceuticals Ltd.', '200spack: 156.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(727, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'SULTOLIN', 'Salbutamol sulphate 2mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 15.68 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(728, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'SULTOLIN 100', 'Salbutamol 100 mcg/puff or actuation', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '200 dose unit: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(729, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'SULTOLIN', 'Salbutamol 100 mcg/puff or actuation', 'Refill Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '200 doses refill: 135.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(730, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'SULTOLIN', 'Salbutamol 200mcg/cozycap', 'Cozycap Inhaler (DPI)', 'Square Pharmaceuticals Ltd.', '200mcg x 30 caps pack: 39.90 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(731, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'SULTOLIN', 'Salbutamol sulphate 5mg/ml (i.e 0.5%) for use with a nebuliser or ventilator', 'Respirator Solution', 'Square Pharmaceuticals Ltd.', '20ml pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(732, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'LEVOSTAR', 'Levosalbutamol sulphate INN equivalent to 1mg & 2mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '1mg x 100s pack: 90.00 MRP 2mg x 50s pack: 85.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(733, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'LEVOSTAR', 'Levosalbutamol sulphate INN equivalent to 1mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '50ml bot: 25.00 MRP 100ml bot: 38.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(734, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'LEVOSTAR', 'Levosalbutamol sulphate INN equivalent to 50mcg/puff or dose', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '200 doses unit: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(735, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'OPTIVEN', 'Bambuterol hydrochloride 10mg & 20mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '10mg x 100s pack: 200.00 MRP 20mg x 100s pack: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(736, 'Drugs for asthma & prophylaxis', 'Short-acting selective beta2-adrenoceptor stimulants', 'OPTIVEN', 'Bambuterol hydrochloride 5mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '60ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(737, 'Drugs for asthma & prophylaxis', 'Long-acting selective beta2-adrenoceptor stimulants', 'SALMATE', 'Salmeterol xinafoate 25mcg/puff or dose', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '200 doses unit: 190.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(738, 'Drugs for peptic ulcer', 'Prostaglandin analogues', 'ISOVENT', 'Misoprostol INN 100mcg & 200mcg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100mcg x 30s pack: 240.00 MRP 200mcg x 30s pack: 450.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(739, 'Drugs for peptic ulcer', 'Anticholinergics(antimuscarinics)', 'COLICON', 'Dicycloverine hydrochloride BP 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(740, 'Drugs for peptic ulcer', 'Anticholinergics(antimuscarinics)', 'COLICON', 'Dicycloverine hydrochloride BP 10mg/5ml', 'Syrup', 'Square Pharmaceuticals Ltd.', '50ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(741, 'Drugs for peptic ulcer', 'Anticholinergics(antimuscarinics)', 'COLICON', 'Dicycloverine hydrochloride BP 20mg/2ml ampoule', 'IM Injection', 'Square Pharmaceuticals Ltd.', '10 amps pack: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(742, 'Drugs for asthma & prophylaxis', 'Anticholinergic bronchodilators', 'IPREX', 'Ipratropium bromide 20mcg/puff (spray); Each canister of Iprex inhaler contains 4mg of ipratropium bromide BP', 'Oral inhaler', 'Square Pharmaceuticals Ltd.', '200 puffs inhaler: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(743, 'Drugs for asthma & prophylaxis', 'Anticholinergic bronchodilators', 'IPREX', 'Ipratropium bromide 250mcg/ml', 'Respirator solution for inhalation', 'Square Pharmaceuticals Ltd.', '20ml pack: 130.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(744, 'Drugs for asthma & prophylaxis', 'Anticholinergic bronchodilators', 'NORVENT', 'Tiotropium bromide monohydrate INN 9mcg/puff', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '120 puffs unit: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(745, 'Drugs for asthma & prophylaxis', 'Methyl xanthine derivatives', 'ASMANYL 300', 'Theophylline sodium glycinate 300mg/tablet', 'Tablet (sustained release)', 'Square Pharmaceuticals Ltd.', '100s pack: 196.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(746, 'Drugs for asthma & prophylaxis', 'Methyl xanthine derivatives', 'ASMANYL 400', 'Theophylline sodium glycinate 400mg/tablet', 'Tablet (sustained release)', 'Square Pharmaceuticals Ltd.', '30s pack:80.10 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(747, 'Drugs for asthma & prophylaxis', 'Combined bronchodilators', 'SULPREX', 'salbutamol BP 100 mcg & ipratropium bromide BP 20 mcg/ actuation or puff', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '200 puffs unit: 225.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(748, 'Drugs for asthma & prophylaxis', 'Combined bronchodilators', 'SULPREX', 'salbutamol BP 100 mcg & ipratropium bromide BP 20 mcg/ actuation or puff', 'Refill Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '200 puffs refill: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(749, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'BECLOMIN', 'Beclomin 100: Beclomethasone dipropionate 100 mcg/ puff or actuation; Beclomin 250: Beclomethasone dipropionate 250 mcg/puff or actuation', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '100mcg x 200 doses unit: 200.00 MRP; 250mcg x 200 doses unit: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(750, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'EZONIDE 80', 'Ciclesonide 80 mcg/actuation or metered dose (or puff)', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '80mcg x 120 doses unit: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(751, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'EZONIDE 160', 'Ciclesonide 160 mcg/actuation or metered dose (or puff)', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '160mcg x 120 doses unit: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(752, 'Drugs for peptic ulcer', 'Antacids', 'ENTACYD', 'Dried aluminium hydroxide gel BP 250mg, magnesium hydroxide BP 200mg & magnesium trisilicate 370mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '200s pack: 106.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(753, 'Drugs for peptic ulcer', 'Antacids', 'ENTACYD', 'Aluminium hydroxide gel BP 250mg, magnesium hydroxide BP 125mg in 5ml', 'Suspension', 'Square Pharmaceuticals Ltd.', '200ml bot: 32.37 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(754, 'Drugs for peptic ulcer', 'Antacids', 'ENTACYD Plus', 'Dried aluminium hydroxide gel BP & magnesium hydroxide BP + Simethicone 30mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '200s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(755, 'Drugs for peptic ulcer', 'Antacids', 'ENTACYD Plus', 'Dried aluminium hydroxide gel BP & magnesium hydroxide BP + Simethicone 30mg/5ml', 'Suspension', 'Square Pharmaceuticals Ltd.', '200ml bot: 55.00MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(756, 'Drugs for peptic ulcer', 'Antacids', 'XCID', 'Calcium carbonate BP 1000mg/tablet', 'Tablet (chewable)', 'Square Pharmaceuticals Ltd.', '30s pack: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(757, 'Drugs for peptic ulcer', 'Antacids', 'FLACOL', 'Simethicone USP 67mg/ml', 'Drop', 'Square Pharmaceuticals Ltd.', '15ml drop: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(758, 'Drugs for asthma & prophylaxis', 'Cromoglycate & related drugs', 'ALARID', 'Ketotifen fumerate 1mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(759, 'Drugs for asthma & prophylaxis', 'Cromoglycate & related drugs', 'ALARID', 'Ketotifen fumerate 1mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(760, 'Drugs for diarrhoea', 'Antimotility drugs', 'IMOTIL', 'Loperamide hydrochloride 2 mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '200s pack: 114.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(761, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'ESPA', 'Drotaverine hydrochloride 40mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 175.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43');
INSERT INTO `medicine` (`id`, `drug_for`, `drug_class`, `brand_name`, `contains`, `type`, `manufacturer`, `price`, `created_at`, `updated_at`) VALUES
(762, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'ESPA', 'Drotaverine hydrochloride 40mg/2ml amp', 'Injection', 'Square Pharmaceuticals Ltd.', '10 amps pack: 70.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(763, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'NORVIS', 'Tiemonium methylsulfate INN 50mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '50s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(764, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'NORVIS', 'Tiemonium methylsulfate 5mg/2ml ampoule', 'Injection', 'Square Pharmaceuticals Ltd.', '10 amps pack 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(765, 'Drugs for peptic ulcer', 'Anticholinergics(others)', 'TIMOTOR', 'Trimebutine maleate INN 100mg/ tablet', 'Tablet (film coated)', 'Square Pharmaceuticals Ltd.', '50s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(766, 'Drugs for peptic ulcer', 'Anti H pylori drugs', 'PYLOTRIP', 'lansoprazole 30mg, amoxycillin BP 500mg & clarithromycin USP lgm/strip', 'Strip', 'Square Pharmaceuticals Ltd.', '7s pack: 385.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(767, 'Drugs for peptic ulcer', 'Drugs for Aphthous ulcer', 'APSOL', 'Amlexanox INN 50mg/gm(i.e 5%w/w)/paste tube', 'Oral paste', 'Square Pharmaceuticals Ltd.', '5gm tube: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(768, 'Drugs for constipation', 'Osmotic purgatives', 'OSMOLAX', 'lactulose USP 3.4gm/concentrate oral solution; 1 tsf (5ml)', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 100.00 MRP; 200ml bot: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(769, 'Drugs for asthma & prophylaxis', 'Leukotriene receptor antagonists', 'MONTENE', 'Montelukast sodium INN 4mg & 5mg/tablet(chewable)', 'Chewable Tablet', 'Square Pharmaceuticals Ltd.', '4mg x 10s pack: 70.00 MRP 5mg x 10s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(770, 'Drugs for asthma & prophylaxis', 'Leukotriene receptor antagonists', 'MONTENE 10', 'Montelukast sodium INN 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '10mg x 10s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(771, 'Drugs for cough & cold', 'Cough suppressants', 'BROFEX', 'Dextromethorphan 10mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 25.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(772, 'Drugs for cough & cold', 'Combined cough suppressants', 'OFKOF', 'Dextromethorphan hydrobromide 10mg, pseudoephedrine hydrochloride 30mg & triprolidine hydrochloride 1.25mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(773, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'AMBROX 75', 'Ambroxol hydrochloride BP 75mg/capsule', 'Capsule(sustained release)', 'Square Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(774, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'AMBROX', 'Ambroxol hydrochloride BP 15mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml hot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(775, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'AMBROX', 'Ambroxol hydrochloride BP 6mg/ml drop', 'Drop', 'Square Pharmaceuticals Ltd.', '15ml hot: 20.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(776, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'MUCOSPEL 8', 'Bromhexine hydrochloride BP 8mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(777, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'MUCOSPEL', 'Bromhexine hydrochloride BP 4mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(778, 'Drugs for cough & cold', 'Cough expectorants & mucolytics', 'NECTAR', 'Glycerol 0.75ml and liquid sucrose 1.93ml / 5ml liquid', 'Oral Solution', 'Square Pharmaceuticals Ltd.', '100ml bot: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(779, 'Drugs for cough & cold', 'Combined cough expectorants', 'TUSCA', 'Pseudoephedrine BP 30mg, guaiphenesin BP 100mg & triprolidine BP 1.25mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(780, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'SECLO', 'Omeprazole 20mg & 40mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '20mg x 96s pack: 384.00 MRP; 40mg x 30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(781, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'SECLO DR', 'Omeprazole magnesium 20mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '20mg x 60s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(782, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'NEXUM', 'Esomeprazole INN 20mg & 40mg/capsule', 'Capsule(enteric coated )', 'Square Pharmaceuticals Ltd.', '20mg x 30s pack: 150.00 MRP; 40mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(783, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'NEXUM', 'Esomeprazole INN 20mg & 40mg/tablet', 'Tablet(enteric coated )', 'Square Pharmaceuticals Ltd.', '20mg x 50s pack: 200.00 MRP; 40mg x 30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(784, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'LANSO', 'Lansoprazole 15mg & 30mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '15mg x 50s pack: 175.00 MRP; 30mg x 30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(785, 'Drugs for peptic ulcer', 'Proton pump inhibitor', 'TRUPAN', 'Pantoprazole sodium sesquihydrate 20mg & 40mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '20mg x 60s pack: 180.00 MRP; 40mg x 60s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(786, 'Drugs for diarrhoea', 'Anti-diarrhoeal Antiprotozoal', 'ZOX', 'Nitazoxanide INN 500mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(787, 'Drugs for diarrhoea', 'Anti-diarrhoeal Antiprotozoal', 'ZOX', 'Nitazoxanide INN l00mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '30ml bot: 35.00 MRP; 60ml bot: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(788, 'Drugs for diarrhoea', 'Water purifying agent', 'PEURITAR 1', 'Sodium dichloroisocyanurate INN 17mg/tablet', 'Tablet (effervescent)', 'Square Pharmaceuticals Ltd.', '17mg x 100s pack: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(789, 'Drugs for diarrhoea', 'Water purifying agent', 'PEURITAR 3', 'Sodium dichloroisocyanurate INN 51mg/tablet', 'Tablet (effervescent).', 'Square Pharmaceuticals Ltd.', '51mg x 30s pack: 28.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(790, 'Drugs for chronic inflammatory disease', 'Drugs for Irritable Bowel Syndrome', 'TESOD', 'Tegaserod maleate INN 6mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(791, 'Local preparation for anal and rectal disorder', 'Phlebotonic & Vascular protecting preparations', 'HEMORIF', 'Micronised diosmin INN 450mg & hesperidin INN 50mg/tablet', 'Tablet (film coated)', 'Square Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(792, 'Local preparation for anal and rectal disorder', 'Compound steroidal preprations', 'ERIAN', 'Aesculin 1%, cinchocaine HCl 0.5%, hydrocortisone 0.5%, framycetin sulphate 1%/ointment preparation', 'Ointment', 'Square Pharmaceuticals Ltd.', '15gm tube: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(793, 'Local preparation for anal and rectal disorder', 'Compound steroidal preprations', 'ERIAN', 'hydrocortisone BP 5mg, aesculin INN 10mg, cinchocaine hydrochloride BP 5mg, framycetin sulphate 10mg/suppository', 'Suppository', 'Square Pharmaceuticals Ltd.', '10s pack: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(794, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'TICAMET', 'Ticamet 100 - Salmeterol zinafoate INN 50mcg & fluticasone propionate BP 100mcg dry powder inhalation', 'Cozycap Inhaler (DPI)', 'Square Pharmaceuticals Ltd.', '30s pack: 144.90 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(795, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'TICAMET', 'Ticamet 250 - Salmeterol zinafoate INN 50mcg & fluticasone propionate BP 250mcg dry powder inhalation', 'Cozycap Inhaler (DPI)', 'Square Pharmaceuticals Ltd.', '30s pack: 275.10 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(796, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'TICAMET', 'Ticamet 50 - Salmeterol xinafoate INN 25mcg and fluticasone propionate BP 50mcg per actuation', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '120 doses unit x 1s: 525.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(797, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'TICAMET', 'Ticamet 125 - Salmeterol xinafoate INN 25mcg and fluticasone propionate BP 125mcg per actuation', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '120 doses unit x 1s: 575.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(798, 'Drugs for asthma & prophylaxis', 'Respiratory corticosteroids', 'TICAMET', 'Ticamet 250- Salmeterol xinafoate INN 25mcg and fluticasone propionate BP 250mcg per actuation', 'Inhaler (MDI)', 'Square Pharmaceuticals Ltd.', '120 doses unit x 1s: 750.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(799, 'Drugs for angina & ischaemic heart diseases', 'Nitrates: Coronary vasodilators', 'ANRIL', 'Glyceryl trinitrate (nitroglycerin) 0.5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(800, 'Drugs for angina & ischaemic heart diseases', 'Nitrates: Coronary vasodilators', 'ANRIL', 'Glyceryl trinitrate (nitroglycerin) 2.6mg/tablet', 'Tablet (sustained release)', 'Square Pharmaceuticals Ltd.', '30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(801, 'Drugs for angina & ischaemic heart diseases', 'Nitrates: Coronary vasodilators', 'ANRIL', 'Glyceryl trinitrate (nitroglycerin)400mcg/metered dose aerosol spray', 'Aerosol Spray', 'Square Pharmaceuticals Ltd.', '200 doses unit: 215.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(802, 'Drugs for angina & ischaemic heart diseases', 'Nitrates: Coronary vasodilators', 'ESMO', 'Isosorbide mononitrate 20mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 142.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(803, 'Drugs for angina & ischaemic heart diseases', 'Nitrates: Coronary vasodilators', 'ESMO LA', 'Isosorbide mononitrate 50mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(804, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'CAMLODIN', 'Amlodipine 5mg & 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '5mg x 60s pack: 240.00 MRP ; 10mg x 30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(805, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'DILTIZEM-SR', 'Diltiazem hydrochloride 90mg/tablet', 'Tablet (sustained release)', 'Square Pharmaceuticals Ltd.', '90mg x 40s pack: 223.20 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(806, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'NIDIPINE', 'Nifedipine 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '200s pack: 68.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(807, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'NIDIPINE-SR', 'Nifedipine 20mg/tablet', 'Tablet (sustained release)', 'Square Pharmaceuticals Ltd.', '100s pack: 64.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(808, 'Drugs for angina & ischaemic heart diseases', 'Calcium-channel blocker', 'NIMOCAL', 'Nimodipine BP 30mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(809, 'Drugs for hypertension', 'Thiazide diuretics', 'REPRES SR', 'Indapamide 1.5mg/tablet', 'Tablet (sustained release)', 'Square Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(810, 'Drugs for angina & ischaemic heart diseases', 'Other Antianginal & Anti-ischaemic drugs', 'ANGIVENT', 'Trimetazidine dihydrochloride INN 35mg/tablet', 'Tablet (Modified Release)', 'Square Pharmaceuticals Ltd.', '35mg x 30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(811, 'Drugs for peripheral and cerebral vasodilatation & neurosensory oxygenator', 'Cerebral vasodilator & Neurosensory oxygenator drugs', 'CEREVAS', 'Vinpocetine (apovincaminic ethylester) INN 5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '50s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(812, 'Drugs for peripheral and cerebral vasodilatation & neurosensory oxygenator', 'Peripheral Vasodilator drugs: Intermitent Claudication', 'OXIFYL', 'Pentoxifylline 400mg/tablet', 'Tablet (Controlled Release)', 'Square Pharmaceuticals Ltd.', '30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(813, 'Drugs for hypertension', 'Loop diuretics', 'FUSID', 'Frusemide 40mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 53.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(814, 'Drugs for hypertension', 'Loop diuretics', 'FUSID', 'Frusemide 20mg/ampoule', 'Injection', 'Square Pharmaceuticals Ltd.', '10 amps pack: 35.20 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(815, 'Drugs for peripheral and cerebral vasodilatation & neurosensory oxygenator', 'Drugs for muscular energy metabolism', 'LEVOCAR', 'Levocarnitine USP 330mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(816, 'Drugs for peripheral and cerebral vasodilatation & neurosensory oxygenator', 'Drugs for muscular energy metabolism', 'LEVOCAR', 'Levocarnitine USP 100mg/ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(817, 'Drugs for hypertension', 'Potassium-sparing diuretics with other diuretics', 'FUSID Plus', 'Frusemide 20mg & spironolactone 50mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(818, 'Drugs for hypertension', 'Potassium-sparing diuretics with other diuretics', 'FUSID 40 Plus', 'Frusemide 40mg & spironolactone 50mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(819, 'Drugs for hypertension', 'Beta-adrenoceptor blocking drugs', 'CARDIPRO', 'Atenolol 50mg & 100mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '50mg x 100s pack: 77.00 MRP; 100mg x 100s pack: 143.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(820, 'Drugs for hypertension', 'Beta-adrenoceptor blocking drugs', 'DUROL', 'Carvedilol 6.25mg, 12.5mg & 25mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '6.25mg x 30s pack: 90.00 MRP; 12.50mg x 30s pack: 150.00 MRP; 25mg x 30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(821, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antiplatelet drugs', 'CARVA', 'Acetylsalicylic acid 75mg/tablet', 'Tablet (Enteric Coated)', 'Square Pharmaceuticals Ltd.', '100s pack: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(822, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antiplatelet drugs', 'ANCLOG', 'Clopidogrel bisulphate INN equivalent to clopidogrel 75mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(823, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antiplatelet drugs', 'ANCLOG Plus', 'Clopidogrel bisulphate INN equivalent to clopidogrel 75mg & aspirin BP 75mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '30s pack: 330.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(824, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antifibrinolytic drugs', 'K-ONE MM', 'Phytomenadione 2mg/ 0.2ml ampoule', 'Injection', 'Square Pharmaceuticals Ltd.', '2mg ampoule x 3s pack: 59.46 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(825, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antifibrinolytic drugs', 'FRABEX', 'Tranexamic acid 500mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '20s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(826, 'Antiplatelet & antifibrinolytic/haemostatic drugs', 'Antifibrinolytic drugs', 'FRABEX', 'Tranexamic acid 500mg/5ml ampoule', 'Injection (IV)', 'Square Pharmaceuticals Ltd.', '6 ampoules pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(827, 'Drugs for lipid regulation', 'Ezetimibe', 'CHOLINOR', 'Ezetimibe INN 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(828, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'CAMLODIN Plus', 'Atenolol 50mg & amlodipine 5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '50s pack: 135.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(829, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'CAMLODIN Plus 25', 'Atenolol 25mg & amlodipine 5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(830, 'Drugs for lipid regulation', 'Fibrates', 'LIPIRED', 'Fenofibrate BP 200mg/capsule', 'Capsule (Micronized)', 'Square Pharmaceuticals Ltd.', '30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(831, 'Drugs for lipid regulation', 'Fibrates', 'DELIPID', 'Gemfibrozil 300mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 209.40 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(832, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'CARDIPRO 50 Plus', 'Atenolol 50mg & chlorthalidone 25mg/ tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 82.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(833, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'CARDIPRO 100 Plus', 'Atenolol 100mg & chlorthalidone 25mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(834, 'Drugs for lipid regulation', 'Statins', 'ANZITOR', 'Atorvastatin 10mg & 20mg /tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '10mg x 30s pack: 240.00 MRP; 20mg x 20s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(835, 'Drugs for lipid regulation', 'Statins', 'ROSUVA 10', 'Rosuvastatin INN 10mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '10mg x 20s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(836, 'Drugs for lipid regulation', 'Statins', 'SIMACOR', 'Simvastatin 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(837, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'MDIPRO', 'Atenolol USP 50mg & Nifedipine USP 20mg/capsule', 'Capsule(sustained release)', 'Square Pharmaceuticals Ltd.', '50s pack: 134.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(838, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'CAMLOPRIL 10/2.5', 'Benazepril 10mg & amlodipine 2.5mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack; 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(839, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'CAMLOPRIL 10/5', 'Benazepril 10mg & amlodipine 5mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(840, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'CAMLOPRIL 20/5', 'Benazepril 20mg & amlodipine 5mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(841, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'CAMLOPRIL 20/10', 'Benazepril 20mg & amlodipine 10mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(842, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'REPRES Plus 2', 'Indapamide 0.625mg and perindopril erbumine 2mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(843, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'REPRES Plus 4', 'Indapamide 1.25mg and perindopril erbumine 4mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '20s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(844, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'ANGILOCK Plus', 'Losartan potassium 50mg & hydrochlorothiazide 12.5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(845, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'ANGILOCK Plus 100/12.5', 'Losartan potassium 100mg & hydrochlorothiazide 12.5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 270.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(846, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'ANGILOCK Plus 100/25', 'Losartan potassium 100mg & hydrochlorothiazide 25mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(847, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'RIPRIL Plus 2.5/12.5', 'Ramipril BP 2.5mg & hydrochlorothiazide BP 12.5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(848, 'Drugs for hypertension', 'Combined antihypertensive preparations', 'RIPRIL Plus 5/25', 'Ramipril BP 5mg & hydrochlorothiazide BP 25mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(849, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'SEDIL', 'Diazepam 5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '500s pack: 110.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(850, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'SEDIL', 'Diazepam 10mg/2ml ampoule', 'Injection', 'Square Pharmaceuticals Ltd.', '10 ampoules pack: 30.30 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(851, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'NIXALO', 'Alprazolam 0.25mg & 0.5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '0.25mg x 100s pack: 100.00 MRP ; 0.5mg x 100s pack: 175.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(852, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'LAXYL', 'Bromazepam BP 3mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '50s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(853, 'Drugs for Sedation & Hypnosis', 'Benzodiazepine sedatives', 'CLOBAM', 'Clobazam 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 275.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(854, 'Drugs for psychosis', 'Phenothiazine related drugs', 'MELIXOL', 'Flupenthixol dihydrochloride 0.5mg & melitracen hydrochloride 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '50s pack: 175.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(855, 'Drugs for viral infections', 'Herpes simplex & Varicella-zoster virus infections', 'VIRUX', 'Acyclovir 200mg & 400mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '200mg x 30s pack: 420.00 MRP ; 400mg x 20s pack: 440.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(856, 'Drugs for viral infections', 'Herpes simplex & Varicella-zoster virus infections', 'VIRUX', 'Acyclovir 200mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '70ml bot: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(857, 'Drugs for viral infections', 'Drugs for HIV / Antiretroviral drugs', 'ADIVA', 'Efavirenz INN 600mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '10s pack: 2000.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(858, 'Drugs for viral infections', 'Drugs for HIV / Antiretroviral drugs', 'NELVIR', 'Nelfinavir mesylate 250mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '10s pack: 450.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(859, 'Drugs for viral infections', 'Drugs for HIV / Antiretroviral drugs', 'AVUDIN', 'Lamivudine INN 150mg and zidovudine USP 300mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '10s pack: 450.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(860, 'Drugs for viral infections', 'Drugs for HIV / Antiretroviral drugs', 'TIVIZID', 'Abacavir (as sulfate) 300mg, Lamivudine INN 150mg and Zidovudine USP 300mg', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '10s pack: 1400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(861, 'Drugs for viral infections', 'Hepatic viral infections (Hepatitis B)', 'HEPAVIR', 'Lamivudine INN 100mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '20s pack: 500.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(862, 'Drugs for viral infections', 'Hepatic viral infections (Hepatitis B)', 'HIVARIF', 'Lamivudine INN 150mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '10s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(863, 'Drugs for viral infections', 'Hepatic viral infections (Hepatitis B)', 'HIVARIF', 'Lamivudine INN 10mg/ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 110.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(864, 'Drugs for viral infections', 'Hepatic viral infections (Hepatitis B)', 'ANTIVA', 'Adefovir dipivoxil INN 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '10s pack: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(865, 'Drugs for bacterial infections', 'Benzylpenicillin & Phenoxymethyl penicillin', 'PENVIK', 'Phenoxymethyl penicillin 250mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 147.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(866, 'Drugs for bacterial infections', 'Benzylpenicillin & Phenoxymethyl penicillin', 'PENVIK DS', 'Phenoxymethyl penicillin 500mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 268.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(867, 'Drugs for bacterial infections', 'Benzylpenicillin & Phenoxymethyl penicillin', 'PENVIK', 'Phenoxymethyl penicillin 125mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '50ml bot: 18.21 MRP; 100ml bot: 28.88 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(868, 'Drugs for bacterial infections', 'Benzylpenicillin & Phenoxymethyl penicillin', 'PENVIK Forte', 'Phenoxymethyl penicillin 125mg/5ml syrup', 'Syrup (double strength)', 'Square Pharmaceuticals Ltd.', '100ml bot: 42.88 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(869, 'Drugs for bacterial infections', 'Long acting penicillin', 'BENZAPEN', 'Benzathine penicillin 12 lac units vial', 'Injection', 'Square Pharmaceuticals Ltd.', '12 lac units vial x 5s pack: 115.60 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(870, 'Drugs for depression', 'Combined antidepressant drugs', 'SANIT', 'Fluphenazine hydrochloride 0.5mg & Nortriptyline hydrochloride 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(871, 'Drugs for other CNS diseases', 'CNS stimulant drugs', 'SUEV 10', 'Atomoxetine hydrochloride INN 10mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(872, 'Drugs for nausea, vomiting & vertigo', 'Anti vertigo drugs', 'CINARON', 'Cinnarizine 15mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '200s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(873, 'Drugs for nausea, vomiting & vertigo', 'Antiemetic drugs', 'VERTINA', 'Meclizine hydrochloride 50mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '50s pack: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(874, 'Drugs for nausea, vomiting & vertigo', 'Anti vertigo drugs', 'MERISON', 'Betahistine mesylate INN 6mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(875, 'Drugs for nausea, vomiting & vertigo', 'Antiemetic drugs', 'NAURIF', 'Granisetron hydrochloride INN 1mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '1mg x 20s pack: 560.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(876, 'Drugs for nausea, vomiting & vertigo', 'Antiemetic drugs', 'NAURIF', 'Granisetron hydrochloride INN 1mg/1ml ampoule', 'Injection', 'Square Pharmaceuticals Ltd.', '1ml ampoule x 5s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(877, 'Drugs for epilepsy', 'Primary drugs', 'EPITRA', 'Clonazepam 0.5mg & 2mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '0.5mg x 100s pack: 200.00 MRP ; 2mg x 50s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(878, 'Drugs for neurodegenerative diseases', 'Anti – Parkinson drugs', 'PERKIROL', 'Ropinirole hydrochloride INN 0.25mg & 2mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '0.25mg x 50s pack: 100.00 MRP ; 2mg x 30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(879, 'Drugs for neurodegenerative diseases', 'Anti – Parkinson drugs', 'PERKINIL', 'Procyclidine hydrochloride 5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '200s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(880, 'Drugs for neurodegenerative diseases', 'Anti – Parkinson drugs', 'PERKINIL', 'Procyclidine hydrochloride 10mg/2ml ampoule', 'Injection', 'Square Pharmaceuticals Ltd.', '1 ampoule pack: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(881, 'Drugs for neurodegenerative diseases', 'Anti – Parkinson drugs', 'NEUROLEP', 'Piracetam INN 800mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '800mg x 40s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(882, 'Drugs for neurodegenerative diseases', 'Anti – Parkinson drugs', 'NEUROLEP', 'Piracetam INN 500mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(883, 'Drugs for other CNS diseases', 'Appetite suppressant drugs', 'OBENIL', 'Sibutramine hydrochloride monohydrate INN equivalent to 5mg sibutramine hydrochloride INN/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(884, 'Drugs for neurodegenerative diseases', 'Anti – Alzheimer drugs', 'ELZER', 'Donepezil hydrochloride INN 5mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '5mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(885, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'PHYLOPEN', 'Flucloxacillin sodium 250mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '50s pack: 275.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(886, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'PHYLOPEN DS', 'Flucloxacillin sodium 500mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(887, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'PHYLOPEN', 'Flucloxacillin sodium 125mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '100ml bot: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(888, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'PHYLOPEN Forte', 'Flucloxacillin sodium 250mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '100ml bot: 110.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(889, 'Drugs for bacterial infections', 'Penicillinase-resistant penicillins', 'PHYLOPEN', 'Flucloxacillin 500mg/vial', 'Injection', 'Square Pharmaceuticals Ltd.', '500mg vial x 5s: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(890, 'Oral hypoglycemic drugs', 'Sulfonylureas', 'DIBENOL', 'Glibenclamide 5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '300s pack: 84.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(891, 'Oral hypoglycemic drugs', 'Sulfonylureas', 'COMPRID', 'Gliclazide 80mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '40s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(892, 'Oral hypoglycemic drugs', 'Sulfonylureas', 'COMPRID XR', 'Gliclazide 30mg/tablet', 'Tablet (Extended Release)', 'Square Pharmaceuticals Ltd.', '30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(893, 'Oral hypoglycemic drugs', 'Sulfonylureas', 'SECRIN', 'Glimepiride INN 1mg, 2mg, 3mg & 4mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '1mg x 30s pack: 90.00 MRP; 2mg X 30s pack: 150.00 MRP; 3mg x 30s pack: 210.00 MRP; 4mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(894, 'Oral hypoglycemic drugs', 'Biguanides', 'COMET', 'Metformin hydrochloride 500mg, 750mg & 850mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '500mg x 100s pack: 200.00 MRP; 750mg x 60s pack: 150.00 MRP; 850mg x 50s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(895, 'Oral hypoglycemic drugs', 'Biguanides', 'COMET XR 500', 'Metformin hydrochloride 500mg/tablet', 'Tablet (Extended Release)', 'Square Pharmaceuticals Ltd.', '500mg x 50s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(896, 'Oral hypoglycemic drugs', 'Biguanides', 'COMET XR 1gm', 'Metformin hydrochloride 1gm/tablet', 'Tablet (Extended Release)', 'Square Pharmaceuticals Ltd.', '1gm x 30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(897, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'ACE', 'Paracetamol 500mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '500s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(898, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'ACE', 'Paracetamol 120mg/5ml', 'Suspension', 'Square Pharmaceuticals Ltd.', '60ml bot: 20.56 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(899, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'ACE', 'Paracetamol 120mg/5ml', 'Syrup', 'Square Pharmaceuticals Ltd.', '50ml bot: 18.18 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(900, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'ACE', 'Paracetamol 80mg/ml', 'Paediatric Drop', 'Square Pharmaceuticals Ltd.', '15ml bot: 12.27 MRP; 30ml bot: 15.67 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(901, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'ACE', 'Paracetamol 60mg, 125mg, 250mg & 500mg/stick', 'Suppository', 'Square Pharmaceuticals Ltd.', '60mg x 10s pack: 35.00 MRP; 125mg x 10s pack: 40.00 MRP; 250mg x 10s pack: 50.00 MRP; 500mg x 10s pack: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(902, 'Drugs for bacterial infections', 'Tetracycline Group of drugs', 'TETRAX', 'Tetracycline 500mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '500mg x 100s pack: 228.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(903, 'Drugs for bacterial infections', 'Tetracycline Group of drugs', 'DOXACIL', 'Doxycycline 100mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(904, 'Drugs for bacterial infections', 'Aminoglycosides', 'GENACYN', 'Gentamicin 80mg/2ml ampoule', 'Injection', 'Square Pharmaceuticals Ltd.', '10 ampoules pack: 101.10 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(905, 'Drugs for bacterial infections', 'Aminoglycosides', 'GENACYN', 'Gentamicin 20mg/2ml ampoule', 'Injection', 'Square Pharmaceuticals Ltd.', '10 ampoules pack: 60.70 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(906, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'ACE Plus', 'Paracetamol BP 500mg + caffeine USP 65mg/tablet', 'Tablet (film-coated)', 'Square Pharmaceuticals Ltd.', '200s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(907, 'Drugs for bacterial infections', 'Macrolides', 'EROMYCIN', 'Erythromycin 250mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '50s pack: 217.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(908, 'Drugs for bacterial infections', 'Macrolides', 'EROMYCIN DS', 'Erythromycin 500mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 242.70 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(909, 'Drugs for bacterial infections', 'Macrolides', 'EROMYCIN', 'Erythromycin 125mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '100ml bot: 56.64 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(910, 'Drugs for bacterial infections', 'Macrolides', 'EROMYCIN', 'Erythromycin 200mg/5ml drop', 'Drop', 'Square Pharmaceuticals Ltd.', '60ml drop: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(911, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'CEF-3', 'Cefixime trihydrate 200mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '200mg x 12s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(912, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'CEF-3 DS', 'Cefixime trihydrate 400mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '400mg x 6s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(913, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'CEF-3', 'Cefixime trihydrate 100mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '30ml bot: 120.00 MRP; 40ml bot: 150.00 MRP; 50ml bot: 195.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(914, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'XRIPA', 'Nefopam hydrochloride INN 30mg/tablet', 'Tablet (film-coated)', 'Square Pharmaceuticals Ltd.', '30mg x 60s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(915, 'Analgesics & Antipyretics', 'Non-Opioid Analgesics', 'XRIPA', 'Nefopam hydrochloride INN 20mg/1ml ampoule', 'i.m/i.v Injection', 'Square Pharmaceuticals Ltd.', '1ml amp x 10s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(916, 'Drugs for Acute Migraine Attack', '5-HT Agonists', 'NOMI', 'Zolmitriptan INN 2.5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '12s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(917, 'Drugs for bacterial infections', 'Macrolides', 'ZIMAX', 'Azithromycin 250mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '6s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(918, 'Drugs for bacterial infections', 'Macrolides', 'ZIMAX', 'Azithromycin 500mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '6s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(919, 'Drugs for bacterial infections', 'Macrolides', 'ZIMAX', 'Azithromycin 200mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '15ml bot: 85.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(920, 'Analgesics & Antipyretics', 'Opoid analgesics', 'ANADOL', 'Tramadol hydrochloride 50mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(921, 'Analgesics & Antipyretics', 'Opoid analgesics', 'ANADOL', 'Tramadol hydrochloride 100mg/2ml ampoule', 'Injection', 'Square Pharmaceuticals Ltd.', '10 amps pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(922, 'Analgesics & Antipyretics', 'Opoid analgesics', 'ANADOL', 'Tramadol hydrochloride l00mg/suppository', 'Suppository', 'Square Pharmaceuticals Ltd.', '10s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(923, 'Drugs for bacterial infections', 'Macrolides', 'REMAC', 'Clarithromycin 500mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '500mg x 6s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(924, 'Analgesics & Antipyretics', 'Topical Analgesics', 'PENRIF 15', 'Methyl salicylate BP 150mg (0.15gm or 15%) and menthol BP 100mg (0.10gm or 10%)/1 gm cream', 'Cream', 'Square Pharmaceuticals Ltd.', '20gm tube: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(925, 'Analgesics & Antipyretics', 'Topical Analgesics', 'PENRIF 30', 'Methyl salicylate BP 0.30gm (30%) and menthol BP 0.08gm (8%)/1 gm cream', 'Cream', 'Square Pharmaceuticals Ltd.', '20gm tube: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(926, 'Prophylactics of Migraine', 'Antihistamine Preparations', 'MIGRANIL', 'Pizotifen 0.5mg & 1.5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '0.5mg x 50s pack: 150.00 MRP; 1.5mg x 30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(927, 'Drugs for bacterial infections', 'Sulphonamides & Trimethoprim', 'COTRIM', 'Cotrimoxazole 480mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 149.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(928, 'Drugs for bacterial infections', 'Sulphonamides & Trimethoprim', 'COTRIM DS', 'Cotrimoxazole 960mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 202.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(929, 'Drugs for bacterial infections', 'Sulphonamides & Trimethoprim', 'COTRIM', 'Cotrimoxazole 240mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '60ml bot: 21.49 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(930, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'FLEXI', 'Aceclofenac BP 100mg/tablet', 'Tablet (film-coated)', 'Square Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(931, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'MAXCEF', 'Cefotaxime sodium USP 250mg, 500mg & 1gm/vial', 'Injection (IV/IM)', 'Square Pharmaceuticals Ltd.', '250mg vial x 1s pack: 50.00 MRP; 500mg vial x 1s pack: 76.00 MRP; 1gm vial x 1s pack: 132.20 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(932, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'SELECOX', 'Celecoxib INN 100mg & 200mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '100mg x 48s pack: 144.00 MRP; 200mg x 48s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(933, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'XFLAM', 'Dexibuprofen INN 200mg, 300mg &400mg/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '200mg x 60s pack: 180.00 MRP; 300mg x 48s pack: 192.00 MRP; 400mg x 48s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(934, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'KITEX', 'Dexketoprofen trometamol equivalent to dexketoprofen INN 25mg/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '50s pack: 200.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(935, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACLAV 375', 'Co-amoxiclav 250/125 (amoxycillin trihydrate 250mg + clavulanic acid 125mg as potassium salt) per tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '18s pack: 297.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(936, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACLAV 1gm', 'Co-amoxiclav 875/125 (amoxycillin trihydrate 875mg + clavulanic acid 125mg as potassium salt) per tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '12s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(937, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACLAV 625', 'Co-amoxiclav 500/125 (amoxycillin trihydrate 250mg + clavulanic acid 125mg as potassium salt) per tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '18s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(938, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACLAV', 'Co-amoxiclav 125/31 (amoxycillin trihydrate 125mg + clavulanic acid 31.25mg as potassium salt)/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '60ml bot: 135.00 MRP; 100ml bot: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(939, 'Drugs for bacterial infections', 'Broad spectrum penicillins', 'MOXACLAV Forte', 'Co-amoxiclav 400/57 (amoxycillin trihydrate 400mg + clavulanic acid 57.50mg as potassium salt)/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '35ml bot: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(940, 'Drugs for bacterial infections', 'Mecillinams', 'EMCIL', 'Pivmecillinam hydrochloride 200mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(941, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'CLOFENAC', 'Diclofenac sodium 25mg & 50mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '25mg x 100s pack: 54.00 MRP; 50mg x 200s pack: 176.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(942, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'CLOFENAC', 'Diclofenac sodium 100mg/tablet', 'Sustained Release Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 300.00 MRP.', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(943, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'CLOFENAC', 'Diclofenac sodium 100mg/capsule', 'Timed Release Capsule', 'Square Pharmaceuticals Ltd.', '50s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(944, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'CLOFENAC', 'Diclofenac sodium 75mg/3ml ampoule', 'Deep i.m Injection', 'Square Pharmaceuticals Ltd.', '10 amps pack: 95.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(945, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'CLOFENAC Plus', 'Diclofenac sodium 75mg & lidocaine hydrochloride 20mg/2ml ampoule', 'Deep i.m Injection', 'Square Pharmaceuticals Ltd.', '10 amps pack: 95.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(946, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'CLOFENAC', 'Diclofenac sodium 12.5mg, 25mg & 50mg/stick', 'Suppository', 'Square Pharmaceuticals Ltd.', '12.5mg x 10s pack: 60.00 MRP; 25mg x 10s pack: 80.00 MRP; 50mg x 10s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(947, 'Drugs for bacterial infections', '4-Quinolone preparations', 'CIPROCIN', 'Ciprofloxacin 250mg, 500mg & 750mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '250mg x 30s pack: 255.00 MRP; 500mg x 20s pack: 280.00 MRP; 750mg x 20s pack: 360.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(948, 'Drugs for bacterial infections', '4-Quinolone preparations', 'CIPROCIN XR', 'Ciprofloxacin 1gm/tablet', 'Tablet (Extended Release)', 'Square Pharmaceuticals Ltd.', '1gm x 12s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(949, 'Drugs for bacterial infections', '4-Quinolone preparations', 'CIPROCIN', 'Ciprofloxacin 250mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '60ml bot: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(950, 'Drugs for bacterial infections', '4-Quinolone preparations', 'GATI 400', 'Gatifloxacin INN 400mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '400mg x 20s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(951, 'Drugs for bacterial infections', '4-Quinolone preparations', 'TREVOX', 'Levofloxacin hemihydrate INN 500mg & 750mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '500mg x 20s pack: 300.00 MRP; 750mg x 20s pack: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(952, 'Drugs for bacterial infections', '4-Quinolone preparations', 'TREVOX', 'Levofloxacin hemihydrate INN 125mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(953, 'Drugs for bacterial infections', '4-Quinolone preparations', 'MEXLO', 'Lomefloxacin 400mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '400mg x 20s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(954, 'Drugs for bacterial infections', '4-Quinolone preparations', 'RUTIX', 'Ofloxacin 200mg & 400mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '200mg x 20s pack: 240.00 MRP; 400mg x 10s pack: 220.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(955, 'Drugs for bacterial infections', '4-Quinolone preparations', 'SAGA', 'Sparfloxacin INN 200mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '10s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(956, 'Drugs for viral infections', 'Respiratory viral infections (Influenza)', 'AVIFLU', 'Oseltamivir phosphate INN equivalent to Oseltamivir 75mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '10s pack: 1800.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(957, 'Drugs for fungal infections', 'Drugs for cutaneous mycoses', 'CANDEX', 'Nystatin 100,000 units/1ml drop', 'Drop', 'Square Pharmaceuticals Ltd.', '12ml bot: 22.65 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(958, 'Drugs for fungal infections', 'Drugs for subcutaneous and systemic mycoses', 'FLUGAL', 'Fluconazole 50mg, 150mg & 200mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '50mg x 30s pack: 240.00 MRP; 150mg x 10s pack: 220.00 MRP; 200mg x 10s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43');
INSERT INTO `medicine` (`id`, `drug_for`, `drug_class`, `brand_name`, `contains`, `type`, `manufacturer`, `price`, `created_at`, `updated_at`) VALUES
(959, 'Drugs for fungal infections', 'Drugs for subcutaneous and systemic mycoses', 'FLUGAL', 'Fluconazole 50mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '35ml bot: 78.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(960, 'Drugs for fungal infections', 'Drugs for subcutaneous and systemic mycoses', 'ITRA', 'Itraconazole INN 100mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '12s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(961, 'Drugs for fungal infections', 'Drugs for subcutaneous and systemic mycoses', 'KETORAL', 'Ketoconazole 200mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 270.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(962, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'CLOFENAC DT', 'Diclofenac free acid 46.5mg (corresponding to 50mg of diclofenac sodium)', 'Tablet (dispersible)', 'Square Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(963, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'CLOFENAC', 'Diclofenac diethylammonium salt 1.16% (equivalent to diclofenac sodium 1% i.e 10mg/gm): gel preparation.', 'Gel', 'Square Pharmaceuticals Ltd.', '10 gm tube: 12.90 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(964, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'PANODIN', 'Etodolac USP 600mg/tablet', 'Tablet (extended release)', 'Square Pharmaceuticals Ltd.', '600mg x 30s pack: 450.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(965, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'TORY', 'Etoricoxib INN 60mg, 90mg & 120mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '60mg x 30s pack: 210.00 MRP; 90mg x 30s pack: 360.00 MRP; 120mg x 20s pack: 280.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(966, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'KOP', 'Ketoprofen 50mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '50mg x 50s pack: 175.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(967, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'KOP SR', 'Ketoprofen 100mg & 200mg/capsule', 'Capsule (sustained release)', 'Square Pharmaceuticals Ltd.', '100mg x 50s pack: 350.00 MRP; 200mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(968, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'KOP IM', 'Ketoprofen 100mg/2ml ampoule', 'Injection (i.m)', 'Square Pharmaceuticals Ltd.', '10 amps pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(969, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'KOP', 'Ketoprofen 2.5% w/w gel, also containing ethyl alcohol, triethanolamine & lavender oil', 'Gel', 'Square Pharmaceuticals Ltd.', '20gm tube: 58.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(970, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'MELCAM', 'Meloxicam BP 7.5mg & 15mg/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '7.5mg x 100s pack: 250.00 MRP; 15mg x 50s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(971, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'LEBAC', 'Cephradine 250mg & 500mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '250mg x 18s pack: 117.00 MRP; 500mg x 18s pack: 375.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(972, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'LEBAC', 'Cephradine 125mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '100ml bot: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(973, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'LEBAC Forte', 'Cephradine 250mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '100ml bot: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(974, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'LEBAC', 'Cephradine 100mg/1ml drop', 'Drop', 'Square Pharmaceuticals Ltd.', '15ml bot: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(975, 'Drugs for bacterial infections', 'First generation Cephalosporins', 'LEBAC', 'Cephradine 500mg & 1gm vial', 'Injection (IV/IM)', 'Square Pharmaceuticals Ltd.', '500mg vial x 5s pack: 250.00 MRP; 1gm vial x 1s pack: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(976, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'SONAP', 'Naproxen sodium 500mg/suppository', 'Suppository', 'Square Pharmaceuticals Ltd.', '250mg x 50s pack: 200.00 MRP; 500mg x 30s pack: 210.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(977, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'SONAP', 'Naproxen 10% w/w gel preparation', 'Gel', 'Square Pharmaceuticals Ltd.', '500mg x 10s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(978, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'SONAP', 'Naproxen sodium 250mg & 500mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '500mg x 30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(979, 'Drugs for Inflammation and Rheumatic Diseases', 'Drugs used in Gout', 'ESLORIC', 'Allopurinol 100mg & 300mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100mg x 100s pack: 400.00 MRP; 300mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(980, 'Drugs for Neuromuscular Disorders', 'Centrally acting Skeletal Muscle Relaxants', 'MYONIL', 'Eperisone hydrochloide 50mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '50s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(981, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'MICLOFENAC 50', 'Diclofenac sodium BP 50mg + misoprostol INN 200mcg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(982, 'Drugs for Inflammation and Rheumatic Diseases', 'Nonsteroidal Antiinflammatory Drugs (NSAIDs)', 'MICLOFENAC 75', 'Diclofenac sodium BP 75mg + misoprostol INN 200mcg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 330.00 IP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(983, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'VANPROX', 'Cefpodoxime proxetil INN 100mg & 200mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '100mg x 12s pack: 264.00 MRP; 200mg x 6s pack: 252.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(984, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'VANPROX', 'Cefpodoxime proxetil INN 40mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '50ml bot: 98.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(985, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'VANPROX Forte', 'Cefpodoxime proxetil INN 80mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '50ml bot: 175.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(986, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'VANPROX', 'Cefpodoxime proxetil INN 20mg/1ml drop', 'Drop', 'Square Pharmaceuticals Ltd.', '15ml bot: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(987, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'TAZID', 'Ceftazidime pentahydrate 250mg, 500mg & 1gm vial', 'Injection (IV/IM)', 'Square Pharmaceuticals Ltd.', '250mg vial: 70.00 MRP; 500mg vial: 115.00 MRP; 1gm vial: 215.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(988, 'Drugs for Allergic Disorders', 'Sedating Antihistamines', 'ANTISTA', 'Chlorpheniramine maleate 2mg/5ml', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 14.14 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(989, 'Drugs for Allergic Disorders', 'Sedating Antihistamines', 'ADRYL', 'Diphenhydramine hydrochloride 10mg/5ml', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 22.50 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(990, 'Drugs for protozoal infections', 'Amoebicides', 'AMODIS', 'Metronidazole 400mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '400mg x 200s pack: 202.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(991, 'Drugs for protozoal infections', 'Amoebicides', 'AMODIS', 'Metronidazole200mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '60ml bot: 24.75 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(992, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'ALATROL', 'Cetirizine dihydrochloride 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(993, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'ALATROL', 'Cetirizine dihydrochloride 5mg/5ml', 'Syrup', 'Square Pharmaceuticals Ltd.', '60ml bot: 16.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(994, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'ALATROL', 'Cetirizine dihydrochloride 2.5mg/1ml', 'Drop', 'Square Pharmaceuticals Ltd.', '15ml bot: 15.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(995, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'FEXO', 'Fexofenadine hydrochloride INN USP 60mg, 120mg & 180mg/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '60mg x 30s pack: 105.00 MRP; 120mg x 30s pack: 195.00 MRP; 180mg x 30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(996, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'FEXO', 'Fexofenadine hydrochloride INN USP 30mg/5ml', 'Suspension', 'Square Pharmaceuticals Ltd.', '50ml bot: 48.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(997, 'Drugs for protozoal infections', 'Amoebicides', 'ROBIC', 'Ornidazole INN 500mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '30s pack: 195.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(998, 'Drugs for protozoal infections', 'Amoebicides', 'SECNID DS', 'Secnidazole 1gm/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '10s pack: 160.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(999, 'Drugs for protozoal infections', 'Amoebicides', 'SECNID', 'Secnidazole 500mg (as granules)/10ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '500mg (10ml) dose bot: 25.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1000, 'Drugs for protozoal infections', 'Antimalarial drugs', 'MALACIDE', 'Sulfadoxine 500mg + Pyrimethamine 25mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '60s pack: 264.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1001, 'Drugs for protozoal infections', 'Other Antiprotozoals', 'LUMERTAM', 'Artemether 20mg & lumefantrine 120mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '24s pack: 480.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1002, 'Drugs for helminthiasis', 'Drugs for worms', 'ERMOX', 'Mebendazole 100mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100mg x 150s: 111.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1003, 'Drugs for helminthiasis', 'Drugs for worms', 'ERMOX', 'Mebendazole 100mg/5ml syrup', 'Syrup', 'Square Pharmaceuticals Ltd.', '30ml bot: 14.83 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1004, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'LORATIN', 'Loratadine INN 10mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1005, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'LORATIN', 'Loratadine INN 5mg/5ml', 'Suspension', 'Square Pharmaceuticals Ltd.', '60ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1006, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'LORATIN Fast', 'Loratadine INN 10mg/tablet', 'Tablet (dispersible)', 'Square Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1007, 'Drugs for helminthiasis', 'Drugs for worms', 'ALMEX', 'Albendazole 400mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '25s pack: 94.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1008, 'Drugs for helminthiasis', 'Drugs for worms', 'ALMEX', 'Albendazole 200mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '10ml bot: 15.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1009, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'SEDNO', 'Desloratadine INN 5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1010, 'Drugs for Allergic Disorders', 'Non - sedating Antihistamines', 'SEDNO', 'Desloratadine INN 2.5mg/5ml', 'Syrup', 'Square Pharmaceuticals Ltd.', '60ml bot: 25.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1011, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'LORACEF', 'Cefaclor monohydrate 500mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '500mg x 6s pack: 228.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1012, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'LORACEF', 'Cefaclor monohydrate 125mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '100ml bot: 190.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1013, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'LORACEF', 'Cefaclor monohydrate 100mg/1ml drop', 'Drop', 'Square Pharmaceuticals Ltd.', '15ml bot: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1014, 'Drugs for Allergic Disorders', 'Combination Preparation', 'LORATIN Plus', 'Loratadine USP 10mg & pseudoephedrine hydrochloride USP 240mg/tablet', 'Tablet (extended release)', 'Square Pharmaceuticals Ltd.', '30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1015, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'CEFOTIL', 'Cefuroxime axetil 125mg, 250mg & 500mg/tablet', 'Tablet (Film Coated)', 'Square Pharmaceuticals Ltd.', '125mg x 20s pack: 300.00 MRP; 250mg x 20s pack: 500.00 MRP; 500mg x 6s pack: 270.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1016, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'CEFOTIL', 'Cefuroxime axetil 125mg/5ml suspension', 'Suspension', 'Square Pharmaceuticals Ltd.', '70ml bot: 198.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1017, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'CEFOTIL 750', 'Cefuroxime (as sodium salt) 750mg/vial', 'Injection (IV/IM)', 'Square Pharmaceuticals Ltd.', '750mg vial x 1s pack: 125.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1018, 'Drugs for bacterial infections', 'Second generation Cephalosporins', 'CEFOTIL 1.5 IV', 'Cefuroxime (as sodium salt) 1.5gm/vial', 'Injection (IV)', 'Square Pharmaceuticals Ltd.', '1.5gm vial x 1s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1019, 'Drugs for bacterial infections', 'Fourth generation Cephalosporins', 'FORCE', 'Cefpirome sulphate INN equivalent to 1gm of cefpirome in vial', 'Injection (IV)', 'Square Pharmaceuticals Ltd.', '1gm vial with water: 400.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1020, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'CEFTRON IM', 'Ceftriaxone 250mg, 500mg & 1gm vial (with lidocaine)', 'Injection (IM)', 'Square Pharmaceuticals Ltd.', '250mg vial: 100.00 MRP; 500mg vial: 145.00 MRP; 1gm vial: 195.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1021, 'Drugs for bacterial infections', 'Third generation Cephalosporins', 'CEFTRON IV', 'Ceftriaxone 250mg, 500mg 1gm & 2gm vial (with water)', 'Injection (IV)', 'Square Pharmaceuticals Ltd.', '250mg vial: 100.00 MRP; 500mg vial: 145.00 MRP; 1gm vial: 195.00 MRP; 2gm vial: 350.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1022, 'Drugs for post operative pain', 'Non opiod analgesics', 'TORAX 10', 'Ketorolac tromethamine 10mg/tablet', 'Tablet (film-coated)', 'Square Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1023, 'Drugs for post operative pain', 'Non opiod analgesics', 'TORAX', 'Ketorolac tromethamine 10mg/1ml ampoule & 30mg/1ml ampoule & 60mg/2ml ampoule', 'i.m/i.v Injection', 'Square Pharmaceuticals Ltd.', '10mg (1ml) amp x 5s pack: 150.00 MRP; 30mg (1ml) amp x 5s pack: 275.00 MRP; 60mg (2ml) amp x 1s pack: 95.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1024, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'SQ-MYCETIN', 'Chloramphenicol 0.5%', 'Eye/Ear Drop', 'Square Pharmaceuticals Ltd.', '10ml drop: 25.81 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1025, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'CIPROCIN', 'Ciprofloxacin 0.3%', 'Eye Drop', 'Square Pharmaceuticals Ltd.', '5ml drop: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1026, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'GENACYN', 'Gentamicin 0.3%', 'Eye Drop', 'Square Pharmaceuticals Ltd.', '10ml bot: 31.91 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1027, 'Topical Anti-infective Drugs', 'Topical Antibiotic preparations', 'GENACYN', 'Gentamicin 0.1%', 'Ointment', 'Square Pharmaceuticals Ltd.', '10gm tube: 12.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1028, 'Topical Anti-infective Drugs', 'Topical Antibiotic preparations', 'BACTROCIN', 'Mupirocin 2% w/w in a water soluble polyethylene glycol base', 'Ointment', 'Square Pharmaceuticals Ltd.', '10gm tube: 130.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1029, 'Ophthalmic preparations', 'Ophthalmic Non-Steroid drugs', 'CLOFENAC', 'Diclofenac sodium 0.1%', 'Eye Drop', 'Square Pharmaceuticals Ltd.', '5ml drop: 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1030, 'Ophthalmic preparations', 'Ophthalmic Non-Steroid drugs', 'ALARID', 'Ketotifen fumarate BP 0.025%', 'Eye Drop', 'Square Pharmaceuticals Ltd.', '5ml drop: 95.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1031, 'Ophthalmic preparations', 'Ophthalmic Non-Steroid drugs', 'ALACOT', 'Olopatadine hydrochloride INN 1mg/ml (0.1%)', 'Eye Drop', 'Square Pharmaceuticals Ltd.', '5ml drop: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1032, 'Ophthalmic preparations', 'Ophthalmic Non-Steroid drugs', 'NACROMIN', 'Sodium cromoglycate 2%', 'Eye/Nasal Drop', 'Square Pharmaceuticals Ltd.', '10ml drop: 61.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1033, 'Nasal preparations', 'Nasal Anti-histamine preparations', 'SNIZEX', 'Azelastine hydrochloride BP 137mcg/actuation of metered dose nasal spray solution', 'Nasal Spray(MDI)', 'Square Pharmaceuticals Ltd.', '120 doses (spray) unit: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1034, 'Nasal preparations', 'Nasal Anti-histamine preparations', 'ANTAZOL', 'Xylometazoline hydrochloride 0.05% & 0.1% nasal drop', 'Nasal Drop', 'Square Pharmaceuticals Ltd.', '0.05% x 15ml drop: 6.97 MRP; 0.1% x 15ml drop: 7.61 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1035, 'Nasal preparations', 'Nasal Anti-histamine preparations', 'NOCON', 'Oxymetazoline hydrochloride 0.05% nasal drop', 'Nasal Drop', 'Square Pharmaceuticals Ltd.', '0.05% drop x 10ml: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1036, 'Nasal preparations', 'Nasal Anti-histamine preparations', 'NOCON', 'Oxymetazoline hydrochloride 0.025% nasal drop', 'Nasal Drop(Paediatric)', 'Square Pharmaceuticals Ltd.', '10ml vial: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1037, 'Nasal preparations', 'Nasal Anticholinergic (Anti- muscarinic) Preparations', 'RYNASPRAY', 'Ipratropium bromide BP 21 mcg/spray', 'Nasal Spray(MDI)', 'Square Pharmaceuticals Ltd.', '120 sprays unit: 148.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1038, 'Nasal preparations', 'Mast Cell Stabiliser', 'NACROMIN', 'Sodium cromoglycate 2%; nasal & eye drop', 'Nasal and Eye Drop', 'Square Pharmaceuticals Ltd.', '15ml drop: 66.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1039, 'Nasal preparations', 'Combined Nasal Preparations', 'ANTAZOL Plus', 'Sodium cromoglicate 2.6mg and Xylometazoline hydrochloride 0.0325mg per metered dose spray', 'Nasal Spray(MDI)', 'Square Pharmaceuticals Ltd.', '120 sprays unit: 110.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1040, 'Ophthalmic preparations', 'Drugs for miotics and glaucoma', 'LOCULAR', 'Brimonidine tartrate 0.2% equivalent to brimonidine INN 1.32mg/ml', 'Eye Drop', 'Square Pharmaceuticals Ltd.', '5ml drop: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1041, 'Ophthalmic preparations', 'Drugs for miotics and glaucoma', 'TEMLO', 'Timolol maleate 0.50%', 'Eye Drop', 'Square Pharmaceuticals Ltd.', '0.50% x 5ml: 70.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1042, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'MEXLO', 'Lomefloxacin hydrochloride 0.3% w/v', 'Eye Drop', 'Square Pharmaceuticals Ltd.', '5ml drop: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1043, 'Anti-eczema & Anti-psoriasis preparations', 'Zinc & Combined preparations', 'DE-RASH', 'Zinc oxide BP 400mg/gm (40%w/w) ointment', 'Ointment', 'Square Pharmaceuticals Ltd.', '25gm pack: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1044, 'Anti-eczema & Anti-psoriasis preparations', 'Drugs affecting the immune response', 'REMUS', 'Tacrolimus INN 0.3mg/gm ointment', 'Ointment', 'Square Pharmaceuticals Ltd.', '5gm tube: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1045, 'Ophthalmic preparations', 'Ophthalmic Antibacterial products', 'IVENTI', 'Moxifloxacin hydrochloride INN 0.5% (or 5mg/ml)', 'Eye Drop', 'Square Pharmaceuticals Ltd.', '5ml drop: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1046, 'Ophthalmic preparations', 'Antioxidant vitamins & minerals for eye', 'EYEVI', 'Vitamin C 60mg, vitamin E 30mg, lutein 6mg, copper 2mg and zinc 15mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1047, 'Drugs for Acne & Rosacea', 'Topical antibiotics for Acne', 'EROMYCIN', 'Erythromycin BP 3% lotion', 'Lotion', 'Square Pharmaceuticals Ltd.', '25ml tube: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1048, 'Drugs for Acne & Rosacea', 'Topical retinoid and related preparations', 'NILAC', 'Tretinoin 0.025% w/w cream', 'Cream', 'Square Pharmaceuticals Ltd.', '10gm tube: 45.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1049, 'Drugs for Acne & Rosacea', 'Topical retinoid and related preparations', 'FONA', 'Adapalene INN 1mg/gm (0.1%)cream', 'Cream', 'Square Pharmaceuticals Ltd.', '10gm tube x 1s pack: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1050, 'Drugs for Ichthyosis & Scaly skin', 'Topical urea preparations', 'EQURA', '100mg urea BP (10%)/gm cream', 'Cream', 'Square Pharmaceuticals Ltd.', '15gm tube: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1051, 'Antiseptics & Skin disinfectants', 'Chlorhexidine & Chloroxylenol preparations', 'GERMISOL', 'Chlorhexidine gluconate 0.5% w/w in 70% Isopropanol solutions', 'Hand Rub', 'Square Pharmaceuticals Ltd.', '50ml bot: 23.40 MRP; 250ml bot: 79.25 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1052, 'Antiseptics & Skin disinfectants', 'Chlorhexidine & Chloroxylenol preparations', 'SEPNIL', 'Ch10rhexidine gluconate solution BP 1.5% w/v & cetrimide BP 3% w/v', 'Solution', 'Square Pharmaceuticals Ltd.', '50ml bot: 11.00 MRP; 100ml bot: 16.63 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1053, 'Antiseptics & Skin disinfectants', 'Chlorhexidine & Chloroxylenol preparations', 'SEPNIL (High Concentration)', 'Chlorhexidine gluconate solution BP 1.5% w/w & cetrimide BP 15% w/w', 'Solution', 'Square Pharmaceuticals Ltd.', '5 liter pack: 1418.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1054, 'Antiseptics & Skin disinfectants', 'Iodine compounds (Antiseptic Preparations)', 'VIODIN 10%', 'Povidone-iodine 10% w/v solution', 'Solution', 'Square Pharmaceuticals Ltd.', '15ml bot x 12s pack: 144.00 MRP; 100ml bot x 1s pack: 36.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1055, 'Antiseptics & Skin disinfectants', 'Iodine compounds (Antiseptic Preparations)', 'VIODIN 5%', 'Povidone-iodine 5% w/w ointment', 'Ointment', 'Square Pharmaceuticals Ltd.', '20gm tube: 25.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1056, 'Antiseptics & Skin disinfectants', 'Iodine compounds (Antiseptic Preparations)', 'VIODIN', 'Povidone-iodine 1% w/v solution', 'Gargle & Mouthwash', 'Square Pharmaceuticals Ltd.', '100ml bot: 25.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1057, 'Topical Anti-infective Drugs', 'Topical Antibiotic preparations', 'NEBANOL', 'Neomycin sulphate 5mg & bacitracin zinc 500 i.u/gm', 'Ointment', 'Square Pharmaceuticals Ltd.', '20gm tube: 43.90 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1058, 'Topical Anti-infective Drugs', 'Topical Antibiotic preparations', 'NEBANOL', 'Neomycin sulphate 5mg & bacitracin zinc 4.56mg/gm', 'Powder (Topical)', 'Square Pharmaceuticals Ltd.', '10gm powder: 20.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1059, 'Topical Anti-infective Drugs', 'Topical Antibiotic preparations', 'NEBANOL Plus', 'Neomycin sulphate 3.5mg, bacitracin zinc 400 i.u & polymyxin B sulphate 5000 i.u/gm', 'Ointment', 'Square Pharmaceuticals Ltd.', '10gm tube: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1060, 'Topical Anti-infective Drugs', 'Topical Anti-viral preparations', 'VIRUX', 'Acyclovir 5% (50mg/gm)', 'Cream', 'Square Pharmaceuticals Ltd.', '5gm tube: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1061, 'Topical Anti-infective Drugs', 'Topical Anti-fungal preparations', 'AFUN', 'Clotrimazole 1%', 'Cream', 'Square Pharmaceuticals Ltd.', '10gm tube: 25.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1062, 'Specific Vitamin Preparations', 'Vitamin-D preparations', 'FILWEL KIDS', 'Vitamin A, D, B1, B2, B6, C, E, nicotinamaide & cod liver oil', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bottle: 80.00 MRP; 200ml bottle: 145.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1063, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'BEOVIT', 'Thiamine hydrochloride 100mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '250s pack: 185.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1064, 'Topical Anti-infective Drugs', 'Topical Anti-fungal preparations', 'FUNGIDAL', 'Miconazole nitrate 2% (20mg/gm)', 'Cream', 'Square Pharmaceuticals Ltd.', '10gm tube: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1065, 'Topical Anti-infective Drugs', 'Topical Anti-fungal preparations', 'GELORA', 'Miconazole base USP 2% w/w', 'Gel (Oral)', 'Square Pharmaceuticals Ltd.', '15gm tube: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1066, 'Topical Anti-infective Drugs', 'Other Antifungal preparations', 'XFIN', 'Terbinafine hydrochloride 1%', 'Cream', 'Square Pharmaceuticals Ltd.', '5gm tube: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1067, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'NEURO-B', 'Thiamine mononitrate (B1) BP 100mg, pyridoxine hydrochloride (B6) BP 200mg and cyanocobalamin (B12) BP 200mcg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1068, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'NEURO-B', 'Thiamine mononitrate (B1) BP 100mg, pyridoxine hydrochloride (B6) BP 100mg and cyanocobalamin (B12) BP 1mg/3ml', 'Injection (i.m)', 'Square Pharmaceuticals Ltd.', '3ml amp x 10s pack: 250.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1069, 'Topical Anti-infective Drugs', 'Parasiticidal preparations', 'SCABEX', 'Permethrin 5% w/w', 'Cream', 'Square Pharmaceuticals Ltd.', '15gm tube: 25.00 MRP; 30gm tube: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1070, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'B-50 Forte', 'Vitamin-B complex', 'Capsule', 'Square Pharmaceuticals Ltd.', '250s pack: 145.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1071, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'B-50 FORTE', 'Vitamin-B complex', 'Tablet', 'Square Pharmaceuticals Ltd.', '45s pack: 20.25 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1072, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'B-50 FORTE', 'Vitamin-B complex', 'Injection', 'Square Pharmaceuticals Ltd.', '10 amps pack: 39.60 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1073, 'Specific Vitamin Preparations', 'Vitamin-B preparations', 'B-50 FORTE', 'Vitamin-B complex', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 20.84 MRP; 200ml bot: 38.03 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1074, 'Topical corticosteroids & combined preparations', 'Betamethasone & Combined preparations', 'DIPROBET', 'Betamethasone valerate 0.05%', 'Cream', 'Square Pharmaceuticals Ltd.', '15gm tube: 33.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1075, 'Topical corticosteroids & combined preparations', 'Betamethasone & Combined preparations', 'DIPROBET', 'Betamethasone valerate 0.05%', 'Ointment', 'Square Pharmaceuticals Ltd.', '15gm tube: 35.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1076, 'Topical corticosteroids & combined preparations', 'Betamethasone & Combined preparations', 'BETAMESON-N', 'Betamethasone dipropionate 0.1%(1mg/gm) & neomycin sulphate 0.5%(5mg/gm)', 'Cream', 'Square Pharmaceuticals Ltd.', '10gm tube: 22.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1077, 'Specific Vitamin Preparations', 'Vitamin-C Preparations', 'CEEVIT', 'Ascorbic acid 250mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '200s pack: 262.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1078, 'Specific Vitamin Preparations', 'Vitamin-C Preparations', 'CEEVIT Forte', 'Ascorbic acid 1000mg/tablet', 'Tablet (effervescent)', 'Square Pharmaceuticals Ltd.', '10s pack: 100.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1079, 'Specific Vitamin Preparations', 'Vitamin-E Preparations', 'EVIT', 'Alpha tocopheryl acetate 200mg/tablet', 'Tablet (chewable)', 'Square Pharmaceuticals Ltd.', '15s pack: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1080, 'Specific Vitamin Preparations', 'Vitamin-E Preparations', 'EVIT', 'Alpha tocopheryl acetate 200mg & 400mg/capsule', 'Liquid Capsule', 'Square Pharmaceuticals Ltd.', '100mg x 30s pack: 120.00 MRP; 400mg x 30s pack: 158.26 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1081, 'Topical corticosteroids & combined preparations', 'Betamethasone & Combined preparations', 'ONI', 'Betamethasone valerate 0.05% & Clotrimazole BP 1%', 'Cream', 'Square Pharmaceuticals Ltd.', '10gm tube: 25.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1082, 'Topical corticosteroids & combined preparations', 'Clobetasol/Clobetasone & Combined Preparations', 'DERMASOL', 'Clobetasol propionate 0.05% w/w', 'Cream', 'Square Pharmaceuticals Ltd.', '10gm tube (cream): 45.00 MRP; 20gm tube (cream): 70.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1083, 'Topical corticosteroids & combined preparations', 'Clobetasol/Clobetasone & Combined Preparations', 'DERMASOL', 'Clobetasol propionate 0.05% w/w', 'Ointment', 'Square Pharmaceuticals Ltd.', '10gm tube (oint.): 50.00 MRP; 20gm tube (oint.): 75.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1084, 'Combined vitamin preparations', 'Anti-oxidant Multivitamin preparations', 'REX', 'Beta carotene 6mg USP, vitamin C 200mg BP & vitamin E 50mg BP/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 75.90 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1085, 'Combined vitamin preparations', 'Nonspecific multivitamin preparations', 'PANVIT', 'Multivitamin preparation', 'Drop', 'Square Pharmaceuticals Ltd.', '15ml bot: 15.17 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1086, 'Mineral preparations', 'Specific mineral preparations', 'CALBO 500', 'Calcium carbonate 1250mg (equivalent to 500mg elemental calcium)/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '60s pack: 195.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1087, 'Mineral preparations', 'Specific mineral preparations', 'CALBO Jr.', 'Calcium carbonate 625mg chewable tablet containing elemental calcium equivalent to 250mg/tablet.', 'Tablet (chewable)', 'Square Pharmaceuticals Ltd.', '60s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1088, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'CALBO-C', 'Calcium lactate-gluconate 1000mg, calcium carbonate BP 327mg (260mg Ca++), & ascorbic acid (vitamin C) BP 500mg', 'Tablet (effervescent)', 'Square Pharmaceuticals Ltd.', '10s pack: 78.30 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1089, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'CALBO-D', 'Calcium carbonate USP 1250mg equivalent to 500mg elemental calcium and vitamin D3 (cholecalciferol) USP 200 i.u/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '15s pack: 60.00 MRP; 30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1090, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'CALBO Forte', 'Calcium lactate gluconate USP 1000mg, calcium carbonate USP 327mg, vitamin C (ascorbic acid) USP 500mg) & vitamin D3 (colecalciferol) USP 400 IU.', 'Tablet (Effervescent)', 'Square Pharmaceuticals Ltd.', '10s pack: 80.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1091, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'CALBOPLEX', 'Calcium (as calcium carbonate) 600mg, vitamin D3 (colecalciferol) 200 i.u, magnesium (as magensium oxide) 40mg, zinc (as zinc oxide) 7.5mg, copper (as cupric oxide) 1mg, manganese (as manganese sulphate) 1.8mg. boron (as boron citrate) 0.25mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 120.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1092, 'Mineral preparations', 'Specific mineral preparations', 'Z-DT 10', 'Zinc sulphate monohydrate USP equivalent to 10mg elemental zinc/tablet', 'Tablet (dispersible)', 'Square Pharmaceuticals Ltd.', '100s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1093, 'Mineral preparations', 'Specific mineral preparations', 'Z-DT 20', 'Zinc sulphate monohydrate USP equivalent to 20mg elemental zinc/tablet', 'Tablet (dispersible)', 'Square Pharmaceuticals Ltd.', '100s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1094, 'Mineral preparations', 'Specific mineral preparations', 'ZESUP', 'Zinc sulphate monohydrate equivalent to 10mg elemental zinc USP/5ml', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1095, 'Mineral preparations', 'Specific mineral preparations', 'ZESUP FORTE', 'Zinc sulphate monohydrate equivalent to 20mg elemental zinc USP/5ml', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 50.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1096, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'ZIFOLET', 'Zinc sulphate monohydrate USP 54.90mg(equivalent to 20mg of elemental zinc) and folic acid BP 5mg/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '100s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1097, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'BICOZIN', 'Each tablet contains vitamin-B complex and l0mg elemental zinc.', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1098, 'Mineral preparations', 'Specific mineral & vitamin combined preparations', 'BICOZIN', 'Each 5ml of syrup contains vitamin-B complex and 10mg elemental zinc.', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 45.00 MRP; 200ml bot: 85.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1099, 'Multivitamin & Multimineral combined preparations', 'Nonspecific Multivitamin & Multimineral combined preparations', 'MULTIVIT Plus', 'Multivitamin + multimineral preparation', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack 33.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1100, 'Multivitamin & Multimineral combined preparations', 'Specialized Multivitamin & Multimineral preparations', 'FILWEL GOLD', 'High potency multivitamin & multimineral formulation comprising of 32 components from vitamin A to Zinc including the complete anti-oxidant group', 'Tablet', 'Square Pharmaceuticals Ltd.', '15s pack: 90.00 MRP; 30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1101, 'Drugs for Iron Deficiency Anaemias', 'Oral Iron preparations', 'POLYRON', 'Iron (III) hydroxide polymaltose complex INN 200mg equivalent to 50mg of elemental iron/5ml', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 30.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1102, 'Topical corticosteroids & combined preparations', 'Clobetasol/Clobetasone & Combined Preparations', 'DERMASOL-N', 'Clobetasol propionate 0.05% w/w, neomycin sulphate 0.5% w/w and nystatin 100,000 units/gm', 'Cream', 'Square Pharmaceuticals Ltd.', '15gm tube: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1103, 'Topical corticosteroids & combined preparations', 'Clobetasol/Clobetasone & Combined Preparations', 'DERMASOL-N', 'Clobetasol propionate 0.05% w/w, neomycin sulphate 0.5% w/w and nystatin 100,000 units/gm', 'Ointment', 'Square Pharmaceuticals Ltd.', '15gm tube: 65.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1104, 'Topical corticosteroids & combined preparations', 'Fluocinolone & Combined Preparations', 'TICAS', 'Fluticasone propionate 0.05% cream', 'Cream', 'Square Pharmaceuticals Ltd.', '10gm tube: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1105, 'Topical corticosteroids & combined preparations', 'Fluocinolone & Combined Preparations', 'TICAS', 'Fluticasone propionate 0.005% ointment', 'Ointment', 'Square Pharmaceuticals Ltd.', '10gm tube: 40.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1106, 'Topical corticosteroids & combined preparations', 'Hydrocortisone & Combined preparations', 'TOPICORT', 'Hydrocortisone acetate BP 1% cream', 'Cream', 'Square Pharmaceuticals Ltd.', '10gm tube: 28.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1107, 'Drugs for Iron Deficiency Anaemias', 'Iron & Vitamin Combined preparations', 'FePLUS', 'Ferrous fumerate 200mg + folic acid 0.2mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '100s pack: 54.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1108, 'Drugs for Iron Deficiency Anaemias', 'Iron & Vitamin Combined preparations', 'SERVIN', 'Dried ferrous sulfate USP 150mg, folic acid USP 0.5mg, thiamine mononitrate USP 2mg, pyridoxine USP 1mg, nicotinamide USP 10mg and ascorbic acid USP 50mg/capsule', 'Capsule (timed release)', 'Square Pharmaceuticals Ltd.', '100s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1109, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'ZIF', 'Zinc sulphate monohydrate USP 61.8mg + ferrous sulphate BP 150mg + folic acid BP 0.5mg/capsule', 'Capsule (timed release)', 'Square Pharmaceuticals Ltd.', '100s pack: 293.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1110, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'ZIF-CI TR', 'Carbonyl iron INN Ph. grade 51mg (equivalent to 50mg elemental iron), folic acid BP 0.50mg and zinc sulfate BP 6I.80mg (equivalent to 22.5mg elemental zinc)/capsule', 'Capsule (timed release)', 'Square Pharmaceuticals Ltd.', '30s pack: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1111, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'ZILIRON', 'Iron (III) hydroxide polymaltose complex INN 188mg equivalent to 47mg elemental iron, folic acid BP 0.5mg and zinc sulphate monohydrate USP 61.8mg equivalent to 22.5mg elemental zinc.', 'Tablet', 'Square Pharmaceuticals Ltd.', '60s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1112, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'BICOZIN-I', 'Non- ionic iron (i.e iron polymaltose complex), vitamin B complex & zinc.', 'Syrup', 'Square Pharmaceuticals Ltd.', '100ml bot: 50.00 MRP; 200ml bot: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1113, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'PRONOR', 'Finasteride 5mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1114, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'URITEN', 'Alfuzosin hydrochloride BP 10mg/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '10mg x 30s pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1115, 'Drugs used in bone formation', 'Bisphosphonate preparations', 'OSTEL 10', 'Alendronate sodium 13.05mg, equivalent to alendronic acid 10mg/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 150.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1116, 'Drugs used in bone formation', 'Bisphosphonate preparations', 'OSTEL 70', 'Alendronate sodium, equivalent to alendronic acid 70mg/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '12 pack: 300.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1117, 'Drugs for Iron Deficiency Anaemias', 'Iron, Vitamin & Mineral Combined preparation', 'ZIF Forte', 'Carbonyl iron, folic acid, vitamin-B complex, vitamin C & zinc.', 'Capsule', 'Square Pharmaceuticals Ltd.', '30s pack: 105.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1118, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'MAXRIN', 'Tamsulosin hydrochloride INN 0.4mg/capsule', 'Capsule', 'Square Pharmaceuticals Ltd.', '20s pack: 200.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1119, 'Drugs for Prostate Enlargement', 'Benign Prostatic Hyperplasia (BPH)/Urinary Retention', 'UCOL 2', 'Tolterodine tartrate INN 2mg/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1120, 'Drugs used in genital problems', 'Drugs used in Vaginal and Vulval conditions', 'AFUN VT', 'Clotrimazole BP 100mg/tablet (vaginal) with applicator.', 'Tablet', 'Square Pharmaceuticals Ltd.', '100mg x 6s pack: 60.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1121, 'Urinary anti-infectives', 'Systemic Urinary Anti- infectives', 'NALID', 'Nalidixic acid 500mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '60s pack: 243.60 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1122, 'Urinary anti-infectives', 'Systemic Urinary Anti- infectives', 'NALID', 'Nalidixic acid 300mg/5ml', 'Syrup', 'Square Pharmaceuticals Ltd.', '50ml bot: 30.34 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1123, 'Drugs used in bone formation', 'Combined preparations: Inhibiting bone resorption', 'OSTEL-D 10/400', 'Alendronate monosodium trihydrate USP equivalent to 10mg of alendronic acid, and colecalciferol BP 10mcg equivalent to 400 IU vitamin D3/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '(10mg + 10mcg or 400 IU) x 30s pack: 180.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1124, 'Drugs used in bone formation', 'Combined preparations: Inhibiting bone resorption', 'OSTEL-D 70/2800', 'Alendronate monosodium trihydrate USP equivalent to 70mg of alendronic acid, and colecalciferol BP 70mcg equivalent to 2800 IU vitamin D3/tablet.', 'Tablet', 'Square Pharmaceuticals Ltd.', '(70mg + 70mcg or 2800 IU) x 8s pack: 240.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1125, 'Drugs used in bone formation', 'Other preparations: Inhibiting bone resorption', 'OXILAR', 'Raloxifene hydrochloride INN 60mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '10s pack: 140.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43'),
(1126, 'Drugs used in cartilage formation', 'Stimulation of Cartilage formation', 'TILEX 500', 'Glucosamine hydrochloride INN 500mg/tablet', 'Tablet', 'Square Pharmaceuticals Ltd.', '30s pack: 90.00 MRP', '2017-07-05 19:26:43', '2017-07-05 19:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `medicineschedule`
--

CREATE TABLE `medicineschedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medicineschedule`
--

INSERT INTO `medicineschedule` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, '1 + 1 + 1', '2017-07-25 23:38:52', '2017-07-25 23:38:52'),
(2, '1 + 0 + 1', '2017-07-25 23:39:08', '2017-07-25 23:39:08'),
(3, '1 + 1 + 0', '2017-07-25 23:39:19', '2017-07-25 23:39:19'),
(4, '0 + 0 + 1', '2017-07-25 23:39:29', '2017-07-25 23:39:29'),
(5, '1 + 0 + 0', '2017-07-25 23:39:41', '2017-07-25 23:39:41'),
(6, '0 + 1 + 0', '2017-07-25 23:39:52', '2017-07-25 23:39:52'),
(7, '1 + 1 + 1 + 1', '2017-07-26 00:06:03', '2017-07-26 00:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
(3, 1, 1, 'fa-database', 'Patient', 'Patient', 27, '2017-07-03 10:45:46', '2017-07-26 00:29:53'),
(4, 3, 1, 'fa-database', 'BloodGroup', 'Blood Group', 6, '2017-07-03 11:08:50', '2017-07-04 11:26:05'),
(5, 2, 1, 'fa-database', 'Doctor', 'Doctor', 27, '2017-07-04 11:25:20', '2017-07-26 00:29:58'),
(6, 9, 2, 'fa-database', 'Configuration', 'Configuration', NULL, '2017-07-04 11:25:55', '2017-07-04 12:59:45'),
(7, 0, 1, 'fa-database', 'HospitalType', 'Hospital Type', 6, '2017-07-04 11:47:42', '2017-07-04 11:47:42'),
(8, 0, 1, 'fa-database', 'LabType', 'Lab Type', 6, '2017-07-04 11:48:38', '2017-07-04 11:48:51'),
(9, 0, 1, 'fa-database', 'DocumentType', 'Document Type', 6, '2017-07-04 11:50:09', '2017-07-04 11:50:09'),
(10, 8, 1, 'fa-database', 'Document', 'Document', NULL, '2017-07-04 11:59:04', '2017-07-04 12:59:45'),
(11, 6, 1, 'fa-database', 'Hospital', 'Hospital', 6, '2017-07-04 12:02:21', '2017-07-26 00:28:33'),
(12, 7, 1, 'fa-database', 'Lab', 'Lab', 6, '2017-07-04 12:04:53', '2017-07-26 00:28:39'),
(13, 3, 1, 'fa-database', 'HospitalAssistant', 'Hospital Assistant', 27, '2017-07-04 12:49:43', '2017-07-26 00:30:04'),
(14, 4, 1, 'fa-database', 'LabAssistant', 'Lab Assistant', 27, '2017-07-04 12:55:50', '2017-07-26 00:30:10'),
(15, 5, 1, 'fa-database', 'DoctorAssistant', 'Doctor Assistant', 27, '2017-07-04 12:59:29', '2017-07-26 00:30:15'),
(16, 0, 1, 'fa-database', 'Diagnosis', 'Diagnosis', 6, '2017-07-05 12:07:21', '2017-07-26 00:28:57'),
(17, 0, 1, 'fa-database', 'Medicine', 'Medicine', 6, '2017-07-05 13:21:13', '2017-07-26 00:28:18'),
(18, 0, 1, 'fa-database', 'Prescription', 'Prescription', NULL, '2017-07-05 13:33:07', '2017-07-05 13:33:07'),
(19, 0, 1, 'fa-database', 'PrescribedMedicine', 'Prescribed Medicine', NULL, '2017-07-05 13:35:44', '2017-07-05 13:35:44'),
(20, 0, 1, 'fa-database', 'PrescribedDiagnosis', 'Prescribed Diagnosis', NULL, '2017-07-05 13:36:58', '2017-07-05 13:36:58'),
(21, 0, 1, 'fa-database', 'MedicineSchedule', 'Medicine Schedule', 6, '2017-07-05 13:38:18', '2017-07-26 00:31:04'),
(22, 0, 1, 'fa-database', 'Message', 'Message', NULL, '2017-07-10 06:14:18', '2017-07-10 06:14:18'),
(23, 0, 1, 'fa-database', 'BloodBank', 'Blood Bank', NULL, '2017-07-10 06:18:48', '2017-07-10 06:18:48'),
(24, 0, 1, 'fa-database', 'VaccineType', 'Vaccine Type', 6, '2017-07-15 23:44:30', '2017-07-15 23:44:30'),
(25, 0, 1, 'fa-database', 'Vaccine', 'Vaccine', NULL, '2017-07-15 23:49:49', '2017-07-15 23:49:49'),
(26, 0, 1, 'fa-database', 'Testeditor', 'testeditor', NULL, '2017-07-24 01:24:19', '2017-07-24 01:24:19'),
(27, 0, 2, 'fa-database', 'People', 'People', NULL, '2017-07-26 00:29:32', '2017-07-26 00:29:32'),
(28, 0, 1, 'fa-database', 'Diseases', 'Diseases', 6, '2017-07-26 00:33:07', '2017-07-26 00:33:07'),
(29, 0, 1, 'fa-database', 'SpecialistType', 'Specialist Type', 6, '2017-07-26 00:46:33', '2017-07-26 00:46:33'),
(30, 0, 3, 'fa-database', 'PendingApproval', 'Pending Approval', NULL, '2017-07-26 06:42:32', '2017-07-26 06:42:32'),
(31, 0, 1, 'fa-database', 'Approval', 'Approval', NULL, '2017-07-26 06:45:12', '2017-07-26 06:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(5, 3),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(13, 4),
(14, 1),
(14, 5),
(15, 1),
(15, 6),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(17, 6),
(18, 1),
(18, 3),
(18, 6),
(19, 1),
(19, 2),
(19, 3),
(20, 1),
(20, 2),
(20, 3),
(21, 1),
(22, 1),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(23, 5),
(23, 6),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(28, 3),
(28, 6),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(29, 6),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiver_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_10_10_000000_create_menus_table', 1),
(4, '2015_10_10_000000_create_roles_table', 1),
(5, '2015_10_10_000000_update_users_table', 1),
(6, '2015_12_11_000000_create_users_logs_table', 1),
(7, '2016_03_14_000000_update_menus_table', 1),
(8, '2017_07_03_164547_create_patient_table', 2),
(9, '2017_07_03_170851_create_blood_group_table', 3),
(10, '2017_07_04_172520_create_doctor_table', 4),
(11, '2017_07_04_174742_create_hospital_type_table', 5),
(12, '2017_07_04_174839_create_lab_type_table', 6),
(13, '2017_07_04_175009_create_document_type_table', 7),
(14, '2017_07_04_175904_create_document_table', 8),
(15, '2017_07_04_180221_create_hospital_table', 9),
(16, '2017_07_04_180454_create_lab_table', 10),
(17, '2017_07_04_184943_create_hospital_assistant_table', 11),
(18, '2017_07_04_185550_create_lab_assistant_table', 12),
(19, '2017_07_04_185929_create_doctor_assistant_table', 13),
(20, '2017_07_05_180721_create_diagnosis_table', 14),
(21, '2017_07_05_192113_create_medicine_table', 15),
(22, '2017_07_05_193307_create_prescription_table', 16),
(23, '2017_07_05_193545_create_prescribed_medicine_table', 17),
(24, '2017_07_05_193658_create_prescribed_diagnosis_table', 18),
(25, '2017_07_05_193818_create_medicine_schedule_table', 19),
(26, '2017_07_10_121418_create_message_table', 20),
(27, '2017_07_10_121849_create_blood_bank_table', 21),
(28, '2017_07_16_054430_create_vaccine_type_table', 22),
(29, '2017_07_16_054949_create_vaccine_table', 23),
(30, '2017_07_24_072419_create_testeditor_table', 24),
(31, '2017_07_26_063307_create_diseases_table', 25),
(32, '2017_07_26_064633_create_specialist_type_table', 26),
(33, '2017_07_26_124512_create_approval_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` int(3) NOT NULL,
  `is_married` int(3) NOT NULL,
  `mobile` int(15) NOT NULL,
  `alt_mobile` int(15) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` int(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `dob`, `gender`, `is_married`, `mobile`, `alt_mobile`, `address`, `blood_group`, `created_at`, `updated_at`) VALUES
(4, 'mr. patient', '2017-07-02', 1, 2, 1676025450, NULL, NULL, 1, '2017-07-03 11:27:33', '2017-07-03 11:27:33'),
(5, 'patient 1', '2017-03-06', 1, 1, 564684, 5454, 'DU', 1, '2017-07-24 11:37:49', '2017-07-24 11:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `prescribeddiagnosis`
--

CREATE TABLE `prescribeddiagnosis` (
  `id` int(10) UNSIGNED NOT NULL,
  `prescription_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diagnosis_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescribedmedicine`
--

CREATE TABLE `prescribedmedicine` (
  `id` int(10) UNSIGNED NOT NULL,
  `prescription_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medicine_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `days` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `hospital_id` int(10) DEFAULT NULL,
  `doctor_assistant_id` int(10) DEFAULT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) NOT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `problems` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `patient_id`, `doctor_id`, `hospital_id`, `doctor_assistant_id`, `document_id`, `created_by`, `updated_by`, `problems`, `note`, `created_at`, `updated_at`) VALUES
(1, 5, 2, 2, NULL, '1500919230-db ticket.txt', 1, NULL, 'fever', NULL, '2017-07-24 12:00:30', '2017-07-24 12:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2017-07-02 11:59:21', '2017-07-02 11:59:21'),
(2, 'Patient', '2017-07-02 11:59:21', '2017-07-03 00:02:33'),
(3, 'Doctor', '2017-07-03 00:02:42', '2017-07-03 00:02:42'),
(4, 'Hospital Assistant', '2017-07-03 00:03:26', '2017-07-03 00:03:26'),
(5, 'Lab Assistant', '2017-07-03 00:03:42', '2017-07-03 00:03:42'),
(6, 'Doctor Assistant', '2017-07-04 11:42:05', '2017-07-04 11:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `specialisttype`
--

CREATE TABLE `specialisttype` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specialisttype`
--

INSERT INTO `specialisttype` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Allergist or Immunologist', 'conducts the diagnosis and treatment of allergic conditions.', '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(2, 'Anesthesiologist', 'treats chronic pain syndromes; administers anesthesia and monitors the patient during surgery.', '2017-07-26 04:09:01', '2017-07-26 04:09:01'),
(3, 'Cardiologist', 'treats heart disease', '2017-07-26 04:09:13', '2017-07-26 04:09:13'),
(4, 'Dermatologist', 'treats skin diseases, including some skin cancers', '2017-07-26 04:09:27', '2017-07-26 04:09:27'),
(5, 'Gastroenterologist', 'treats stomach disorders', '2017-07-26 04:09:40', '2017-07-26 04:09:40'),
(6, 'Hematologist/Oncologist', 'treats diseases of the blood and blood-forming tissues (oncology including cancer and other tumors)', '2017-07-26 04:09:52', '2017-07-26 04:09:52'),
(7, 'Internal Medicine Physician', 'treats diseases and disorders of internal structures of the body.', '2017-07-26 04:10:37', '2017-07-26 04:10:37'),
(8, 'Nephrologist', 'treats kidney diseases.', '2017-07-26 04:11:01', '2017-07-26 04:11:01'),
(9, 'Neurologist', 'treats diseases and disorders of the nervous system.', '2017-07-26 04:11:16', '2017-07-26 04:11:16'),
(10, 'Neurosurgeon', 'conducts surgery of the nervous system.', '2017-07-26 04:11:30', '2017-07-26 04:11:30'),
(11, 'Obstetrician', 'treats women during pregnancy and childbirth', '2017-07-26 04:11:41', '2017-07-26 04:11:41'),
(12, 'Gynecologist', 'treats diseases of the female reproductive system and genital tract.', '2017-07-26 04:11:53', '2017-07-26 04:11:53'),
(13, 'Nurse-Midwifery', 'manages a woman\'s health care, especially during pregnancy, delivery, and the postpartum period.', '2017-07-26 04:12:06', '2017-07-26 04:12:06'),
(14, 'Occupational Medicine Physician', 'diagnoses and treats work-related disease or injury.', '2017-07-26 04:12:19', '2017-07-26 04:12:19'),
(15, 'Ophthalmologist', 'treats eye defects, injuries, and diseases.', '2017-07-26 04:12:32', '2017-07-26 04:12:32'),
(16, 'Oral and Maxillofacial Surgeon', 'surgically treats diseases, injuries, and defects of the hard and soft tissues of the face, mouth, and jaws.', '2017-07-26 04:12:46', '2017-07-26 04:12:46'),
(17, 'Orthopaedic Surgeon', 'preserves and restores the function of the musculoskeletal system.', '2017-07-26 04:12:59', '2017-07-26 04:12:59'),
(18, 'Otolaryngologist', 'treats diseases of the ear, nose, and throat,and some diseases of the head and neck, including facial plastic surgery.', '2017-07-26 04:13:36', '2017-07-26 04:13:36'),
(19, 'Pathologist', 'diagnoses and treats the study of the changes in body tissues and organs which cause or are caused by disease', '2017-07-26 04:13:49', '2017-07-26 04:13:49'),
(20, 'Pediatrician', 'treats infants, toddlers, children and teenagers.', '2017-07-26 04:13:58', '2017-07-26 04:13:58'),
(21, 'Plastic Surgeon', 'restores, reconstructs, corrects or improves in the shape and appearance of damaged body structures, especially the face.', '2017-07-26 04:14:12', '2017-07-26 04:14:12'),
(22, 'Podiatrist', 'provides medical and surgical treatment of the foot.', '2017-07-26 04:14:23', '2017-07-26 04:14:23'),
(23, 'Psychiatrist', 'treats patients with mental and emotional disorders.', '2017-07-26 04:14:33', '2017-07-26 04:14:33'),
(24, 'Pulmonary Medicine Physician', 'diagnoses and treats lung disorders.', '2017-07-26 04:14:45', '2017-07-26 04:14:45'),
(25, 'Radiation Onconlogist', 'diagnoses and treats disorders with the use of diagnostic imaging, including X-rays, sound waves, radioactive substances, and magnetic fields.', '2017-07-26 04:14:56', '2017-07-26 04:14:56'),
(26, 'Diagnostic Radiologist', 'diagnoses and medically treats diseases and disorders of internal structures of the body.', '2017-07-26 04:15:07', '2017-07-26 04:15:07'),
(27, 'Rheumatologist', 'treats rheumatic diseases, or conditions characterized by inflammation, soreness and stiffness of muscles, and pain in joints and associated structures', '2017-07-26 04:15:18', '2017-07-26 04:15:18'),
(28, 'Urologist', 'diagnoses and treats the male and female urinary tract and the male reproductive system', '2017-07-26 04:15:29', '2017-07-26 04:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `testeditor`
--

CREATE TABLE `testeditor` (
  `id` int(10) UNSIGNED NOT NULL,
  `editor` text COLLATE utf8_unicode_ci,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `money` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testeditor`
--

INSERT INTO `testeditor` (`id`, `editor`, `file`, `datetime`, `photo`, `date`, `money`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, NULL, 'D:\\XAMPP\\tmp\\php2F1E.tmp', '2017-07-13 00:25:00', 'D:\\XAMPP\\tmp\\php2F1F.tmp', '2017-05-17', NULL, '2017-07-24 02:19:59', '2017-07-24 02:38:21', '2017-07-24 02:38:21'),
(4, NULL, '1500885467-c2.JPG', '2017-07-12 00:00:00', 'D:\\XAMPP\\tmp\\php7935.tmp', '2017-07-04', NULL, '2017-07-24 02:37:47', '2017-07-24 02:37:47', NULL),
(5, NULL, '1500885622-WIN_20161118_22_33_43_Pro.jpg', '2017-07-31 00:00:00', 'D:\\XAMPP\\tmp\\phpD96E.tmp', '2017-07-13', NULL, '2017-07-24 02:40:22', '2017-07-24 02:40:22', NULL),
(6, NULL, '1500885820-WIN_20170119_18_10_56_Pro.jpg', '2017-07-27 00:00:00', 'D:\\XAMPP\\tmp\\phpDBB6.tmp', '2017-07-05', NULL, '2017-07-24 02:43:40', '2017-07-24 02:43:40', NULL),
(7, NULL, NULL, '2017-07-14 09:00:00', NULL, '2017-09-08', NULL, '2017-07-25 04:24:59', '2017-07-25 04:24:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'pollob', 'polboy777@gmail.com', '$2y$10$UTegxdOGD/TNY3cVOGF8xOVwGlR7DH1Ttf6JIfPkEBcD6PRNUQsB2', 'F4jvlune8TkH4nHyXZAztd76odBsbEDzgPpvQTK7Gns1rE2Myb1ySeFoRm7x', '2017-07-02 12:01:43', '2017-07-02 12:01:43'),
(4, 2, 4, 'mr. patient', 'patient@a.com', '$2y$10$GKzp8vUapDcKbkTCSCBrNug5m3d2IvWY1jF08L4/z5pBPCjl2cjY2', 'rmtTTFGdhX31n2RFAUD0gSFcrK4NwTVmX5ZYmuqKbri6cxLv6Q9R5V2ylcwg', '2017-07-03 11:27:33', '2017-07-03 11:27:33'),
(5, 3, 2, 'mr. Doctor', 'doctor@a.com', '$2y$10$iRYfUObkPtQabWi9eYyhGegWYzdINo2yQzDcvA4Am7twJ8vzQD1Tu', '4aMJNt318hmJ3dIzYLzhbS0vbferbhqRpKXeUH4tXYumsutqbmFTTnNUN3My', '2017-07-04 11:39:48', '2017-07-04 11:39:48'),
(6, 2, 5, 'patient 1', 'p1@a.com', '$2y$10$vV/CATV4BS4S8bZkxuviuu/kkUPtEEjQ7WgQSD3fd7uyGmXR0w2zm', '2L8hsWsG3WVfOxkiRtC0U6Y9dNLGjj7E6mdbGR9vazOAj7afGdZEefQLYogs', '2017-07-24 11:37:49', '2017-07-24 11:37:49'),
(7, 3, 3, 'doctor 1', 'd1@a.com', '$2y$10$sa.R9hvDrxVpH9163LUwYesGHyYRRVQLENfh6S1JCD8kqWJBAQ66m', NULL, '2017-07-24 11:50:39', '2017-07-24 11:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'updated', 'users', 1, '2017-07-02 12:03:55', '2017-07-02 12:03:55'),
(2, 1, 'updated', 'users', 1, '2017-07-02 12:04:56', '2017-07-02 12:04:56'),
(3, 1, 'updated', 'users', 1, '2017-07-02 12:05:41', '2017-07-02 12:05:41'),
(4, 1, 'updated', 'users', 1, '2017-07-02 12:07:02', '2017-07-02 12:07:02'),
(5, 1, 'created', 'bloodgroup', 1, '2017-07-03 11:09:00', '2017-07-03 11:09:00'),
(6, 1, 'created', 'bloodgroup', 2, '2017-07-03 11:09:09', '2017-07-03 11:09:09'),
(7, 1, 'created', 'bloodgroup', 3, '2017-07-03 11:09:15', '2017-07-03 11:09:15'),
(8, 1, 'created', 'bloodgroup', 4, '2017-07-03 11:09:21', '2017-07-03 11:09:21'),
(9, 1, 'created', 'bloodgroup', 5, '2017-07-03 11:09:28', '2017-07-03 11:09:28'),
(10, 1, 'created', 'bloodgroup', 6, '2017-07-03 11:09:34', '2017-07-03 11:09:34'),
(11, 1, 'created', 'bloodgroup', 7, '2017-07-03 11:09:39', '2017-07-03 11:09:39'),
(12, 1, 'created', 'bloodgroup', 8, '2017-07-03 11:09:45', '2017-07-03 11:09:45'),
(13, 1, 'created', 'patient', 1, '2017-07-03 11:19:21', '2017-07-03 11:19:21'),
(14, 1, 'created', 'patient', 2, '2017-07-03 11:23:55', '2017-07-03 11:23:55'),
(15, 1, 'created', 'users', 2, '2017-07-03 11:23:55', '2017-07-03 11:23:55'),
(16, 1, 'created', 'patient', 3, '2017-07-03 11:26:10', '2017-07-03 11:26:10'),
(17, 1, 'created', 'users', 3, '2017-07-03 11:26:10', '2017-07-03 11:26:10'),
(18, 1, 'deleted', 'users', 2, '2017-07-03 11:26:47', '2017-07-03 11:26:47'),
(19, 1, 'deleted', 'users', 3, '2017-07-03 11:26:51', '2017-07-03 11:26:51'),
(20, 1, 'created', 'patient', 4, '2017-07-03 11:27:33', '2017-07-03 11:27:33'),
(21, 1, 'created', 'users', 4, '2017-07-03 11:27:33', '2017-07-03 11:27:33'),
(22, 1, 'updated', 'users', 1, '2017-07-03 11:27:36', '2017-07-03 11:27:36'),
(23, 4, 'updated', 'users', 4, '2017-07-03 11:27:55', '2017-07-03 11:27:55'),
(24, 1, 'created', 'patient', 5, '2017-07-03 11:29:04', '2017-07-03 11:29:04'),
(25, 1, 'deleted', 'patient', 5, '2017-07-03 11:29:16', '2017-07-03 11:29:16'),
(26, 1, 'created', 'patient', 6, '2017-07-03 11:43:55', '2017-07-03 11:43:55'),
(27, 1, 'deleted', 'patient', 6, '2017-07-03 11:46:16', '2017-07-03 11:46:16'),
(28, 1, 'created', 'doctor', 1, '2017-07-04 11:39:07', '2017-07-04 11:39:07'),
(29, 1, 'created', 'doctor', 2, '2017-07-04 11:39:48', '2017-07-04 11:39:48'),
(30, 1, 'created', 'users', 5, '2017-07-04 11:39:48', '2017-07-04 11:39:48'),
(31, 1, 'updated', 'users', 1, '2017-07-04 11:40:34', '2017-07-04 11:40:34'),
(32, 5, 'updated', 'users', 5, '2017-07-04 11:40:48', '2017-07-04 11:40:48'),
(33, 1, 'created', 'documenttype', 1, '2017-07-04 11:54:47', '2017-07-04 11:54:47'),
(34, 1, 'created', 'documenttype', 2, '2017-07-04 11:55:14', '2017-07-04 11:55:14'),
(35, 1, 'created', 'hospitaltype', 1, '2017-07-04 12:08:48', '2017-07-04 12:08:48'),
(36, 1, 'created', 'hospitaltype', 2, '2017-07-04 12:09:02', '2017-07-04 12:09:02'),
(37, 1, 'updated', 'hospitaltype', 1, '2017-07-04 12:09:11', '2017-07-04 12:09:11'),
(38, 1, 'created', 'hospitaltype', 3, '2017-07-04 12:09:57', '2017-07-04 12:09:57'),
(39, 1, 'updated', 'hospitaltype', 3, '2017-07-04 12:12:17', '2017-07-04 12:12:17'),
(40, 1, 'created', 'hospitaltype', 4, '2017-07-04 12:12:50', '2017-07-04 12:12:50'),
(41, 1, 'updated', 'hospitaltype', 3, '2017-07-04 12:12:56', '2017-07-04 12:12:56'),
(42, 1, 'created', 'hospitaltype', 5, '2017-07-04 12:13:14', '2017-07-04 12:13:14'),
(43, 1, 'created', 'labtype', 1, '2017-07-04 12:15:06', '2017-07-04 12:15:06'),
(44, 1, 'created', 'labtype', 2, '2017-07-04 12:15:22', '2017-07-04 12:15:22'),
(45, 1, 'created', 'labtype', 3, '2017-07-04 12:15:30', '2017-07-04 12:15:30'),
(46, 1, 'created', 'labtype', 4, '2017-07-04 12:17:28', '2017-07-04 12:17:28'),
(47, 1, 'created', 'labtype', 5, '2017-07-04 12:18:06', '2017-07-04 12:18:06'),
(48, 1, 'created', 'hospitaltype', 6, '2017-07-04 13:12:41', '2017-07-04 13:12:41'),
(49, 1, 'created', 'hospital', 1, '2017-07-04 13:14:27', '2017-07-04 13:14:27'),
(50, 1, 'created', 'hospitaltype', 7, '2017-07-04 13:15:16', '2017-07-04 13:15:16'),
(51, 1, 'created', 'hospital', 2, '2017-07-04 13:16:09', '2017-07-04 13:16:09'),
(52, 1, 'created', 'hospital', 3, '2017-07-04 13:17:34', '2017-07-04 13:17:34'),
(53, 1, 'created', 'hospital', 4, '2017-07-04 13:18:14', '2017-07-04 13:18:14'),
(54, 1, 'created', 'hospital', 5, '2017-07-04 13:19:58', '2017-07-04 13:19:58'),
(55, 1, 'updated', 'users', 1, '2017-07-15 23:28:35', '2017-07-15 23:28:35'),
(56, 1, 'created', 'vaccinetype', 1, '2017-07-15 23:45:01', '2017-07-15 23:45:01'),
(57, 1, 'created', 'vaccinetype', 2, '2017-07-15 23:45:08', '2017-07-15 23:45:08'),
(58, 1, 'created', 'vaccinetype', 3, '2017-07-15 23:45:17', '2017-07-15 23:45:17'),
(59, 1, 'created', 'testeditor', 1, '2017-07-24 02:15:09', '2017-07-24 02:15:09'),
(60, 1, 'created', 'testeditor', 3, '2017-07-24 02:20:00', '2017-07-24 02:20:00'),
(61, 1, 'created', 'testeditor', 4, '2017-07-24 02:37:47', '2017-07-24 02:37:47'),
(62, 1, 'deleted', 'testeditor', 3, '2017-07-24 02:38:21', '2017-07-24 02:38:21'),
(63, 1, 'created', 'testeditor', 5, '2017-07-24 02:40:23', '2017-07-24 02:40:23'),
(64, 1, 'created', 'testeditor', 6, '2017-07-24 02:43:40', '2017-07-24 02:43:40'),
(65, 1, 'updated', 'users', 1, '2017-07-24 03:22:10', '2017-07-24 03:22:10'),
(66, 5, 'updated', 'users', 5, '2017-07-24 03:26:37', '2017-07-24 03:26:37'),
(67, 1, 'created', 'patient', 5, '2017-07-24 11:37:49', '2017-07-24 11:37:49'),
(68, 1, 'created', 'users', 6, '2017-07-24 11:37:49', '2017-07-24 11:37:49'),
(69, 1, 'updated', 'users', 1, '2017-07-24 11:38:05', '2017-07-24 11:38:05'),
(70, 6, 'updated', 'users', 6, '2017-07-24 11:38:30', '2017-07-24 11:38:30'),
(71, 1, 'created', 'doctor', 3, '2017-07-24 11:50:39', '2017-07-24 11:50:39'),
(72, 1, 'created', 'users', 7, '2017-07-24 11:50:39', '2017-07-24 11:50:39'),
(73, 1, 'created', 'prescription', 1, '2017-07-24 12:00:30', '2017-07-24 12:00:30'),
(74, 1, 'created', 'hospitalassistant', 1, '2017-07-24 23:37:38', '2017-07-24 23:37:38'),
(75, 1, 'created', 'lab', 1, '2017-07-24 23:40:12', '2017-07-24 23:40:12'),
(76, 1, 'created', 'labassistant', 1, '2017-07-24 23:41:06', '2017-07-24 23:41:06'),
(77, 1, 'created', 'doctorassistant', 1, '2017-07-24 23:43:17', '2017-07-24 23:43:17'),
(78, 1, 'created', 'testeditor', 7, '2017-07-25 04:24:59', '2017-07-25 04:24:59'),
(79, 1, 'updated', 'users', 1, '2017-07-25 04:54:31', '2017-07-25 04:54:31'),
(80, 1, 'created', 'medicineschedule', 1, '2017-07-25 23:38:53', '2017-07-25 23:38:53'),
(81, 1, 'created', 'medicineschedule', 2, '2017-07-25 23:39:08', '2017-07-25 23:39:08'),
(82, 1, 'created', 'medicineschedule', 3, '2017-07-25 23:39:19', '2017-07-25 23:39:19'),
(83, 1, 'created', 'medicineschedule', 4, '2017-07-25 23:39:29', '2017-07-25 23:39:29'),
(84, 1, 'created', 'medicineschedule', 5, '2017-07-25 23:39:41', '2017-07-25 23:39:41'),
(85, 1, 'created', 'medicineschedule', 6, '2017-07-25 23:39:52', '2017-07-25 23:39:52'),
(86, 1, 'created', 'medicineschedule', 7, '2017-07-26 00:06:03', '2017-07-26 00:06:03'),
(87, 1, 'created', 'specialisttype', 1, '2017-07-26 03:59:47', '2017-07-26 03:59:47'),
(88, 1, 'created', 'specialisttype', 2, '2017-07-26 04:01:23', '2017-07-26 04:01:23'),
(89, 1, 'created', 'specialisttype', 3, '2017-07-26 04:01:39', '2017-07-26 04:01:39'),
(90, 1, 'created', 'specialisttype', 4, '2017-07-26 04:02:02', '2017-07-26 04:02:02'),
(91, 1, 'created', 'specialisttype', 5, '2017-07-26 04:02:19', '2017-07-26 04:02:19'),
(92, 1, 'created', 'specialisttype', 6, '2017-07-26 04:02:37', '2017-07-26 04:02:37'),
(93, 1, 'created', 'specialisttype', 7, '2017-07-26 04:03:16', '2017-07-26 04:03:16'),
(94, 1, 'created', 'specialisttype', 8, '2017-07-26 04:03:27', '2017-07-26 04:03:27'),
(95, 1, 'created', 'specialisttype', 9, '2017-07-26 04:03:41', '2017-07-26 04:03:41'),
(96, 1, 'created', 'specialisttype', 10, '2017-07-26 04:03:59', '2017-07-26 04:03:59'),
(97, 1, 'created', 'specialisttype', 11, '2017-07-26 04:04:15', '2017-07-26 04:04:15'),
(98, 1, 'created', 'specialisttype', 12, '2017-07-26 04:04:35', '2017-07-26 04:04:35'),
(99, 1, 'created', 'specialisttype', 13, '2017-07-26 04:04:45', '2017-07-26 04:04:45'),
(100, 1, 'created', 'specialisttype', 14, '2017-07-26 04:05:01', '2017-07-26 04:05:01'),
(101, 1, 'created', 'specialisttype', 15, '2017-07-26 04:05:16', '2017-07-26 04:05:16'),
(102, 1, 'created', 'specialisttype', 16, '2017-07-26 04:05:29', '2017-07-26 04:05:29'),
(103, 1, 'created', 'specialisttype', 1, '2017-07-26 04:08:42', '2017-07-26 04:08:42'),
(104, 1, 'created', 'specialisttype', 2, '2017-07-26 04:09:01', '2017-07-26 04:09:01'),
(105, 1, 'created', 'specialisttype', 3, '2017-07-26 04:09:13', '2017-07-26 04:09:13'),
(106, 1, 'created', 'specialisttype', 4, '2017-07-26 04:09:27', '2017-07-26 04:09:27'),
(107, 1, 'created', 'specialisttype', 5, '2017-07-26 04:09:40', '2017-07-26 04:09:40'),
(108, 1, 'created', 'specialisttype', 6, '2017-07-26 04:09:52', '2017-07-26 04:09:52'),
(109, 1, 'created', 'specialisttype', 7, '2017-07-26 04:10:37', '2017-07-26 04:10:37'),
(110, 1, 'created', 'specialisttype', 8, '2017-07-26 04:11:01', '2017-07-26 04:11:01'),
(111, 1, 'created', 'specialisttype', 9, '2017-07-26 04:11:16', '2017-07-26 04:11:16'),
(112, 1, 'created', 'specialisttype', 10, '2017-07-26 04:11:30', '2017-07-26 04:11:30'),
(113, 1, 'created', 'specialisttype', 11, '2017-07-26 04:11:41', '2017-07-26 04:11:41'),
(114, 1, 'created', 'specialisttype', 12, '2017-07-26 04:11:53', '2017-07-26 04:11:53'),
(115, 1, 'created', 'specialisttype', 13, '2017-07-26 04:12:06', '2017-07-26 04:12:06'),
(116, 1, 'created', 'specialisttype', 14, '2017-07-26 04:12:19', '2017-07-26 04:12:19'),
(117, 1, 'created', 'specialisttype', 15, '2017-07-26 04:12:32', '2017-07-26 04:12:32'),
(118, 1, 'created', 'specialisttype', 16, '2017-07-26 04:12:47', '2017-07-26 04:12:47'),
(119, 1, 'created', 'specialisttype', 17, '2017-07-26 04:13:00', '2017-07-26 04:13:00'),
(120, 1, 'created', 'specialisttype', 18, '2017-07-26 04:13:36', '2017-07-26 04:13:36'),
(121, 1, 'created', 'specialisttype', 19, '2017-07-26 04:13:49', '2017-07-26 04:13:49'),
(122, 1, 'created', 'specialisttype', 20, '2017-07-26 04:13:58', '2017-07-26 04:13:58'),
(123, 1, 'created', 'specialisttype', 21, '2017-07-26 04:14:12', '2017-07-26 04:14:12'),
(124, 1, 'created', 'specialisttype', 22, '2017-07-26 04:14:23', '2017-07-26 04:14:23'),
(125, 1, 'created', 'specialisttype', 23, '2017-07-26 04:14:33', '2017-07-26 04:14:33'),
(126, 1, 'created', 'specialisttype', 24, '2017-07-26 04:14:45', '2017-07-26 04:14:45'),
(127, 1, 'created', 'specialisttype', 25, '2017-07-26 04:14:56', '2017-07-26 04:14:56'),
(128, 1, 'created', 'specialisttype', 26, '2017-07-26 04:15:08', '2017-07-26 04:15:08'),
(129, 1, 'created', 'specialisttype', 27, '2017-07-26 04:15:18', '2017-07-26 04:15:18'),
(130, 1, 'created', 'specialisttype', 28, '2017-07-26 04:15:30', '2017-07-26 04:15:30'),
(131, 1, 'created', 'diseases', 1, '2017-07-26 04:28:23', '2017-07-26 04:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `repeat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `starts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccinetype`
--

CREATE TABLE `vaccinetype` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vaccinetype`
--

INSERT INTO `vaccinetype` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Child', '2017-07-15 23:45:01', '2017-07-15 23:45:01'),
(2, 'Adult', '2017-07-15 23:45:08', '2017-07-15 23:45:08'),
(3, 'EPI', '2017-07-15 23:45:17', '2017-07-15 23:45:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloodbank`
--
ALTER TABLE `bloodbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorassistant`
--
ALTER TABLE `doctorassistant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documenttype`
--
ALTER TABLE `documenttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitalassistant`
--
ALTER TABLE `hospitalassistant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitaltype`
--
ALTER TABLE `hospitaltype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labassistant`
--
ALTER TABLE `labassistant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labtype`
--
ALTER TABLE `labtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicineschedule`
--
ALTER TABLE `medicineschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescribeddiagnosis`
--
ALTER TABLE `prescribeddiagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescribedmedicine`
--
ALTER TABLE `prescribedmedicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialisttype`
--
ALTER TABLE `specialisttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testeditor`
--
ALTER TABLE `testeditor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccinetype`
--
ALTER TABLE `vaccinetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval`
--
ALTER TABLE `approval`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bloodbank`
--
ALTER TABLE `bloodbank`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `doctorassistant`
--
ALTER TABLE `doctorassistant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `documenttype`
--
ALTER TABLE `documenttype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hospitalassistant`
--
ALTER TABLE `hospitalassistant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hospitaltype`
--
ALTER TABLE `hospitaltype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `labassistant`
--
ALTER TABLE `labassistant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `labtype`
--
ALTER TABLE `labtype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1127;
--
-- AUTO_INCREMENT for table `medicineschedule`
--
ALTER TABLE `medicineschedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `prescribeddiagnosis`
--
ALTER TABLE `prescribeddiagnosis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prescribedmedicine`
--
ALTER TABLE `prescribedmedicine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `specialisttype`
--
ALTER TABLE `specialisttype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `testeditor`
--
ALTER TABLE `testeditor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vaccinetype`
--
ALTER TABLE `vaccinetype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
