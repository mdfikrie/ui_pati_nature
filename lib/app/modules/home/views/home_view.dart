import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pati_nature/app/modules/home/models/category_models.dart';
import 'package:pati_nature/app/modules/home/models/location_models.dart';
import 'package:pati_nature/app/modules/home/models/recommended_models.dart';
import 'package:pati_nature/app/modules/home/widget/searchDelegata.dart';
import 'package:pati_nature/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    RxBool menuOpen = false.obs;
    RxDouble tranx = 0.0.obs,
        trany = 0.0.obs,
        scale = 1.0.obs,
        radius = 0.0.obs;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey.shade100,
          ),
          SafeArea(
            child: Container(
              color: Colors.blue.shade300,
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 1,
              padding: EdgeInsets.only(left: 10, top: 200),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Hi, Everyone",
                      strutStyle: StrutStyle(),
                      style: GoogleFonts.openSans(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  ListTile(
                    leading: Icon(Icons.favorite, color: Colors.white),
                    title: Text("Favorite",
                        style: GoogleFonts.openSans(color: Colors.white)),
                    onTap: () {
                      print("favorite");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.star, color: Colors.white),
                    title: Text("Rate",
                        style: GoogleFonts.openSans(color: Colors.white)),
                    onTap: () {
                      print("rate");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.share, color: Colors.white),
                    title: Text("Share",
                        style: GoogleFonts.openSans(color: Colors.white)),
                    onTap: () {
                      print('share');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.info, color: Colors.white),
                    title: Text("About Us",
                        style: GoogleFonts.openSans(color: Colors.white)),
                    onTap: () {
                      print("about us");
                    },
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => AnimatedContainer(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius.value),
                color: Colors.grey.shade100,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 12,
                    color: Colors.black38,
                    offset: Offset(-4, 4),
                  ),
                ],
              ),
              transform: Matrix4.translationValues(tranx.value, trany.value, 0)
                ..scale(scale.value),
              duration: Duration(milliseconds: 300),
              child: SafeArea(
                child: ListView(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Menu
                          GestureDetector(
                            onTap: () {
                              if (menuOpen.value == false) {
                                scale.value = 0.8;
                                tranx.value = 200;
                                trany.value = 100;
                                radius.value = 20;
                                menuOpen.value = true;
                                print(scale);
                              } else {
                                scale.value = 1;
                                tranx.value = 0;
                                trany.value = 0;
                                radius.value = 0;
                                menuOpen.value = false;
                                print(scale);
                              }
                            },
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
                              child: Icon(
                                  menuOpen == false
                                      ? Icons.menu
                                      : Icons.arrow_back_ios,
                                  color: Colors.grey),
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
                            child: GestureDetector(
                              onTap: () {
                                showSearch(
                                    context: context, delegate: DataSearch());
                              },
                              child: Icon(Icons.search),
                            ),
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
                          return GestureDetector(
                            onTap: () {
                              if (menuOpen == true) {
                                scale.value = 1;
                                tranx.value = 0;
                                trany.value = 0;
                                radius.value = 0;
                                menuOpen.value = false;
                              }
                              Get.toNamed(Routes.DESTINATION);
                            },
                            child: Container(
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
                            "See all",
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
                          return GestureDetector(
                            onTap: () {
                              if (menuOpen == true) {
                                scale.value = 1;
                                tranx.value = 0;
                                trany.value = 0;
                                radius.value = 0;
                                menuOpen.value = false;
                              }
                              Get.toNamed(Routes.DESTINATION);
                            },
                            child: Container(
                              height: 220,
                              margin: EdgeInsets.only(bottom: 15),
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "${lokasi[index].gambar.toString()}"),
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
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
