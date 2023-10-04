import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:task/screen/model/student.dart';

class FireStoreController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addStudent() async {
    firebaseFirestore.collection("Student").add({
      "name": "ahmad",
      "email": "ahmad@gmail.com",
      "password": "123456",
      "phone": "0597028861"
    });
  }
}
