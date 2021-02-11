class LaunchModel {
  Fairings _fairings;
  Links _links;
  String _staticFireDateUtc;
  int _staticFireDateUnix;
  bool _tbd;
  bool _net;
  int _window;
  String _rocket;
  bool _success;
  String _details;
  // List<dynamic> _crew;
  // List<dynamic> _ships;
  // List<dynamic> _capsules;
  List<String> _payloads;
  String _launchpad;
  bool _autoUpdate;
  // dynamic _launchLibraryId;
  List<Failures> _failures;
  int _flightNumber;
  String _name;
  String _dateUtc;
  int _dateUnix;
  String _dateLocal;
  String _datePrecision;
  bool _upcoming;
  List<Cores> _cores;
  String _id;

  Fairings get fairings => _fairings;
  Links get links => _links;
  String get staticFireDateUtc => _staticFireDateUtc;
  int get staticFireDateUnix => _staticFireDateUnix;
  bool get tbd => _tbd;
  bool get net => _net;
  int get window => _window;
  String get rocket => _rocket;
  bool get success => _success;
  String get details => _details;
  // List<dynamic> get crew => _crew;
  // List<dynamic> get ships => _ships;
  // List<dynamic> get capsules => _capsules;
  List<String> get payloads => _payloads;
  String get launchpad => _launchpad;
  bool get autoUpdate => _autoUpdate;
  // dynamic get launchLibraryId => _launchLibraryId;
  List<Failures> get failures => _failures;
  int get flightNumber => _flightNumber;
  String get name => _name;
  String get dateUtc => _dateUtc;
  int get dateUnix => _dateUnix;
  String get dateLocal => _dateLocal;
  String get datePrecision => _datePrecision;
  bool get upcoming => _upcoming;
  List<Cores> get cores => _cores;
  String get id => _id;

  LaunchModel({
      Fairings fairings, 
      Links links, 
      String staticFireDateUtc, 
      int staticFireDateUnix, 
      bool tbd, 
      bool net, 
      int window, 
      String rocket, 
      bool success, 
      String details, 
      // List<dynamic> crew,
      // List<dynamic> ships,
      // List<dynamic> capsules,
      List<String> payloads, 
      String launchpad, 
      bool autoUpdate, 
      // dynamic launchLibraryId,
      List<Failures> failures, 
      int flightNumber, 
      String name, 
      String dateUtc, 
      int dateUnix, 
      String dateLocal, 
      String datePrecision, 
      bool upcoming, 
      List<Cores> cores, 
      String id}){
    _fairings = fairings;
    _links = links;
    _staticFireDateUtc = staticFireDateUtc;
    _staticFireDateUnix = staticFireDateUnix;
    _tbd = tbd;
    _net = net;
    _window = window;
    _rocket = rocket;
    _success = success;
    _details = details;
    // _crew = crew;
    // _ships = ships;
    // _capsules = capsules;
    _payloads = payloads;
    _launchpad = launchpad;
    _autoUpdate = autoUpdate;
    // _launchLibraryId = launchLibraryId;
    _failures = failures;
    _flightNumber = flightNumber;
    _name = name;
    _dateUtc = dateUtc;
    _dateUnix = dateUnix;
    _dateLocal = dateLocal;
    _datePrecision = datePrecision;
    _upcoming = upcoming;
    _cores = cores;
    _id = id;
}

  LaunchModel.fromJson(dynamic json) {
    _fairings = json["fairings"] != null ? Fairings.fromJson(json["fairings"]) : null;
    _links = json["links"] != null ? Links.fromJson(json["links"]) : null;
    _staticFireDateUtc = json["static_fire_date_utc"];
    _staticFireDateUnix = json["static_fire_date_unix"];
    _tbd = json["tbd"];
    _net = json["net"];
    _window = json["window"];
    _rocket = json["rocket"];
    _success = json["success"];
    _details = json["details"];
    // if (json["crew"] != null) {
    //   _crew = [];
    //   json["crew"].forEach((v) {
    //     _crew.add(dynamic.fromJson(v));
    //   });
    // }
    // if (json["ships"] != null) {
    //   _ships = [];
    //   json["ships"].forEach((v) {
    //     _ships.add(dynamic.fromJson(v));
    //   });
    // }
    // if (json["capsules"] != null) {
    //   _capsules = [];
    //   json["capsules"].forEach((v) {
    //     _capsules.add(dynamic.fromJson(v));
    //   });
    // }
    _payloads = json["payloads"] != null ? json["payloads"].cast<String>() : [];
    _launchpad = json["launchpad"];
    _autoUpdate = json["auto_update"];
    // _launchLibraryId = json["launch_library_id"];
    if (json["failures"] != null) {
      _failures = [];
      json["failures"].forEach((v) {
        _failures.add(Failures.fromJson(v));
      });
    }
    _flightNumber = json["flight_number"];
    _name = json["name"];
    _dateUtc = json["date_utc"];
    _dateUnix = json["date_unix"];
    _dateLocal = json["date_local"];
    _datePrecision = json["date_precision"];
    _upcoming = json["upcoming"];
    if (json["cores"] != null) {
      _cores = [];
      json["cores"].forEach((v) {
        _cores.add(Cores.fromJson(v));
      });
    }
    _id = json["id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_fairings != null) {
      map["fairings"] = _fairings.toJson();
    }
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
    // if (_crew != null) {
    //   map["crew"] = _crew.map((v) => v.toJson()).toList();
    // }
    // if (_ships != null) {
    //   map["ships"] = _ships.map((v) => v.toJson()).toList();
    // }
    // if (_capsules != null) {
    //   map["capsules"] = _capsules.map((v) => v.toJson()).toList();
    // }
    map["payloads"] = _payloads;
    map["launchpad"] = _launchpad;
    map["auto_update"] = _autoUpdate;
    // map["launch_library_id"] = _launchLibraryId;
    if (_failures != null) {
      map["failures"] = _failures.map((v) => v.toJson()).toList();
    }
    map["flight_number"] = _flightNumber;
    map["name"] = _name;
    map["date_utc"] = _dateUtc;
    map["date_unix"] = _dateUnix;
    map["date_local"] = _dateLocal;
    map["date_precision"] = _datePrecision;
    map["upcoming"] = _upcoming;
    if (_cores != null) {
      map["cores"] = _cores.map((v) => v.toJson()).toList();
    }
    map["id"] = _id;
    return map;
  }

}

class Cores {
  String _core;
  int _flight;
  bool _gridfins;
  bool _legs;
  bool _reused;
  bool _landingAttempt;
  // dynamic _landingSuccess;
  // dynamic _landingType;
  // dynamic _landpad;

  String get core => _core;
  int get flight => _flight;
  bool get gridfins => _gridfins;
  bool get legs => _legs;
  bool get reused => _reused;
  bool get landingAttempt => _landingAttempt;
  // dynamic get landingSuccess => _landingSuccess;
  // dynamic get landingType => _landingType;
  // dynamic get landpad => _landpad;

  Cores({
      String core, 
      int flight, 
      bool gridfins, 
      bool legs, 
      bool reused, 
      bool landingAttempt/*,
      dynamic landingSuccess, 
      dynamic landingType, 
      dynamic landpad*/}){
    _core = core;
    _flight = flight;
    _gridfins = gridfins;
    _legs = legs;
    _reused = reused;
    _landingAttempt = landingAttempt;
    // _landingSuccess = landingSuccess;
    // _landingType = landingType;
    // _landpad = landpad;
}

  Cores.fromJson(dynamic json) {
    _core = json["core"];
    _flight = json["flight"];
    _gridfins = json["gridfins"];
    _legs = json["legs"];
    _reused = json["reused"];
    _landingAttempt = json["landing_attempt"];
    // _landingSuccess = json["landing_success"];
    // _landingType = json["landing_type"];
    // _landpad = json["landpad"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["core"] = _core;
    map["flight"] = _flight;
    map["gridfins"] = _gridfins;
    map["legs"] = _legs;
    map["reused"] = _reused;
    map["landing_attempt"] = _landingAttempt;
    // map["landing_success"] = _landingSuccess;
    // map["landing_type"] = _landingType;
    // map["landpad"] = _landpad;
    return map;
  }

}

class Failures {
  int _time;
  // dynamic _altitude;
  String _reason;

  int get time => _time;
  // dynamic get altitude => _altitude;
  String get reason => _reason;

  Failures({
      int time, 
      // dynamic altitude,
      String reason}){
    _time = time;
    // _altitude = altitude;
    _reason = reason;
}

  Failures.fromJson(dynamic json) {
    _time = json["time"];
    // _altitude = json["altitude"];
    _reason = json["reason"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["time"] = _time;
    // map["altitude"] = _altitude;
    map["reason"] = _reason;
    return map;
  }

}

class Links {
  Patch _patch;
  Reddit _reddit;
  // dynamic _presskit;
  String _webcast;
  String _youtubeId;
  String _article;
  String _wikipedia;

  Patch get patch => _patch;
  Reddit get reddit => _reddit;
  // dynamic get presskit => _presskit;
  String get webcast => _webcast;
  String get youtubeId => _youtubeId;
  String get article => _article;
  String get wikipedia => _wikipedia;

  Links({
      Patch patch, 
      Reddit reddit, 
      // dynamic presskit,
      String webcast, 
      String youtubeId, 
      String article, 
      String wikipedia}){
    _patch = patch;
    _reddit = reddit;
    // _presskit = presskit;
    _webcast = webcast;
    _youtubeId = youtubeId;
    _article = article;
    _wikipedia = wikipedia;
}

  Links.fromJson(dynamic json) {
    _patch = json["patch"] != null ? Patch.fromJson(json["patch"]) : null;
    _reddit = json["reddit"] != null ? Reddit.fromJson(json["reddit"]) : null;
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
    if (_reddit != null) {
      map["reddit"] = _reddit.toJson();
    }
    // map["presskit"] = _presskit;
    map["webcast"] = _webcast;
    map["youtube_id"] = _youtubeId;
    map["article"] = _article;
    map["wikipedia"] = _wikipedia;
    return map;
  }

}


class Reddit {
  String _campaign;
  String _launch;
  String _media;
  String _recovery;

  String get campaign => _campaign;
  String get launch => _launch;
  String get media => _media;
  String get recovery => _recovery;

  Reddit({
    String campaign,
    String launch,
    String media,
    String recovery}){
    _campaign = campaign;
    _launch = launch;
    _media = media;
    _recovery = recovery;
}

  Reddit.fromJson(dynamic json) {
    _campaign = json["campaign"];
    _launch = json["launch"];
    _media = json["media"];
    _recovery = json["recovery"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["campaign"] = _campaign;
    map["launch"] = _launch;
    map["media"] = _media;
    map["recovery"] = _recovery;
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

class Fairings {
  bool _reused;
  bool _recoveryAttempt;
  bool _recovered;
  // List<dynamic> _ships;

  bool get reused => _reused;
  bool get recoveryAttempt => _recoveryAttempt;
  bool get recovered => _recovered;
  // List<dynamic> get ships => _ships;

  Fairings({
      bool reused, 
      bool recoveryAttempt, 
      bool recovered}){
    _reused = reused;
    _recoveryAttempt = recoveryAttempt;
    _recovered = recovered;
    // _ships = ships;
}

  Fairings.fromJson(dynamic json) {
    _reused = json["reused"];
    _recoveryAttempt = json["recovery_attempt"];
    _recovered = json["recovered"];
    // if (json["ships"] != null) {
    //   _ships = [];
    //   json["ships"].forEach((v) {
    //     _ships.add(dynamic.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["reused"] = _reused;
    map["recovery_attempt"] = _recoveryAttempt;
    map["recovered"] = _recovered;
    // if (_ships != null) {
    //   map["ships"] = _ships.map((v) => v.toJson()).toList();
    // }
    return map;
  }

}