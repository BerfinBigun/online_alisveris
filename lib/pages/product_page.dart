import 'package:flutter/material.dart';
import 'package:online_alisveris/component/my_app_bar.dart';
import 'package:online_alisveris/component/product_list.dart';


class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}
class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:myAppBar(),
      body:ProductList(),
    );
  }
}

