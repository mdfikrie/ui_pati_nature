import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/destination_controller.dart';

class DestinationView extends GetView<DestinationController> {
  final destinationC = Get.find<DestinationController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade100,
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 50),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: Offset(4, -4),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Text(
                        "Agro Wisata Jolong",
                        style: GoogleFonts.openSans(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Desa Sitiluhur, Gembong, Pati.",
                              style: GoogleFonts.openSans(
                                  fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.openSans(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Agrowisata Jolong Pati berdiri sejak beberapa tahun lalu. Pengelolaannya ada di bawah PT Perkebunan Nusantara IX. Saat berkunjung ke kawasan ini, terutama Agrowisata Jolong I, Teman Traveler akan mendapati perkebunan kopi yang sudah ada sejak zaman Belanda. Kawasan Gembong, tempat agrowisata ini berada, ternyata merupakan sentra penghasil kopi di Kabupaten Pati. Kopi-kopi tersebut sekaligus diolah di sini. Tidak jauh dari gerbang, terdapat tugu teko dan cangkir yang ikonik dan instagenic. Selain kopi, terdapat juga tanaman pisang, jeruk keprok dan jeruk pamelo.",
                        style: GoogleFonts.openSans(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Lokasi",
                        style: GoogleFonts.openSans(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Destinasi wisata kebun untuk keluarga ini berada di Desa Sitiluhur, Kecamatan Gembong, Kabupaten Pati. Dari arah pusat kota, jaraknya sekitar 10 Km saja. Dekat dan aksesnya cukup mudah. Untuk masuk kawasan, pengunjung harus membayar tiket sekitar Rp 15 ribu.",
                        style: GoogleFonts.openSans(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 70,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              destinationC.favorite == false
                                  ? destinationC.favorite.value = true
                                  : destinationC.favorite.value = false;
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.blue.shade400,
                                  width: 1,
                                ),
                              ),
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: destinationC.favorite == false
                                    ? Colors.grey.shade400
                                    : Colors.red,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () => print("cek rute"),
                          child: Container(
                            height: 50,
                            width: 250,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade400,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Cek Rute",
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 30,
                child: GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
