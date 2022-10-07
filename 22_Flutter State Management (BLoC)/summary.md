**Declarative UI**

    State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori. Flutter akan membangun lang Ul nya ketika ada state atau data
    yang berubah serta terdapat 2 jenis state dalam flutter yakni ephemeral state dan app state.

**Ephemeral State**

    Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widget nya, contohnya:
    PageView, BottomNavigationBar, Switch Button, Tidak perlu state management yang kompleks, Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState().

**App State** 

    Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya seperti Login info, Pengaturan preferensi pengguna, Keranjang belanja, dimana Informasi yang pengguna pilih di
    suatu screen yang mana informasi itu akan muncul di screen yang berbeda.

**Pendekatan State Management**

    SetState Lebih cook penggunaan nya pada state. Provider Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan in direkomendasikan oleh tim flutter karena mudah dipelajari. Bloc Menggunakan pola stream/observable, untuk memisahkan Ul dengan bisnis logic nya

**BLoC**

    BLoC merupakan singkatan dari Business Logic Component yang memisahkan antara business logic dengan UI atau widget.

    Kelebihan dari BLoC diantaranya Simple yang artinya mudah untuk digunakan, powerful yang artinya dapat mempercepat proses-proses tertentu dan testable yakni mudah untuk dilakukan pengujian.

    Cara Kerja BLoC : 
    `menerima event dari input`
    `Dianalisis dan dikelola didalam BLoC
    `Menghasilkan state sebagai inputan`

**Stream**

    Rangkaian proses secara asyncronous 
    sebagai aktor utama di dalam BLoC, jadi ketika kita menerapkan BLoC kita memanfaatkan stream untuk menjalankan beberapa proses 

**Latihan BLoC**

    Step 1 : 
    
    Install Package : 
    flutter_bloc 
    equatable 
    
    Step 2 : Membuat Folder Bloc
    
    Membuat 3 file dart baru, counter_bloc.dart, counter_event.dart, dan counter_state.dart
    
    Step 3 : Menambahkan Event 
    dart
    abstract class CounterEvent extends Equatable {
    @override
    List<Object?> get props => [];
    }

    class Increment extends CounterEvent {}

    class Deacrement extends CounterEvent {}

    
    Step 4 : Menambahkan State 
    > Menambahkan state untuk menyimpan nilai counter di counter_state.dart 
    dart
    class CounterState extends Equatable {
    final int value;

    const CounterState(this.value);

    @override
    List<Object?> get props => [];
    }
    
    Step 5 : Menambahkan Logika Bisnis 
    > Menambahkan logika bisnis di counter_bloc.dart
    > Gunakan fungsi emit untuk mengirim state terbaru 
    dart
    class CounterBloc extends Bloc<CounterEvent, CounterState> { 
        CounterBloc(): super (CounterState(0)) {
            on«Increment> ((event, emit) => emit (CounterState(state. value + 1)));
            on«Decrement> ((event, emit) => emit (CounterState (state.value - 1)));
        }
    }
    
    Step 6 : Menambahkan BLocProvider 
    Step 7 : Membangun UI 
    > Buat Folder baru screens, didalam nya buat dart baru home_page.dart 
    dart
    class HomePage extends StatelessWidget
        const HomePage( (Key? key}) : super (key: key) :

    @override
        Widget build (BuildContext context)
            return Scaffold(
                appBar: AppBar(
                title: const Text ('Latihan Bloc') ,
                centerTitle: true,
            ),
            body: Center
            child: Column(
                mainAxisAlignment:MainAxisAlignment.center
                children:
                    const Text( ‘0’,
                    style: TextStyle(fontSize: 50),
            ),
                const SizedBox(
            height: 20,
            ElevatedButton(
                onPressed: () {},
                child: const Text ('Increment' ),
            ElevatedButton(
                onPressed: () {},
                child: const Text ('Decrement'),
                ),
                    ],
                ),
            ),
        );
    }
    }
    
    Step 8 : Menambahkan BlocBuilder 
    Step 9 : Mengganti Text 
    Step 10 : Menambahkan context.read 
