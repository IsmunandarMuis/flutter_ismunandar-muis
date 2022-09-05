**1. Async-Await**
        
    Async merupakan keyword yang ditulis pada fungsi yang menjalankan suatu proses tanpa perlu harus menunggu dan tidak perlu menghalangi fungsi lain yang sedang berjalan sedangkan await merupakan keyword yang akan menunggu sampai proses async selesai.

**2. Tipe Data Future**
    
    Future merupakan salah satu keyword yang disediakan oleh bahasa pemrogramana dart pada sebuah fungsi, yang berguna untuk mengembalikan nilainya pada proses di waktu yang akan datang. Sesuai namanya 'future' berarti masa depan atau diwaktu yang akan datang.

**3. Collection**
    
    Collection merupakan tipe data yang menyimpan suatu kumpulan data atau biasa juga disebut struktur data. Pada bahasa pemrograman dart ada beberapa tipe collection yang biasa digunakan, yaitu:

    1. List
       List representasi beberapa data yang bertipe sama disimpan dalam suatu variabel. Untuk mengakses data yang disimpan di dalam list kita bisa mengambilnya dengan menyebutkan nama index dari data yang kita maksud. Index di dalam list dimulai dari angka 0 (nol), dimana jika di dalam list kita mempunya 3 data maka indexnya itu dimulai dari (0, 1, 2).

       Contoh penggunaan List
       //inisialisasi list of integer
       List<int> dataNumber = [1, 2, 3, 4];

       //mengakses data nomor 3
       print(dataNumber[2])

    2. Map
       Tipe data map merupakan kumpulan data yang disimpan dalam suatu variabel yang dimana datanya itu mempunyai pasangan berupa key dan value. Jika di list kita mengakses datanya itu dengan menyebutkan index dari data tersebut, pada tipe data Map, jika kita ingin mengakses data di dalamnya, kita harus menyebutkan key dari data tersebut.

       Contoh penggunaan Map
       //ininsialisasi Map yang mempunyai key bertipe data string dan value bertipe data integer
       Map<String,int> dataNumber = {
        "satu"  : 1,
        "dua"   : 2,
        "tiga"  : 3,
        "empat" : 4,
       };

       //mengakses value 1, dengan menyebutkan key "satu"
       print(dataNumber["satu"])