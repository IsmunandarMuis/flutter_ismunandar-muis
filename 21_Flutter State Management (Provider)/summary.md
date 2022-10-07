**Pengertian State**

    Pada flutter, ketika kita ingin membuat halaman yang interaktif serta di halaman tersebut kita menginginkan widget atau component di dalamnya bisa melakukan aksi dan kondisi nya dapat berubah ubah kita bisa memanfaaatkan jenis widget 'StatefullWidget', Di dalam widget "Statefull" ada property berupa function yang namanya "setState", dimana property ini digunakan merubah kondisi apa yang kita ingin ubah di dalam halaman tersebut.

    contoh :
    int number = 0

    Text('$number');

    untuk merubah number kita bisa menggunkaan property setState 

    ElevatedButton(onPressed: () {
        setState(() {
            number++;
        })
    }, child: Text("Increment number"))

    Kekurangan dalam menggunakan "StatefullWidget" adalah ketika kita hanyak ingin merubah satu komponen, maka semua halaman akan di load atau di rebuild ulang jadi sangat tidak esifien, contohnya pada contoh diatas, kita cuman ingin merubah value dari number, tetapi component yang tidak ada kaitannya sama number akan ikut di rebuild ulang juga sama "StatefullWidget". Maka dalam hal ini kita membutuhkan state management.

**Global State**

    Global state merupakan state yang bisa digunakan pada seluruh widget childnya, biasanya yang kita definisikan pada global state merupakan state management yang kita buat, misalnya kita bekerja menggunakan state management 'provider', maka state provider atau bloc yang kita buat itu di definisikan di global state agar widget-widget turunannya itu bisa menggunakan state tersebut.

**State Management Provider**

    Provider merupakan package state management yang ada di flutter. Provider menyediakan sebuah layanan untuk membuat dan mengelola state yang ada didalam aplikasi kita, manfaat yang menggunakan provider ialah:
    1. Mengalokasikan resource secara sederhana yang ada pada aplikasi kita
    2. Meningkatkan skalabilitas
    3. Memudahkan untuk di maintenance dan juga memudahkan kita dalam mencari error

    Contoh:

    // Provider
    class ContactProvider with ChangeNotifier {
        final List<ContactModel> _contacts = [
            ContactModel("jjlj", "contactPhoneNumber")
        ];

        List<ContactModel> get contact => _contacts;

        void addContact(ContactModel contact) {
            _contacts.insert(0, contact);
            notifyListeners();
        }

        void deleteContact(ContactModel contact) {
            _contacts.remove(contact);
            notifyListeners();
        }
    }

    // Mendaftarkan state management provider di main.dart
    void main() {
        runApp(
            MultiProvider(
            providers: [
                ChangeNotifierProvider(
                create: (_) => ContactProvider(),
                ),
            ],
            child: const MyApp(),
            ),
        );
    }

    // Inisialisasi state provider yang sudah di daftarkan ke dalam variabel
    final contactProvider = Provider.of<ContactProvider>(context);

    // Menggunakan state management provider untuk menambahkan kontak
    ElevatdButton(
        onPressed: () {
            if (!formKey.currentState!.validate()) return;
            formKey.currentState!.save();

            contactProvider.addContact(ContactModel(
                contactName.text, phoneNumberController.text));
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ContactsPage()),
                          (route) => false);
        }, child: Text('Tambah kontak'))


