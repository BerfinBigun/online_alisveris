import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:xml2json/xml2json.dart';
import 'package:http/http.dart' as http;

import '../component/currencies.dart';
import '../constants.dart';

class CurrencyPage extends StatefulWidget {
  final urun_fiyati;
  CurrencyPage({
    this.urun_fiyati,
  });
  @override
  _CurrencyPageState createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  var kurlar = new List<dynamic>();
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    Xml2Json xml2json = new Xml2Json();
    String url = "https://tcmb.gov.tr/kurlar/today.xml";
    http.Response response = await http.get(url);
    xml2json.parse(utf8.decode(response.bodyBytes));
    var jsonData = xml2json.toGData();

    setState(() {
      var data = json.decode(jsonData)['Tarih_Date']['Currency'];
      kurlar = data.map((model) => Currencies.fromJson(model)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
      ),
      body: ListView.builder(
          itemCount: kurlar.length,
          itemBuilder: (context, index) {
            if (kurlar.length < 0) {
              return null;
            } else {
              return Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: ListTile(
                      title:
                      Text(kurlar[index].isim, style: kCurrenciesTextStyle),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ListTile(
                      title: Text(
                          (widget.urun_fiyati/ double.parse(kurlar[index].alis))
                              .toStringAsFixed(2)
                              .toString(),
                          style: kCurrenciesTextStyle),
                    ),
                  ),
                ],
              );
            }
          }),
    );
  }
}