**Form**

    Form digunakan untuk berinteraksi dengan pengguna dimana form dapat menerima isian data dari pengguna serta isian data dapat lebih dari satu.

**Cara membuat form**

    Membuat form menggunakan StatefulWidget kemudian untuk setiap keadaan form disimpan menggunakan Globalkey<FormState> 

    var formKey = Globalkey<formState>();

    form(
        key : formKey,
        child : inputWidgeets,
    );


**Input**


    TextFiled 
    
    Digunakan untuk menerima isian data dari pengguna serta data yang diisi bisa lebih dari satu.

    Untuk memuat TextField data diambil menggunakan TextEditingController serta isian data berupa teks.
    
    Radio 
    
    Radio memberi opsi pada pengguna dan hanya dapat memilih satu opsi.
    
    Dalam membuat radio data diambil menggunakan property dengan tipe data sesuai value pada radio.
    
    Chechbox
    
    Memberi opsi pada user dan memilih beberapa opsi. Ketika membuat checkbox data diambil menggunakan property bertipe bool.
    
    Dropdown Button 
    
    Dimana akan memberikan opsi pada pengguna dan hanya dapat memilih satu opsi serta opsi tidak ditampilkan diawal, hanya tampil jika ditekan oleh user.
    
    Dalam membuat DropDownButton data diambil menggunakan property dengan tipe data sesuai value pada DropdownMenuItem.
