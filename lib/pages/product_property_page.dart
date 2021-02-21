import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:online_alisveris/component/my_app_bar.dart';

import '../constants.dart';
import 'currency_page.dart';

class ProductProperty extends StatefulWidget {
  final urun_marka;
  final urun_ismi;
  final urun_resmi1;
  final urun_resmi2;
  final urun_fiyati;
  final urun_bilgi1;
  final urun_bilgi2;

  ProductProperty({

    this.urun_marka,
    this.urun_ismi,
    this.urun_resmi1,
    this.urun_resmi2,
    this.urun_fiyati,
    this.urun_bilgi1,
    this.urun_bilgi2,
  });

  @override
  _ProductPropertyState createState() => _ProductPropertyState();
}

class _ProductPropertyState extends State<ProductProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 350.0,
            child: Carousel(
              dotSize: 6.0,
              dotSpacing: 18.0,
              indicatorBgPadding: 10.0,
              dotBgColor: Colors.transparent,
              autoplay: false,
              images: [
                Image.asset(
                  widget.urun_resmi1,
                  fit: BoxFit.fitHeight,
                ),
                Image.asset(
                  widget.urun_resmi2,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Container(
                //height: 300.0,
                width: 350.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Center(
                            child: Text(
                              widget.urun_marka,
                              style: kProductPropertyBrandTextStyle,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Center(
                            child: Text(
                              widget.urun_ismi,
                              style: kProductsPropertyNameTextStyle,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Center(
                            child: Text('Ürün Bilgisi',
                                style: kProductPropertyHeaderTextStyle),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Fiyat :₺',
                                      style:
                                      kProductPropertiesTextStyle),
                                  Text(widget.urun_fiyati,
                                      style:
                                      kProductPropertiesTextStyle),
                                ],
                              ),
                              Text(widget.urun_bilgi2,
                                  style: kProductPropertiesTextStyle),
                              Text(widget.urun_bilgi1,
                                  style: kProductPropertiesTextStyle),
                              //SizedBox(width:40.0)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black),
                    Center(
                      child: Text('Diğer kurlara göre fiyat bilgisi almak için yan sayfaya geçiniz!',
                        style: kProductPropertiesTextStyle,
                      ),
                    ),
                    Center(
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 45,
                          color: kIconColor[800],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CurrencyPage(
                                    urun_fiyati:double.parse(
                                        widget.urun_fiyati))),
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