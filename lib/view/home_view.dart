import 'package:barber/model/barbershop.dart';
import 'package:barber/model/category.dart';
import 'package:barber/view/side_menu.dart';
import 'package:barber/view/widgets/barbershop.dart';
import 'package:barber/view/widgets/category_card.dart';
import 'package:barber/view/widgets/custom_list_tile.dart';
import 'package:barber/view/widgets/custome_text.dart';
import 'package:barber/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:get/get.dart';

import 'constance.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: Get.find(),
      builder: (controller) => controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              body: FoldableSidebarBuilder(
                drawerBackgroundColor: Colors.brown,
                status: controller.status,
                drawer: CustomDrawer(
                  closeDrawer: () {
                    controller.status = FSBStatus.FSB_CLOSE;
                  },
                ),
                screenContents: GestureDetector(
                  onTap: () {
                    controller.status = FSBStatus.FSB_CLOSE;
                    controller.update();
                  },
                  child: Container(
                    color:Colors.grey.shade300,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ClipPath(
                            clipper: OvalBottomBorderClipper(),
                            child: Container(
                              width: double.infinity,
                              height: 250.0,
                              padding: EdgeInsets.only(bottom: 50.0),
                              decoration: BoxDecoration(
                                color: kYellow,
                                image: DecorationImage(
                                  image: AssetImage("assets/rabie.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppBar(
                                    backgroundColor:
                                        Colors.black12.withOpacity(.0),
                                    elevation: 0,
                                    leading: IconButton(
                                      icon: Icon(Icons.menu),
                                      onPressed: () {
                                        controller.status = controller.status ==
                                                FSBStatus.FSB_OPEN
                                            ? controller.status =
                                                FSBStatus.FSB_CLOSE
                                            : FSBStatus.FSB_OPEN;
                                        controller.update();
                                      },
                                    ),
                                    actions: [
                                      IconButton(
                                        icon: Icon(Icons.filter_list),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  SizedBox(height: 15.0),
                                  // Container(
                                  //   width: double.infinity,
                                  //   height: 50.0,
                                  //   margin:
                                  //       EdgeInsets.symmetric(horizontal: 18.0),
                                  //   padding:
                                  //       EdgeInsets.symmetric(horizontal: 15.0),
                                  //   decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(12.0),
                                  //     color: Colors.white.withOpacity(.3),
                                  //   ),
                                  //   child: TextField(
                                  //     cursorColor: kBlack,
                                  //     decoration: InputDecoration(
                                  //       hintText:
                                  //           "",
                                  //       hintStyle: kHintStyle,
                                  //       border: InputBorder.none,
                                  //       icon: Icon(
                                  //         Icons.search,
                                  //         color: kGrey,
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                  /// search bar
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25.0),
                          CustomListTile(title: "Categories"),
                          SizedBox(height: 25.0),
                          Container(
                            width: double.infinity,
                            height: 100.0,
                            child: ListView.builder(
                              itemCount: categoryList.length,
                              scrollDirection: Axis.horizontal,
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                var category = categoryList[index];
                                return CategoryCard(category: category);
                              },
                            ),
                          ),
                          SizedBox(height: 30.0),
                          CustomListTile(title: "Best Barbershop"),
                          SizedBox(height: 25.0),
                          Container(
                            width: double.infinity,
                            height: 150.0,
                            child: ListView.builder(
                              itemCount: bestList.length,
                              scrollDirection: Axis.horizontal,
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                var barbershop = bestList[index];
                                return BarbershopCard(barbershop: barbershop);
                              },
                            ),
                          ),
                          SizedBox(height: 30.0),
                          CustomListTile(title: "Best Barbershop"),
                          SizedBox(height: 25.0),
                          Container(
                            width: double.infinity,
                            height: 150.0,
                            child: ListView.builder(
                              itemCount: barbershopList.length,
                              scrollDirection: Axis.horizontal,
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                var barbershop = barbershopList[index];
                                return BarbershopCard(barbershop: barbershop);
                              },
                            ),
                          ),
                          SizedBox(height: 30.0),
                          CustomListTile(title: "Best Barbershop"),
                          SizedBox(height: 25.0),
                          Container(
                            width: double.infinity,
                            height: 150.0,
                            child: ListView.builder(
                              itemCount: besthairstyle.length,
                              scrollDirection: Axis.horizontal,
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                var besthaircut = besthairstyle[index];
                                return BarbershopCard(barbershop: besthaircut);
                              },
                            ),
                          ),
                          SizedBox(height: 50.0),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}

