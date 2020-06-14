import 'dart:math';
// import 'package:eco_commerce_app/routing_constants.dart';
import 'package:eco_commerce_app/core/model/product.dart';
import 'package:eco_commerce_app/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class ProductListTileDynamic extends StatefulWidget {
  final List<Product> arguements;
  ProductListTileDynamic({this.arguements});

  @override
  _ProductListTileDynamicState createState() => _ProductListTileDynamicState();
}

class _ProductListTileDynamicState extends State<ProductListTileDynamic> {
  String image;
  String name;
  String desc;
  String price;
  var images = [
    "assets/images/papers.jpg",
    "assets/images/mugs.jpg",
    "assets/images/cups.jpg",
    "assets/images/pencils.jpg",
    "assets/images/pens.jpg",
    "assets/images/erasers.jpg",
    "assets/images/rulers.jpg",
    "assets/images/spoons.jpg",
    "assets/images/picture_frames.jpg",
    "assets/images/calendars.jpg",
    "assets/images/mousepads.jpg",
  ];
  String getImage() {
    final _random = new Random();
    var element = images[_random.nextInt(images.length)];
    return element;
  }

  @override
  void initState() {
    super.initState();
    // 'https://ecocommerce.herokuapp.com' +
    // products[index]["images"][0]["url"],
    image = 'assets/images' +
        widget.arguements[0].images[0].url
            .toString()
            .split("_")[0]
            .toString()
            .replaceAll("/uploads", "") +
        ".jpg";
    name = widget.arguements[0].name;
    desc = widget.arguements[0].desc;
    price = widget.arguements[0].price.toString();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 10, 17, 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.07),
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ]),
        child: FlatButton(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          onPressed: () {
            print('card');
            Navigator.pushNamed(context, ProductRoute,
                arguments: widget.arguements);
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          color: Color(0xFFFFFFFF),
          child: SizedBox(
            height: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Hero(
                  tag: name,
                  transitionOnUserGestures: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        width: height * 0.16,
                        height: height * 0.16,
                        // child: Image.network(
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 15),
                      child: Container(
                        width: width * 0.45,
                        child: Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF004445),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      child: SizedBox(
                        width: width * 0.435,
                        child: Text(
                          desc,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF7A7A7A),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.514,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              child: Text(
                                ' ₹$price',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF004445),
                                ),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                icon: Icon(LineAwesomeIcons.bookmark_o),
                                onPressed: () {
                                  print('heart');
                                })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
