**1. Penjelasan tipe data pada bahasa pemrograman Dart**
Seperti pada bahasa pemrograman pada umumnya, dart memiliki 2 jenis tipe data.
1. Tipe data primitif
   - int (Merupakan tipe data yang digunakan untuk menyimpan )
   - double (Double)
   - float (Float)
   - bool (boolean)
2. Tipe Non-primitif/Struktural
   - String
   - Map
   - List
   - List of (map/string/int/double/etc.)

**2. Variabel pada bahasa pemrograman Dart**
Variabel merupakan suatu tempat penyimpanan yang digunakan untuk menampung data data di memori, variabel memiliki nama dan juga memiliki tipe data yang sudah kita deklarasikan. Pada bahasa pemrograman Dart, ada beberapa cara dalam mendeklarasikan variabel:
1. ***tipe_data nama_variabel***. Pada umumnya, cara penulisan variabel pada bahasa pemrograman dart itu seperti bahasa pemrograman pada umumnya, diawali dengan menentukan tipe data *(int, double, String, List, etc)* di depannya, lalu diikuti dengan nama variabelnya. Misalnya, *int number* (variabel tersebut variabel bertipe data integer, yang dimana isi dari variabel tersebut hanya bisa kita isi dengan tipe bilangan bulat saja).
2. Menggunakan keyword ***var***. (Tipe dari variabel yang diawalnya menggunakan keyword *var*, akan mengikuti sesuai isi dari datanya, jika data yang kita masukkan kedalam variabel tersebut merupakan data bilangan bulat, maka tipe data dari variabel tersebut *int/integer*).
3. Menggunakan keyword ***final***. Bahasa pemrograman Dart juga memiliki variabel yang nilai variabel tersebut bersifat tetap dan tidak bolah dirubah atau biasa kita sebut *constant*. Jika di depan nama variabel kita menggunakan keyword ***final***, maka variabel tersebut bersifat tetap dan tidak bisa dirubah kedepannya.

**3. Operator pada bahasa pemrograman Dart**. Operator merupakan intruksi yang dilakukan untuk mengolah data. Ada beberapa jenis operator yang ada pada bahasa pemrograman Dart.
1. Operator *Arithmetic/Aritmatika* (Operator ini digunakan untuk perhitungan matematis), Berikut jenis operator aritmatika pada bahasa pemrograman dart.
   - **+** (digunakan untuk melakukan penjumlahan)
   - **-** (digunakan untuk melakukan pengurangan)
   - **bintang(*)** (digunakan untuk melakukan perkalian)
   - **/** (digunakan untuk melakukan pembagian)
   - **%** (digunakan untuk mendapatakan nilai dari hasil sisa bagi)
2. Operator *Assignment* (Operator ini digunakan untuk melakukan penugasan untuk memasukkan nilai kedalam suatu variabel). Berikut jenis operator *assignment* pada bahasa pemrograman dart.
   - **=** (digunakan untuk memasukkan nilai kedalam suatu variabel)
   - **+=** (digunakan untuk menjumlahkan nilai dengan nilai variabel saat ini)
   - **-=** (digunakan untuk mengurangkan nilai dengan nilai variabel saat ini)
   - ***=** (digunakan untuk mengalikan nilai dengan nilai variabel saat ini)
   - **/=** (digunakan untuk membagi nilai dengan nilai variabel saat ini)
   - **%=** (digunakan untuk mendapatkan nilai modulus dengan hasil pembagian dari nilai variabel saat ini)
3. Operator *Comparison* (Oeprator ini digunakan untuk melakukan perbandingan pada dua nilai variabel atau lebih). Berikut jenis operator *comparison* pada bahasa pemrograman dart.
   - **==** (digunakan untuk membandingkan apakah kedua variabel sama nilainya atau tidak)
   - **<=** (digunakan untuk membandingkan apakah variabel pertama itu kurang dari atau sama dengan variabel kedua)
   - **>=** (digunakan untuk membandingkan apakah variabel pertama itu lebih dari atau sama dengan variabel kedua)
   - **<** (digunakan untuk membandingkan apakah variabel pertama itu kurang dari variabel kedua)
   - **>** (digunakan untuk membandingkan apakah variabel pertama itu lebih dari variabel kedua)
   - **!=** (digunakan untuk membandingkan apakah variabel pertama itu tidak sama dengan variabel kedua)
4. Operator *Logical/logika* (Operator ini digunakan untuk memeriksa kesamaan dari dua data atau lebih. Sehingga nilai yang dihasilkan dari operator loogika itu nilai bertipe *boolean(True/False)*). Berikut jenis operator logika pada bahasa pemrograman dart.
   - **&& (AND)** (Operator ini menghasilkan nilai logika benar yaitu "True" jika kedua operand bernilai benar).
   - **|| (OR)** (Operator ini menghasilkan nilai logika benar yaitu "True" jika salah satu dari operand bernilai benar).
   - **! (NOT)** (Operator ini membalikkan keadaan logis operannya, jika kondisi true maka operator **!** akan menghasilkan nilai *false*).

