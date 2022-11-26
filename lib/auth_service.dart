import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onlinedoctor/pages/admin_dashboard.dart';

class AdminiAuth {
  BuildContext context;
  String email;
  String password;
  AdminiAuth(
      {required this.context, required this.email, required this.password});
  Future createAdmin() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<bool> loginAdmin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      return false;
    }
  }

  static Future signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  Future updateEmail() async {
    final user = FirebaseAuth.instance.currentUser;
    await user?.updateEmail(email);
    // await user?.updateDisplayName("Jane Q. User");
    // await user?.updatePhotoURL("https://example.com/jane-q-user/profile.jpg");
  }

  Future updatepassword() async {
    final user = FirebaseAuth.instance.currentUser;
    await user?.updatePassword(password);
  }

  Future updateEmailAndPassword() async {
    final user = FirebaseAuth.instance.currentUser;
    await user?.updateEmail(email);
    await user?.updatePassword(password);
  }

  Future sendEmailVerification() async {
    final user = FirebaseAuth.instance.currentUser;
    // await FirebaseAuth.instance.setLanguageCode("fr");
    await user?.sendEmailVerification();
  }

  Future sendPasswordResetEmail() async {
    final user = FirebaseAuth.instance.currentUser;
    // await FirebaseAuth.instance.setLanguageCode("fr");
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  static Future getUsersProfileInfor() async {
    final user = FirebaseAuth.instance.currentUser;
    return user?.email.toString();
  }

  Future getUsersProfileInformation() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // Name, email address, and profile photo URL
      final name = user.displayName;
      final email = user.email;
      final photoUrl = user.photoURL;

      // Check if user's email is verified
      final emailVerified = user.emailVerified;

      // The user's ID, unique to the Firebase project. Do NOT use this value to
      // authenticate with your backend server, if you have one. Use
      // User.getIdToken() instead.
      final uid = user.uid;
    }
    if (user != null) {
      for (final providerProfile in user.providerData) {
        // ID of the provider (google.com, apple.cpm, etc.)
        final provider = providerProfile.providerId;

        // UID specific to the provider
        final uid = providerProfile.uid;

        // Name, email address, and profile photo URL
        final name = providerProfile.displayName;
        final emailAddress = providerProfile.email;
        final profilePhoto = providerProfile.photoURL;
      }
    }
  }
}
