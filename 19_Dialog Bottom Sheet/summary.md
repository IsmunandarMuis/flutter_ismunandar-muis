**Aplikasi Task Management**
    Marupakan aplikasi yang digunakan untuk menambahkan dan menghapus terkait dengan kegiatan yang sudah dijadwalkan oleh user. Aplikasi task management juga digunakan untuk memanage segala kegiatan user agar tidak ada tumpang tindih antara kegiatan yang satu dengan kegiatan yang lain.


**Alert Dialog**

    Alert dialog merupakan widget yang menampilkan pesan yang berbentuk pop up dengan tujuan menginformasikan penggunakn tentang keadaan atau situasi tertentu kepada user. Contoh sederhana dari alert dialog ialaha ketika user menginput data email pada TextFormField tapi inputan email yang dimasukkan oleh user tersebut tidak sesuai dengan format email pada umumnya, maka kita bisa gunakan widget AlertDialog untuk menginformasikan user tersebut bahwasanya iputan email yang dimasukkan tidak valid. Secara default AlertDialog memhutuhkan helper berupa method showDialog.


**Contoh sederhana pembuatan alert dialog di flutter**

    1. Kita membuat bottom atau widget yang mempunyai mempunyai fitur 'onTap'.
    2. Setelah itu kita men trigger widget tersebut ketika di tekan maka akan muncul AlertDialog
    3. Melanjutkan penjelasan yang ada pada langkah sebelumnya kita bisa memanggil Widget AlertDialog di dalam fungsi 'onTap'
    
    Contoh code flutter:
    RaisedButton(
            child: Text("Tampilkan alert dialog"),
            onPressed: (){
              AlertDialog dialog = new AlertDialog(
                content: new Text("Halooo ini alert dialog"),
              );
              showDialog(context: context, child: dialog);
            },
          )


**Bottom Sheet**

    Sama halnya dengan dialog akan tetapi untuk bottom sheet muncul dari bawaj layar aplikasi menggunakan fungsi bawaan flutter showModalBottomSheet dan membutuhkan properti seperti context dan builder
    ```
    IconButton(
        onPressed: (){
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                    ),
                ),
                context: context,
                builder: (context) => Container(),
            );
        },
        icon: const Icon(Icons.account_circle),
    ),