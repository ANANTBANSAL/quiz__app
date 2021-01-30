import 'package:firebase_auth/firebase_auth.dart' as  auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService
{
  AuthService._();
 static auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
       static Future<auth.User> emailsignIn(String email, String password ) async {

                                auth.UserCredential userCredential =await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
                                auth.User user = userCredential.user;
                                return user;
                              }
      static Future<auth.User> signUp(String email, String password)async{
                                auth.UserCredential userCredential= await _firebaseAuth.createUserWithEmailAndPassword(email:email, password:password);

                           }

  static Future<auth.User> googleSignIn() async {
                                    final GoogleSignIn _googleSignIn = new GoogleSignIn();
                                    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
                                    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
                                    auth.OAuthCredential oAuthCredential = auth.GoogleAuthProvider.credential(
                                        accessToken: googleSignInAuthentication.accessToken,
                                        idToken: googleSignInAuthentication.idToken);
                                    auth.UserCredential userCredential =
                                    await _firebaseAuth.signInWithCredential(oAuthCredential);
                                    auth.User user = userCredential.user;
                                    return user;
  }


     static  Future<User> FacebooksignIn() async {
                                                final FacebookLogin facebookSignIn = new FacebookLogin();
                                                final FacebookLoginResult result =
                                                await facebookSignIn.logInWithReadPermissions(['email']);
                                                    final  accessToken = result.accessToken.token;
                                                    auth.OAuthCredential oAuthCredential = auth.FacebookAuthProvider.credential(accessToken);
                                                   auth.UserCredential userCredential =
                                                    await _firebaseAuth.signInWithCredential(oAuthCredential);
                                                    auth.User user = userCredential.user;
                                                    return user;
}


   static logout() async {
    final GoogleSignIn _googleSignIn = new GoogleSignIn();
    await _googleSignIn.signOut();
    final facebookLogin = FacebookLogin();
    await facebookLogin.logOut();
    await _firebaseAuth.signOut();
  }
}