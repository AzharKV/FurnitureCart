import 'package:cs_test/constFiles/strings.dart';
import 'package:cs_test/constFiles/style.dart';
import 'package:cs_test/model/productModel.dart';
import 'package:cs_test/widgets/navIcon.dart';
import 'package:cs_test/widgets/optionContainer.dart';
import 'package:cs_test/widgets/productContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavIcon(isSelected: true, iconData: Icons.home_filled),
              NavIcon(iconData: Icons.search),
              SizedBox(width: 20.0),
              NavIcon(iconData: Icons.settings_outlined),
              NavIcon(iconData: Icons.account_circle_outlined),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.shopping_bag_outlined),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Rated", style: topHeading),
                  Image.asset(
                    iconPath + "filter.png",
                    width: 20.0,
                    height: 20.0,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20.0),
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  OptionContainer(
                      isSelected: true, text: "Armchair", icon: "armChair.svg"),
                  OptionContainer(text: "Bed", icon: "bed.svg"),
                  OptionContainer(text: "Lamp", icon: "lamp.svg"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("147 products",
                      style: TextStyle(color: Color(0xFF191B24))),
                  Row(
                    children: [
                      Text("Most popular", style: boldText),
                      Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(12.0),
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                itemCount: productsList.length,
                itemBuilder: (BuildContext context, int index) {
                  ProductModel product = productsList[index];

                  if (index == 1)
                    return Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: ProductContainer(product: product));

                  return ProductContainer(product: product);
                },
                staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
                crossAxisCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
