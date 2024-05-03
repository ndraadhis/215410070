//class resep: Ini mendefinisikan sebuah kelas bernama resep. Ini mewakili objek resep dengan properti seperti name, htm, deskripsi, dan image.
class resep {
  //String name, htm, deskripsi, image: Ini adalah properti dari kelas resep, yang mewakili nama, harga, deskripsi, dan path gambar dari sebuah resep.
  String name, htm, deskripsi, image;

//resep(): Ini adalah sebuah konstruktor untuk kelas resep. Ini menginisialisasi properti-properti dari objek resep ketika objek tersebut dibuat.
  resep(
      {required this.name,
      required this.htm,
      required this.deskripsi,
      required this.image});
}

//List<resep> dataResep = []: Ini membuat sebuah list bernama dataResep yang berisi objek-objek resep. Ini menginisialisasi list dengan beberapa objek resep.
//resep(...): Ini menginisialisasi setiap objek resep di dalam list dataResep menggunakan konstruktor resep. Setiap objek resep didefinisikan dengan nama, harga, deskripsi, dan path gambar masing-masing.
List<resep> dataResep = [
  resep(
      name: 'Hoodie Essentials',
      htm: '450k',
      deskripsi:'3D Rubber Logo at Back.Rubber Logo Patch on Hood.380gsm Heavyweight Fabric.Oversize Fit, Dropped Shoulder Style.Brand New with Main Label, Wash Label, Tag and Polybag.Inner Fleece Material.Material: 80% Cotton, 20% Polyester.',
      image: 'assets/essen.webp'),
  resep(
      name: 'Hoodie Chambre.',
      htm: '785K',
      deskripsi:
          'Boxy Hoodie, Cotton Fleece,Plastisol Foaming,Cutting Boxy,M = 63cm x 60cm,L = 65cm x 63cm,XL = 68 x 65cm',
      image: 'assets/chamb.jpeg'),
  resep(
      name: 'Hoodie Telepati.Che',
      htm: '1.500K',
      deskripsi:
          'Telepati.che Hoodie Kiss Me Black ,Size : S/M/L/XL, Cotton Fleece 330gsm with sablon plastisol, Produk yang tersedia sangat terbatas, Limited Edition, Setiap pembelian akan mendapatkan Greeting card Hoodie Kiss me & Sticker official Telepati.che.',
      image: 'assets/telepati.jpeg'),
  resep(
      name: 'Hoodie ADLV',
      htm: '1.950K',
      deskripsi:
            'PRODUCT DETAILS Model Code: ADLV-20FW-HDBKBF-CFH ,Color: Black ,Material: COTTON 100%,Made In Korea,MODELHeight: 171cm, Top: Size 1,Bottom: Size 2. NOTICE In the process of producing polybags, powder is added to protect the printing from poly bag.This is not a product defect, so it is unable to be s resaon for exchange or return.The color of your product may look diffrent depending on your monitor resolution and br',
      image: 'assets/adlv.webp'),
  resep(
      name: 'Hoodie Caysie',
      htm: '399K',
      deskripsi:
          ' MATERIAL:babyterry 330gsm, plastisol ink,stickerpack. SIZE CHART , M   : 64x62 , L    : 66x68, XL  : 68x66. Available only in 100 pcs so dont run out sirr',
      image: 'assets/caysie.jpeg'),
  resep(
      name: 'Praedae',
      htm: '399K',
      deskripsi:
          ' MATERIAL:babyterry 330gsm, plastisol ink,stickerpack. SIZE CHART , M   : 64x62 , L    : 66x68, XL  : 68x66. Available only in 100 pcs so dont run out sirr',
      image: 'assets/praedae.png'),
];
