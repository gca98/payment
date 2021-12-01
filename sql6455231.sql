-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql6.freemysqlhosting.net
-- Generation Time: 01 Des 2021 pada 08.59
-- Versi Server: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql6455231`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `AspNetRoleClaims`
--

CREATE TABLE `AspNetRoleClaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ClaimType` longtext CHARACTER SET latin1,
  `ClaimValue` longtext CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `AspNetRoles`
--

CREATE TABLE `AspNetRoles` (
  `Id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Name` varchar(256) CHARACTER SET latin1 DEFAULT NULL,
  `NormalizedName` varchar(256) CHARACTER SET latin1 DEFAULT NULL,
  `ConcurrencyStamp` longtext CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `AspNetUserClaims`
--

CREATE TABLE `AspNetUserClaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ClaimType` longtext CHARACTER SET latin1,
  `ClaimValue` longtext CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `AspNetUserLogins`
--

CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(128) CHARACTER SET latin1 NOT NULL,
  `ProviderKey` varchar(128) CHARACTER SET latin1 NOT NULL,
  `ProviderDisplayName` longtext CHARACTER SET latin1,
  `UserId` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `AspNetUserRoles`
--

CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `RoleId` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `AspNetUsers`
--

CREATE TABLE `AspNetUsers` (
  `Id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `UserName` varchar(256) CHARACTER SET latin1 DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET latin1 DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET latin1 DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET latin1 DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET latin1,
  `SecurityStamp` longtext CHARACTER SET latin1,
  `ConcurrencyStamp` longtext CHARACTER SET latin1,
  `PhoneNumber` longtext CHARACTER SET latin1,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `AspNetUsers`
--

INSERT INTO `AspNetUsers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('20563d0f-19ef-44fc-8389-70768ad93da2', 'gio', 'GIO', 'gio@example.com', 'GIO@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAEEVeyFvH0zOCG5LAZBWyjHIN9BfDdtlZAVy8qAj8bzY48hvnjzELLUOvxvbw+3hQ7w==', 'VXIQ4NCDMH4EVG2TH6RTHO5IP4XDRJZH', 'b72e0d47-13c8-4790-86c6-1ffd641e4ed8', NULL, 0, 0, NULL, 1, 0),
('666d44c4-a737-4c90-81ef-179bba1476b3', 'Siti', 'SITI', 'siti@example.com', 'SITI@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAEPccQM+nsKkF2lZRBeXsJlQZ65BJZthFeF2thsn+MoI96XurPQu1bt6Lqe1kqaHXtg==', 'SATMIDRXVLETDRQTFPFXMIBVV2DB6HEP', '8bac443b-0cbb-414f-ae13-63001f70bc85', NULL, 0, 0, NULL, 1, 0),
('8401cbb4-86fa-4122-a98a-f9d408e04d3c', 'budi', 'BUDI', 'budi@example.com', 'BUDI@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAELzlSlkNbYNzRFH2HWc11JF5l2ntv0ZuKs7k8R5bBI8NG7Q2dOyEHL7DksUSBMi3rg==', 'GLTBWKHWOVOOKGTODTPAHJ677HTHNSSL', '1eb4b121-a574-4ec5-b6d4-6a561490bfef', NULL, 0, 0, NULL, 1, 0),
('9299bdca-1978-4df9-b631-e4d8348c0ec6', 'andi', 'ANDI', 'andi@example.com', 'ANDI@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAED3zIyJfnMuJ7G26piwcgoXl92cQWeABOZS8y5HPfnZf61I/KWwghYOD6VSkMEHtoQ==', 'NPSLBNFWNMYS7QELWEIWSFZTK6HXJMDN', '7b4687f3-6db8-47d5-a9ee-edbbf0ca5fb2', NULL, 0, 0, NULL, 1, 0),
('b4a1e42c-9ae7-4e5e-be15-9f553437de88', 'andi1', 'ANDI1', 'andi1@example.com', 'ANDI1@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAEEtAFrbQDWUjjs65N0+cF3El9uR75v4qzSMdmCyrYxTHrPsaHxZq5wszb7LH2W+jfg==', 'PKMAF7SKMAPUGCL5EWRMTVP3D6M2PKY2', 'ac91c551-cb49-4796-8343-68b5b6e2fb38', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `AspNetUserTokens`
--

CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `LoginProvider` varchar(128) CHARACTER SET latin1 NOT NULL,
  `Name` varchar(128) CHARACTER SET latin1 NOT NULL,
  `Value` longtext CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paymentdetail`
--

CREATE TABLE `paymentdetail` (
  `paymentDetailId` int(11) NOT NULL,
  `cardOwnerName` longtext CHARACTER SET latin1,
  `cardNumber` longtext CHARACTER SET latin1,
  `expirationDate` longtext CHARACTER SET latin1,
  `securityCode` longtext CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `paymentdetail`
--

INSERT INTO `paymentdetail` (`paymentDetailId`, `cardOwnerName`, `cardNumber`, `expirationDate`, `securityCode`) VALUES
(1, 'Gio', '123456789', '12/24', '123'),
(2, 'Budi', '4567891233', '12/22', '654'),
(3, 'Andi', '7894563121', '12/23', '879');

-- --------------------------------------------------------

--
-- Struktur dari tabel `RefreshToken`
--

CREATE TABLE `RefreshToken` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `Token` longtext CHARACTER SET latin1,
  `JwtId` longtext CHARACTER SET latin1,
  `IsUsed` tinyint(1) NOT NULL,
  `IsRevoked` tinyint(1) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `ExpiryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `RefreshToken`
--

INSERT INTO `RefreshToken` (`Id`, `UserId`, `Token`, `JwtId`, `IsUsed`, `IsRevoked`, `AddedDate`, `ExpiryDate`) VALUES
(1, 'b4a1e42c-9ae7-4e5e-be15-9f553437de88', 'UDV86JT6EU32T7X5DP1GXBLQ44Z8P8A2L8C0d3110d5-2e04-4336-95ae-b9ee072eb105', '765ecfc5-3614-46c1-8f62-d3a6067a74eb', 0, 0, '2021-12-01 05:47:19', '2021-12-01 05:57:19'),
(2, '20563d0f-19ef-44fc-8389-70768ad93da2', '0TJ5UV8DIDN7NBKERXVXCLMWTTBZW3TK23O6b9dc032-c5c9-4243-9dae-bf4ae4daca06', 'c1a8d5d6-194e-482d-88ba-35c4650b63e3', 0, 0, '2021-12-01 05:50:51', '2021-12-01 06:00:51'),
(3, '20563d0f-19ef-44fc-8389-70768ad93da2', '2E9YH2ZZ86M3VP8PQHWHSA6LQZX5AN3G1ICb6363d2d-fe9f-4232-8344-793ed2fbe756', '0358122e-7895-4589-b3d4-a9fbf160ffff', 0, 0, '2021-12-01 05:52:24', '2021-12-01 06:02:24'),
(4, '20563d0f-19ef-44fc-8389-70768ad93da2', 'F4PN8BKV3T3P6Y96UVOSZNWAQMA6X6ODJC3c2ae3b29-b2c0-4af5-a393-4038a13503b7', 'c48711c1-10ca-4727-9cf1-49b7d5f47db7', 0, 0, '2021-12-01 05:53:50', '2021-12-01 06:03:50'),
(5, '20563d0f-19ef-44fc-8389-70768ad93da2', 'ULOD2G2OF0AYY4KM2PMCSDJQ4VDHMQ7O3G9080513af-5427-4c9c-9c36-74d4041fb92b', '2631694e-45c6-4f8d-9f4e-407a01d935e7', 0, 0, '2021-12-01 06:06:07', '2021-12-01 06:16:07'),
(6, '20563d0f-19ef-44fc-8389-70768ad93da2', '7QHFKVT3GY6YF35BG8OMPG4HJASPPRBSMGP2e0fa2f5-9987-44cf-bac9-06d998aa1941', 'a495c13d-ec5c-4b2c-907e-edaa66f25ecc', 0, 0, '2021-12-01 06:22:06', '2021-12-01 06:32:06'),
(7, '666d44c4-a737-4c90-81ef-179bba1476b3', 'PHZ8YOMOWKWT2OALJ4ZAKMWBN42H8IN8TR3a072b1fb-74f3-41ec-8f44-dc35bdfb0e1f', 'b9acce1c-4800-47d0-846b-c3d73d50dd7b', 0, 0, '2021-12-01 07:10:25', '2021-12-01 07:20:25'),
(8, '666d44c4-a737-4c90-81ef-179bba1476b3', '7ZIEVL19WNSR1XFGYRJW5W31V58LSXC6VRNbc947731-ffa6-4668-9d00-ac5cc8899549', 'b4ed904b-ec9c-4935-8d2b-edc2e025e2c1', 0, 0, '2021-12-01 07:11:00', '2021-12-01 07:21:00'),
(9, '20563d0f-19ef-44fc-8389-70768ad93da2', 'PDFJT0Y5ODA2Z6WGTGM0TBIDJKNDYZAUUNTa40b9923-39a6-4b24-9857-a9691719e2ca', 'ac08e31a-ccc2-4b5b-b73e-cb32a30891bb', 0, 0, '2021-12-01 07:13:52', '2021-12-01 07:23:52'),
(10, '666d44c4-a737-4c90-81ef-179bba1476b3', '0K2PEJ0960J3M39FVUE5IXBYU6RLQ8NEOUP6590dbd3-19b7-4865-90ca-fa4789d60df1', '52f9ee65-8425-4fa4-b826-4420eab89c30', 0, 0, '2021-12-01 07:26:39', '2021-12-01 07:36:39'),
(11, '20563d0f-19ef-44fc-8389-70768ad93da2', 'L0JORI8ZA6FKZJMIBDOQQT5NQG77X911KZ077b4eea4-fbc4-4a64-86b3-fdc99d51e998', '3ef3d4b8-9c8e-40f9-9f59-262ba1e3f56c', 0, 0, '2021-12-01 07:37:16', '2021-12-01 07:47:16'),
(12, '666d44c4-a737-4c90-81ef-179bba1476b3', 'FKIPSFTFM3IEJSTZFA3MCAFIMNQA37C4S9Zb00e9114-95ac-46c7-8663-ab67cd096255', 'f89d0422-1230-401a-b67f-af055f288d99', 0, 0, '2021-12-01 07:38:21', '2021-12-01 07:48:21'),
(13, '666d44c4-a737-4c90-81ef-179bba1476b3', 'ATPFBORYKM6HPWDW9GFSLRQDUKV2NFNNQPUd6f3dce8-9fa1-4f4b-9236-426af5fe7479', '9ef95c26-4226-486b-b504-6912965f6d9c', 0, 0, '2021-12-01 07:49:01', '2021-12-01 07:59:01'),
(14, '666d44c4-a737-4c90-81ef-179bba1476b3', 'DLWEFXL0TTRZSZU7PZWJS67QLQ1K3BZ2U7Ed53b550c-6424-442a-8df5-b66e330225c8', '10cbe3d7-1b57-4e67-9098-88d8373c3a69', 0, 0, '2021-12-01 08:22:01', '2021-12-01 08:32:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20211201050627_init', '5.0.11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetRoles`
--
ALTER TABLE `AspNetRoles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetUsers`
--
ALTER TABLE `AspNetUsers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `paymentdetail`
--
ALTER TABLE `paymentdetail`
  ADD PRIMARY KEY (`paymentDetailId`);

--
-- Indexes for table `RefreshToken`
--
ALTER TABLE `RefreshToken`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_RefreshToken_UserId` (`UserId`);

--
-- Indexes for table `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paymentdetail`
--
ALTER TABLE `paymentdetail`
  MODIFY `paymentDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `RefreshToken`
--
ALTER TABLE `RefreshToken`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `RefreshToken`
--
ALTER TABLE `RefreshToken`
  ADD CONSTRAINT `FK_RefreshToken_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
