**Animation**

    Menambahkan Animasi membuat aplikasi yang kita membuat terlihat hidup, widget yang bergerak dapat menambah daya tarik dari aplikasi yang kita buat serta pergerakan dari kondisi A sebagai nilai awal dan kondisi B sebagai nilai akhirnya.


**Implicit Animation**

    Animasi ini merupakan versi animasi yang sudah ada di flutter dan kita hanya perlu menggunakan widget yang sudah ada dan bisa menggunakan property tersebut dan menjadikan aplikasi yang kita buat memiliki animasi.


**Tanpa Animation**

    Tanpa animation perubahan ukuran container terlihat kaku dan sangat tidak menarik.

**Dengan Animation**

    Ketika menggunakan animation perubahan ukuran container menjadi lebih hidup dan nyaman dilihat.

    ```dart
    bool isBig = false;

    AnimatedContainer(
    width: isBig? 200 : 100,
    height: isBig? 200 : 100,
    color: Colors.red,
    duration: const Duration(milliseconds: 300) ,
    );
    ```
**Transition** 

    Meruakan animasi yang terjadi saat perpindahan halaman dan dilakukan pada bagian Navigator.push() 

**Melakukan Transition** 

    ```dart 
    Navigator.of(context).push(

        // mengatur proses Navigasi terjadi
        PageRouteBuilder(

        // proses pembuatan halaman AboutScreen 
        pageBuilder: (context, animation, animation, secondaryAnimation){
        return const AboutScreen( ) ;
    },

    // proses mengatur transition
    // halaman AboutScreen muncul dari tengah halaman
    // menuju ke halaman penh dengan transisi bergeser (slide)
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final tween = Tween(begin: const Offset(0, .5), end: Offset.zero);

            return SlideTransition
            position: animation.drive(tween),
            child: child,
            );
                },
            ),
        );
    ```

**Fade Transition** 

    Halaman muncul dengan efek redup menuju ke tampak jelas secara penuh 

    ```dart
    final tween = Tween(begin: 0.0, end: 1.0) ;
    return FadeTransition(
        opacity: animation.drive(tween),
        child: child,
    );
    ```

**Scale Transition** 

    Merupakan halaman yang muncul dengan imlementasi efek berubah ukuran dari tidak penuh menuju tampil keseluruhan. 

    ```dart
    final tween = Tween(begin: 0.0, end: 1.0) ;
    return ScaleTransition(
        scale: animation.drive(tween),
        child: child,
    );
