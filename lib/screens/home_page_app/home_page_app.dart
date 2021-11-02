import 'package:e_commerce_ui/helper/app_constants.dart';
import 'package:e_commerce_ui/widgets/hover_icon.dart';
import 'package:e_commerce_ui/widgets/hover_logo.dart';
import 'package:e_commerce_ui/widgets/hover_social.dart';
import 'package:e_commerce_ui/widgets/hover_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePageApp extends StatelessWidget {
  const HomePageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    AppConstants appConstants = AppConstants();
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {},
              leading: const Text(
                "Products",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Text(
                "Insipiration",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Text(
                "Rooms",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.search),
              title: const Text(
                "Search",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.shopping_bag),
              title: const Text(
                "Cart",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              title: const Text(
                "Profile",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: const Color(0xffD8D8D8),
        title: Row(
          children: const [
            Image(
              height: 50,
              width: 40,
              color: Colors.black,
              image: AssetImage("assets/logo.png"),
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(
              "E-Shop",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: ListView(
          children: [
            Container(
              width: width,
              height: height / 3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/topimage.jpeg"),
                ),
              ),
              child: const Center(
                child: Text(
                  "Make your house \ninto a home",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Selected just for you',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                            child: const Text(
                              'Show more',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                              ),
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: height / 2.5,
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context).copyWith(
                        dragDevices: {
                          PointerDeviceKind.touch,
                          PointerDeviceKind.mouse,
                        },
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children:
                              appConstants.productList.map((productModel) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 6.0, top: 6.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height / 3.5,
                                    child: Image(
                                      image: AssetImage(productModel.image),
                                    ),
                                    width: width / 4.3,
                                    color: const Color(0xffD8D8D8),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  Text(
                                    productModel.name,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "\$${productModel.price}",
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text(
                      'Products in today',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: height / 2.5,
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context).copyWith(
                        dragDevices: {
                          PointerDeviceKind.touch,
                          PointerDeviceKind.mouse,
                        },
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: appConstants.bottomProductList
                              .map((productModel) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 6.0, top: 24.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height / 3.5,
                                    child: Image(
                                      image: AssetImage(productModel.image),
                                    ),
                                    width: width / 4.3,
                                    color: const Color(0xffD8D8D8),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  Text(
                                    productModel.name,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "\$${productModel.price}",
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
