import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/featuers/dashboard/modules/tasks/model/repo/parent_data.dart';
import 'package:project/featuers/dashboard/modules/tasks/model/user_model.dart';

class FirebaseRepo extends ParentRepo {
  static FirebaseRepo instance = FirebaseRepo._init();

  FirebaseRepo._init();

  @override
  Future<List<UserModel>> fetch() async { 
    return await FirebaseFirestore.instance.collection('taskes').get().then((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((e) {

        final Map data = e.data() as Map;

        Map m = {
            'task': data.containsKey('task') ? data['task'] : "nonf",
          'end': data.containsKey('end') ? data['end'] : "non",
          'id': e.reference.id,
        };
        return UserModel.fromJson(m);
      }).toList();
    });
  }

  @override
  Future<void> delete({required int id})  async {
    CollectionReference tasks = FirebaseFirestore.instance.collection('tasks');
    
  }

  @override
  Future<void> insert({required String name, String? address}) async {
    CollectionReference tasks = FirebaseFirestore.instance.collection('tasks');
    await tasks
        .add({
          'taak-3': 'finished',
          'data': 13, 
        })
        .then((value) => log("task Added"))
        .catchError((error) => log("Failed to add user: $error"));
  }
}