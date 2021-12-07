import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth firebaseAuth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
//FirebaseStorage storage = FirebaseStorage.instance;

CollectionReference usersRef = firestore.collection('users');
