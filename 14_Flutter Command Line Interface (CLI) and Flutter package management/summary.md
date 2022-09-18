**1. Apa itu Flutter Command Line Interface (CLI)**
        
    Flutter CLI adalah alat yang digunakan untuk atau perintah yang digunakan dalam terminal atau command line interface (CLI) untuk berinteraksi langsung dengan Flutter SDK, seperti melihat versi SDK, membuat project, menambahkan packages, dan lain-lain.
**2. Command atau perintah yang ada di Flutter (CLI)**

    Ada beberapa command yang ada pada flutter CLI
    1. Flutter Doctor
       - Perintah untuk menampilakan informasi software yang dibutuhkan oleh SDK Flutter kita. Perintah ini juga biasa digunakan untuk mengecek informasi dari versi flutter SDK yang kita punya.
    2. Flutter Create
       - Perintah yang digunakan untuk membuat project aplikasi flutter di directory tertentu.
    3. Flutter Run
       - Perintah yang digunakan untuk menjalanka project aplikasi pada device atau emulator yang tersedia.
    4. Flutter Emulator
       - Perintah yang digunakan untuk mengecek daftar emulator yang terinstall.
    5. Flutter Channel
       - Digunakan untuk menamilkan daftar channel yang tersedia dan menunjukkan channel yang terinstall atau sedang digunakan saat ini.
    6. Flutter Pub
       - Flutter pub add digunakan untuk menambahkan dependencies ke dalam file yang bernama pubspec.yaml
       - Flutter pub get digunakan untuk mendownload semua dependencies yang ada di dalam file pubspec.yaml
    7. Flutter Build
       - Perintah yang digunkaan untuk memproduksi sebuah file aplikasi untuk keperluan tertentu, baik itu testing di real device maupun publish ke PlayStore, AppStore.
    8. Flutter Clean
       - Digunakan untuk menghapus folder atau build serta dependencies yang dipakai saat ini atau yang dihasilakan saat kita menjalankan aplikasi di emulator.
**3. Flutter packages** 

    Flutter packages digunakan agar kita bisa lebih terbantu dalam menggunakan code-code yang bersifat open-source atau yang sudah di buat oleh orang lain yang terdaftar di website pub.dev. Cara menambahkan packages ekstrnal ke dalam pubspec.yaml yaitu dengan cara kita mengcopy nama packages yang ada di website pub.dev ke dalam file pubspec.yaml kemudian paste di bawah kata 'dependencies' dan indentasinya itu sejajar dengan kata 'flutter'. Selain cara yang pertama, kita juga bisa memanfaatkan command dari flutter pub, yaitu dengan cara mengetik kata 'Flutter pub add <nama_dependencis/packages>', maka secara otomatis packages yang kita inginkan itu akan di tambahkan ke dalam file pubspec.yaml.