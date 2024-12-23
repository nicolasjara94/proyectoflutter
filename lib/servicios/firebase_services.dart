import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPersonas() async {
  List personas = [];
  CollectionReference collectionReferencePersonas = db.collection('personas');

  QuerySnapshot queryPersonas = await collectionReferencePersonas.get();

  queryPersonas.docs.forEach((documento) {
    personas.add(documento.data());
  });
  return personas;
}
