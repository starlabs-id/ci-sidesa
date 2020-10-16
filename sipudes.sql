-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Okt 2018 pada 09.14
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipudes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text,
  `status` int(1) DEFAULT NULL,
  `id_penduduk` varchar(50) DEFAULT NULL,
  `akses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `status`, `id_penduduk`, `akses`) VALUES
(1, 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', 1, '9879878978', 1),
(8, '18102018', '133430645f7aed981d8ac84c4e6dba6a', 1, '18102018', 1),
(9, '897980798', '17c4520f6cfd1ab53d8745e84681eb49', 1, '897980798', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `id_agama` varchar(10) NOT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`id_agama`, `agama`, `status`) VALUES
('000000001', 'Islam', 1),
('000000002', 'Kristen', 1),
('000000003', 'Katholik', 1),
('000000004', 'Hindu', 1),
('000000005', 'Budha', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `desa`
--

CREATE TABLE `desa` (
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `kepala_desa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `desa`
--

INSERT INTO `desa` (`desa`, `kecamatan`, `kabupaten`, `kepala_desa`) VALUES
('GAMPLONG', 'PARENGAN', 'LAMPUNG', 'AA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE `file` (
  `id_kategori` varchar(30) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `file` text,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`id_kategori`, `nik`, `file`, `status`) VALUES
('000000001', '9879878978', 'update201807310858520000000019879878978.pdf', 1),
('000000001', '67575577667', 'update2018073109014400000000167575577667.pdf', 1),
('000000001', '67575577667', 'update2018073109014400000000167575577667.pdf', 1),
('000000001', '18102018', 'update2018101904112600000000118102018.pdf', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(30) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `status`) VALUES
('000000001', 'KTP', 1),
('000000002', 'Akte', 1),
('000000003', 'Surat Nikah', 1),
('000000004', 'Dokumen Penting Lainnya', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_klasifikasi`
--

CREATE TABLE `kategori_klasifikasi` (
  `id_kategori` varchar(20) DEFAULT NULL,
  `id_klasifikasi` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_klasifikasi`
--

INSERT INTO `kategori_klasifikasi` (`id_kategori`, `id_klasifikasi`, `status`) VALUES
('000000001', '000000002', 1),
('000000004', '000000002', 1),
('000000002', '000000003', 1),
('000000003', '000000002', 1),
('000000002', '000000002', 1),
('000000003', '000000003', 1),
('000000004', '000000003', 1),
('000000001', '000000003', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kk`
--

CREATE TABLE `kk` (
  `id_kk` varchar(20) NOT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `kk` varchar(30) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kk`
--

INSERT INTO `kk` (`id_kk`, `no_kk`, `rt`, `rw`, `kk`, `status`) VALUES
('000000001', '76986987687687', '01', '02', '9879878978', '1'),
('000000004', '89798787', '08', '09', '897980798', '1'),
('000000007', '150010310', '01', '02', '18102018', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `id_klasifikasi` varchar(10) DEFAULT NULL,
  `klasifikasi` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `klasifikasi`
--

INSERT INTO `klasifikasi` (`id_klasifikasi`, `klasifikasi`, `status`) VALUES
('000000001', 'Anak-anak', 1),
('000000002', 'Dewasa', 1),
('000000003', 'Orang Tua', 1),
('000000004', 'Remaja', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasi_penduduk`
--

CREATE TABLE `klasifikasi_penduduk` (
  `nik` varchar(50) DEFAULT NULL,
  `id_klasifikasi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `klasifikasi_penduduk`
--

INSERT INTO `klasifikasi_penduduk` (`nik`, `id_klasifikasi`) VALUES
('879678676', '000000002'),
('769878767', '000000002'),
('897980798', '000000003'),
('67575577667', '000000003'),
('76986987687688', '000000001'),
('9879878978', '000000002'),
('18102018', '000000001'),
('18102018', '000000002'),
('18102018', '000000003'),
('18102018', '000000004'),
('76986987687687', '000000002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `nik` varchar(100) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(10) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `golongan_darah` varchar(5) DEFAULT NULL,
  `alamat` text,
  `pekerjaan` text,
  `kewarganegaraan` varchar(50) DEFAULT NULL,
  `id_agama` varchar(30) DEFAULT NULL,
  `id_kk` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jk`, `golongan_darah`, `alamat`, `pekerjaan`, `kewarganegaraan`, `id_agama`, `id_kk`, `foto`, `status`) VALUES
('18102018', 'KEVIN RYAN RINALDI', 'MALANG', '02/07/1994', 'Laki-laki', 'B', 'JL. IJEN', 'WIRASWASTA', 'INDONESIA', '000000001', '000000007', '', 1),
('76986987687687', 'TUKIMIN', 'NGANJUK', '07/08/2018', 'Laki-laki', 'AB', 'JL. SEHAT', 'NGANGGUR', 'INDONESIA', '000000001', '000000001', 'uploadfoto2018101804380476986987687687.jpeg', 1),
('897980798', 'MUHAMMAD ROIISUL ABIDIN', 'TUBAN', '12/07/1998', 'Laki-laki', 'B', 'JALAN AHMAD YANI', '-', 'INDONESIA', '000000001', '000000004', 'uploadfoto20160830061438897980798.jpeg', 1),
('9879878978', 'TEJA PAKU', 'TUBAN', '01/08/1998', 'Laki-laki', 'A', 'JALAN BUNTU', 'PETANI', 'INDONESIA', '000000001', '000000001', 'uploadfoto201608280140499879878978.jpeg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`desa`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kk`
--
ALTER TABLE `kk`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
