
import 'package:cloud_firestore/cloud_firestore.dart';

class Utilisateur{
  String nom="";
  String prenom="";
  GeoPoint? localiastion;
  String uid="";


  Utilisateur(DocumentSnapshot snapshot){
    uid = snapshot.id;
    Map <String, dynamic> map = snapshot.data() as Map<String,dynamic>;
    nom = map["NOM"];
    prenom = map["PRENOM"];
    localiastion = map["LOCALISATION"];

  }

}