**Row dan Column pada Fluter**

    Row dan Column merupakan layout widget yang bisa menampung banyak widget dan dapat mengorganisir widget-widget tersebut.
    Widget Row dapat meletakkan widget secara horizontal sedangkan Column secara Vertical.

**MainAxisAlignment dan CrossAxisAlignment**

    MainAxisAlignment merupakan properti yang ada pada column dan row widget yang dapat memposisikan children mereka di extra space yang ada, jika pada widget column main axis memiliki makna vertical, pada widget row memiliki makna horizontal. Sedangkan CrossAxisAlignment merupakan property yang ada pada column dan row widget yang dapat memposisikan children atau widget-widget yang ada di dalamnya pada posisi axis atau kebalikan dari MainAxisAlignment, pada row, cross axis berarti sumbu vertical, sedangkan pada column ada horizontal.

**Flexible widget**

    Ketika kita membungkus widget dengan Flexible widget, itu berarti widget tersebut bersifat flexible, dan juga sangat berguna juga untuk aplikasi yang responsif. Flexible widget harus berada pada turunan widget row atau column.

**Color Picker**

    Merupakan widget dimana user bisa memilih color serta penggunaan color picker bisa digunakan untuk berbagai macam kondisi 


**Cara menggunakan color picker**

    - Menggunakan packages flutter_collorpicker
    - Menambahkan packages flutter_collorpicker di pubspec.yaml
    - Mempersiapkan variabel 
    - Membangun UI
    - Menambahkan fungsi showDialog didalam onPressed dengan return widget AlertDialog
    - Selanjutnya import packages flutter_collorpicke dalam file dart
    - Membuat kode untuk penggunaan package flutter_collorpicke


**Cara membuat file picker**

    - Menggunakan packages file_picker dan open_file
    - Menambahkan packages  file_picker dan open_file di pubspec.yaml
    - import packages file_picker dan open_file dalam file dart
    - Membangun UI
    - Membuat fungsi untuk mengexplore dan memilih files dari storage 
    - Memanggil fungsi _pickFile didalam onPressed
    - Membuat fungsi untuk membuka files yang telah dipilih 
    - Mengambil file dari object result dan memanggil fungsi _openFile di dalam fungsi _pickFile
