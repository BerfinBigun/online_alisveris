import 'package:flutter/material.dart';
import 'package:online_alisveris/pages/product_property_page.dart';

import '../constants.dart';

class Products extends StatelessWidget {

  final urun_marka;
  final urun_ismi;
  final urun_resmi1;
  final urun_resmi2;
  final urun_fiyati;
  final urun_bilgi1;
  final urun_bilgi2;

  Products({

    this.urun_marka,
    this.urun_ismi,
    this.urun_resmi1,
    this.urun_resmi2,
    this.urun_fiyati,
    this.urun_bilgi1,
    this.urun_bilgi2,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      //color:Colors.blueGrey[100],
      child:InkWell(
        onTap: () =>
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) =>new ProductProperty(
                  urun_marka: urun_marka,
                  urun_ismi: urun_ismi,
                  urun_fiyati: urun_fiyati,
                  urun_resmi1: urun_resmi1,
                  urun_resmi2: urun_resmi2,
                  urun_bilgi1: urun_bilgi1,
                  urun_bilgi2: urun_bilgi2,
                ))),
        child:GridTile(
          footer: Container(
            color:kProductsContainerColor,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(urun_marka,style: kProductsBrandTextStyle,),
                    Text(urun_ismi),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:<Widget> [
                    Text("₺",style: kProductsPriceTextStyle),
                    Text(urun_fiyati,style: kProductsPriceTextStyle,),
                  ],
                ),
              ],
            ),
          ),
          child: Image.asset(urun_resmi1),
        ),
      ),
    );
  }
}
