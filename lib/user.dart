class User {

  String _name;
  int _age;
  double _height;
  double _weight;
  String _gender;
  User(this._name, this._age, this._height,this._weight,this._gender);

  User.map(dynamic obj) {
    this._name = obj["name"];
    this._age = obj["age"];
    this._height = obj["height"];
    this._weight = obj["weight"];
    this._gender = obj["gender"];
  }

  String get name => _name;

  int get age => _age;

  double get height => _height;

  double get weight => _weight;

  String get gender => _gender;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = _name;
    map["age"] = _age;
    map["height"] = _height;
    map["weight"] = _weight;
    map["gender"] = _gender;
    return map;
  }

}