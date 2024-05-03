import 'package:flutter/material.dart';
import 'package:uts_framework_215410070/data/data_recipes.dart';
import 'package:uts_framework_215410070/data/resep.dart';

//Widget home adalah sebuah StatelessWidget yang menampilkan daftar resep hoodie dari dataResep.
class home extends StatelessWidget {
  
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    //Scaffold: Merupakan sebuah widget yang menyediakan struktur dasar sebuah layar, termasuk AppBar, body, dan lainnya. Pada bagian ini, Scaffold digunakan untuk menempatkan konten utama aplikasi.
    return Scaffold(

      //AppBar: Merupakan bagian atas dari aplikasi yang biasanya berisi judul atau teks informatif lainnya. Pada kode tersebut, judul AppBar diatur sebagai 'HOODIE BRAND'.
      appBar: AppBar(
        title: Text('HOODIE BRAND'),
      ),

      //body: Merupakan bagian utama dari aplikasi yang menampilkan konten yang sesuai. Di sini, kita menggunakan ListView.builder untuk membuat daftar resep hoodie.
      //ListView.builder: Merupakan widget yang memungkinkan kita membuat daftar dengan jumlah item yang besar secara efisien. Pada kode tersebut, ListView.builder digunakan untuk membuat daftar resep hoodie sesuai dengan jumlah resep yang ada dalam dataResep.
      body: ListView.builder(
          itemCount: dataResep.length,
          itemBuilder: (context, index) {
            //GestureDetector: Merupakan widget yang memungkinkan kita menangani interaksi pengguna seperti ketukan atau klik. Di dalam ListView.builder, setiap item daftar di-wrapped dengan GestureDetector untuk menangkap ketukan pengguna.
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              reseps: dataResep[index],
                            )));
              },
              //Card: Merupakan sebuah widget yang menampilkan konten dalam bentuk kartu dengan bayangan dan radius sudut. Pada kode tersebut, setiap item daftar diatur sebagai sebuah Card untuk tampilan yang lebih menarik.
              child: Card(
                //Row: Merupakan widget yang menampilkan anak-anak widget secara horizontal. Di dalam Card, kita menggunakan Row untuk menampilkan gambar dan teks secara horizontal.
                child: Row(
                  children: [
                    //Padding: Merupakan widget yang menambahkan ruang padding di sekitar anak-anaknya. Di dalam Row, kita menggunakan Padding untuk memberikan ruang kosong di sekitar gambar.
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      //ClipRRect: Merupakan widget yang memotong anak-anaknya ke dalam bentuk yang diberikan. Di sini, kita menggunakan ClipRRect untuk memotong sudut gambar menjadi bentuk yang diberikan (bulat).
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        //Image.asset: Merupakan widget yang menampilkan gambar dari aset lokal. Di dalam ClipRRect, kita menggunakan Image.asset untuk menampilkan gambar resep hoodie dari dataResep.
                        child: Image.asset(
                          dataResep[index].image,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //Column: Merupakan widget yang menampilkan anak-anak widget secara vertikal. Di sini, kita menggunakan Column untuk menampilkan teks di bawah gambar resep hoodie.
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Text: Merupakan widget yang menampilkan teks. Di dalam Column, kita menggunakan Text untuk menampilkan nama dan harga resep hoodie dari dataResep.
                        Text(dataResep[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.blueAccent)),
                        Text('HTM : ${dataResep[index].htm}'),
                        //ClipOval: Merupakan widget yang memotong anak-anaknya ke dalam bentuk oval. Di dalam Column, kita menggunakan ClipOval untuk membuat sebuah ikon hati di sisi kanan bawah.
                        ClipOval(
                          //Material: Merupakan widget yang menerapkan efek elevasi dan inkwell. Di dalam ClipOval, kita menggunakan Material untuk memberikan efek inkwell ketika pengguna mengetuk ikon hati.
                          child: Material(
                            color: Colors.blue, // button color
                            //InkWell: Merupakan widget yang menangkap ketukan pengguna dengan efek visual. Di dalam Material, kita menggunakan InkWell untuk menangkap ketukan pengguna dan memberikan efek visual (splash color).
                            child: InkWell(
                              splashColor: Colors.red, // inkwell color
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  //Icon: Merupakan widget yang menampilkan ikon. Di dalam InkWell, kita menggunakan Icon untuk menampilkan ikon hati.
                                  child: Icon(Icons.favorite)),
                              onTap: () {
                              },
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
