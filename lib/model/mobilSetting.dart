class MobilSetting {
  int? id;
  String? adSoyad;
  String? telefon;
  String? yas;
  String? eMail;
  String? sehir;

  MobilSetting({
    this.id,
    required this.adSoyad,
    required this.telefon,
    required this.yas,
    required this.eMail,
    required this.sehir,
  });

  MobilSetting.fromObject(Map<String, dynamic> object) {
    this.id = object["Id"];
    this.adSoyad = object["AdSoyad"];
    this.telefon = object["Telefon"];
    this.yas = object["Yas"];
    this.eMail = object["EMail"];
    this.sehir = object["Sehir"];
  }

  Map<String, dynamic> toObject() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data["Id"] = this.id;
    data["AdSoyad"] = this.adSoyad;
    data["Telefon"] = this.telefon;
    data["Yas"] = this.yas;
    data["EMail"] = this.eMail;
    data["Sehir"] = this.sehir;
    return data;
  }
}


/*class MobilSettings {
  late String _adSoyad;
  late String _telefon;
  late String _yas;
  late String _eMail;
  late String _sehir;

  MobilSettings(
    this._adSoyad,
    this._telefon,
    this._yas,
    this._eMail,
    this._sehir,
  );


  set adSoyad(String value) => value;
  set telefon(String value) => value;
  set yas(String value) => value;
  set eMail(String value) => value;
  set sehir(String value) => value;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    map["AdSoyad"] = _adSoyad;
    map["Telefon"] = _telefon;
    map["Yas"] = _yas;
    map["EMail"] = _eMail;
    map["Sehir"] = _sehir;

    return map;
  }

  //DB  deki ile aynı isimde olması gerek büyük-küçük harfe dikkat et
  MobilSettings.fromObject(dynamic o) {
    this._adSoyad = o["AdSoyad"];
    this._telefon = o["Telefon"];
    this._yas = o["Yas"];
    this._eMail = o["EMail"];
    this._sehir = o["Sehir"];
  }

  // MobilSettings.fromJson(Map o) {
  //   this._id = o["id"];
  //   this._adSoyad = o["adSoyad"];
  //   this._telefon = o["telefon"];
  //   this._yas = o["yas"];
  //   this._eMail = o["eMail"];
  //   this._sehir = o["sehir"];
  // }

  Map toJson() {
    return {
      //"id": _id2,
      "adSoyad": _adSoyad,
      "telefon": _telefon,
      "yas": _yas,
      "eMail": _eMail,
      "sehir": _sehir,
    };
  }
}*/

