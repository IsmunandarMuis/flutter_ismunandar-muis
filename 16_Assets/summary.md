
Assests adalah file yang di bundeld dan di deployed bersamaan dengan aplikasi, adapun tipe-tipe assets seperti : static data (JSON files), icons, images, dan font file (ttf)


**Menentukan Assets**
    
    Untuk menentukan assets dapat menggunakan pubspec.yaml yang terletak pada root project yang digunakan untuk mengidentifikasi assets yang dibutuhkan aplikasi. Dapat juga menggunakan karakter “/“ untuk memasukkan semua assets dibawah satu directory name.


**Image**

    Penggunaan image atau gambar akan membuat tampilan aplikasi yang dibuat menjadi lebih menarik.
    flutter mendukung format gambar seperti JPEG, WebP, GIF, Animate Web/GIF, PNG, BMP, dan WBMP.
    Untuk menampilkan gambar pada aplikasi dapat mendapatkan imagenya dari project asset ataupun internet 


**Loading Image**

    Loading image menggunakan widget image 
    Membutuhkan properti image dengan class AssetImage()

    Loading image dapat juga menggunakan method Image.asset, mendapatkan image yang sudah ditambahkan dalam project
    Menggunakan method Image.network untuk mendapatkan image dari internet dengan menggunakan string url nya.
