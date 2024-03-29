import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DaftarMenuPage extends StatelessWidget {
  const DaftarMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber,
        title: const Text(
          'Daftar Menu',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          menuCard(
              'Nasi Goreng Sapi',
              30000,
              'Nasi goreng dengan potongan daging sapi yang lembut.',
              'assets/nasgor.jpg',
              5.0),
          menuCard(
              'Soto Ayam',
              20000,
              'Soto ayam yang hangat dan gurih cocok untuk cuaca dingin.',
              'assets/soto.jpg',
              3.0),
          menuCard(
              'Mie Ayam',
              20000,
              'Mie ayam yang gurih dengan tekstur mie kenyal serta terdapat bakso.',
              'assets/mie.jpg',
              4.0),
        ],
      ),
    );
  }

  Widget menuCard(
      String nama, int harga, String deskripsi, String foto, double rating) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Container(
        padding: const EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          border: Border.all(width: 2.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          children: [
            SizedBox(
                width: 80,
                height: 80,
                child: Image.asset(
                  foto,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Rp ${harga.toString()}',
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: 200.0,
                  child: Text(
                    deskripsi,
                    maxLines: 2,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                RatingBar.builder(
                  initialRating: rating,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  ignoreGestures: true,
                  itemCount: 5,
                  itemSize: 30.0,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
