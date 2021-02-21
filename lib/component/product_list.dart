import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_alisveris/component/products.dart';
class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  var urun_listesi=[
    {"marka":"Mavi",
      "isim": "V Yaka Tişört",
      "resim1": "images/tişört.jfif",
      "resim2": "images/tişört2.jfif",
      "fiyat":"41.99",
      "bilgi1":"Beden : S",
      "bilgi2":"Renk : Kiremit ",
    },
    {
      "marka":"Pull & Bear",
      "isim": "Sweatshirt",
      "resim1": "images/sweat.jfif",
      "resim2": "images/sweat2.jfif",
      "fiyat":"160",
      "bilgi1":"Beden : L",
      "bilgi2":"Renk : Bej",
    },
    {
      "marka":"Mango",
      "isim": "Kapaklı Zincir Çanta",
      "resim1": "images/canta1.jfif",
      "resim2": "images/canta2.jfif",
      "fiyat":"99.90",
      "bilgi1":" ",
      "bilgi2":"Renk : Siyah",

    },
    {
      "marka":"DeFacto",
      "isim": "Jean Pantolon",
      "resim1": "images/pantolon1.jfif",
      "resim2": "images/pantolon2.jfif",
      "fiyat":"119.99",
      "bilgi1":"Beden : 36",
      "bilgi2":"Renk : Buz Mavisi",
    },
    {
      "marka":"Happiness İst.",
      "isim": "Triko Hırka",
      "resim1": "images/hırka1.jfif",
      "resim2": "images/hırka2.jfif",
      "fiyat":"75",
      "bilgi1":"Beden : S",
      "bilgi2":"Renk : Çağla Yeşili",
    },
    {
      "marka":"Bershka",
      "isim": "Swearshirt",
      "resim1": "images/psweat1.jfif",
      "resim2": "images/psweat2.jfif",
      "fiyat":"77.95",
      "bilgi1":"Beden : M",
      "bilgi2":"Renk : Lila",
    },
    {
      "marka":"Ray-Ban",
      "isim": "Güneş Gözlüğü",
      "resim1": "images/gözlük1.jfif",
      "resim2": "images/gözlük2.jfif",
      "fiyat":"600",
      "bilgi1":" ",
      "bilgi2":"Çerçeve Rengi : Siyah",
    },

    {
      "marka":"Oysho",
      "isim": "Süet Terlik",
      "resim1": "images/terlik1.jfif",
      "resim2": "images/terlik2.jfif",
      "fiyat":"159.90",
      "bilgi1":"Beden : 38",
      "bilgi2":"Renk : Yeşil",
    },
    {
      "marka":"Flormar",
      "isim": "Oje",
      "resim1": "images/oje.jfif",
      "resim2": " ",
      "fiyat":"8.95",
      "bilgi1":" ",
      "bilgi2":"Renk : Bordo",
    },
    {
      "marka":"Bershka",
      "isim": "Kaban",
      "resim1": "images/kaban1.jfif",
      "resim2": "images/kaban2.jfif",
      "fiyat":"239.95",
      "bilgi1":"Beden : L",
      "bilgi2":"Renk : Gri",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: urun_listesi.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context , int index){
        return Products(
          urun_marka: urun_listesi[index]["marka"],
          urun_ismi: urun_listesi[index]["isim"],
          urun_resmi1: urun_listesi[index]["resim1"],
          urun_resmi2: urun_listesi[index]["resim2"],
          urun_fiyati: urun_listesi[index]["fiyat"],
          urun_bilgi1:urun_listesi[index]["bilgi1"],
          urun_bilgi2:urun_listesi[index]["bilgi2"],
        );
      },
    );
  }
}



