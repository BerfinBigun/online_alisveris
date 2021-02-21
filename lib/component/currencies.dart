class Currencies{
  String isim;
  String alis;

  Currencies( {this.isim,this.alis});

  Currencies.fromJson(Map<String, dynamic> json) {
    isim=  json['Isim']["\$t"];
    alis= json['ForexBuying']["\$t"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Isim'] = this.isim;
    data['ForexBuying'] = this.alis;
    return data;
  }
}
