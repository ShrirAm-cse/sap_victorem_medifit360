//import 'package:brew_crew/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseClinicService {

  final String? uid;
  DatabaseClinicService({ this.uid });

  // collection reference
  final CollectionReference brewCollection = FirebaseFirestore.instance.collection('clinic');

  Future<void> updateclinicData(String name,  String regcouncil,  String regnum,  String specialisation,  String email,  String password,



  String clinicreg,
  String clinicName,
  String address,
  String city) async {
    return await brewCollection.doc(uid).set({

    'name' :name,
      'val' :3,
    'regcouncil' :regcouncil,
    'regnum' :regnum,
    'specialisation' :specialisation,
    'email' :email,
    'password' :password,


    });
  }
/*
  // brew list from snapshot
  List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      //print(doc.data);
      return Brew(
          name: doc.data['name'] ?? '',
          strength: doc.data['strength'] ?? 0,
          sugars: doc.data['sugars'] ?? '0'
      );
    }).toList();
  }

  // user data from snapshots
  User _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
        uid: uid,
        name: snapshot.data['name'],
        sugars: snapshot.data['sugars'],
        strength: snapshot.data['strength']
    );
  }

  // get brews stream
  Stream<List<Brew>> get brews {
    return brewCollection.snapshots()
        .map(_brewListFromSnapshot);
  }

  // get user doc stream
  Stream<UserData> get userData {
    return brewCollection.document(uid).snapshots()
        .map(_userDataFromSnapshot);
  }
*/
}