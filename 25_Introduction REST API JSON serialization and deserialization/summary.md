**REST API (Representational State Transfer Application Programming Interface)**

    Sebagai jembatan yang menghubungkan server dan client yang dimana Merupakan arsitektural yang memisahkan tampilan dengan proses bisnis untuk berkirim data melalui HTTP Request.


**HTTP**

    Merupakan protokol yang digunakan untuk mengirim data pada internet, biasanya data berbentuk media web yakni dengan client mengirim request lalu server mengolah dan memberi response
    1. Struktur Request
    - URL
    > Alamat halaman yang akan diakses
    - Method (GET, POST, PUT, DELETE)
    > Menunjukkan aksi yang diingikan
    - Header
    > Informasi tambahan terkait request yang dikirimkan
    - Body
    > Data yang disertakan bersama request
    2. Struktur Response
    - Status Code
    > Kode yang mewakili keseluruhan response baik sukses maupun gagal
    - Header
    > Informasi tambahan terkait response yang diberikan
    - Body
    > Data yang disertakan bersama response


**DIO**

    Merupakan package yang ada pada pub.dev yang berguna sebagai HTTP Client dan dimanfaatkan untuk melakukan REST API. untuk melakukan pengambilan data menggunakan DIO ini maka hasil nya dalam format JSON
    ```
    Dio()
        .get("https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts")
        .then((response){
            print(response);
        });
    ```
    1. DIO dengan method GET
    ```
    import 'package:dio/dio.dart';
    
    final Dio dio = Dio();
    
    final Response response = await dio.get(
        'https://reqres.in/api/users'
    );
    ```
    
    2. DIO dengan method POST
    ```
    import 'package:dio/dio.dart';
    
    final Dio dio = Dio();
    
    final Response response = await dio.get(
        'https://reqres.in/api/users',
        data:{
            'name':'morpheus',
            'job':'leader',
        },
    );
    ```
    3. DIO dengan method PUT
    ```
    import 'package:dio/dio.dart';
    
    final Dio dio = Dio();
    
    final Response response = await dio.put(
        'https://reqres.in/api/users/2',
        data:{
            'name':'morpheus',
            'job':'leader',
        },
    );
    ```
    4. DIO dengan method DELETE
    ```
    import 'package:dio/dio.dart';
    
    final Dio dio = Dio();
    
    final Response response = await dio.get(
        'https://reqres.in/api/users/2',
    );


**Serialisasi JSON**

    Mengubah struktur data ke bentuk JSON dimana dapat digunakan dengan menggunakan fungsi jsonEncode dari package dart:convert
    ```
    import "data:convert";

    void main(){
        var dataMap = {...};
        var dataJSON = jsonEncode(dataMap);
        print(dataJSON);
    }
    ```

**Deserialisasi JSON**

    Kebalikan dari serialisasi yakni dengan mengubah bentuk JSON ke tipe struktur data yang lain yakni dengan menggunakan fungsi jsonDecode
    ```
    import "data:convert";

    void main(){
        var dataJSON = '...';
        var dataJSON = jsonDecode(dataJSON);
        print(dataMap);
    }
