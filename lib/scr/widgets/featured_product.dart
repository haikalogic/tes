import 'package:app_foodordering/scr/models/product.dart';
import 'package:app_foodordering/scr/widgets/commons.dart';
import 'package:app_foodordering/scr/widgets/title.dart';
import 'package:flutter/material.dart';

List<Product> productList = [
  Product(
    name: "Burger",
    price: 18000,
    rating: 4.2,
    vendor: "Burger Blenger",
    wishList: true,
    image: "burger.jpg",
  ),
  Product(
    name: "Kebab",
    price: 16000,
    rating: 4.2,
    vendor: "Kebab Turki",
    wishList: false,
    image: "kebab.jpg",
  ),
  Product(
    name: "Bakso",
    price: 15000,
    rating: 4.2,
    vendor: "Bakso Solo",
    wishList: true,
    image: "bakso.jpg",
  ),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: 200,
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(1, 1),
                      blurRadius: 4)
                ]),
                child: Column(
                  children: [
                    Image.asset(
                      "images/${productList[index].image}",
                      height: 140,
                      width: 140,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(text: productList[index].name),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[300],
                                      offset: Offset(1, 1),
                                      blurRadius: 4)
                                ],
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: productList[index].wishList
                                  ? Icon(
                                      Icons.favorite,
                                      size: 18,
                                      color: red,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      size: 18,
                                      color: red,
                                    ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: productList[index].rating.toString(),
                                color: grey,
                                size: 12,
                              ),
                            ),
                            SizedBox(width: 2),
                            Icon(Icons.star, color: red, size: 12),
                            Icon(Icons.star, color: red, size: 12),
                            Icon(Icons.star, color: red, size: 12),
                            Icon(Icons.star, color: red, size: 12),
                            Icon(Icons.star, color: red, size: 12),
                            Icon(Icons.star, color: grey, size: 12)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CustomText(
                              text: "Rp${productList[index].price.toString()}",
                              size: 14,
                              weight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}