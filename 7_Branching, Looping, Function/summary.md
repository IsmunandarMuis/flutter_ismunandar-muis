**1. Cara membuat pengambilan keputusan di bahasa pemrograman Dart**
Pengambilan keputusan digunakan untuk menentukan alur program menggunakan kondisi tertentu, yang dimana kondisi yang dimasukkan harus berupa nilai yang mengembalikan nilai *Benar/Salah(True/False)* atau *boolean (bool)*. Dalam bahasa pemrograman dart, dibahasa pemrograman dart kita biasa menggunakan *if statement* untuk membuat keputusan terhadap kondisi tertentu pada suatu nilai.

Struktur pembuatan *if statement*

*if statement dengan 1 kondisi*

if (kondisi) {

    program yang di jalankan ketika kondisi bernilai true
} 
else {
    
    program yang dijalankan ketika kondisi bernilai false
}

*if statement dengan 2 atau lebih kondisi*

if (kondisi 1) {

    statement yang di jalankan ketika kondisi di atas bernilai true
} 
else if (kondisi 2) {
    
    statement yang dijalankan ketika kondisi bernilai kondisi 1 bernilai false
}
else if (kondisi 3) {

    statement yang dijalankan ketika kondisi bernilai kondisi 2 bernilai false
} else if (kondisi 4) {

    statement yang dijalankan ketika kondisi bernilai kondisi 3 bernilai false
} else {

    statement yang dijalankan ketika semua kondisi 1, 2, 3, dan 4 bernilai false
}


**2. Perulangan pada bahasa pemrograman Dart**

Perulangan atau looping merupakan proses menjalankan sebuah statement secara berulang-ulang dengan kondisi tertentu. Di bahasa pemrograman *Dart* ada 3 jenis perulangan yang biasa digunakan.


1. For Loop
   
   Pada saat menggunakan perulangan *for*, setidaknya ada beberapa kondisi yang akan kita dapati:

    - Mengetahui berapa kali perulangan terjadi
    - Memerlukan nilai awal
    - Memerlukan nilai *bool*, jika *true* maka perulangan akan dilanjutkan
    - Memerlukan pengubah nilai


    **Struktur perulangan for:**   
    
   for(nilai_awal; kondisi_atau_nilai_bool; pengubah_nilai_awal) {

        statement akan berulang jika kondisi bernilai true

   }

   **contoh:**

   for(var i = 0; i < 10; i++) {
        
        print(i);
   }

2. While Loop
   
   Pada saat menggunakan perulangan *While Loop*, setidaknya ada beberapa kondisi yang akan kita dapati:


   - Tidak diketahui berpa kali perulangan terjadi
   - Memerlukan nilai *bool*, jika true maka perulangan dilanjutkan

    **Struktur perulangan while:**   

   while(kondisi_atau_nilai_bool) {

        statement akan berulang jika kondisi bernilai true

   }

   **contoh:**

    var i  = 0;

   while(i < 10) {
        
        // Menampilkan nilai 'i' tiap perulangan terjadi
        print(i);
        i++
   }

3. Do While Loop
   
      Pada saat menggunakan perulangan *Do-While Loop*, setidaknya ada beberapa kondisi yang akan kita dapati:

   - Proses pemanggilan statement yang ada di dalam perulangan akan dipanggil minmal sekali, jika kondisi bernilai true maka pemanggilan statement akan terus berlanjut.

    **Struktur perulangan do-while:**   

   do {

        statement akan dipanggil minimal sekali dan akan berulang jika kondisi bernilai true

   } while(kondisi);

   **contoh:**

    var i  = 0;

   while(i < 10) {
        
        //Menampilkan nilai 'i' tiap perulangan terjadi
        print(i);
        i++
   } while(i < 10);

**3. Cara pembuatan fungsi pada bahasa pemrograman Dart**
Fungsi merupakan kumpulan kode yang dapat digunakan ulang pada program.

Jenis fungsi :

- Fungsi yang tidak mengembalikan nilai
        
        void halo() {
            print("Halo")
        }
    
- Fungsi mengembalikan nilai

        int tambah(int nilai1, int nilai2) {
            var hasil = nilai1 + nilai2;
            return hasil;
        }

Pemanggilan fungsi:

        void main() {
            halo(); //akan mencetak kata "halo" sesuai yang ada di tulisakan pada fungsi

            var hasil = tambah(10,5); //akan megembalikan nilai hasil penjumlahan dari '10+5' dan disimpan di dalam variabel 'hasil'

            print(hasil); //akan mencetak angka 15
        }