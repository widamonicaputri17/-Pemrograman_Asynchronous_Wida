# WIDA MONICA PUTRI
## 2A (362358302008)
-------------------------------------------------------------------------
# PRAKTIKUM 1
## SOAL 3
substring(0, 450)
Tujuan: Memotong hasil respons API agar hanya menampilkan 450 karakter pertama.
Penjelasan:
substring(0, 450): Mengambil bagian dari string mulai dari karakter pertama hingga karakter ke-450 (karakter ke-451 tidak termasuk).
#
catchError((_) {...})
Tujuan: Menangani kesalahan jika ada masalah saat mengambil data dari API.
Penjelasan:
catchError: Digunakan untuk menangani kesalahan saat melakukan request HTTP.
_: Menunjukkan bahwa parameter kesalahan tidak digunakan.
Jika ada kesalahan, result diubah menjadi 'An error occurred' dan antarmuka diperbarui dengan setState().
#
![prak 1 langkah 4](https://github.com/user-attachments/assets/83fe0722-7d3a-4124-af04-f7069347436b)
#
![hasil prak 1](https://github.com/user-attachments/assets/e682276c-831b-475f-b227-0a54efdaa30c)
#
---------------------------------------------------------------------------------------------------------------------
# PRAKTIKUM 2
## SOAL 4
Kode Langkah 1 mendefinisikan 3 fungsi asinkron yang menunggu selama 3 detik sebelum mengembalikan angka (1, 2, atau 3).
#
Kode Langkah 2 mengelola pemanggilan fungsi-fungsi ini secara berurutan menggunakan await, yang memungkinkan program menunggu hasil setiap fungsi asinkron, menjumlahkan hasilnya, dan memperbarui UI dengan hasil akhir.
#
![hasil pak 2](https://github.com/user-attachments/assets/14cd7e5d-4912-4959-9529-08d31f7f8329)
#
---------------------------------------------------------------------------------------------------------------
# PRAKTIKUM 3
## SOAL 5
# late Completer completer :
Mendeklarasikan variabel Completer yang akan digunakan untuk menyelesaikan operasi asinkron yang diwakili oleh Future<int>.
#
# Future getNumber() { ... }
Fungsi ini membuat instance Completer<int> dan memanggil fungsi calculate() yang akan menjalankan tugas asinkron.
Mengembalikan completer.future, yang akan diresolve nanti (setelah completer.complete(42) dipanggil).
#
# Future calculate() async { ... }
Fungsi ini mensimulasikan delay selama 5 detik menggunakan Future.delayed(), setelah itu menyelesaikan completer dengan nilai 42.
Setelah completer.complete(42) dipanggil, semua Future yang bergantung pada completer.future akan menerima nilai tersebut.
## SOAL 6
Penanganan Error:
# Langkah 2: Tidak ada penanganan error; operasi hanya berhasil atau berhenti jika terjadi error.
# Langkah 5-6: Menggunakan try-catch untuk menangkap error, dan error tersebut diteruskan kepada pemanggil untuk ditangani menggunakan catchError.
#
Robustness (Ketahanan terhadap error):
# Langkah 2: Rentan terhadap crash atau kegagalan tidak terduga karena tidak ada mekanisme untuk mengelola error.
# Langkah 5-6: Lebih tahan terhadap error dengan menangkap dan mengelolanya menggunakan mekanisme try-catch di calculate() dan catchError di getNumber.
#
Respons Pengguna:
# Langkah 2: Jika terjadi error, aplikasi mungkin tidak memberikan respons yang jelas kepada pengguna.
# Langkah 5-6: Aplikasi dapat memberikan respons yang lebih informatif (seperti pesan error "An error occurred") kepada pengguna.
#
![hasil prak 3](https://github.com/user-attachments/assets/3f3c376a-b3cd-40ed-a752-c8ed873f1085)
#
-------------------------------------------------------------------------------------------------------------
# PRAKTIKUM 4
![soal 7 praktikum 4](https://github.com/user-attachments/assets/91aae98e-a707-4c91-99fd-1e4ddf001f27)
## SOAL 8
# Langkah 1: Menggunakan FutureGroup
Kontrol Lebih: menambahkan Future secara manual dengan add() dan menutup grup dengan .close().
Lebih Kompleks: Membutuhkan lebih banyak kode dan pengelolaan manual.
Dari Paket Eksternal: Memerlukan paket async.
# Langkah 4: Menggunakan Future.wait
Lebih Sederhana: cukup memberikan daftar Future dan Future.wait menunggu semuanya selesai.
Tanpa Pengelolaan Ekstra: Tidak perlu menambahkan atau menutup Future secara manual.
Built-in: Sudah tersedia dalam pustaka standar Dart.
#
---------------------------------------------------------------------------------------------------------------
# PRAKTIKUM 5
![soal 9 praktikum 5](https://github.com/user-attachments/assets/853b86ae-0496-4eae-aa63-9f414fc1abd9)
#
![hasil praktikum 5](https://github.com/user-attachments/assets/facbeb8c-b3b3-48cb-af27-3937770bd27a)
#
## SOAL 10
# 
Langkah 1 (returnError) hanya membuat dan melemparkan error, tanpa menangani error tersebut. Fungsinya bertujuan untuk menghasilkan error yang bisa diproses di tempat lain.
#
Langkah 4 (handleError) menangani error yang dilempar oleh returnError. Fungsi ini mengelola dan menangani pengecualian (error) dengan menggunakan mekanisme try-catch dan menjalankan tindakan tambahan dalam blok finally.
#
------------------------------------------------------------------------------------------------------------------------------
# PRAKTIKUM 6
![prak 6 langkh 7](https://github.com/user-attachments/assets/350061f8-0efa-4584-85f3-30625f543725)
![prak 6 langkah 8](https://github.com/user-attachments/assets/cec322fd-c0c9-4cb4-b529-23fbec08e3fd)
## SOAL 12
## koordinat GPS muncul saat dijalankan di browser
#
1. Browser Mengakses Geolocation API: Aplikasi kemungkinan menggunakan Geolocation API bawaan browser untuk mengambil lokasi pengguna. Browser akan meminta izin dari pengguna sebelum mengakses lokasi.
#
2. Perangkat Mendukung GPS: Jika perangkat yang digunakan memiliki fitur GPS aktif atau terkoneksi ke jaringan yang mendukung pelacakan lokasi (seperti Wi-Fi atau jaringan seluler), browser dapat menentukan koordinat.
#
3. Lokasi Localhost: Karena aplikasi dijalankan di localhost, sistem kemungkinan menggunakan informasi lokasi perangkat lokal
#
-------------------------------------------------------------------------------------------------------------------------
# PRAKTIKUM 7
## SOAL 13
UI pada praktikum sekarang terlihat lebih dinamis karena menggunakan pendekatan declarative dengan FutureBuilder. Pendekatan ini lebih modern dan memanfaatkan fitur bawaan Flutter untuk menangani data asynchronous, sehingga kode lebih rapi dan skalabel.
#
![prak 7 akhir](https://github.com/user-attachments/assets/26eda457-2a39-48c1-bbc1-f3b75e443673)
#
-------------------------------------------------------------------------------------------------------------------------
# PRAKTIKUM 8
## SOAL 16
## Warna Berubah Setiap Tombol Ditekan
#
Navigator.pop mengembalikan hasil (dalam hal ini, warna) dari layar NavigationSecondke layar NavigationFirst.
Ketika Navigator.popdipanggil, warna yang dipilih ditangani oleh kode di NavigationFirst(di dalam fungsi _navigateAndGetColor) dan disimpan dalam variabel color.
#
setState() dipanggil untuk memperbarui widget yang tergantung pada warna tersebut, yaitu backgroundColordi Scaffold. Fungsi setStateini memberi tahu Flutter untuk membangun kembali bagian UI yang dipengaruhi oleh perubahan status, dalam hal ini warna lata
Widget di-build ulang dengan warna baru yang diteruskan dari layar kedua.
## UI dapat berubah
Hal ini terjadi karena setStateberfungsi untuk memberitahu framework Flutter bahwa ada perubahan dalam status (dalam hal ini, perubahan warna).
#
![prak 8 01](https://github.com/user-attachments/assets/669a5ffc-4899-480d-950a-de4849ecf970)
#
![prak 8 02](https://github.com/user-attachments/assets/380a29f3-bf63-43ff-8c59-8421dcf3ab6e)
#
![prak 8 03](https://github.com/user-attachments/assets/b7baf9d5-4729-4198-97f8-95d1590e0715)
#
![prak 8 04](https://github.com/user-attachments/assets/d928150b-2193-49a8-87dc-c432e3021143)
#
--------------------------------------------------------------------------------------------------------------------------
# PRAKTIKUM 9
## SOAL 17
#
Mengklik setiap tombol mengubah warna latar belakang layar karena nilai properti color diperbarui menggunakan setState.
#
Dialog memastikan pengguna membuat pilihan karena dialog tidak bisa ditutup dengan mengetuk di luar area dialog (barrierDismissible: false).
#
Semua perubahan pada UI dijalankan secara instan karena Flutter bersifat reaktif: state yang diperbarui langsung tercermin di layar.
#
![prak 9 01](https://github.com/user-attachments/assets/860763dc-a0b9-4b1c-b9d3-1e0c999b5389)
#
![prak 9 02](https://github.com/user-attachments/assets/5487f533-c128-4231-8ba7-7728c5f0517a)
#
![prak 9 03](https://github.com/user-attachments/assets/56d1b1f3-4f20-4e47-9f26-6bf22bf4ac08)
#
![prak 9 04](https://github.com/user-attachments/assets/46be6e7f-987e-425d-8c72-4f9efcd2b390)






