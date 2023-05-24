-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 05:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka1`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg',
  `sinopsis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`, `sinopsis`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 18, -11, 0, 'img1557402455.jpg', 'Bahan ajar pendamping ini terdiri dari 6 bagian, yaitu perhitungan validalitas dan realibilitas dengan excel, cara cepat menghitung validitas dan realibilitas dengan excel, uji normalitas dan homogenitas dengan excel, uji hipotesis komparatif dengan minitab 14 dan uji hipotesis asosiatif korelasi dan regresi'),
(2, 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 21, -11, -2, 'img1557402397.jpg', 'Kecil-kecil sudah jago main komputer, kok bisa? Tentu saja bisa, jika putra-putri Anda mau berlatih secara rutin. Nah, sebagai sarana pembelajaran, buku komputer ini sangatlah berguna.\r\nBuku ini disusun oleh seorang guru yang telah bertahun-tahun berkecimpung di dunia pendidikan komputer untuk anak. Oleh karena itu, materi yang disajikan di dalam buku ini sudah benar teruji.\r\nMelalui buku ini, belajar komputer terasa mudah, bahkan tanpa guru/pembimbing sekalipun. Tahapan atau proses pembelajaran komputer dirancang untuk anak-anak. Sehingga, mereka tidak mengalami kesulitan.\r\nSelain belajar komputer, buku ini juga dapat berguna untuk perkembangan motorik dan daya imajinasi, serta kreasi anak.'),
(5, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 25, -11, -1, 'img1555522493.jpg', 'PHP merupakan pemrograman wajib bagi para web developer. Buku ini menjelaskan PHP sejak dari dasar hingga pemrograman web berbasis database. Bahasan-bahasan di dalam buku ini meliputi:\r\n\r\n\r\n– Persiapan pemrograman PHP\r\n– Pengenalan terhadap variabel dan tipe data\r\n– Memanfaatkan array dalam pemrograman\r\n– Kondisional dan perulangan\r\n– Pengenalan function dan memanfaatkan built-in function pada PHP\r\n– Form dan pemrograman PHP\r\n– Pentingnya session dan cookies dalam pemrograman web\r\n– Pemrograman database\r\n– Mengenal berbagai macam query untuk database\r\n– Pengenalan user privileges dalam pemrograman database\r\n– Manajemen database\r\n\r\nBuku ini menyediakan hampir sebagian besar teori yang Anda butuhkan untuk mengenal PHP dan segala kemampuannya. Dengan demikian, Anda bisa mengenali PHP secara cepat dan langsung mempraktikkannya untuk membuat aplikasi website.'),
(10, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke Minori', 'Cultura', 2016, '874387583987', 25, -11, -2, 'img1557401465.jpg', 'Mengawali kisah dari sosok remaja laki-laki bernama Shinichi Kudo, ia dikenal sebagai detektif muda yang kerap membantu kawanan kepolisian dalam mengusut tuntas berbagai kasus. Terlebih untuk kasus-kasus misterius, Shinichi seakan punya trik khusus sehingga mampu memecahkan kasus tersebu'),
(14, 'Bahasa Indonesia', 2, 'Umri Nur\'aini dan Indriyani', 'Pusat Perbukuan', 2015, '757254724884', 12, 0, 0, 'img1557402703.jpg', 'Bahasa Indonesia Sekolah Dasar Kelas Pahlawan 2 143 Daftar Pustaka BSNP. 2006. Standar Kompetensi dan Kompetensi Dasar Mata Pelajaran Bahasa Indonesia Kelas 2 Sekolah Dasar dan Madrasah Ibtidaiyah. Jakarta: Depdiknas. Fauzi, Harry D. 2005. Sastra Indonesia T eori dan Apresiasi. Bogor: Yudhistira. Moeliono, Anton M. 2001. Kamus Besar Bahasa Indonesia. Jakarta: Balai Pustaka. Suyatno, Suyono, dkk. 2003. Antologi Puisi Indonesia Modern Anak-Anak. Jakarta: Yayasan Obor Indonesia. Suyatno. 2005. Permainan Pendukung Pembelajaran Bahasa dan Sastra. Jakarta: Grasindo. Waluyo, Herman J. 2001. Drama Teori dan Pengajarannya. Yogyakarta: Hanindita Graha Widia. Wiyanto, Asul. 2005. Kesusastraan Sekolah. Jakarta: Grasindo. Majalah, Surat Kabar, dan Internet: Majalah Bobo, Jakarta. Majalah Ino, Jakarta. Kompas, Jakarta. www1.moe.edu.sg www.saptapari.co.id http://erabaru.or.id Http:// wikibooks.or.id'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 19, 0, 0, 'img1557403156.jpg', 'Komunikasi lintas budaya adalah proses di mana dialihkan ide atau gagasan suatu budaya yang satu kepada budaya yang lainnya dan sebaliknya, dan hal ini bisa antar dua kebudayaan yang terkait ataupun lebih, tujuannya untuk saling memengaruhi satu sama lainnya, baik itu untuk sebuah kebaikan kebudayaan maupun untuk menghancurkan suatu kebudayaan, atau bisa jadi tahap awal dari proses akulturasi (penggabungan dua kebudayaan atau lebih yang menghasilkan kebudayaan baru).'),
(16, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan CMS', 1, 'Anton Subagia', 'Elex Media komputindo', 2017, '43345356577', 19, -9, 0, 'img1557403502.jpg', 'Codeigniter merupakan sebuah framework yang sangat berguna bagi seseorang yang ingin membangun aplikasi berbasis web menggunakan PHP, sedangkan Ajax merupakan teknik komunikasi ke server untuk mengatasi permasalahan pada web tradisional. Dapat dibayangkan bagaimana jika keduanya digabungkan untuk membangun sebuah aplikasi, tentu akan menghasilkan aplikasi dengan respon cepat.\r\nBuku ini akan membahas tentang pengenalan Codeigniter secara singkat dan mudah, teknik dasar Ajax, kolaborasi Ajax dengan jQuery, teknik dasar Codeigniter, kolaborasi Codeigniter dengan Ajax dan juga operasi CRUD dengan Ajax. Pada bagian akhir buku akan dibahas pembuatan CMS sebagai contoh studi kasusnya, yakni membangun web berita berbasis Codeigniter, serta Teknik Aplikatif pendukungnya seperti Penggunaan IonAuth sebagai security login, Photo Gallery, Upload dan Download File, serta Integrasi Bootstrap sebagai template yang digunakan agar responsif di berbagai ukuran layar gadget.\r\nSebagai bonus, diberikan juga trik Codeigniter seperti validasi input, delete massal, integrasi TinyMce sebagai editor WYSIWYG, Selectizer, pengamanan pada web, dan lainnya.\r\n'),
(17, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 8, 0, 0, 'img1557403658.jpg', 'Siapa sih, yang nggak mau punya penghasilan sendiri biar masih sekolah? Siapa yang nggak mau bisa dapat “gaji” tambahan biar cuma dari rumah? Kalau bicara tentang penghasilan tambahan, tentu semua orang akan suka. Apalagi buat kamu-kamu yang sela ma ini masih mengandalkan uang saku dari orangtua. Greget banget kan rasanya, saat kita pengin beli smartphone versi terbaru, sementara uang saku cuma cukup buat ngisi perut selama seminggu? Nah, buku ini deh solusinya! Berisi tentang bagaimana meman faatkan hobi menjadi salah satu sumber penghasilan yang mengasyikkan.'),
(18, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 13, 0, 0, 'img1557404613.jpg', 'Buku saku pramuka merupakan buku kecil yg dapat diletakan di dalam saku setiap anggota pramuka, sehingga praktis digunakan oleh anggota pramuka. Isinya meliputi materi kepramukaan dasar, sehingga anggota pramuka dapat terbantu dalam setiap aktifitasnyadalam menjawab pertanyaan yg berupa sandi atau pengetahuan umum. Buku saku pramuka sangat mudah dipahami sehinga cocok untuk panduan setiap anggoya pramuka.'),
(19, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 13, 0, 0, 'img1557404689.jpg', 'Alam memiliki banyak cerita menarik dengan segala fenomena yang ada/terjadi di dalamnya. Keajaiban alam dengan segala isinya, terjadi baik di langit maupun di bumi. Cerita Alam yang telah menjadi ketentuan dari Sang Pencipta terangkum indah dalam kitab suci Al-Qur\'an. Mengantarkan kita bisa mensyukuri nikmat karunia-Nya. Buku ini merupakan kelanjutan dari serial Amazing yang telah ada. Dalam seri Keajaiban Bumi ini akan diperkenalkan beberapa benda dan fenomena yang berhubungan dengan bumi.'),
(20, 'Buku Pintar Puasa Wajib dan Sunnah Sepanjang Masa', 7, 'Ali Hasan', 'Luxima', 2011, '32342342344234', 13, 0, 0, 'img1557404775.jpg', 'Puasa memang ibadah langsung seorang hamba dengan Tuhannya, tetapi manfaatnya dapat dirasakan langsung oleh pelakunya. Banyak manfaat luar biasa di balik puasa yang dapat dirasakan di dunia, mulai dari kesehatan, kebahagiaan, maupun untuk kesejahteraan hidup.\r\n\r\nPuasa yang baik dan benar tentu bukan hanya menahan lapar dan haus. Ada aturan main yang harus dipatuhi; ada anjuran yang sebaiknya dilakukan; ada larangan yang harus ditinggalkan; ada juga hal-hal yang sejatinya tidak membatalkan puasa, tetapi bisa menghapus pahala dan manfaat puasa yang Anda lakukan.\r\n\r\nJika Anda menginginkan puasa yang sempurna demi mendapatkan pahala dan manfaat yang sebesar-besarnya, buku ini layak Anda jadikan sebagai pedoman. Buku ini sengaja disajikan untuk membantu Anda meraih kesempurnaan puasa, baik puasa wajib maupun sunnah.\r\n'),
(21, 'Aspek Hukum dalam Penelitian', 6, 'Rianto Adi', 'Buku Obor', 2015, '7565646455757', 11, 0, 0, 'img1557404853.jpg', 'Tidak seperti ilmu-ilmu empiris lainnya, ilmu hukum yang mengkaji norma-norma dan keharusa dalam hidup tidak bisa dibuktikan kebenaran temu-temuannya sebagaimana yang diinginkan oleh sarjana-sarjana dalam bidang ilmu pengetahuan positif empiris. Sebagai ilmu normatif, ilmu hukum memiliki cara kerja dan pengujian yang khas. Kebenarannya hanya dapat dipastikan dalam kesadaran masing-masing orang yang menghadapinya sebagai gejala yang tidak dapat dielakkan. Namun begitu, tidak dapat disangkal bahwa ilmu hukum memberikan bantuan penting dalam memecahkan persoalan-persoalan dalam kehidupan sosial.\r\nBuku ini dengan cermat menyoroti berbagai aspek dan permasalahan mendasar dalam penelitian hukum seperti tersebut diatas, baik hukum barat maupun hukum Islam. Pokok-pokok masalah tsb antara lain ialah karakteristik penelitian hukum, cara menguji pendekatan dan kebenaran hukum, hukum dalam perspektif fislafat ilmu, dan kontradiksi hukum dan pemecahannya.\r\nApa yang tersaji dalam buku ini kiranya tidak boleh dilewatkan oleh para mahasiswa, dosen, peneliti, dan praktisi hukum. Selain itu, dala kecenderungan semakin pelik dan carut-marutnya permasalahan hukum dewasa ini, masyarakat awam pun dapat memperoleh perspektif hukum yang mencerahkan dari buku ini.\r\n'),
(22, 'Belajar Mudah Pemrograman Web dengan Framework Codeigniter', 1, 'Imam Nawawi, Frans Edward S, Andriansah', 'Graha Ilmu', 2019, '12314213432', 13, 0, 0, 'img1580209540.PNG', 'Codeigniter merupakan sebuah framework yang sangat berguna bagi seseorang yang ingin membangun aplikasi berbasis web menggunakan PHP, sedangkan Ajax merupakan teknik komunikasi ke server untuk mengatasi permasalahan pada web tradisional. Dapat dibayangkan bagaimana jika keduanya digabungkan untuk membangun sebuah aplikasi, tentu akan menghasilkan aplikasi dengan respon cepat.\r\nBuku ini akan membahas tentang pengenalan Codeigniter secara singkat dan mudah, teknik dasar Ajax, kolaborasi Ajax dengan jQuery, teknik dasar Codeigniter, kolaborasi Codeigniter dengan Ajax dan juga operasi CRUD dengan Ajax. Pada bagian akhir buku akan dibahas pembuatan CMS sebagai contoh studi kasusnya, yakni membangun web berita berbasis Codeigniter, serta Teknik Aplikatif pendukungnya seperti Penggunaan IonAuth sebagai security login, Photo Gallery, Upload dan Download File, serta Integrasi Bootstrap sebagai template yang digunakan agar responsif di berbagai ukuran layar gadget.\r\nSebagai bonus, diberikan juga trik Codeigniter seperti validasi input, delete massal, integrasi TinyMce sebagai editor WYSIWYG, Selectizer, pengamanan pada web, dan lainnya.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`no_pinjam`, `id_buku`, `denda`) VALUES
('05022020001', 1, 5000),
('05022020001', 2, 5000),
('05022020001', 10, 5000),
('05022020002', 1, 5000),
('05022020002', 5, 5000),
('05022020003', 5, 5000),
('30042023004', 5, 5000),
('30042023001', 16, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik'),
(10, 'Dewasa'),
(12, 'Kids');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') NOT NULL DEFAULT 'Pinjam',
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`no_pinjam`, `tgl_pinjam`, `id_booking`, `id_user`, `tgl_kembali`, `tgl_pengembalian`, `status`, `total_denda`) VALUES
('30042023001', '2023-04-30', '30042023001', 21, '2023-05-01', '2023-04-30', 'Kembali', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admministrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) NOT NULL,
  `email_user` varchar(128) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
