class MobilSettings {
  late int _id;
  late String _id2;
  late String _abbrevation;
  late String _active;
  late String _configClass;
  late String _databaseId;
  late String _dbName;
  late String _deleted;
  late String _description;
  late String _oskey;
  late String _priority;
  late String _proxy;
  late String _proxyr;
  late String _schoolName;

  MobilSettings(
      this._id2,
      this._abbrevation,
      this._active,
      this._configClass,
      this._databaseId,
      this._dbName,
      this._deleted,
      this._description,
      this._oskey,
      this._priority,
      this._proxy,
      this._proxyr,
      this._schoolName);

  int get id => _id;
  String get id2 => _id2;
  String get abbrevation => _abbrevation;
  String get active => _active;
  String get configClass => _configClass;
  String get databaseId => _databaseId;
  String get dbName => _dbName;
  String get deleted => _deleted;
  String get description => _description;
  String get oskey => _oskey;
  String get priority => _priority;
  String get proxy => _proxy;
  String get proxyr => _proxyr;
  String get schoolName => _schoolName;

  set id2(String value) => value;
  set abbrevation(String value) => value;
  set active(String value) => value;
  set configClass(String value) => value;
  set databaseId(String value) => value;
  set dbName(String value) => value;
  set deleted(String value) => value;
  set description(String value) => value;
  set oskey(String value) => value;
  set priority(String value) => value;
  set proxy(String value) => value;
  set proxyr(String value) => value;
  set schoolName(String value) => value;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) {
      map["id"] = _id;
    }
    map["Id2"] = _id2;
    map["Abbrevation"] = _abbrevation;
    map["Active"] = _active;
    map["ConfigClass"] = _configClass;
    map["DatabaseId"] = _databaseId;
    map["DbName"] = _dbName;
    map["Deleted"] = _deleted;
    map["Description"] = _description;
    map["Oskey"] = _oskey;
    map["Priority"] = _priority;
    map["Proxy"] = _proxy;
    map["Proxyr"] = _proxyr;
    map["SchoolName"] = _schoolName;
    return map;
  }

  //DB  deki ile aynı isimde olması gerek büyük-küçük harfe dikkat et
  MobilSettings.fromObject(dynamic o) {
    this._id = o["Id"];
    this._id2 = o["Id2"];
    this._abbrevation = o["Abbrevation"];
    this._active = o["Active"];
    this._configClass = o["ConfigClass"];
    this._databaseId = o["DatabaseId"];
    this._dbName = o["DbName"];
    this._deleted = o["Deleted"];
    this._description = o["Description"];
    this._oskey = o["Oskey"];
    this._priority = o["Priority"];
    this._proxy = o["Proxy"];
    this._proxyr = o["Proxyr"];
    this._schoolName = o["SchoolName"];
  }

  MobilSettings.fromJson(Map o) {
    this._id2 = o["id"];
    this._abbrevation = o["abbrevation"];
    this._active = o["active"];
    this._configClass = o["configclass"];
    this._databaseId = o["database_id"];
    this._dbName = o["dbname"];
    this._deleted = o["deleted"];
    this._description = o["description"];
    this._oskey = o["oskey"];
    this._priority = o["priority"];
    this._proxy = o["proxy"];
    this._proxyr = o["proxyr"];
    this._schoolName = o["schoolName"];
  }

  Map toJson() {
    return {
      "id": _id2,
      "abbrevation": _abbrevation,
      "active": _active,
      "configClass": _configClass,
      "databaseId": _databaseId,
      "dbName": _dbName,
      "deleted": _deleted,
      "description": _description,
      "colOskey": _oskey,
      "priority": _priority,
      "proxy": _proxy,
      "proxyr": _proxyr,
      "schoolName": _schoolName
    };
  }
}
