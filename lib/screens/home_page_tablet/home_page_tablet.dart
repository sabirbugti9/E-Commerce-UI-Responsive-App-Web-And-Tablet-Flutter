import 'package:e_commerce_ui/helper/app_constants.dart';
import 'package:e_commerce_ui/widgets/hover_icon.dart';
import 'package:e_commerce_ui/widgets/hover_logo.dart';
import 'package:e_commerce_ui/widgets/hover_social.dart';
import 'package:e_commerce_ui/widgets/hover_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePageTablet extends StatelessWidget {
  const HomePageTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    AppConstants appConstants = AppConstants();
    return Scaffold(
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
              height: height / 2.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/topimage.jpeg"),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 48.0),
                          child: HoverLogo(onTap: () {}),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HoverText(
                              colorWithoutHover: Colors.white,
                              onTap: () {},
                              text: "Products",
                            ),
                            HoverText(
                              colorWithoutHover: Colors.white,
                              onTap: () {},
                              text: "Insipiration",
                            ),
                            HoverText(
                              colorWithoutHover: Colors.white,
                              onTap: () {},
                              text: "Rooms",
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HoverIcon(
                            onTap: () {},
                            icon: const Icon(
                              Icons.search,
                              size: 36,
                            ),
                          ),
                          HoverIcon(
                            onTap: () {},
                            icon: const Icon(
                              Icons.shopping_bag,
                              size: 36,
                            ),
                          ),
                          HoverIcon(
                            onTap: () {},
                            icon: const Icon(
                              Icons.person,
                              size: 36,
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                  const Spacer(),
                  const Center(
                    child: Text(
                      "Make your house \ninto a home",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            SizedBox(
              height: height,
              width: width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Selected just for you',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        MaterialButton(
                            elevation: 40.0,
                            shape: const StadiumBorder(
                              side: BorderSide(color: Colors.black),
                            ),
                            child: const Text(
                              'Show more',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
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
                                  const EdgeInsets.only(left: 24.0, top: 24.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height / 3.5,
                                    child: Image(
                                      image: AssetImage(productModel.image),
                                    ),
                                    width: width / 3.8,
                                    color: const Color(0xffD8D8D8),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  Text(
                                    productModel.name,
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "\$${productModel.price}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
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
                  const SizedBox(
                    height: 48.0,
                  ),
                  const Center(
                    child: Text(
                      'Why should you choose us?',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: height / 3.7,
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: appConstants.whyUsList.map((productModel) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: height / 12,
                                  child: Image(
                                    image: AssetImage(productModel.image),
                                  ),
                                  width: width / 12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: productModel.name == "Easy Payments"
                                        ? const Color(0xffE1ECFF)
                                        : const Color(0xffD8D8D8),
                                  ),
                                ),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                Text(
                                  productModel.name,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                Text(
                                  productModel.description,
                                  style: const TextStyle(
                                      fontSize: 16.0, color: Colors.grey),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                'Products in today',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            SizedBox(
              width: double.infinity,
              height: height / 2,
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
                        appConstants.bottomProductList.map((productModel) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 24.0, top: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height / 3.5,
                              child: Image(
                                image: AssetImage(productModel.image),
                              ),
                              width: width / 3.8,
                              color: const Color(0xffD8D8D8),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              productModel.name,
                              style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "\$${productModel.price}",
                              style: const TextStyle(
                                fontSize: 18.0,
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              width: width * 10,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/room.jpg"),
                ),
              ),
              height: height / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 60.0),
                    child: Text(
                      'Subscribe to our newsletter and\nreceive exclusive offers every week',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height / 6,
                        width: width / 4,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Enter your email",
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      SizedBox(
                        height: height / 15,
                        width: width / 7.5,
                        child: MaterialButton(
                            color: const Color(0xff1A6EFF),
                            shape: const StadiumBorder(),
                            child: const Text(
                              'Subscirbe',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              height: height / 3,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Image(
                              height: 50,
                              width: 40,
                              color: Colors.black,
                              image: AssetImage("assets/logo.png"),
                            ),
                            SizedBox(
                              width: 24.0,
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
                        const SizedBox(
                          height: 24.0,
                        ),
                        const Text(
                          "Lorem Ipsum is simply dummy text of\nthe printing and typesetting industry.\nLorem Ipsum has been the industry's\nstandard dummy text ever since the 1500s,",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                        Row(
                          children: [
                            HoverSocial(onTap: () {}, image: "facebook.png"),
                            const SizedBox(
                              width: 24.0,
                            ),
                            HoverSocial(onTap: () {}, image: "youtube.png"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Shopping online",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 24.0,
                            ),
                            HoverText(
                              colorWithoutHover: Colors.black,
                              onTap: () {},
                              text: "Order Status",
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            HoverText(
                              colorWithoutHover: Colors.black,
                              onTap: () {},
                              text: "Shipping and Delivery",
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            HoverText(
                              colorWithoutHover: Colors.black,
                              onTap: () {},
                              text: "Returns",
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            HoverText(
                              colorWithoutHover: Colors.black,
                              onTap: () {},
                              text: "Payment Options",
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            HoverText(
                              colorWithoutHover: Colors.black,
                              onTap: () {},
                              text: "Contact us ",
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Informations",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 24.0,
                            ),
                            HoverText(
                              colorWithoutHover: Colors.black,
                              onTap: () {},
                              text: "Gift Cards",
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            HoverText(
                              colorWithoutHover: Colors.black,
                              onTap: () {},
                              text: "Find a store",
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            HoverText(
                              colorWithoutHover: Colors.black,
                              onTap: () {},
                              text: "Newsletter",
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            HoverText(
                              colorWithoutHover: Colors.black,
                              onTap: () {},
                              text: "Become a member",
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            HoverText(
                              colorWithoutHover: Colors.black,
                              onTap: () {},
                              text: "Site feedback",
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
