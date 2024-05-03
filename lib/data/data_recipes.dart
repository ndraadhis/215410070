import 'package:flutter/material.dart';
import 'package:uts_framework_215410070/data/resep.dart';

class DetailScreen extends StatelessWidget {
  final resep reseps;

  const DetailScreen({Key? key, required this.reseps}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold: Ini adalah widget dasar yang menyediakan struktur dasar untuk sebuah halaman dalam aplikasi Flutter. Di dalam Scaffold, kita bisa menempatkan AppBar dan body.
    return Scaffold(
      //AppBar: Widget ini menampilkan bilah atas yang biasanya berisi judul halaman atau aplikasi. Di sini, judulnya diambil dari nama resep yang diterima sebagai argumen.
      appBar: AppBar(
        title: Text(reseps.name),
      ),
      //Column: Ini adalah widget yang menempatkan anak-anaknya dalam satu kolom. Dalam hal ini, widget anak-anak akan ditata secara vertikal.
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          //Padding: Widget ini menambahkan ruang kosong di sekeliling widget anak-anaknya. Di sini, kita menambahkan padding di sekitar ClipRRect yang berisi gambar resep.
          Padding(
            padding: const EdgeInsets.all(16.0),

            //ClipRRect: Ini adalah widget yang memotong widget anak-anaknya menjadi bentuk persegi panjang yang memiliki sudut bulat. Di sini, kita menggunakannya untuk menampilkan gambar resep dengan sudut yang dibulatkan.
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),

              //Image.asset: Ini adalah widget yang menampilkan gambar dari berkas sumber daya di aplikasi. Di sini, kita menggunakan gambar resep yang diambil dari sumber daya aplikasi dengan menggunakan path yang disediakan oleh reseps.image.
              child: Image.asset(
                reseps.image,
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //SizedBox: Ini adalah widget yang menambahkan sejumlah ruang kosong dengan ukuran tertentu. Di sini, kita menambahkan sejumlah ruang kosong di antara judul resep dan harga.
          SizedBox(
            height: 16,
          ),

          //Text: Ini adalah widget yang menampilkan teks. Di sini, kita menggunakan widget ini untuk menampilkan nama resep, harga (HTM), dan deskripsi resep. Stil teks (font weight, ukuran font, dan warna) diberikan sesuai dengan kebutuhan.
          Text(
            reseps.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.blueAccent),
          ),
          Text('HTM: ${reseps.htm}'),

          //Padding: Widget ini digunakan lagi untuk menambahkan ruang kosong di sekeliling widget anak-anaknya. Di sini, kita menambahkan padding di sekitar teks deskripsi resep.
          Padding(
            padding: const EdgeInsets.all(16.0),
            //Text: Widget ini juga digunakan lagi untuk menampilkan deskripsi resep. Teks deskripsi resep ditampilkan dalam format yang sesuai dengan kebutuhan, termasuk pembatasan jumlah baris dan penataan teks.
            child: Text(
              'Description : ' + reseps.deskripsi,
              maxLines: 15,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
