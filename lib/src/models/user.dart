library gitter.user;

class User {
  String id;
  String username;
  String displayName;
  String url;
  String avatarUrlSmall;
  String avatarUrlMedium;
  bool staff;
  List<String> providers;
  num v;
  String gv;

  User();

  factory User.fromJson(Map<String, dynamic> json) => User.fromMap(json);

  @override
  String toString() => User.toMap(this).toString();

  static Map toMap(User model) {
    Map ret = new Map();
    if (model != null) {
      if (model.id != null) {
        ret["id"] = model.id;
      }
      if (model.username != null) {
        ret["username"] = model.username;
      }
      if (model.displayName != null) {
        ret["displayName"] = model.displayName;
      }
      if (model.url != null) {
        ret["url"] = model.url;
      }
      if (model.avatarUrlSmall != null) {
        ret["avatarUrlSmall"] = model.avatarUrlSmall;
      }
      if (model.avatarUrlMedium != null) {
        ret["avatarUrlMedium"] = model.avatarUrlMedium;
      }
      if (model.staff != null) {
        ret["staff"] = model.staff;
      }
      if (model.providers != null) {
        ret["providers"] = model.providers
            ?.map((String val) => val != null ? val : null)
            ?.toList();
      }
      if (model.v != null) {
        ret["v"] = model.v;
      }
      if (model.gv != null) {
        ret["gv"] = model.gv;
      }
    }
    return ret;
  }

  static User fromMap(Map map) {
    if (map == null) return null;
    User model = new User();
    model.id = map["id"];
    model.username = map["username"];
    model.displayName = map["displayName"];
    model.url = map["url"];
    model.avatarUrlSmall = map["avatarUrlSmall"];
    model.avatarUrlMedium = map["avatarUrlMedium"];
    model.staff = map["staff"];
    model.providers = (map["providers"] as List<dynamic>)
        ?.cast<String>()
        ?.map((val) => val)
        ?.toList();
    model.v = map["v"];
    model.gv = map["gv"];
    return model;
  }
}
