class LaunchDetailModel {
  Links _links;
  String _staticFireDateUtc;
  int _staticFireDateUnix;
  bool _tbd;
  bool _net;
  int _window;
  String _rocket;
  bool _success;
  String _details;
  String _launchpad;
  bool _autoUpdate;
  int _flightNumber;
  String _name;
  String _dateUtc;
  int _dateUnix;
  String _dateLocal;
  String _datePrecision;
  bool _upcoming;
  String _id;
  Links get links => _links;
  String get staticFireDateUtc => _staticFireDateUtc;
  int get staticFireDateUnix => _staticFireDateUnix;
  bool get tbd => _tbd;
  bool get net => _net;
  int get window => _window;
  String get rocket => _rocket;
  bool get success => _success;
  String get details => _details;
  String get launchpad => _launchpad;
  bool get autoUpdate => _autoUpdate;
  int get flightNumber => _flightNumber;
  String get name => _name;
  String get dateUtc => _dateUtc;
  int get dateUnix => _dateUnix;
  String get dateLocal => _dateLocal;
  String get datePrecision => _datePrecision;
  bool get upcoming => _upcoming;
  String get id => _id;

  LaunchDetailModel({
      Links links,
      String staticFireDateUtc, 
      int staticFireDateUnix, 
      bool tbd, 
      bool net, 
      int window, 
      String rocket, 
      bool success, 
      String details,
      String launchpad,
      bool autoUpdate, 
      int flightNumber,
      String name, 
      String dateUtc, 
      int dateUnix, 
      String dateLocal, 
      String datePrecision, 
      bool upcoming, 
      String id}){
    _links = links;
    _staticFireDateUtc = staticFireDateUtc;
    _staticFireDateUnix = staticFireDateUnix;
    _tbd = tbd;
    _net = net;
    _window = window;
    _rocket = rocket;
    _success = success;
    _details = details;
    _launchpad = launchpad;
    _autoUpdate = autoUpdate;
    _flightNumber = flightNumber;
    _name = name;
    _dateUtc = dateUtc;
    _dateUnix = dateUnix;
    _dateLocal = dateLocal;
    _datePrecision = datePrecision;
    _upcoming = upcoming;
    _id = id;
}

  LaunchDetailModel.fromJson(dynamic json) {
    _links = json["links"] != null ? Links.fromJson(json["links"]) : null;
    _staticFireDateUtc = json["static_fire_date_utc"];
    _staticFireDateUnix = json["static_fire_date_unix"];
    _tbd = json["tbd"];
    _net = json["net"];
    _window = json["window"];
    _rocket = json["rocket"];
    _success = json["success"];
    _details = json["details"];
    _launchpad = json["launchpad"];
    _autoUpdate = json["auto_update"];
    _flightNumber = json["flight_number"];
    _name = json["name"];
    _dateUtc = json["date_utc"];
    _dateUnix = json["date_unix"];
    _dateLocal = json["date_local"];
    _datePrecision = json["date_precision"];
    _upcoming = json["upcoming"];
    _id = json["id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_links != null) {
      map["links"] = _links.toJson();
    }
    map["static_fire_date_utc"] = _staticFireDateUtc;
    map["static_fire_date_unix"] = _staticFireDateUnix;
    map["tbd"] = _tbd;
    map["net"] = _net;
    map["window"] = _window;
    map["rocket"] = _rocket;
    map["success"] = _success;
    map["details"] = _details;
    map["launchpad"] = _launchpad;
    map["auto_update"] = _autoUpdate;
    map["flight_number"] = _flightNumber;
    map["name"] = _name;
    map["date_utc"] = _dateUtc;
    map["date_unix"] = _dateUnix;
    map["date_local"] = _dateLocal;
    map["date_precision"] = _datePrecision;
    map["upcoming"] = _upcoming;
    map["id"] = _id;
    return map;
  }

}


class Links {
  Patch _patch;
  String _webcast;
  String _youtubeId;
  String _article;
  String _wikipedia;

  Patch get patch => _patch;
  String get webcast => _webcast;
  String get youtubeId => _youtubeId;
  String get article => _article;
  String get wikipedia => _wikipedia;

  Links({
      Patch patch, 
      // dynamic presskit,
      String webcast, 
      String youtubeId, 
      String article, 
      String wikipedia}){
    _patch = patch;
    // _presskit = presskit;
    _webcast = webcast;
    _youtubeId = youtubeId;
    _article = article;
    _wikipedia = wikipedia;
}

  Links.fromJson(dynamic json) {
    _patch = json["patch"] != null ? Patch.fromJson(json["patch"]) : null;
    // _presskit = json["presskit"];
    _webcast = json["webcast"];
    _youtubeId = json["youtube_id"];
    _article = json["article"];
    _wikipedia = json["wikipedia"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_patch != null) {
      map["patch"] = _patch.toJson();
    }
    // map["presskit"] = _presskit;
    map["webcast"] = _webcast;
    map["youtube_id"] = _youtubeId;
    map["article"] = _article;
    map["wikipedia"] = _wikipedia;
    return map;
  }

}



class Patch {
  String _small;
  String _large;

  String get small => _small;
  String get large => _large;

  Patch({
      String small, 
      String large}){
    _small = small;
    _large = large;
}

  Patch.fromJson(dynamic json) {
    _small = json["small"];
    _large = json["large"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["small"] = _small;
    map["large"] = _large;
    return map;
  }

}
