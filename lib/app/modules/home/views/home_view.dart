import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pati_nature/app/modules/home/models/category_models.dart';
import 'package:pati_nature/app/modules/home/models/location_models.dart';
import 'package:pati_nature/app/modules/home/models/recommended_models.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Menu
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 8,
                          )
                        ],
                      ),
                      child: Icon(Icons.menu, color: Colors.grey),
                    ),
                  ),
                  // Search
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 8,
                        )
                      ],
                    ),
                    child: Icon(Icons.search, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 24,
                    child: Text(
                      "Pati Nature",
                      strutStyle: StrutStyle(),
                      style: GoogleFonts.openSans(
                          fontSize: 45,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    child: Text(
                      "Welcome to",
                      style: GoogleFonts.openSans(
                          fontSize: 18, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Recomended",
                style: GoogleFonts.openSans(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 20, top: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recomendedData.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: 300,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(
                          "${recomended[index].gambar.toString()}",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 15,
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 19,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${recomended[index].lokasi}",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Category",
                style: GoogleFonts.openSans(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 20, top: 8),
              child: ListView.builder(
                itemCount: categoryData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset("${category[index].gambar}"),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Destination",
                    style: GoogleFonts.openSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Show All",
                    style: GoogleFonts.openSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, left: 20, right: 20),
              child: ListView.builder(
                itemCount: lokasiData.length,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 220,
                    margin: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("${lokasi[index].gambar.toString()}"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(3, 4),
                        ),
                      ],
                    ),
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 19,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${lokasi[index].lokasi}",
                            style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
