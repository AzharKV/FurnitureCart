import 'package:cs_test/constFiles/style.dart';
import 'package:cs_test/model/productModel.dart';
import 'package:cs_test/view/detailScreen.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => DetailScreen())),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset(product.imagePath),
              ),
              Text(product.name, style: boldText),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "\$ ",
                      style: TextStyle(
                          color: Colors.yellow, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: product.amount.toStringAsFixed(1),
                            style: TextStyle(color: Colors.black))
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text(product.ratings.toStringAsFixed(1), style: boldText)
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
