<div align="center">

# 🩺 PulseCare

**Sistem Informasi Manajemen Pasien Rawat Jalan**

Kelola pasien, pendaftaran kunjungan, dan pemeriksaan medis dalam satu program yang rapi dan terintegrasi.

![Java](https://img.shields.io/badge/Java-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![Swing](https://img.shields.io/badge/Java_Swing-5382A1?style=flat-square&logo=openjdk&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Maven](https://img.shields.io/badge/Maven-C71A36?style=flat-square&logo=apachemaven&logoColor=white)
![NetBeans](https://img.shields.io/badge/NetBeans-1B6AC6?style=flat-square&logo=apachenetbeanside&logoColor=white)
![Status](https://img.shields.io/badge/Status-Proyek_Pembelajaran-2ea44f?style=flat-square)

</div>

---

## 1. Tentang PulseCare

**PulseCare** merupakan sistem informasi pelayanan pasien rawat jalan yang dirancang untuk mempermudah proses administrasi dan pelayanan kesehatan. Sistem ini mencakup pengelolaan data pasien, pendaftaran kunjungan, antrean, pemeriksaan dokter, pencatatan rekam medis, diagnosis, serta resep obat sehingga proses pelayanan pasien dapat berjalan lebih teratur dan terstruktur.


---

## 2. Fitur Utama

Fitur dibagi berdasarkan peran pengguna agar setiap orang fokus pada tugasnya.

| Peran | Yang Dapat Dilakukan |
|---|---|
| **Admin** | - Mengakses dashboard admin<br> - Mengelola akun pengguna sesuai hak akses |
| **Petugas** | - Melihat ringkasan informasi di dashboard<br> - Menambah, mengubah, mencari, dan melihat data pasien<br> - Mendaftarkan kunjungan pasien ke poliklinik<br> - Mencatat keluhan awal saat pendaftaran<br> - Melihat riwayat kunjungan pasien |
| **Dokter** | - Melihat dashboard dan antrean pasien<br> - Melihat keluhan awal yang dicatat petugas<br> - Mengisi hasil pemeriksaan dan diagnosis<br> - Mencatat resep obat dan catatan tindak lanjut<br> - Memperbarui status kunjungan |

### 3. Cuplikan Fitur

<table>
  <tr>
    <td align="center" width="33%">
<img width="1204" height="813" alt="WhatsApp Image 2026-11-08 at 00 14 11" src="https://github.com/user-attachments/assets/442c2d75-4fae-4bd1-a6f1-2bbd379496ce" />


<br>
      <sub><b>Dashboard Admin</b></sub>
    </td>
    <td align="center" width="33%"><img width="1203" height="820" alt="WhatsApp Image 2026-11-08 at 00 16 49" src="https://github.com/user-attachments/assets/bc72f2a3-407f-44a8-a6ac-ad91beb68de1" />


<br>
      <sub><b>Mencatat Daftar Kunjungan</b></sub>
    </td>
    <td align="center" width="33%">
<img width="1011" height="686" alt="WhatsApp Image 2026-11-07 at 23 55 21 (1)" src="https://github.com/user-attachments/assets/1f460bef-7a24-42eb-a2a2-a196b8a3d465" />


<br>
      <sub><b>Pemeriksaan Pasien</b></sub>
    </td>
  </tr>
</table>

---

## 4. Alur Kerja
1. Login
2. **(Petugas)** kelola data pasien
3. **(Petugas)** daftarkan kunjungan dan catat keluhan awal
4. **(Dokter)** lihat antrean pasien
5. **(Dokter)** isi pemeriksaan, diagnosis, dan resep obat
6. Status kunjungan diperbarui
7. Riwayat kunjungan tersimpan
   
---

## 5. Tech Stack

Berikut merupakan teknologi yang digunakan dalam proses pengembangan program **PulseCare**.

| Kategori | Teknologi | Keterangan |
|---|---|---|
| Bahasa Pemrograman | Java | Digunakan untuk membangun logika dan proses pada program PulseCare. |
| IDE | Apache NetBeans | Digunakan untuk menulis, menjalankan, dan mengembangkan program Java. |
| Tampilan program | Java Swing | Digunakan untuk membuat antarmuka program desktop. |
| Perancang GUI | NetBeans Swing GUI Builder | Membantu merancang tampilan program secara visual. |
| Database | MySQL | Digunakan untuk menyimpan dan mengelola data sistem. |
| Pengelolaan Database Lokal | Laragon | Digunakan untuk menjalankan dan mengelola database MySQL di lingkungan lokal. |
| Perancangan Database | Oracle SQL Developer Data Modeler | Digunakan untuk merancang dan memvisualisasikan struktur serta hubungan antar tabel database. |
| Version Control | Git dan GitHub | Digunakan untuk mengelola versi kode dan berkolaborasi dalam pengembangan proyek. |
| Build dan Dependency Management | Maven | Digunakan untuk mengelola konfigurasi project, proses build, dan library tambahan. |
| Desain UI/UX | Figma | Digunakan untuk merancang tampilan dan alur antarmuka program. |
| Desain Visual | Canva | Digunakan untuk membuat kebutuhan desain visual proyek. |

### Library Tambahan

Selain teknologi di atas, **PulseCare** juga menggunakan beberapa library tambahan untuk mendukung proses pengembangan program.

| Library | Versi | Keterangan |
|---|---|---|
| MySQL Connector/J | 8.4.0 | Menghubungkan program Java dengan database MySQL melalui JDBC. |
| AbsoluteLayout | RELEASE310 | Membantu mengatur posisi dan tata letak komponen pada antarmuka Java Swing. |

---

## 6. Perancangan Sistem

Diagram berikut dibuat sebagai gambaran sebelum program dikembangkan.
### 6.1 Use Case

### 6.2 Flowchart
<details>
<summary>1. Flowchart Login</summary>

<img width="1683" height="1515" alt="Usecase dan Flowchart-Menu Utama drawio" src="https://github.com/user-attachments/assets/a56831da-64b2-425a-b42e-c7c6b56778d1" />

Proses PulseCare dimulai dari Menu Utama, tempat pengguna dapat memilih Login atau Keluar. Pengguna yang login harus memasukkan username dan password yang akan divalidasi oleh sistem melalui database. Jika gagal, sistem memberikan maksimal tiga kali percobaan sebelum akun dikunci sementara selama 10 detik. Jika berhasil, pengguna diarahkan ke dashboard sesuai role, yaitu Admin untuk mengelola akun, Petugas untuk mengelola data dan kunjungan pasien, serta Dokter untuk mengelola antrean, melihat riwayat, dan mencatat hasil pemeriksaan. Setiap pengguna dapat melakukan logout untuk mengakhiri sesi dan kembali ke Menu Utama.
</details>

<details>
<summary>2. Flowchart Dashboard Admin</summary>
<img width="1040" height="348" alt="Usecase dan Flowchart-Dashboard Admin drawio" src="https://github.com/user-attachments/assets/a8567bf9-d8c7-4201-9eda-f799d117c1e4" />

flowchart untuk dashboard admin. Proses dimulai saat Admin Sistem memasuki Dashboard Admin. Sistem menampilkan ringkasan akun dan aktivitas akun terbaru. Admin Sistem kemudian dapat memilih menu Kelola Akun User untuk mengelola akun pengguna. Jika memilih Ya, sistem akan mengarahkan Admin Sistem ke halaman Kelola Akun User. Jika memilih Tidak, Admin Sistem dapat melakukan logout untuk mengakhiri sesi login.
</details>

<details>
<summary>3. Flowchart Dashboard Petugas</summary>

<img width="1966" height="365" alt="Dashboard Petugas drawio" src="https://github.com/user-attachments/assets/aa55985b-78cd-4d90-8186-a58f061798ea" />
Dashboard Petugas menampilkan ringkasan kunjungan dan antrean pasien hari ini. Petugas dapat mengelola data pasien, mendaftarkan kunjungan ke poliklinik, memperbarui status kunjungan, serta melihat riwayat kunjungan pasien. Jika seluruh aktivitas selesai, Petugas dapat melakukan logout untuk mengakhiri sesi.
</details>

<details>
<summary>4. Flowchart Dashboard Dokter</summary>

<img width="1605" height="365" alt="Dashboard Dokter drawio" src="https://github.com/user-attachments/assets/b3fbffd5-620e-455c-b095-4751d91680c6" />
Dashboard Dokter menampilkan informasi pasien berikutnya dan daftar antrean sesuai poliklinik tempat dokter bertugas. Dokter dapat melihat dan memeriksa pasien melalui menu Antrean Dokter, memperbarui status kunjungan, serta melihat riwayat kunjungan pasien. Setelah selesai, Dokter dapat melakukan logout untuk mengakhiri sesi.
</details>

<details>
<summary>5. Flowchart (Admin) Kelola Akun User</summary>

<img width="2753" height="2685" alt="(Admin) Kelola Akun User drawio" src="https://github.com/user-attachments/assets/e73bd7c3-1bd3-47c0-9548-efd9aa5fa123" />
Proses pengelolaan akun dimulai saat Admin membuka halaman Kelola Akun User. Sistem menampilkan daftar akun beserta fitur pencarian, tambah, ubah, dan nonaktifkan akun. Saat menambahkan akun, Admin mengisi nama, username, password, dan role, kemudian sistem memvalidasi kelengkapan serta keunikan username. Jika data valid, sistem menetapkan hak akses sesuai role, menyimpan akun ke database, dan menampilkan notifikasi keberhasilan.
</details>

<details>
<summary>6. Flowchart (Petugas) Kelola Data Pasien</summary>

<img width="2687" height="2410" alt="(Petugas 1) Kelola Data Pasien drawio" src="https://github.com/user-attachments/assets/94387ab2-5394-43fe-914c-36ba076ccb48" />
Proses pengelolaan data pasien dimulai saat Petugas membuka halaman Kelola Data Pasien. Sistem menampilkan daftar pasien beserta fitur pencarian, tambah, ubah, dan hapus data. Petugas dapat menambahkan pasien baru, memperbarui data pasien melalui formulir yang akan divalidasi sebelum disimpan ke database, serta menghapus data pasien jika tidak memiliki kunjungan aktif. Petugas juga dapat mencari data berdasarkan nama, NIK, atau ID pasien. Jika data ditemukan, sistem menampilkannya pada tabel, sedangkan jika tidak, sistem memberikan pemberitahuan bahwa pasien tidak ditemukan. Setelah selesai, Petugas dapat kembali ke Dashboard Petugas.
</details>

<details>
<summary>7. Flowchart (Petugas) Tambah Pasien Baru</summary>

<img width="2026" height="1045" alt="(Petugas) Tambah Pasien Baru  drawio" src="https://github.com/user-attachments/assets/b727ef01-7745-4057-9a9e-e7cc99563630" />
tambah pasien dimulai saat Petugas memilih menu Tambah Pasien Baru dan mengisi formulir data pasien. Sistem kemudian memvalidasi nomor telepon agar terdiri dari 10–13 digit dan NIK sebanyak 16 digit serta belum terdaftar. Jika seluruh data valid, sistem membuat ID pasien dan menyimpan data ke database. Setelah berhasil disimpan, sistem menampilkan notifikasi dan memberikan pilihan untuk melanjutkan ke pendaftaran kunjungan atau kembali ke halaman Kelola Data Pasien. Jika penyimpanan gagal, sistem menampilkan pesan kegagalan dan mengarahkan Petugas kembali ke halaman Kelola Data Pasien.
</details>

<details>
<summary>8. Flowchart (Petugas) Daftarkan Kujungan bagian 1</summary>

<img width="1745" height="1175" alt="(Petugas 2) Daftarkan Kunjungan drawio" src="https://github.com/user-attachments/assets/8ee1e9c7-b67a-4fa7-bf25-d8c8736beafc" />
Daftarkan Kunjungan dimulai saat Petugas membuka menu Daftarkan Kunjungan. Sistem menampilkan formulir pendaftaran untuk mengisi data pasien dan informasi kunjungan. Petugas memilih pasien yang akan melakukan kunjungan, kemudian mengisi keluhan awal serta data lain yang diperlukan. Setelah data dilengkapi, Petugas menyimpan pendaftaran. Sistem memeriksa kelengkapan data. Jika data belum lengkap, sistem menampilkan pesan agar Petugas memperbaikinya. Jika data sudah sesuai, sistem menyimpan data kunjungan ke database dan menampilkan pemberitahuan bahwa pendaftaran berhasil.
</details>

<details>
<summary>9. Flowchart (Petugas) Daftarkan Kujungan bagian 2</summary>
Sistem menampilkan daftar pasien yang tersedia untuk dipilih. Petugas memilih pasien, kemudian mengisi informasi kunjungan, termasuk keluhan awal pasien. Setelah data dikirim, sistem melakukan validasi terhadap data yang dimasukkan. Jika data tidak lengkap atau tidak sesuai, sistem menampilkan pesan kesalahan agar Petugas melakukan perbaikan. Jika data valid, sistem menyimpan kunjungan ke database. Data kunjungan yang berhasil disimpan selanjutnya dapat digunakan dalam proses pelayanan pasien, seperti antrean dokter dan pemeriksaan.
<img width="1968" height="1325" alt="Daftarkan Kunjungan (2) drawio" src="https://github.com/user-attachments/assets/03def17e-4d46-4c89-a364-b4e835304610" />

</details>

<details>
<summary>10. Flowchart (Petugas dan Dokter) Lihat Riwayat kunjungan </summary>

<img width="1082" height="1320" alt="(Petugas dan Dokter) Lihat Riwayat Kunjungan drawio" src="https://github.com/user-attachments/assets/2c8bad01-1a44-4f90-aa32-38f6d98eab81" />
Lihat Riwayat Kunjungan dimulai saat Petugas atau Dokter membuka menu Lihat Riwayat Kunjungan. Sistem menampilkan kolom pencarian dan filter berdasarkan waktu pendaftaran untuk mencari data kunjungan. Jika waktu pendaftaran diisi, sistem menampilkan riwayat kunjungan yang berisi tanggal pendaftaran, poliklinik, dokter, nomor antrean, dan status kunjungan. Jika pencarian tidak diisi, sistem memberikan pesan bahwa belum ada riwayat kunjungan. Setelah selesai melihat data, pengguna dapat kembali ke dashboard sesuai dengan perannya, yaitu Dashboard Petugas atau Dashboard Dokter.
</details>

<details>
<summary>11. Flowchart (Petugas dan Dokter) Perbarui Status Kunjungan. </summary>

<img width="2709" height="1447" alt="Petugas dan Dokter) Perbarui Status Kunjungan drawio" src="https://github.com/user-attachments/assets/a9b6b5a0-df0e-43b5-933d-d477687ef49e" />
Perbarui Status Kunjungan dimulai saat Petugas atau Dokter membuka menu Perbarui Status Kunjungan. Sistem menampilkan daftar kunjungan pasien hari ini yang berisi nomor antrean, nama pasien, dokter, dan status kunjungan. Pengguna dapat memilih kunjungan dan mengubah status menjadi Menunggu, Sedang Diperiksa, atau Selesai. Sebelum disimpan, sistem memvalidasi status dan memeriksa apakah data telah diubah oleh pengguna lain. Jika tidak ada kendala, sistem menyimpan perubahan ke database dan menampilkan notifikasi keberhasilan.
</details>

<details>
<summary>12. Flowchart (Dokter) Antrean Dokter </summary>
  
<img width="2105" height="1131" alt="(Dokter 1) Antrean Dokter drawio" src="https://github.com/user-attachments/assets/1bae8d65-bf86-4ca5-9438-2ef02ccab93d" />
Antrean Dokter dimulai saat Dokter membuka menu Antrean Dokter untuk melihat daftar pasien dengan status Menunggu. Sistem menampilkan informasi nomor antrean, nama pasien, keluhan, dan status kunjungan. Dokter kemudian memilih pasien yang akan diperiksa. Sistem akan memeriksa apakah kunjungan tersebut sedang dibuka oleh dokter lain. Jika belum, sistem mengunci kunjungan untuk dokter yang sedang login dan mengubah statusnya menjadi Sedang Diperiksa. Selanjutnya, Dokter diarahkan ke Form Pemeriksaan untuk mencatat keluhan, hasil pemeriksaan, diagnosis, resep obat, serta catatan tindak lanjut jika diperlukan.
</details>

<details>
<summary>13. Flowchart (Dokter) Form Pemeriksaan </summary>
  
<img width="1434" height="1830" alt="(Dokter) Form Pemeriksaan drawio" src="https://github.com/user-attachments/assets/1cf4d14b-1bbf-4b2e-ae96-1d9a741cdf92" />
Form Pemeriksaan dimulai setelah Dokter memilih pasien dari halaman Antrean Dokter. Sistem menampilkan data pasien dan riwayat singkat sebagai referensi pemeriksaan. Dokter kemudian mengisi hasil pemeriksaan dan diagnosis, serta menambahkan resep obat dan catatan tindak lanjut jika diperlukan. Sebelum pemeriksaan diselesaikan, sistem memvalidasi kelengkapan hasil pemeriksaan dan diagnosis. Jika data sudah lengkap, sistem menyimpan seluruh hasil pemeriksaan ke database dan mengubah status kunjungan menjadi Selesai. Setelah itu, Dokter diarahkan kembali ke halaman Antrean Dokter untuk melayani pasien berikutnya.
</details>

### 6.3 ERD (Entity Relationship Diagram)

<details>
<summary>Logical</summary>
<br>
<img width="2760" height="1486" alt="Logical_pulse" src="https://github.com/user-attachments/assets/4a16c888-ad42-4a80-95a9-a439865d49db" />
Diagram logical database pada sistem PulseCare menggambarkan hubungan antarentitas, yaitu pegawai, admin, petugas, dokter, shift, pasien, poliklinik, riwayat_kunjungan, dan hasil_kunjungan. Pegawai memiliki beberapa peran, yaitu admin, petugas, dan dokter. Petugas memiliki shift dan menangani pendaftaran kunjungan pasien. Setiap pasien dapat memiliki beberapa riwayat kunjungan yang terhubung dengan poliklinik. Kunjungan tersebut juga dapat ditangani oleh dokter dan menghasilkan data pemeriksaan berupa keluhan, diagnosis, resep obat, serta catatan tindak lanjut. Hubungan antarentitas ini membantu menggambarkan alur pengelolaan data pasien dan pelayanan kesehatan secara terstruktur dalam sistem PulseCare.
</details>

<details>
<summary>Relational</summary>
<br>

</details>

---

## 7. Struktur Folder/Package MASIH BELUM FIX)))))

```text
PulseCare/
│
├── lib/
│   └── unknown/
│       └── binary/
│           └── AbsoluteLayout/
│               └── SNAPSHOT/
│                   └── AbsoluteLayout-SNAPSHOT.jar
│
├── src/
│   └── main/
│       ├── java/
│       │   ├── config/
│       │   │   ├── KoneksiDB.java
│       │   │   └── TestKoneksiDB.java
│       │   │
│       │   ├── controller/
│       │   │   ├── AdminController.java
│       │   │   ├── KunjunganController.java
│       │   │   ├── LoginController.java
│       │   │   ├── PasienController.java
│       │   │   ├── PemeriksaanController.java
│       │   │   └── RiwayatKunjunganController.java
│       │   │
│       │   ├── main/
│       │   │   └── Main.java
│       │   │
│       │   ├── model/
│       │   │   ├── Admin.java
│       │   │   ├── Akun.java
│       │   │   ├── Dokter.java
│       │   │   ├── HasilKunjungan.java
│       │   │   ├── Pasien.java
│       │   │   ├── Petugas.java
│       │   │   ├── Poliklinik.java
│       │   │   ├── RiwayatKunjungan.java
│       │   │   ├── Shift.java
│       │   │   │
│       │   │   └── dao/
│       │   │       ├── AdminDAO.java
│       │   │       ├── AntreanDokterDAO.java
│       │   │       ├── HasilKunjunganDAO.java
│       │   │       ├── KunjunganDAO.java
│       │   │       ├── LoginDAO.java
│       │   │       ├── PasienDAO.java
│       │   │       ├── ReferensiDAO.java
│       │   │       └── RiwayatKunjunganDAO.java
│       │   │
│       │   └── view/
│       │       ├── AntreanDokter.java
│       │       ├── AntreanDokter.form
│       │       ├── DaftarkanKunjungan.java
│       │       ├── DaftarkanKunjungan.form
│       │       ├── DashboardAdmin.java
│       │       ├── DashboardAdmin.form
│       │       ├── DashboardDokter.java
│       │       ├── DashboardDokter.form
│       │       ├── DashboardPetugas.java
│       │       ├── DashboardPetugas.form
│       │       ├── DetailKunjungan.java
│       │       ├── DetailKunjungan.form
│       │       ├── FormAkun.java
│       │       ├── FormAkun.form
│       │       ├── FormPasien.java
│       │       ├── FormPasien.form
│       │       ├── FormPemeriksaan.java
│       │       ├── FormPemeriksaan.form
│       │       ├── KelolaAkun.java
│       │       ├── KelolaAkun.form
│       │       ├── KelolaPasien.java
│       │       ├── KelolaPasien.form
│       │       ├── Login.java
│       │       ├── Login.form
│       │       ├── MainFrame.java
│       │       ├── MainFrame.form
│       │       ├── MenuUtama.java
│       │       ├── MenuUtama.form
│       │       ├── PerbaruiStatus.java
│       │       ├── PerbaruiStatus.form
│       │       ├── RiwayatKunjungan.java
│       │       └── RiwayatKunjungan.form
│       │
│       └── resources/
│           ├── Admin 70x70.png
│           ├── Dokter 50x50.png
│           ├── Dokter 70x70.png
│           ├── Dokter_40x40.png
│           ├── Hapus akun.jpg.jpeg
│           ├── Logo PulseCare 256x256.png
│           ├── Logo PulseCare sedang tanpa tulisan.png
│           ├── Logo PulseCare sedang.png
│           ├── Modern Hospital Entrance and Wayfinding.png
│           ├── bg form.png
│           ├── hapus akun besar.png
│           ├── orang navy baru.jpg
│           ├── orang pulsecare yg bener.png
│           ├── petugas_40x40.png
│           ├── pulsecare_profile_icon_50.png
│           ├── tambah akun.png
│           └── ubah akun.png
│
└── pom.xml
```

### 7.1 Struktur Package

Berikut merupakan struktur package yang digunakan dalam pengembangan program PulseCare beserta fungsinya.

| Package | Fungsi |
|---|---|
| `config` | Menyimpan konfigurasi dan pengaturan koneksi program ke database MySQL. |
| `controller` | Mengatur proses progam dan menghubungkan tampilan dengan pengolahan data. |
| `main` | Menjadi titik awal untuk menjalankan program PulseCare. |
| `model` | Menyimpan class yang mewakili data atau objek dalam sistem, seperti Pasien, Dokter, Petugas, dan Poliklinik. |
| `model.dao` | Mengelola proses pengambilan, penambahan, perubahan, dan penghapusan data pada database. |
| `view` | Menyimpan tampilan program yang dibuat menggunakan Java Swing dan NetBeans GUI Builder. |
| `resources` | Menyimpan aset pendukung tampilan program, seperti logo, ikon, gambar, dan background. |

---

## 8. Penerapan Konsep OOP

PulseCare dibuat dengan konsep Object-Oriented Programming atau OOP. Empat konsep utamanya:

| Konsep | Penjelasan |
|---|---|
| **Encapsulation** | Membatasi akses langsung ke atribut class. Atribut dibuat `private` dan diakses lewat getter/setter. |
| **Inheritance** | Pewarisan atribut dan method dari class induk ke turunannya. Contoh: `Akun` sebagai induk dari `Admin`, `Dokter`, dan `Petugas` bila rancangan ini diterapkan. |
| **Polymorphism** | Method yang sama berperilaku berbeda tergantung objeknya, misalnya lewat method yang di-override class turunan. |
| **Abstraction** | Menampilkan bagian penting dan menyembunyikan detail proses, melalui `abstract class` atau `interface`. |

### 8.1 Encapsulation (Enkapsulasi)

**Contoh implementasi:**
```java
kode
```

### 8.2 Inheritance (Pewarisan)
Pada PulseCare, inheritance diterapkan pada class Admin yang mewarisi class Pegawai melalui penggunaan extends Pegawai.
Class Admin dapat menggunakan atribut dan method yang sudah tersedia pada class Pegawai, seperti NIP, nama lengkap, password, status akun, serta getter dan setter. Selain itu, class Admin memiliki atribut tambahan berupa username.
Penggunaan super() digunakan untuk memanggil constructor dari class Pegawai, sehingga atribut umum pegawai dapat diinisialisasi tanpa perlu ditulis ulang. Sementara itu, method getPeran() di-override untuk menentukan peran pengguna sebagai "Admin".
Dengan penerapan ini, class Admin dapat menggunakan data umum dari Pegawai sekaligus memiliki atribut dan peran khusus sebagai Admin.

**Contoh implementasi:**
```java
Admin:

package model;

public class Admin extends Pegawai {

    private String username;

    public Admin() {
        super();
    }

    public Admin(String nip, String namaLengkap, String username,
                 String password, String statusAkun) {

        super(nip, namaLengkap, password, statusAkun);
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String getPeran() {
        return "Admin";
    }
}
```
### 8.3 Polymorphism (Polimorfisme)

**Contoh implementasi:**
```java
kode
```
### 8.4 Abstraction (Abstraksi)
Pada PulseCare, abstraction diterapkan melalui class Pegawai yang dideklarasikan menggunakan keyword abstract. Class ini menjadi dasar bagi class turunannya, seperti Admin, Dokter, dan Petugas, dengan menyediakan atribut dan method umum yang dimiliki setiap pegawai.
Salah satu method yang terdapat di dalamnya adalah getPeran() yang dideklarasikan sebagai method abstrak. Method ini tidak memiliki isi di class Pegawai, sehingga setiap class turunan harus memberikan implementasinya masing-masing sesuai peran pengguna.
Dengan penerapan ini, class Pegawai menjadi tempat penyimpanan struktur umum pegawai, sedangkan class turunannya menentukan peran masing-masing dalam sistem PulseCare.

**Contoh implementasi:**
```java
package model;

public abstract class Pegawai {

    private String nip;
    private String namaLengkap;
    private String password;
    private String statusAkun;

    public Pegawai() {
    }

    public Pegawai(String nip, String namaLengkap, String password, String statusAkun) {
        this.nip = nip;
        this.namaLengkap = namaLengkap;
        this.password = password;
        this.statusAkun = statusAkun;
    }

    public String getNip() {
        return nip;
    }

    public void setNip(String nip) {
        this.nip = nip;
    }

    public String getNamaLengkap() {
        return namaLengkap;
    }

    public void setNamaLengkap(String namaLengkap) {
        this.namaLengkap = namaLengkap;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatusAkun() {
        return statusAkun;
    }

    public void setStatusAkun(String statusAkun) {
        this.statusAkun = statusAkun;
    }

    public boolean aktif() {
        return "Aktif".equalsIgnoreCase(statusAkun);
    }

    public abstract String getPeran();
}
```

---

## 9. Cara Penggunaan Program

### 9.1 Persiapan Sebelum Menjalankan Program

- [x] JDK sesuai kebutuhan project
- [x] Apache NetBeans
- [x] MySQL (bisa dijalankan lewat Laragon)
- [x] Database PulseCare beserta tabel yang dibutuhkan
- [x] Dependency project, termasuk MySQL Connector/J

### 9.2 Langkah Menjalankan program

1. Buka **Laragon**, lalu jalankan **MySQL**.
2. Pastikan database **PulseCare** sudah dibuat dan tabelnya tersedia.
3. Buka project PulseCare melalui **Apache NetBeans**.
4. Periksa konfigurasi koneksi database.
5. Jalankan project dari NetBeans.
6. Login menggunakan akun yang sudah terdaftar.

### 9.3 Cara Penggunaan Fitur program
### 1. Menu Utama
<img width="600" height="413" alt="Screenshot 2026-11-08 002920" src="https://github.com/user-attachments/assets/483ecb80-2b2d-4ef3-bb38-88e5e725d231" />


1. Jalankan program PulseCare.
   
2. unggu hingga halaman Menu Utama muncul.

3. Klik tombol Masuk untuk melanjutkan ke halaman Login.

4. Jika tidak ingin menggunakan program, klik tombol Keluar untuk menutup program.

### 2. Login
<img width="599" height="410" alt="Screenshot 2026-11-08 002942" src="https://github.com/user-attachments/assets/dd4fb52c-51e8-4f05-a920-5899c84570da" />


1. Setelah menekan tombol Masuk, halaman Login akan ditampilkan

2. Masukkan Username/NIP pada kolom yang tersedia

3. Masukkan Password sesuai dengan akun yang terdaftar

4. klik tombol login


5. Sistem akan memeriksa kecocokan data akun yang terdaftar

6. Jika data benar, pengguna akan diarahkan ke dashboard sesuai role

7. jika data salah, sistem menampilkan pemberitahuan bahwa Username atau Password tidak sesuai

### 3. Dashboard Admin
<img width="1204" height="813" alt="WhatsApp Image 2026-11-08 at 00 14 11" src="https://github.com/user-attachments/assets/236d1c3f-1b2b-4daf-986a-693fd094e18d" />


1. Login menggunakan akun dengan role Admin

2. Sistem akan menampilkan Dashboard Admin

3. Pilih menu Kelola Akun untuk mengelola akun

4. Pilih menu Kelola Data Pasien untuk mengelola informasi pasien

### 4. Kelola Akun
<img width="604" height="416" alt="image" src="https://github.com/user-attachments/assets/4690c391-4853-4552-85fd-60805dda2f95" />

1. Buka menu Kelola Akun.

2. Sistem menampilkan daftar akun pengguna.

3. Pilih fungsi tambah atau ubah akun sesuai kebutuhan.

4. Isi informasi akun pada formulir.

5. Tentukan role pengguna, seperti Admin, Petugas, atau Dokter.

6. Simpan perubahan.

7. Sistem menyimpan data akun ke database.

### 5. Form Pasien
<img width="302" height="401" alt="image" src="https://github.com/user-attachments/assets/82703fa9-bd8c-430b-8e60-4d759b5305f7" />


1. Buka menu Kelola Pasien.

2. Sistem menampilkan daftar pasien.

3. Pilih pasien untuk melihat atau mengubah datanya.

4. Untuk menambahkan pasien, buka formulir pasien.

5. Isi identitas pasien sesuai informasi yang tersedia.

6. Simpan data pasien.

7. Sistem menyimpan perubahan ke database.
   
### 6. Dashboard Petugas 
<img width="1204" height="826" alt="WhatsApp Image 2026-11-07 at 22 38 27" src="https://github.com/user-attachments/assets/f4e6bdb6-ac08-4c74-b802-1ead809bb577" />




1. Login menggunakan akun dengan role Petugas.

2. Sistem menampilkan Dashboard Petugas.

3. Pilih menu Kelola Data Pasien atau Daftarkan Kunjungan sesuai kebutuhan.

### 7.Mendaftaran Kunjungan
<img width="1207" height="816" alt="WhatsApp Image 2026-11-07 at 22 45 03 (1)" src="https://github.com/user-attachments/assets/6e4f81ea-f1bf-4ec2-94ee-80f7fa574873" />




1. Buka menu Daftarkan Kunjungan.

2. Masukkan identitas pasien pada kolom pencarian.

3. Klik tombol pencarian untuk menemukan data pasien.

4. Jika pasien sudah terdaftar, pilih data pasien tersebut.

5. Jika pasien belum terdaftar, tambahkan pasien melalui formulir FormPasien.java.

6. Pilih poliklinik tujuan sesuai kebutuhan kunjungan.

7. Lengkapi informasi pendaftaran.

8. Simpan pendaftaran kunjungan.

9. Sistem mencatat kunjungan dan memberikan nomor antrean kepada pasien.


### 8. Dashboard Dokter
<img width="1209" height="819" alt="WhatsApp Image 2026-11-07 at 23 56 08 (1)" src="https://github.com/user-attachments/assets/c36f91b3-d434-444f-8fca-92ae0a7c3c12" />


1. Login menggunakan akun dengan role Dokter.

2. Sistem menampilkan Dashboard Dokter.

3. Pilih menu Antrean Dokter untuk melihat pasien yang menunggu pemeriksaan.

### 9. Antrean Dokter
<img width="1201" height="828" alt="WhatsApp Image 2026-11-07 at 23 56 19" src="https://github.com/user-attachments/assets/2d1f1c87-ebad-4eaa-84a7-284e58944c01" />


1. Buka menu Antrean Dokter.

2. Sistem menampilkan daftar pasien yang memiliki kunjungan.

3. Perhatikan nomor antrean dan informasi pasien.

4. Pilih pasien yang akan diperiksa.

5. Sistem memeriksa apakah kunjungan sedang dibuka oleh dokter lain.

6. Jika tidak ada konflik, sistem membuka data kunjungan untuk proses pemeriksaan.

### 10. Pemeriksaan Ke Pasien
<img width="1011" height="686" alt="WhatsApp Image 2026-11-07 at 23 55 21 (1)" src="https://github.com/user-attachments/assets/25b664e1-9a2a-46f2-aab7-f471d45bedf0" />


1. Buka formulir pemeriksaan pasien yang dipilih.

2. Periksa informasi dan riwayat kunjungan pasien.

3. Masukkan keluhan pasien.

4. Catat hasil pemeriksaan.

5. Masukkan diagnosis berdasarkan hasil pemeriksaan.

6. Jika diperlukan, tambahkan resep obat.

7. Masukkan tindak lanjut apabila diperlukan.

8. Periksa kembali data yang telah diisi.

9. Klik tombol simpan untuk menyimpan hasil pemeriksaan.

10. Sistem menyimpan hasil pemeriksaan dan memperbarui status kunjungan menjadi Selesai.

### 11. Riwayat Kunjungan
<img width="1201" height="817" alt="WhatsApp Image 2026-11-08 at 00 17 05 (1)" src="https://github.com/user-attachments/assets/c7db5980-4311-41da-88e8-da208045a78e" />




1. Buka menu Riwayat Kunjungan.

2. Masukkan informasi pencarian sesuai kolom yang tersedia.

3. Lakukan pencarian data kunjungan.

4. Sistem menampilkan riwayat kunjungan pasien jika data ditemukan.

5. Periksa tanggal kunjungan, poliklinik, dokter, nomor antrean, dan status kunjungan.
  
6. Pilih data untuk di edit atau di hapus.


---

## 10. Anggota Kelompok

| No. | Nama | NIM |
|:---:|---|---|
| 1 | Ghea Aisyah Windrawari | 2509116022 |
| 2 | Noor Hamsyah Pratama | 2509116046 |
| 3 | Condrado Alain Sharon | 2509116069 |
| 4 | Nurul Shafa Azizah | 2509116112 |

---

<div align="center">

<sub>PulseCare dikembangkan sebagai proyek pembelajaran untuk menerapkan pemrograman Java, konsep OOP, pengelolaan database, dan pembuatan antarmuka program desktop.</sub>

</div>
