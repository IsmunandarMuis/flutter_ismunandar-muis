**Pengertian MVVM**

    Model-View ViewModel yakni pemisahan logic dengan tampilan (view) ke dalam ViewModel
 
**Keuntungan MVVM**

    1. Reusability
    ViewModel yang memiliki alur logic yang sama dapat menggunakan ViewModel yang sama.
    1. Maintainability
    Dapat dengan mudah dirawat dikarenakan pekerjaan terkait tampilan tidak tertumpuk bersama dengan logic dari UI nya
    1. Testability
    Dikarenakan logic dan view nya dibedakan maka pengujian pun menjadi terpisah sehingga hal ini dapat meningkatkan produktivitas pada pengujiannya
 
**Penggunaan MVVM**

    1. Model
    Bentuk data yang akan digunakan akan disimpan dalam bentuk class
    ```
    class Contact {
        final int id;
        final String name;
        final String phone;
    
        Contact({required this.id, required this.name, required this.phone});
    }
    ```
    1. Model API
    ```
    class ContactAPI{
        static Future<List<Contact>> getContacts()async{
            final response = await Dio().get('...');
    
            List<Contact> contacts = (response.data as List)
            .map(e) => Contact(id: e['id'], name: e['name'], phone: e ['phone'])
            .toList();
    
            return contacts;
        }
    }
    ```
    1. ViewModel
    Menyimpan data-data dan logic yang diperlukan dalam halaman ContactScreen
    ```
    class ContactViewModel with ChangeNotifier{
        List<Contact> _contacts = [];
    
        List<Contact> get contacts => _contacts;
    
        getAllContacts()async{
            final c = await ContactAPI.getContacts();
            _contacts = c;
            notifyListeners();
        }
    }
    ```
    1. Menambahkan ViewModel di Main.dart
    ```
    runApp(
        MultiProvider(
            providers: [
                ChangeNotifierProvider(
                    create: (_) => ContactViewModel(),
                )
            ],
            child: MaterialApp(
                home: ContactScreen(),
            )
        )
    )
    ```
    1. Menggunakan StatefulWidget
    ```
    @override
    void didChangeDependencies(){
        super.didChangeDependencies();
        WidgetsBinding.instance!.addPostFrameCallback((timeStamp){
            Provider.of<ContactViewModel>(context, listen: false).getAllContacts();
        })
    }
    ```
    1. Menampilkan Data di View
    ```
    final ModelView = Provider.of<ContactViewModel>(context);
    
    return Scaffold(
        appBar: AppBar(
            title : Text('Contacts'),
        ),
        body: ListView.builder(
            itemCount: modelView.contacts.length,
            itemBuilder: (context, index){
                final contact = modelView.contacts[index];
                return ListTile(
                    title: Text(contact.name),
                    subtitle: Text(contact.phone)
                )
            }
        )
    )
    ```
