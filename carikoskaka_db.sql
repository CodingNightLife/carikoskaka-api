-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2016 at 06:19 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carikoskaka_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Oven', '2016-07-17 04:24:07', '2016-07-18 03:56:58'),
(3, 'Fire Extinguisher', '2016-07-17 04:25:05', '2016-07-18 03:57:17'),
(4, 'Gordyn', '2016-07-18 03:57:30', '2016-07-18 03:57:30'),
(5, 'AC', '2016-07-18 03:57:40', '2016-07-18 03:57:40'),
(6, 'Swimming Pool', '2016-07-18 03:57:53', '2016-07-18 03:57:53'),
(7, 'Carport', '2016-07-18 03:58:03', '2016-07-18 03:58:03'),
(8, 'Garden', '2016-07-18 03:58:12', '2016-07-18 03:58:12'),
(9, 'Garasi', '2016-07-18 03:59:31', '2016-07-18 03:59:31'),
(10, 'Telephone', '2016-07-18 03:59:39', '2016-07-18 03:59:39'),
(11, 'PAM', '2016-07-18 04:00:02', '2016-07-18 04:00:02'),
(12, 'Water Heater', '2016-07-18 04:00:09', '2016-07-18 04:00:09'),
(13, 'Refrigerator', '2016-07-18 04:00:27', '2016-07-18 04:00:27'),
(14, 'Stove', '2016-07-18 04:00:37', '2016-07-18 04:00:37'),
(15, 'Microwave', '2016-07-18 04:00:44', '2016-07-18 04:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `facility_house`
--

CREATE TABLE `facility_house` (
  `facility_id` int(10) UNSIGNED NOT NULL,
  `house_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `facility_house`
--

INSERT INTO `facility_house` (`facility_id`, `house_id`) VALUES
(1, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(4, 2),
(5, 2),
(9, 2),
(11, 2),
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(14, 3),
(1, 4),
(3, 4),
(4, 4),
(5, 4),
(9, 4),
(11, 4),
(12, 4),
(5, 5),
(6, 5),
(8, 5),
(11, 5),
(12, 5),
(5, 6),
(9, 6),
(11, 6),
(1, 7),
(3, 7),
(7, 7),
(9, 7),
(10, 7),
(10, 8),
(14, 8),
(5, 9),
(9, 9),
(11, 9),
(11, 10),
(3, 11),
(5, 11),
(7, 11),
(9, 11),
(3, 12),
(5, 12),
(7, 12),
(9, 12),
(10, 12),
(3, 13),
(5, 13),
(7, 13),
(9, 13),
(10, 13),
(11, 13),
(14, 13),
(1, 14),
(3, 14),
(1, 15),
(5, 15),
(6, 15);

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `dimention` int(11) NOT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `path`, `name`, `price`, `dimention`, `province`, `city`, `street`, `description`, `latitude`, `longitude`, `owner_name`, `owner_phone`, `created_at`, `updated_at`) VALUES
(1, 'uploads/house/2016/07/18/1', 'Dahlia Mansion', 1500000, 910, 'Sumatera Utara', 'Medan', 'Gang. Dahlia No. 17, Jl. Kenanga Raya, Tanjung Sari', '<p>Fasilitas Dahlia Mansion:</p>\r\n\r\n<p>1.&nbsp;&nbsp; &nbsp;Gedung baru.<br />\r\n2.&nbsp;&nbsp; &nbsp;Fasilitas baru.<br />\r\n3.&nbsp;&nbsp; &nbsp;Hunian Hijau dan Nyaman.<br />\r\n4.&nbsp;&nbsp; &nbsp;Parkir mobil dan motor.<br />\r\n5.&nbsp;&nbsp; &nbsp;Fasilitas Kamar:<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Kamar Penginapan: AC, TV layar datar, spring bed King Size, lemari, kursi &amp; meja, kamar mandi dalam dengan shower (semua baru).<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Kamar Kost : Spring bed Single Size, AC, lemari, kursi &amp; meja, kamar mandi dalam dengan shower (semua baru).<br />\r\n6.&nbsp;&nbsp; &nbsp;Kamar yang luas. (5x4M; 5x3M)<br />\r\n7.&nbsp;&nbsp; &nbsp;Keamanan 24 Jam.<br />\r\n8.&nbsp;&nbsp; &nbsp;CCTV.<br />\r\n9. Double Gate untuk keamanan&nbsp;<br />\r\n10.&nbsp;&nbsp; &nbsp;Laundry pakaian (sesuai ketentuan)<br />\r\n11.&nbsp;&nbsp; &nbsp;Kantin.<br />\r\n12.&nbsp;&nbsp; &nbsp;Wifi (sesuai ketentuan)<br />\r\n13.&nbsp;&nbsp; &nbsp;Dekat dengan Jalan Utama Ring-Road (&plusmn; 250 Meter).<br />\r\n14.&nbsp;&nbsp; &nbsp;Akses langsung ke Bandara Kuala Namu, Medan (menggunakan Airport Bus DAMRI Gagak Hitam melewati Ring Road).<br />\r\n15.&nbsp;&nbsp; &nbsp;Melayani penginapan Harian, Mingguan, Bulanan dan Tahunan.<br />\r\n16. Menerima Pria dan Wanita baik-baik.<br />\r\n(Karyawan/wati, Mahasiswa/wi).<br />\r\n17. Sewa kamar kos mulai dari Rp. 750.000 - Rp. 2.500.000 per bulan.<br />\r\n18. Sewa penginapan harian dari Rp. 150.000 - Rp. 250.000 per hari.</p>\r\n\r\n<p>Taman luas di tengah yang menyejukkan..</p>\r\n\r\n<p>Segera kunjungi langsung dan book sebelum kehabisan..</p>\r\n\r\n<p>Facebook: Dahlia Mansion Medan</p>\r\n', '3.5591864198194982', '98.62728872639764', 'Dahlia Room', '+6285275981949 ', '2016-07-18 03:54:17', '2016-07-18 03:54:17'),
(2, 'uploads/house/2016/07/18/2', 'Penginapan Harian Mingguan dan Bulanan', 145000, 300, 'Sumatera Utara', 'Medan', 'Jln.T.Amir Hamzah no 1/2/3 Simpang griya', '<p>AMIR HAMZAH RESIDENCE 123. kost ini kita sediakan untuk mereka yang menginginkan suasana aman,nyaman,bersih dan tenang. Cocok bagi anda yang ingin berlibur ke Medan, atau bagi mereka yang bekerja, juga cocok untuk tamu dalam dan luar kota membutuhkan tempat tinggal jangka pendek dan jangka panjang.<br />\r\nKost ini bisa disewakan harian, mingguan, bulanan. Segera kontak kami untuk mendapat harga terjangkau dengan fasilitas memuaskan dan mewah. FASILITAS. * Bangunan 4 lantai.<br />\r\n* Spring Bed dan Sofa.<br />\r\n* Meja dan lemari pakaian.<br />\r\n* Air Conditioning<br />\r\n* TV LED 30 inchi.<br />\r\n* Kamar mandi di dalam + WATER HEATER (air mandi&nbsp;<br />\r\npanas).<br />\r\n* Parkir mobil aman.<br />\r\n* 24 jam Security + CCTV.<br />\r\n* Tersedia WIFI ACCESS.<br />\r\n* Hannoch water Filter (air minum RO system)<br />\r\n* Dapur umum + Kulkas + Toaster + Microwave +&nbsp;<br />\r\nkompor gas.<br />\r\n* Kunci pintu kamar otomatis dengan kartu.<br />\r\n* Lounge (ruang tamu) dengan Sofa, TV LED dan&nbsp;<br />\r\nmajalah.<br />\r\n* FOOD COURT.<br />\r\n* Design kamar functional dan mewah. NB: Maximum 2 orang per kamar. Kost kami di design dengan kesadaran seni tinggi dan fungsional yang terletak di lokasi strategis di tengah/ inti kota medan/simpang Griya Riatur di peruntuk bagi mereka yang bekerja dan berlibur di kota Medan.<br />\r\nLokasi strategis Jalan Amir Hamzah no: 1/2/3 Medan Sumatera utara. LOKASI STRATEGIS * 5 menit dari Plaza Milenium.<br />\r\n* 10 menit dari pusat kota (Jalan Gatot Subroto,Jalan&nbsp;<br />\r\nSekip,Jalan Gagak Hitam- Ring road).<br />\r\n* 5 menit ke MC DONALD dan KFC.<br />\r\n* 1 menit ke Supermarket Mandiri.<br />\r\n* 3 menit ke RS Sari Mutiara.<br />\r\n* 3 menit Restoran Lembur Kuring.<br />\r\n* 3 menit ke OPAL COFFE<br />\r\n* 3 menit ke GINDARA SPA dan Tanjung sari SPA.<br />\r\n* 15 menit ke SUN PLAZA.<br />\r\nSilakan buktikan fasilitas yang kami tawarkan. Untuk RESERVASI dan Info lebih lanjut hubungi kami di:<br />\r\nHARGA PROMO / PROMOTIONAL 0FFER. Harian : Rp 145.000,- s/d Rp 190.000,-<br />\r\nMingguan : Rp 900.000,- s/d Rp 1.500.000,-<br />\r\nBulanan : Rp 3.500.000,- s/d Rp 4.000.000,-</p>\r\n\r\n<p>#Kost penginapan exclusive#daerah griya riatur#amir hamzah#danau singkarak#sekip#kapten muslim#milenium plaza# glugur#gatot subroto#ringroad#OPAL cafe#griya BEN#lembur kuring</p>\r\n', '3.607892299999999', '98.65152420000004', 'Prima Sitanggang', '085373424253', '2016-07-18 10:22:29', '2016-07-18 10:22:29'),
(3, 'uploads/house/2016/07/18/3', 'Al aisy in the kost', 1200000, 2, 'Sumatera Utara', 'Medan', 'Jl. Letda sujono no 32', '<p>Kost syariah pertama di medan&nbsp;<br />\r\nJl. Ltda sujono no 30-32 medan<br />\r\nLebaran idul fitri tetap buka&nbsp;<br />\r\nAkses&nbsp;<br />\r\n- 3 menit ke tol bdr selamat<br />\r\n- 3 menit ke polsek percut sei tn<br />\r\n- 4 menit ke rs muhammadiya<br />\r\n- 5 menit ke kampus uma<br />\r\n- 6 menit ke kampus unimed&nbsp;<br />\r\n- 7 menit ke kampus uinsu&nbsp;<br />\r\n-8 menit ke rs haji medan&nbsp;<br />\r\nTerima harian dan bulanan<br />\r\n&quot;Full facilities&quot;&nbsp;<br />\r\nMenyediakan :<br />\r\n- Tiket pesawat domestik &amp; inter<br />\r\n- Tiket kai<br />\r\n- Listrik , pulsa , creditcard dsb&nbsp;<br />\r\n&quot;HARGA BERSAHABAT , KUALITAS BERMARTABAT&quot;<br />\r\nAl aisy homestay &amp; inthe kost<br />\r\nJuga tersedia di&nbsp;<br />\r\n-jl sendok<br />\r\n-jl perjuangan&nbsp;<br />\r\nUntuk informasi lebih lanjut... tanyakan sajaa..</p>\r\n', '3.5857218', '98.66606350000006', 'Toni', '08225416652', '2016-07-18 10:29:03', '2016-07-18 10:29:03'),
(4, 'uploads/house/2016/07/18/4', 'Kamar kos di dekat usu', 600000, 12, 'Sumatera Utara', 'Medan', 'Jl. Abdul hakim, Pasar 1 Setia Budi', '<p>Kamar mandi dalam keramik<br />\r\n3,5 x 3,5 m<br />\r\nTeras<br />\r\nHalaman con block<br />\r\nKanopi<br />\r\nDapur umum<br />\r\nWifi<br />\r\nMeteran per kamar masing masing<br />\r\nKamera CCTV<br />\r\nAda yang ber AC<br />\r\nAda yang bisa untuk keluarga<br />\r\nKos wanita dan pria<br />\r\nDekat ke usu, padang bulan dan setia budi<br />\r\nAman<br />\r\nKe Nomor HP User Profile per kamar boleh diisi lebih dari 1 oran</p>\r\n\r\n<p>&nbsp;</p>\r\n', '3.5588643', '98.63924229999998', 'Grace Siti Maryam', '085261572341', '2016-07-18 10:31:30', '2016-07-18 10:31:30'),
(5, 'uploads/house/2016/07/18/5', 'Kos di kota medan', 1300000, 4000, 'Sumatera Utara', 'Medan', 'JL. H.Adam Malik Gg. Rela No. 38-A (Glugur bypass)', '<p>Kosan strategis di tengah kota medan, lebih nyaman dengan aturan utama &quot;PASANGAN TIDAK SAH TIDAK MASUK KAMAR&quot;</p>\r\n\r\n<p>Gedung BUKAN Ruko, memang dibangun untuk kosan jadi tidak sumpek</p>\r\n\r\n<p>Ada 20 Kamar di lantai 2 dan lantai 3<br />\r\nAda 4 kamar di lantai 1 (lebih istimewa &amp; lebih rupiah)</p>\r\n\r\n<p>10 menit ke Plaza medan fair atau ke Merdeka Walk<br />\r\n10 menit juga dari Marriott Hotel, Podomoro Land<br />\r\n10 menit ke Griya Riyatur Jl. Amir Hamzah</p>\r\n\r\n<p>Fasilitas kamar:<br />\r\n- Kamar mandi<br />\r\n- Tempat tidur<br />\r\n- Lemari<br />\r\n- Meja<br />\r\n- TV<br />\r\n- AC</p>\r\n\r\n<p>Fasilitas bersama:<br />\r\n- Wifi<br />\r\n- Parkir<br />\r\n- Dapur<br />\r\n- Kantin<br />\r\n- Jaga malam</p>\r\n\r\n<p>Kamar terbatas, hub kami segera</p>\r\n\r\n<p>Terima Kasih</p>\r\n', '3.6022974', '98.66764749999993', 'Anto', '061-241222', '2016-07-18 10:35:48', '2016-07-18 10:35:48'),
(6, 'uploads/house/2016/07/19/6', 'Kost-kosan dekat Universitas Panca budi', 50000, 295, 'Sumatera Utara', 'Medan', 'Jl. Titipapan Gg. Pertahanan No 41\r\n', '<p>Fasilitas:<br />\r\n10 kamar kost<br />\r\nTempat Tidur(single bad) &amp; karpet<br />\r\nSECURTY&nbsp;<br />\r\nKamar Mandi<br />\r\nHalaman yg bersih dan ada tmpt jemur pakaian yg luas<br />\r\nAda 2 Ruang tamu<br />\r\nTersedia TV dan Dispenser (umum)<br />\r\nAir PAM bersih ( 2&nbsp;<br />\r\nBebas biaya Listerik dan Air<br />\r\nKost aman dan nyaman</p>\r\n\r\n<p>Akses lokasi strategis:<br />\r\n5 menit ke Universitas Panca budi,lp3i,lp3m, Tempat ibadah -15 menit ke USU,UNPRI,UMA(setia budi)<br />\r\n8 menit ke Carefour, Medan Plaza, Sun Plaza, Cambridge, Plaza melenium</p>\r\n\r\n<p>Harga sewa Kost perbulan Rp. 500.000&nbsp;<br />\r\njika 2 orang 1 kamar Rp. 700.000</p>\r\n', '3.5884541', '98.64660849999996', 'Boby Pratama', '061892311', '2016-07-19 04:53:20', '2016-07-19 04:53:20'),
(7, 'uploads/house/2016/08/08/7', 'Kost Pusat Kota Medan Eksklusif', 1600000, 400, 'Sumatera Utara', 'Medan', 'Jl. Sei Siguti No 39, Masuk dari Jl. Gatot Subroto', '<p>Siguti House, tempat kost yang homey, nyaman, aman, &nbsp;berfasilitas lengkap dengan harga terjangkau di pusat kota medan.&nbsp;</p>\r\n\r\n<p>Berlokasi di inti Kota Medan, diapit oleh jalan2 utama kota medan, spt. Jl. Gatot Subroto, Gajah Mada, K.H. Wahid Hasyim. Dekat dengan Plaza Medan Fair (Pool Damri Bandara), Berastagi Pasar Buah, area perkantoran, kuliner Kota Medan (durian house, ucok durian, dll.) dan tempat menarik lainnya.</p>\r\n\r\n<p>Alamat lengkap : Jl. Sei Siguti No 39, Masuk dari Jl. Gatot Subroto / Jl. Gajah Mada / K.H. Wahid Hasyim, Kel. Sei Sikambing D. Kec. Medan Petisah (Lokasi dapat di lihat melalui aplikasi google maps dengan kata kunci &quot;siguti house&quot;)</p>\r\n\r\n<p>Fasilitas yang disediakan :<br />\r\n- kamar full luxury furnished (lengkap perabotan mewah)<br />\r\n- tempat tidur spring bed<br />\r\n- lemari<br />\r\n- meja kerja<br />\r\n- kursi kerja<br />\r\n- cermin rias<br />\r\n- dispenser<br />\r\n- kamar mandi dalam (kloset duduk)<br />\r\n- TV LED 32&quot;<br />\r\n- AC<br />\r\n- Akses internet Wifi, &nbsp;<br />\r\n- Parkiran mobil &amp; sepeda motor yang sangat luas<br />\r\n- Ruang tamu (lobby)</p>\r\n\r\n<p>Rate harga yang terjangkau :&nbsp;</p>\r\n\r\n<p>A. Tanpa air panas<br />\r\n1. Rp. 1.600.000,- per bulan<br />\r\n2. Rp. 600.000,- per minggu<br />\r\n3. Rp. 120.000,- per hari</p>\r\n\r\n<p>B. Dengan air panas<br />\r\n1. Rp. 2.000.000,- per bulan<br />\r\n2. Rp. 700.000,- per minggu<br />\r\n3. Rp. 150.000,- per hari</p>\r\n\r\n<p>NOTE : disewakan hanya untuk orang baik-baik</p>\r\n\r\n<p>Info &amp; Reservasi : Ke Nomor HP User Profile</p>\r\n\r\n<p>Terimakasih telah berkunjung ke Siguti House.</p>\r\n', '3.5893465', '98.65609059999997', 'Yadi', '08775422341', '2016-08-08 12:54:29', '2016-08-08 12:54:29'),
(8, 'uploads/house/2016/08/08/8', 'Kamar Kost Muslim SM Raja Medan', 350000, 10, 'Sumatera Utara', 'Medan', 'Jl sakti lubis gg bali no 22', '<p>Indekost Khusus Pria &amp; Wanita Muslim ~ Cocok Untuk Para Pekerja,Mahasiswa dan Pasangan Yang Baru Menikah.</p>\r\n\r\n<p>(Ukuran Kamar 2,5 x 4M)</p>\r\n\r\n<p>Fasilitas Kamar :<br />\r\n(Full Keramik + Kamar Mandi Didalam)<br />\r\n- Springbed<br />\r\n- Sprei<br />\r\n- Bantal<br />\r\n- Lemari<br />\r\n- Kipas Angin<br />\r\n- Dll<br />\r\n(Free Listrik PLN &amp; Air PDAM)</p>\r\n\r\n<p>Tarif Sewa Kamar Per/bulan :<br />\r\n1 Kamar + 1 Orang = 500.000<br />\r\n1 Kamar + 2 Orang = 700.000</p>\r\n\r\n<p>Lokasi Strategis :<br />\r\nJl Sakti Lubis Gg Bali No 22 Sp Limun Medan</p>\r\n\r\n<p>Hp :&nbsp;</p>\r\n\r\n<p>#dijamin_nyaman_bersih_aman_bebas_dan_teratur</p>\r\n\r\n<p>Terima Kasih</p>\r\n', '3.5548452', '98.69263709999996', 'Yadi', '085373424253', '2016-08-08 13:00:05', '2016-08-08 13:00:05'),
(9, 'uploads/house/2016/08/08/9', 'Kost Bersih dan Murah di medan johor', 800000, 100, 'Sumatera Utara', 'Medan', 'JL Karya Kasih perumahan griya karya kasih No 10', '<p>Kost di Medan Johor Aman dan Nyaman Bangunan Baru loch..</p>\r\n\r\n<p>- KAMAR KOST PAKE KIPAS ANGIN +PERABOT 800 ribu/Bln.<br />\r\n- KAMAR KOST PAKE AC + PERABOT 1,2 Juta/Bln.</p>\r\n\r\n<p>Kami juga adakan harga promo..!!<br />\r\nuntuk pembayar langsung 1 tahun dapat potongan harga untuk 2 bulan.<br />\r\nUntuk pembayaran langsung 6 bulan dapat potongan harga 1 bulan.</p>\r\n\r\n<p>Fasilitas :&nbsp;<br />\r\n1. Stiap kamar ada kmar mandi didlm.<br />\r\n2. Memiliki dapur dan tempat cuci baju.<br />\r\n3. Memiliki parkiran mobil,speda motor.<br />\r\n4. Security 24 jam.</p>\r\n\r\n<p>Lokasi kost dekat dgn akses kampus UISU,Asrama haji,Giant supermarket,Bank pemerintahan,Kantor pemerintahan,Bimbingan test ganesha &amp; Pizza hut.</p>\r\n', '3.5708151', '98.663317', 'Reno', '0878563412234', '2016-08-08 14:43:55', '2016-08-08 14:43:55'),
(10, 'uploads/house/2016/08/08/10', 'Kos wanita muslimah di dekat UMSU', 350000, 1000, 'Sumatera Utara', 'Medan', 'Jalan Ampera 1- 24', '<p>kos wanita muslim dekat kampus umsu bisa jalan kaki&nbsp;<br />\r\njln.ampera 1 no.24</p>\r\n\r\n<p>disewakan kos2 an wanita muslim untuk mahasiswa maupun karyawan bangunan bagus baru aja di renovasi</p>\r\n\r\n<p>tersedia juga 1 kamar untuk 2 org (harga 1 kamar 2 org berbeda kamar lebih luas)kelengkapan sudah ada:<br />\r\n- tempat tidur plus spring bed/bagi yg 1 kamar 2 orang tempat tidurnya ada 2 plus spring bed 2<br />\r\n-kipas angin<br />\r\n-lemari baju/bagi yg 1 kamar ber 2 lemarinya dapet 2&nbsp;<br />\r\n-listrik bebas<br />\r\n-pam/air bebas udah termasuk biaya kos<br />\r\nharga di jamin murah kamar nya baru semua baru di cat dan di renovasi<br />\r\nterima masih</p>\r\n\r\n<p>harga mulai dari 350rb(harga sangat murah dibanding kos laiinnya</p>\r\n\r\n<p>(kamar yang tersedia tinggal 2 lagi,,,buruan ya siapa cepat dia dapat ^^</p>\r\n', '3.6110565', '98.67623579999997', 'Shelvy Adelia', '082373424253', '2016-08-08 14:55:52', '2016-08-08 14:55:52'),
(11, 'uploads/house/2016/08/08/11', 'Kost wanita muslim full wifi', 500000, 240, 'Sumatera Utara', 'Medan', 'Jl garu 3 no 49 a', '<p>Kost 49 ( maaf khusus wanita muslim )<br />\r\nFasilitas&nbsp;<br />\r\nCctv, wifi, parkir motor luas dan aman, kamar mandi dalam, listrik token<br />\r\nDepan kost bisa lewat mobil, ekslusif namun murah,<br />\r\nLantai 1 kamar dan parkir<br />\r\nLntai 2 kamar dan tempat santai ( berkunjung)<br />\r\nLantai 3 jemuran dan tempat masak dan bakar2</p>\r\n\r\n<p>&nbsp;</p>\r\n', '3.543370399999999', '98.70594929999993', 'Wardah', '061 664921', '2016-08-08 15:02:40', '2016-08-08 15:02:40'),
(12, 'uploads/house/2016/08/08/12', 'Setiabudi INN', 500000, 105, 'Sumatera Utara', 'Medan', 'Jl setiabudi depan pasar 4 ', '<p>Jl setiabudi depan psr 4 dekat usu, methodist, unika</p>\r\n', '3.558714199999999', '98.62384299999997', 'Roma', '02133414', '2016-08-08 15:10:38', '2016-08-08 15:10:38'),
(13, 'uploads/house/2016/08/08/13', 'Kos cowok muslim mantap', 500000, 220, 'Sumatera Utara', 'Medan', 'Jl.abdul hakim no 39 Komplek grand medelaine', '<p>Buruan hanya tinggal 2 kamar lagi, lengkap tempat tdr lemari kipas angin/ac, ruang tv,carport,dapur, security komplek 24 jam, dekat usu, univ.medan area panca budi, dll</p>\r\n', '3.5594694', '98.65116169999999', 'Joni', '082373424244', '2016-08-08 15:16:47', '2016-08-08 15:16:47'),
(14, 'uploads/house/2016/09/09/14', 'Kos Murah Wanita Baik Baik', 150000, 12, 'Sumatera Utara', 'Medan', 'Jalan kemiri 3 no 16', '<p>Fasiltas kamar lengkap, spring bed, lemari pakaian, kipas angin, sprei bantal, meja belajar, galon air minum, kursi, kamar mandi dalam, fasilitas bersama: tv, setrika, magic jar,dapur, teras, grasi motor ...fasiltas pendukung : lingkungan aman, nyaman, dekat jalan besar, dekat pangkalan ojek, dekat pangkalan angkot, dekat jajanan makanan, dekat bengkel motor honda, dekat alfamart, dekat indomaret, dekat sman 10, dekat univ terbuka, dekat univ palembang, dekat unsri, dekat atm, Dekat kursus GO, dll fasilitas yg rata rata sangat dekat pusat perbelanjaan pasar dan mal mal di palembang,berminat hubungi Ke Nomor HP User Profile Ibu Desi...tinggal 2 kamar..tahunan lebih murah,bisa pasang ac listrik terpisah menjadi tanggung jawab pemakai, harga nego.</p>\r\n', '3.6128673', '98.62170070000002', 'Yanto', '08223415553', '2016-09-09 02:50:59', '2016-09-09 02:50:59'),
(15, 'uploads/house/2016/09/09/15', 'Kos Cowok ganteng', 12000, 15, 'Sumatera Utara', 'Medan', 'jalan Subur', '<p>Kos ini hanya untuk orang ganteng yang kurang ganteng minggir</p>\r\n', '3.5607616999999867', '98.66783926931157', 'Gatot Bajamusti', '0817223455', '2016-09-09 08:47:11', '2016-09-09 08:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `house_images`
--

CREATE TABLE `house_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `house_id` int(10) UNSIGNED NOT NULL,
  `cover` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `house_images`
--

INSERT INTO `house_images` (`id`, `house_id`, `cover`, `path`, `image_file`, `sort`) VALUES
(13, 6, 0, 'uploads/house/2016/07/19/6', '12201470660237.jpg', 2),
(14, 6, 1, 'uploads/house/2016/07/19/6', '16891470660164.jpg', 1),
(15, 5, 1, 'uploads/house/2016/07/18/5', '19991470660320.jpg', 1),
(16, 4, 0, 'uploads/house/2016/07/18/4', '1611470660372.jpg', 2),
(17, 4, 1, 'uploads/house/2016/07/18/4', '18491470660375.jpg', 1),
(18, 3, 0, 'uploads/house/2016/07/18/3', '16571470660451.jpg', 3),
(19, 3, 1, 'uploads/house/2016/07/18/3', '1941470660437.jpg', 1),
(20, 2, 1, 'uploads/house/2016/07/18/2', '14151470660489.jpg', 1),
(21, 1, 1, 'uploads/house/2016/07/18/1', '12191470660624.jpg', 1),
(22, 7, 1, 'uploads/house/2016/08/08/7', '16331470660822.jpg', 1),
(23, 7, 0, 'uploads/house/2016/08/08/7', '16601470660837.jpg', 2),
(24, 8, 1, 'uploads/house/2016/08/08/8', '14521470661198.png', 1),
(25, 9, 1, 'uploads/house/2016/08/08/9', '11621470667430.jpg', 1),
(26, 10, 1, 'uploads/house/2016/08/08/10', '16251470668021.jpg', 1),
(27, 11, 1, 'uploads/house/2016/08/08/11', '17261470668530.jpg', 1),
(28, 13, 0, 'uploads/house/2016/08/08/13', '15481470669375.jpg', 2),
(29, 13, 1, 'uploads/house/2016/08/08/13', '15871470669270.jpg', 1),
(30, 14, 1, 'uploads/house/2016/09/09/14', '16171473389445.jpg', 1),
(31, 15, 1, 'uploads/house/2016/09/09/15', '1471473410554.jpg', 1),
(32, 15, 0, 'uploads/house/2016/09/09/15', '17821473410573.jpg', 2),
(33, 12, 1, 'uploads/house/2016/08/08/12', '12961473413073.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_300000_create_users_table', 1),
('2016_07_15_211425_create_houses_table', 1),
('2016_07_15_211440_create_facilities_table', 1),
('2016_07_15_212210_create_house_images_table', 1),
('2016_07_15_212752_create_facility_to_house_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admins', 'admin@carikoskaka.com', '$2y$10$kDnSFSEa4vnoWANEx8V4JutGpCjfYe7gFtcNikPDYwvGPfCM.Z5Ka', NULL, '0000-00-00 00:00:00', '2016-07-17 04:13:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility_house`
--
ALTER TABLE `facility_house`
  ADD KEY `facility_house_facility_id_foreign` (`facility_id`),
  ADD KEY `facility_house_house_id_foreign` (`house_id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house_images`
--
ALTER TABLE `house_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_images_house_id_foreign` (`house_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `house_images`
--
ALTER TABLE `house_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `facility_house`
--
ALTER TABLE `facility_house`
  ADD CONSTRAINT `facility_house_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facility_house_house_id_foreign` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `house_images`
--
ALTER TABLE `house_images`
  ADD CONSTRAINT `house_images_house_id_foreign` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
