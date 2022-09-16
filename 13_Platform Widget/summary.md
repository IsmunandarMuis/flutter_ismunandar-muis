### Abstract
```
Memanfaatkan widget dengan gaya berbeda pada Android dan IOS.
```
### Material App
```
Widget dasar yang mengemas seluruh widget dalam aplikasi.
Widget yang digunakan pada sistem android.
Di-import dari package:flutter/material.dart
```
```
Struktur : 
Widget yang pertamakali dibuka diletakkan pada bagian home.
Mengatur halaman juga dapat dilakukan dengan menggunakan routes dan initialRoute.
```
### Scaffold 
```
Merupakan widget dasar untuk membangun sebuah halaman pada MaterialApp. Struktur dari Scaffold membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti.
```
### CupertinoApp
```
Merupakan widget dasar yang digunakan  untuk mengemas seluruh widget dalam aplikasi, widget yang digunakan pada sistem iOS serta import dari package:flutter/cupertino.dart
#### Struktur 
Vaariable _themeDark dibuat untuk menyimpan tema 
Diperlukan karena Cupertino tidak menyediakan ThemeData.dark()
 seperti pada Material.
```
### CupertinoPageScaffold
Merupakan widget dasar untuk membangun sebuah halaman pada CupertinoApp.
```
example : 
```
import 'package:flutter/cupertino.dart';

void main() => runApp(const PageScaffoldApp());

class PageScaffoldApp extends StatelessWidget {
  const PageScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: PageScaffoldExample(),
    );
  }
}

class PageScaffoldExample extends StatefulWidget {
  const PageScaffoldExample({super.key});

  @override
  State<PageScaffoldExample> createState() => _PageScaffoldExampleState();
}

class _PageScaffoldExampleState extends State<PageScaffoldExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // Uncomment to change the background color
      // backgroundColor: CupertinoColors.systemPink,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoPageScaffold Sample'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text('You have pressed the button $_count times.'),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: CupertinoButton.filled(
                onPressed: () => setState(() => _count++),
                child: const Icon(CupertinoIcons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```
