-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2026 at 04:16 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pulse_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status_akun` enum('Aktif','Nonaktif') DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`nip`, `nama_lengkap`, `username`, `password`, `status_akun`) VALUES
('198001152010011001', 'Rudi Hartono', 'admin01', 'admin123', 'Aktif'),
('198202122010012002', 'Nina Amelia', 'admin02', 'admin123', 'Aktif'),
('198303102010013003', 'Yusuf Maulana', 'admin03', 'admin123', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `spesialisasi` varchar(100) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status_akun` enum('Aktif','Nonaktif') DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`nip`, `nama_lengkap`, `tanggal_lahir`, `spesialisasi`, `password`, `status_akun`) VALUES
('197601282010043213', 'Wahyu Kurniawan', '1976-01-28', 'Ortopedi', 'dokter123', 'Aktif'),
('197709112010039209', 'Agus Setiawan', '1977-09-11', 'THT', 'dokter123', 'Nonaktif'),
('197803122010033203', 'Budi Santoso', '1978-03-12', 'Bedah', 'dokter123', 'Aktif'),
('198001152010031201', 'Andi Pratama', '1980-01-15', 'Penyakit Dalam', 'dokter123', 'Aktif'),
('198011142010041211', 'Hendra Saputra', '1980-11-14', 'Paru', 'dokter123', 'Aktif'),
('198103212010045215', 'Dimas Ramadhan', '1981-03-21', 'Umum', 'dokter123', 'Aktif'),
('198105172010035205', 'Rizky Firmansyah', '1981-05-17', 'Jantung', 'dokter123', 'Aktif'),
('198202202010032202', 'Siti Rahmawati', '1982-02-20', 'Anak', 'dokter123', 'Nonaktif'),
('198212062010042212', 'Lina Marlina', '1982-12-06', 'Psikiatri', 'dokter123', 'Aktif'),
('198308222010038208', 'Intan Permatasari', '1983-08-22', 'Kulit', 'dokter123', 'Aktif'),
('198406082010036206', 'Maya Salsabila', '1984-06-08', 'Mata', 'dokter123', 'Aktif'),
('198407192010037207', 'Fajar Nugroho', '1984-07-19', 'Saraf', 'dokter123', 'Aktif'),
('198502092010044214', 'Rina Oktaviani', '1985-02-09', 'Radiologi', 'dokter123', 'Aktif'),
('198504252010034204', 'Dewi Anggraini', '1985-04-25', 'Kandungan', 'dokter123', 'Aktif'),
('198610032010040210', 'Nadia Putri', '1986-10-03', 'Gigi', 'dokter123', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_kunjungan`
--

CREATE TABLE `hasil_kunjungan` (
  `id_hasil` varchar(10) NOT NULL,
  `id_kunjungan` varchar(10) NOT NULL,
  `nip_dokter` varchar(20) NOT NULL,
  `keluhan` varchar(255) NOT NULL,
  `hasil_pemeriksaan` varchar(255) NOT NULL,
  `diagnosa` varchar(100) NOT NULL,
  `resep_obat` varchar(100) NOT NULL,
  `catatan_tindak_lanjut` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hasil_kunjungan`
--

INSERT INTO `hasil_kunjungan` (`id_hasil`, `id_kunjungan`, `nip_dokter`, `keluhan`, `hasil_pemeriksaan`, `diagnosa`, `resep_obat`, `catatan_tindak_lanjut`) VALUES
('HS001', 'KJ001', '198001152010031201', 'Demam dan lemas', 'Suhu tubuh 38,2°C', 'Demam', 'Paracetamol 500 mg', 'Istirahat cukup dan kontrol jika demam tidak membaik'),
('HS002', 'KJ002', '198202202010032202', 'Batuk dan pilek', 'Hidung berair dan batuk ringan', 'Infeksi saluran pernapasan atas', 'Paracetamol 500 mg', 'Perbanyak minum air dan kontrol jika keluhan memburuk'),
('HS003', 'KJ003', '197803122010033203', 'Nyeri perut', 'Nyeri tekan pada area perut', 'Nyeri abdomen', 'Antasida', 'Kontrol kembali jika nyeri berlanjut'),
('HS004', 'KJ004', '198504252010034204', 'Nyeri perut bawah', 'Pemeriksaan awal menunjukkan nyeri pada perut bawah', 'Nyeri panggul', 'Paracetamol 500 mg', 'Lakukan pemeriksaan lanjutan sesuai indikasi'),
('HS005', 'KJ005', '198105172010035205', 'Dada terasa tidak nyaman', 'Pasien mengeluhkan rasa tidak nyaman pada dada', 'Keluhan nyeri dada', 'Tidak ada', 'Evaluasi lebih lanjut sesuai hasil pemeriksaan'),
('HS006', 'KJ006', '198406082010036206', 'Mata merah', 'Mata tampak kemerahan', 'Iritasi mata', 'Tidak ada', 'Hindari mengucek mata dan lakukan pemeriksaan lanjutan bila diperlukan'),
('HS007', 'KJ007', '198407192010037207', 'Sakit kepala', 'Pasien mengeluhkan sakit kepala', 'Sakit kepala', 'Paracetamol 500 mg', 'Kontrol jika sakit kepala menetap'),
('HS008', 'KJ008', '198308222010038208', 'Ruam kulit', 'Terdapat ruam pada permukaan kulit', 'Dermatitis', 'Cetirizine 10 mg', 'Hindari bahan yang memicu iritasi'),
('HS009', 'KJ009', '197709112010039209', 'Telinga terasa sakit', 'Pasien mengeluhkan nyeri pada telinga', 'Otalgia', 'Paracetamol 500 mg', 'Kontrol kembali jika nyeri tidak membaik'),
('HS010', 'KJ010', '198610032010040210', 'Sakit gigi', 'Ditemukan dugaan kerusakan pada gigi', 'Karies gigi', 'Paracetamol 500 mg', 'Lakukan pemeriksaan dan perawatan gigi lanjutan'),
('HS011', 'KJ011', '198011142010041211', 'Batuk berkepanjangan', 'Pasien mengeluhkan batuk yang berlangsung lama', 'Batuk', 'Tidak ada', 'Evaluasi penyebab batuk dan lakukan pemeriksaan lanjutan'),
('HS012', 'KJ012', '198212062010042212', 'Sulit tidur', 'Pasien mengeluhkan gangguan tidur', 'Keluhan gangguan tidur', 'Tidak ada', 'Jadwalkan konsultasi lanjutan sesuai kebutuhan'),
('HS013', 'KJ013', '197601282010043213', 'Nyeri lutut', 'Nyeri dirasakan pada area sendi lutut', 'Nyeri sendi lutut', 'Paracetamol 500 mg', 'Kurangi aktivitas yang memperberat nyeri'),
('HS014', 'KJ014', '198502092010044214', 'Memerlukan pemeriksaan radiologi', 'Pemeriksaan radiologi belum tercatat', 'Belum ditetapkan', 'Tidak ada', 'Lanjutkan sesuai hasil pemeriksaan radiologi'),
('HS015', 'KJ015', '198103212010045215', 'Pusing dan lemas', 'Pasien mengeluhkan pusing dan lemas', 'Keluhan umum', 'Paracetamol 500 mg', 'Kontrol jika keluhan tidak membaik');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` varchar(10) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `status_bpjs` enum('aktif','tidak-aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_lengkap`, `nik`, `tanggal_lahir`, `jenis_kelamin`, `status_bpjs`) VALUES
('PS001', 'Bambang Wijaya', '6401011501800001', '1980-01-15', 'laki-laki', 'aktif'),
('PS002', 'Siti Aminah', '6401015202820002', '1982-02-12', 'perempuan', 'aktif'),
('PS003', 'Joko Susilo', '6401011003780003', '1978-03-10', 'laki-laki', 'aktif'),
('PS004', 'Dewi Sartika', '6401016504850004', '1985-04-25', 'perempuan', 'aktif'),
('PS005', 'Andi Saputra', '6401011705810005', '1981-05-17', 'laki-laki', 'aktif'),
('PS006', 'Maya Putri', '6401014806840006', '1984-06-08', 'perempuan', 'tidak-aktif'),
('PS007', 'Fajar Hidayat', '6401011907790007', '1979-07-19', 'laki-laki', 'aktif'),
('PS008', 'Intan Permata', '6401016208830008', '1983-08-22', 'perempuan', 'aktif'),
('PS009', 'Agus Salim', '6401011109770009', '1977-09-11', 'laki-laki', 'aktif'),
('PS010', 'Nadia Safitri', '6401014301860010', '1986-10-03', 'perempuan', 'tidak-aktif'),
('PS011', 'Hendra Wijaya', '6401011401800011', '1980-11-14', 'laki-laki', 'aktif'),
('PS012', 'Lina Marlina', '6401014602820012', '1982-12-06', 'perempuan', 'aktif'),
('PS013', 'Wahyu Pratama', '6401012801760013', '1976-01-28', 'laki-laki', 'aktif'),
('PS014', 'Rina Oktavia', '6401014902850014', '1985-02-09', 'perempuan', 'tidak-aktif'),
('PS015', 'Dimas Ramadhan', '6401012103810015', '1981-03-21', 'laki-laki', 'aktif'),
('PS016', 'Ghea Aisyah', '6471374077091717', '2007-06-15', 'perempuan', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `password` varchar(10) NOT NULL,
  `id_shift` varchar(10) NOT NULL,
  `status_akun` enum('Aktif','Nonaktif') DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`nip`, `nama_lengkap`, `tanggal_lahir`, `password`, `id_shift`, `status_akun`) VALUES
('198709092015019109', 'Rizal Fahmi', '1987-09-09', 'petugas123', 'SH002', 'Nonaktif'),
('198803152015025115', 'Robby Kurniawan', '1988-03-15', 'petugas123', 'SH003', 'Aktif'),
('198805052015015105', 'Ahmad Fauzi', '1988-05-05', 'petugas123', 'SH001', 'Aktif'),
('198808082015018108', 'Sari Wulandari', '1988-08-08', 'petugas123', 'SH002', 'Aktif'),
('198903032015013103', 'Dedi Kurnia', '1989-03-03', 'petugas123', 'SH001', 'Aktif'),
('198911112015021111', 'Aldi Saputra', '1989-11-11', 'petugas123', 'SH003', 'Aktif'),
('199001012015011101', 'Agus Salim anjay', '1990-01-01', 'admin123', 'SH001', 'Aktif'),
('199001132015023113', 'Fikri Ramadhan', '1990-01-13', 'petugas123', 'SH003', 'Aktif'),
('199007072015017107', 'Ilham Akbar', '1990-07-07', 'petugas123', 'SH002', 'Aktif'),
('199102022015012102', 'Fitri Handayani', '1991-02-02', 'petugas123', 'SH001', 'Aktif'),
('199110102015020110', 'Dian Lestari', '1991-10-10', 'petugas123', 'SH002', 'Nonaktif'),
('199204042015014104', 'Rika Puspita', '1992-04-04', 'petugas123', 'SH001', 'Aktif'),
('199212122015022112', 'Novi Anggraini', '1992-12-12', 'petugas123', 'SH003', 'Aktif'),
('199302142015024114', 'Mega Pertiwi', '1993-02-14', 'petugas123', 'SH003', 'Aktif'),
('199306062015016106', 'Yuni Astuti', '1993-06-06', 'petugas123', 'SH002', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `poliklinik`
--

CREATE TABLE `poliklinik` (
  `id_poli` varchar(10) NOT NULL,
  `nama_poli` varchar(100) NOT NULL,
  `deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `poliklinik`
--

INSERT INTO `poliklinik` (`id_poli`, `nama_poli`, `deskripsi`) VALUES
('POL001', 'Penyakit Dalam', 'Pelayanan penyakit organ dalam'),
('POL002', 'Poli Anak', 'Pelayanan kesehatan anak'),
('POL003', 'Poli Bedah', 'Pelayanan konsultasi bedah'),
('POL004', 'Poli Kandungan', 'Pelayanan kesehatan ibu dan kandungan'),
('POL005', 'Poli Jantung', 'Pelayanan kesehatan jantung'),
('POL006', 'Poli Mata', 'Pelayanan kesehatan mata'),
('POL007', 'Poli Saraf', 'Pelayanan gangguan saraf'),
('POL008', 'Poli Kulit', 'Pelayanan kesehatan kulit'),
('POL009', 'Poli THT', 'Pelayanan telinga hidung tenggorokan'),
('POL010', 'Poli Gigi', 'Pelayanan kesehatan gigi'),
('POL011', 'Poli Paru', 'Pelayanan kesehatan paru'),
('POL012', 'Poli Jiwa', 'Pelayanan kesehatan jiwa'),
('POL013', 'Poli Ortopedi', 'Pelayanan tulang dan sendi'),
('POL014', 'Poli Radiologi', 'Pelayanan pemeriksaan radiologi'),
('POL015', 'Poli Umum', 'Pelayanan pemeriksaan umum');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_kunjungan`
--

CREATE TABLE `riwayat_kunjungan` (
  `id_kunjungan` varchar(10) NOT NULL,
  `nip_petugas` varchar(20) NOT NULL,
  `id_pasien` varchar(10) NOT NULL,
  `id_poli` varchar(10) NOT NULL,
  `waktu_pendaftaran` time NOT NULL,
  `nomor_antrian` varchar(10) NOT NULL,
  `status_kunjungan` enum('menunggu','diperiksa','selesai','batal') DEFAULT NULL,
  `tanggal_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `riwayat_kunjungan`
--

INSERT INTO `riwayat_kunjungan` (`id_kunjungan`, `nip_petugas`, `id_pasien`, `id_poli`, `waktu_pendaftaran`, `nomor_antrian`, `status_kunjungan`, `tanggal_pendaftaran`) VALUES
('KJ001', '199001012015011101', 'PS001', 'POL001', '07:10:00', '001', 'selesai', '2026-10-01'),
('KJ002', '199102022015012102', 'PS002', 'POL002', '07:20:00', '002', 'selesai', '2026-10-01'),
('KJ003', '198903032015013103', 'PS003', 'POL003', '07:30:00', '003', 'selesai', '2026-10-02'),
('KJ004', '199204042015014104', 'PS004', 'POL004', '08:00:00', '004', 'selesai', '2026-10-02'),
('KJ005', '198805052015015105', 'PS005', 'POL005', '08:10:00', '005', 'selesai', '2026-10-03'),
('KJ006', '199306062015016106', 'PS006', 'POL006', '14:10:00', '006', 'selesai', '2026-10-03'),
('KJ007', '199007072015017107', 'PS007', 'POL007', '14:20:00', '007', 'selesai', '2026-10-04'),
('KJ008', '198808082015018108', 'PS008', 'POL008', '14:30:00', '008', 'selesai', '2026-10-04'),
('KJ009', '198709092015019109', 'PS009', 'POL009', '15:00:00', '009', 'selesai', '2026-10-05'),
('KJ010', '199110102015020110', 'PS010', 'POL010', '15:10:00', '010', 'selesai', '2026-10-05'),
('KJ011', '198911112015021111', 'PS011', 'POL011', '21:10:00', '011', 'selesai', '2026-10-06'),
('KJ012', '199212122015022112', 'PS012', 'POL012', '21:20:00', '012', 'selesai', '2026-10-06'),
('KJ013', '199001132015023113', 'PS013', 'POL013', '21:30:00', '013', 'selesai', '2026-10-07'),
('KJ014', '199302142015024114', 'PS014', 'POL014', '22:00:00', '014', 'selesai', '2026-10-07'),
('KJ015', '198803152015025115', 'PS015', 'POL015', '22:10:00', '015', 'selesai', '2026-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id_shift` varchar(10) NOT NULL,
  `nama_shift` varchar(50) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id_shift`, `nama_shift`, `jam_mulai`, `jam_selesai`) VALUES
('SH001', 'Pagi', '07:00:00', '14:00:00'),
('SH002', 'Siang', '14:00:00', '21:00:00'),
('SH003', 'Malam', '21:00:00', '07:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `uq_admin_username` (`username`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `hasil_kunjungan`
--
ALTER TABLE `hasil_kunjungan`
  ADD PRIMARY KEY (`id_hasil`),
  ADD UNIQUE KEY `uq_hasil_id_kunjungan` (`id_kunjungan`),
  ADD KEY `dokter_FK` (`nip_dokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `petugas_shift_FK` (`id_shift`);

--
-- Indexes for table `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `riwayat_kunjungan`
--
ALTER TABLE `riwayat_kunjungan`
  ADD PRIMARY KEY (`id_kunjungan`),
  ADD KEY `FK_pasien` (`id_pasien`),
  ADD KEY `FK_petugas` (`nip_petugas`),
  ADD KEY `FK_poli` (`id_poli`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id_shift`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil_kunjungan`
--
ALTER TABLE `hasil_kunjungan`
  ADD CONSTRAINT `dokter_FK` FOREIGN KEY (`nip_dokter`) REFERENCES `dokter` (`nip`),
  ADD CONSTRAINT `kunjungan_FK` FOREIGN KEY (`id_kunjungan`) REFERENCES `riwayat_kunjungan` (`id_kunjungan`);

--
-- Constraints for table `petugas`
--
ALTER TABLE `petugas`
  ADD CONSTRAINT `petugas_shift_FK` FOREIGN KEY (`id_shift`) REFERENCES `shift` (`id_shift`);

--
-- Constraints for table `riwayat_kunjungan`
--
ALTER TABLE `riwayat_kunjungan`
  ADD CONSTRAINT `FK_pasien` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`),
  ADD CONSTRAINT `FK_petugas` FOREIGN KEY (`nip_petugas`) REFERENCES `petugas` (`nip`),
  ADD CONSTRAINT `FK_poli` FOREIGN KEY (`id_poli`) REFERENCES `poliklinik` (`id_poli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
