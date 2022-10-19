UI Testing merupakan pengujian yang dilakukan pada tampilan aplikasi yang bertujuan untuk memastikan apakah aplikasi dapat menerima interaksi dan memberikan respon kepada pengguna.

**UI Testing di Flutter**

    Pada Flutter UI Testing itu disebut juga sebagai widget testing sehingga pengujiannya dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis.

**Keuntungan UI Testing**

    Memastikan seluruh widget memberi tampilan yang sesuai 
    Memastikan seluruh interaksi dapat diterima dengan baik 
    Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget.

**Cara penggunaan package testing**

**Instalasi Package Testing**

    Pada umumnya, package testing sudah terinstall secara otomatis ketika project pertama kali dibuat. 
    Penulisan Script Testing 
    ```
    Dilakukan pada folder Test 
    Nama file harus diikuti _test.dart (contoh contact_test.dart) 
    Setiap file itu berisi fungsi main() yang didalamnya dapat dituliskan script testing 
    Tiap skenario pengujian disebut test case.

    Script Testing 
    ```
    Test case diawali dengan testWidgets dan diberi judul
    Simulasi proses mengaktifkan halaman
    AboutScreen
    Memeriksa apakah di halaman tersebut terdapat teks "About Screen"
    ```
    Menjalankan Testing 
    ```
    Perintah flutter test akan menjalankan seluruh file test yang dibuat
    Hasil dari perintah ini adalah lamanya waktu pengujian, total penqujian yang dilakukan, dan pesan bahwa pengujian berhasil
