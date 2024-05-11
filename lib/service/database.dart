import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future<Stream<QuerySnapshot>> getValueData() async {
    return await FirebaseFirestore.instance.collection("debit").snapshots();
  }
}