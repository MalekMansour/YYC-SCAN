import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:openapi/api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yyc_scan/app/routes/app_pages.dart';

class AuthService extends GetxService {
  Future<void> setUserId(String? uid) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (uid != null) {
      sharedPreferences.setString('userId', uid);
    }
  }

  Future<String?> getUserId() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('userId');
  }

  Future<void> checkIfLoggedIn() async {
    String? uid = await getUserId();
    if (uid == null) {
      Get.offAndToNamed(Routes.SIGN_IN);
    } else {
      Get.offAndToNamed(Routes.NAVIGATION);
    }
  }

  Future<void> loginToAPI(UserCredential? userCredential) async {
    String? idToken = await userCredential?.user?.getIdToken();

    UsersApi usersApi = UsersApi(Get.find<ApiClient>());
    UsersLoginGet200Response? res =
        await usersApi.usersLoginGet(idToken: idToken);
    if (res?.userId != null) {
      setUserId(res!.userId!);
      EasyLoading.showSuccess('Successfully logged in'.tr);
      Get.toNamed(Routes.NAVIGATION);
    } else {
      EasyLoading.showError('Login Error. Please try again');
    }
  }

  Future<void> signInWithUserAndPassword(String email, String password) async {
    UserCredential? userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    await loginToAPI(userCredential);
  }

  Future<void> signInWithGoogle() async {
    try {
      if (kIsWeb) {
        GoogleAuthProvider googleProvider = GoogleAuthProvider();

        googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

        // Once signed in, return the UserCredential
        UserCredential? userCredential =
            await FirebaseAuth.instance.signInWithPopup(googleProvider);
        if (userCredential != null) await loginToAPI(userCredential);
      } else {
        final GoogleSignInAccount? googleUser = await GoogleSignIn(
                clientId:
                    '961750529501-frn4inhr5ddr4vf2m30brfu05tgfmu3r.apps.googleusercontent.com')
            .signInSilently();

        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );

        UserCredential? userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        if (userCredential != null) await loginToAPI(userCredential);
      }
    } catch (e) {
      // TODO
      EasyLoading.dismiss();
      print('exception->$e');
    }
  }
  // Future<void> signIn() async {
  //   print('here');
  //   try {
  //     const List<String> scopes = <String>[
  //       'email',
  //       'https://www.googleapis.com/auth/contacts.readonly',
  //     ];

  //     GoogleSignIn _googleSignIn = GoogleSignIn(
  //       // Optional clientId
  //       clientId:
  //           '961750529501-frn4inhr5ddr4vf2m30brfu05tgfmu3r.apps.googleusercontent.com',
  //       scopes: scopes,
  //     );
  //     GoogleSignInAccount? googleSignIn = await _googleSignIn.signIn();
  //     await googleSignIn!.authentication
  //         .then((value) => print(value.));
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  @override
  void onInit() {
    super.onInit();
  }
}
