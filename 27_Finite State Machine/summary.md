**Finit State Machine**

    Merupakan mesin yang memiliki sejumlah state dan tiap state yang dimiliki menunjukkan apa yang terjadi sebelumnya.
    
    Contoh 
    
    Terdapat 3 state yang menunjukkan kejadian dalam suatu proses : 
    - IDDLE saat tidak terjadi proses 
    - RUNNING saat proses sedang berjalan 
    - ERROR saat proses gagal diselesaikan.
    
    Proses Sukses 
    
    - IDDLE berubah menjadi RUNNING saat proses berjalan 
    - RUNNING kembai menjadi IDDLE saat proses selesai
    
    Proses Gagal 
    
    - IDDLE berubah menjadi RUNNING saat proses berjalan
    - RUNNING menjadi ERROR saat terjadi kegagalan 
    - ERROR kembali menjadi IDDLE
    
    Implementasi pada View-Model 
    > Membuat enum unutk masing-masing state (none saat IDDLE, loading saat RUNNING dan error saat ERROR
    > Membuat getter-setter untuk menyimpan state pada widget 
    > Menggunakan state


**Implementasi pada Widget**

    Perbedaan Tampilan Tiap State
    
    Informasi finite state dapat berguna untuk menentukan seperti apa
    tampilan yang dimunculkan
    
    Widget bod(ContactViewModel viewModel) {
        final isLoading = viewModel.state == ContactViewState.loading;
        final isError = viewModel.state == ContactViewState.error;

        if (isLoading) {
            return cost Center(child: CircularProgressIndicator());
        }
        if (isError) {
            return const Center(child: Text( 'Gagal mengambil data.() ) ;
        }	

        return listView(viewModel);
    }
    
    Perbedaan Tampilan Tiap State

    > Saat state menunjukkan RUNNING, maka ditampilkan progress indicator.
    > Saat state menunjukkan IDDLE setelah RUNNING, maka ditampilkan data yang didapatkan.
    > Saat state menunjukkan ERROR, maka ditampilkan pesan yang menunjukkan bahwa proses tidak dapat diselesaikan.



**Mocking**

    Merupakan proses yang terikat dengan sistem eksternal dapat
    mempengaruhi berjalannya pengujian, Pengaruh tersebut dapat mengganggu proses pengujian serta Dilakukan mocking untuk menghindari masalah-masalah
    tersebut.
    
    Cara Kerja Mocking : 
    
    - Suatu object dibuat bentuk tiruannya
    - Bentuk tiruan tersebut memiliki input dan output yang sama
            dengan yang asli
    - Bentuk tiruan menghilangkan ketergantungan pada sistem
        eksternal
    