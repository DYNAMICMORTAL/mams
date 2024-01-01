import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // Google Sign In
  signInWithGoogle() async {
    //begin
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //obtain
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // create a new creds for User
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    // lets sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}