// This example shows how to use serializtoin and deserialization of json

class UserModel {
  //properties
  late String id, fullname, email;

  //default constructor
  UserModel({required this.id, required this.fullname, required this.email});

  //map to object constructor which parses data from map with map data type containing string and dynamic values
  // deserialization
  UserModel.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.fullname = map['fullname'];
    this.email = map['email'];
  }

//object to map
  Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "fullname": this.fullname,
      "email": this.email,
    };
  }
}
