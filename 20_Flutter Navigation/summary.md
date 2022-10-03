**Pengertian Flutter Navigation**

    Flutter navigation merupakan teknik atau cara yang dilakukan untuk routing atau berpindah dari halaman satu ke halaman lain. Widget flutter navigation pada flutter bekerja menggunakan konsep Stack atau LIFO (Last in First Out).

**Jenis Navigation**

    Secara umum ada 2 method yang digunakan untuk melakukan routing atau navigasi antara halaman
    1. Navigator.push() : Merupakan method yang digunakan untuk menambahkan navigasi atau rute atau stack di atas halaman saat ini, maka dari kondisi saat ini halaman yang baru akan di tampilkan di atas halaman sebelumnya.
    2. Navigator.pop() : Method pop merupakan cara yang dilakukan untuk menghapus route atau halaman paling atas, dari tumpukan yang dimana ini menampilkan kembali halaman sebelumnya.

    contoh :

    void main() {
        runApp(MaterialApp(
            home: HomePage(),
        ));
    }

    class HomePage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                appBar: AppBar(
                    title: Text('Navigation route'),
                ),
                body: Center(
                    child: RaisedButton(
                    onPressed: () {
                        Route route = MaterialPageRoute(builder: (context) => ProfilePage());
                        Navigator.push(context, route);
                    },
                    child: Text('Tap Untuk ke ProfilePage'),
                    ),
                ),
            );
        }
    }

    class ProfilePage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                appBar: AppBar(
                    title: Text('Profil page'),
                ),
                body: Center(
                    child: RaisedButton(
                    onPressed: () {
                        Navigator.pop(context);
                    },
                    child: Text('Kembali'),
                    ),
                ),
            );
        }
    }

**Navigation dengan Named Routes**

    Sesuai dengan namanya, kita bisa memberi nama pada route halaman yang akan kita tuju. Named route digunakan untuk mempermudah kita dalam melakukan route, dimana kita tidak harus memanggil nama widget dari halamannya, kita hanya perlu memanggil nama route yang sudah kita buat sebelumnya. Cara penggunaan navigation named route sedikit berbeda dengan menggunakan jenis routing secara langsung. Jika secara umum kita bisa menggunakan Navigator.push(), di Navigation dengan named route kita menggunakan Navigator.pushNamed() untuk method push() nya.

    Contoh :
    void main() {
        runApp(MaterialApp(
            initialRoute: '/',
            routes: <String, WidgetBuilder>{
            '/': (context) => HomePage(),
            '/profile': (context) => ProfilePage(),
            },
        ));
    }

    class HomePage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(
                title: Text('Navigator dengan named routing'),
            ),
            body: Center(
                child: RaisedButton(
                onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                },
                child: Text('Tap Untuk ke ProfilePage'),
                ),
            ),
            );
        }
    }