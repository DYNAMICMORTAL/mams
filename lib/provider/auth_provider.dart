import 'dart:convert';
import 'dart:io';

import '../data_model/user_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  bool _isSignedIn = false;
  bool get isSignedIn => _isSignedIn;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  String? _uid;
  String get uid => _uid!;
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber!;
  UserModel? _userModel;
  UserModel get userModel => _userModel!;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;


  AuthProvider() {
    checkSign();
  }

  void checkSign() async{
    final SharedPreferences s = await SharedPreferences.getInstance();
    _isSignedIn = s.getBool("is_signedin") ?? false;
    notifyListeners();
  }

  Future setSignIn() async {
    final SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("is_signedin", true);
    _isSignedIn = true;
    notifyListeners();
  }

// sign In
//   void signInWithPhone(BuildContext context, String phoneNumber) async {
//     try{
//       await _firebaseAuth.verifyPhoneNumber(
//         phoneNumber: phoneNumber,
//           verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async{
//             await _firebaseAuth.signInWithCredential(phoneAuthCredential);
//           },
//           verificationFailed: (error){
//             throw Exception(error.message);
//           },
//           // codeSent: (verificationId, forceResendingToken) {
//           //   Navigator.push(context, MaterialPageRoute(builder: (context)=> OtpViewPage(verificationId: verificationId)));
//           // },
//           codeAutoRetrievalTimeout: (verificationId){});
//     } on FirebaseAuthException catch(e){
//       // showSnackBar(context, e.message.toString());
//     }
//   }

  //otp
void verifyOtp({required BuildContext context, required String verificationId, required String userOtp,required Function onSucess}) async {
    _isLoading = true;
    notifyListeners();

    try{
      PhoneAuthCredential creds = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: userOtp);
      User? user = (await _firebaseAuth.signInWithCredential(creds)).user!;
      if(user!=null){
        _uid=user.uid;
        onSucess();
      }
      _isLoading = false;
      notifyListeners();
    } on FirebaseAuthException catch(e){
      // showSnackBar(context, e.message.toString());
      _isLoading = false;
      notifyListeners();
    }
}


Future<bool> checkExistingUser () async {
    DocumentSnapshot snapshot = await _firebaseFirestore.collection("user").doc(_uid).get();
    if(snapshot.exists){
      print("USER EXISTS!!!");
      return true;
    }else{
      print("New User");
      return false;
    }
}

 void saveUserDataToFirebase({required BuildContext context, required UserModel userModel, required File profilePic, required Function onsSuccess}) async {
    _isLoading = true;
    notifyListeners();
    try{
      await storeFileToStorage("prfilePic/$_uid", profilePic).then((value) {
        userModel.profilePic = value;
        userModel.createdAt = DateTime.now().millisecondsSinceEpoch.toString();
        userModel.phoneNumber = _firebaseAuth.currentUser!.phoneNumber!;
        userModel.uid = _firebaseAuth.currentUser!.uid;

      });
      _userModel = userModel;

      await _firebaseFirestore.collection("users").doc(_uid).set(userModel.toMap()).then((value) {
        onsSuccess();
        _isLoading = false;
        notifyListeners();
      });
    } on FirebaseAuthException catch(e) {
      // showSnackBar(context, e.message.toString());
      _isLoading = false;
      notifyListeners();
    }
 }


 Future<String> storeFileToStorage(String ref, File file) async{
    UploadTask uploadTask = _firebaseStorage.ref().child(ref).putFile(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl =  await snapshot.ref.getDownloadURL();
    return downloadUrl;
 }


 Future getDataFromFirestore() async {
    await _firebaseFirestore.collection("users").doc(_firebaseAuth.currentUser!.uid).get().then((DocumentSnapshot snapshot) {
      _userModel = UserModel(name: snapshot['name'], profilePic: snapshot['profilePic'], createdAt: snapshot['createdAt'], phoneNumber: snapshot['phoneNumber'], uid: snapshot['uid']);
      _uid = userModel.uid;
    });
 }

 Future saveUserDataToSP() async {
    SharedPreferences s = await SharedPreferences.getInstance();
    await s.setString("user_model", jsonEncode(userModel.toMap()));
 }


 Future getDataFromSP() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    String data = s.getString("user_model") ?? '';
    _userModel = UserModel.fromMap(jsonDecode(data));
    _uid = _userModel!.uid;
    _phoneNumber = _userModel!.phoneNumber;
    notifyListeners();
 }

 Future userSignOut() async {
    SharedPreferences s = await SharedPreferences.getInstance();
    await _firebaseAuth.signOut();
    _isSignedIn = false;
    notifyListeners();
    s.clear();
 }
}