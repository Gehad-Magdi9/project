import 'dart:ffi';

class UserModel {
  String? id;
  String? task;
  Bool? end;

  UserModel({this.id, this.task, this.end});

  UserModel.fromJson(Map map) {
    id = map['id'].toString();
    task = map['task'];
    end = map['end'];
  }
}