import 'package:barber/model/UserModel.dart';
import 'package:barber/model/user_q_model.dart';
import 'package:barber/services/NetworkHelper.dart';
import 'package:barber/services/firestore_user.dart';
import 'package:barber/view/auth/login_screen.dart';
import 'package:barber/view/booking_view.dart';
import 'package:barber/view/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  // ApiUsers apiusers = ApiUsers();
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  // FacebookLogin _facebookLogin = FacebookLogin();

  String name, userName, phone, email, disable;
  String userPass;
  // String userPass;
  // int id;

  final userData = GetStorage();

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<UserModel> get usersListModel => _usersListModel;
  List<UserModel> _usersListModel = [];

  List<String> get listName => _name;
  List<String> _name = [];

  List<String> get listUserName => _userName;
  List<String> _userName = [];

  List<String> get listUserPass => _userPass;
  List<String> _userPass = [];

  List<String> get listPhone => _phone;
  List<String> _phone = [];

  List<String> get listEmail => _email;
  List<String> _email = [];



  Rxn<UserModel> _user = Rxn<UserModel>();

  String get user => _user.value?.email;

  @override
  void onInit() {
    storageData();
    // TODO: implement onInit
    super.onInit();
    _user.stream;
    // ApiUsers().getScoringListHeader();
    // ApiUsers().getScoringListDetail(8);
    update();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void storageData() async {
    await GetStorage.init();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    await _auth.signInWithCredential(credential).then((user) {
      // saveUser(user);
      Get.offAll(HomeView());
    });
  }

  // void facebookSignInMethod() async {
  //   FacebookLoginResult result = await _facebookLogin.logIn(['email']);
  //   final accessToken = result.accessToken.token;
  //
  //   if (result.status == FacebookLoginStatus.loggedIn) {
  //     final faceCredential = FacebookAuthProvider.credential(accessToken);
  //
  //     await _auth.signInWithCredential(faceCredential).then((user) async {
  //       saveUser(user);
  //     });
  //   }
  // }

  // void signInWithEmailAndPassword() async {
  //   try {
  //     await _auth.signInWithEmailAndPassword(email: email, password: password);
  //     Get.offAll(HomeView());
  //   } catch (e) {
  //     print(e.message);
  //     Get.snackbar('Error Login Account', e.message,
  //         colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
  //   }
  // }

  // void CreateAccountWithEmailAndPassword() async {
  //   try {
  //     await _auth
  //         .createUserWithEmailAndPassword(email: email, password: password)
  //         .then((user) async {
  //       saveUser(user);
  //     });
  //
  //     Get.offAll(HomeView());
  //   } catch (e) {
  //     print(e.message);
  //     Get.snackbar('Error Login Account', e.message,
  //         colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
  //   }
  // }

  void loginUser() async {
    String mailData = userData.read('email');
    _loading.value = true;
    var mail = await ApiUsers().fetchUsers().then((value) {
      _usersListModel.clear();
      _userName.clear();
      _userPass.clear();
      _phone.clear();
      _email.clear();
      _name.clear();
      for (var i = 0; i < value.length; i++) {
        _usersListModel.add(UserModel(
            name: value[i]['name'],
            userName: value[i]['userName'],
            UserPass: value[i]['userPass'],
            phone: value[i]['phone'],
            disable: value[i]['disable'],
            email:value[i]['email']),
        );

        _name.add(_usersListModel[i].name);
        _userPass.add(_usersListModel[i].UserPass);
        _userName.add(_usersListModel[i].userName);
        _phone.add(_usersListModel[i].phone);
        _email.add(_usersListModel[i].email);
      }
      update();
      for(var i = 0 ; i<_usersListModel.length;i++){
        if (email == _usersListModel[i].email && userPass == _usersListModel[i].UserPass) {
          userData.write('isLogged', true);
          userData.write('email', _usersListModel[i].email);
          print(userData.read('email'));
          Get.offAll(HomeView());
          _loading.value = false;
          Get.snackbar('Welcome Back ${_userName[i]}', '',
              colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
        }
      }
      if(email != userData.read('email'))
        {
            Get.snackbar('Email Not Correct', '',
                snackPosition: SnackPosition.BOTTOM);
            return null;
        }

        // if (email != _usersListModel[i].email) {
        //   Get.snackbar('Email Not Correct', '',
        //       snackPosition: SnackPosition.BOTTOM);
        //   return null;
        // }
        // if (userPass != _usersListModel[i].userPass) {
        //   Get.snackbar('Password Not Correct','',
        //       snackPosition: SnackPosition.BOTTOM);
        //   return null;
        // }


      },
    );
    _loading.value = false;
  }

  void registerUser() async {
    _loading.value = true;
    try {
      await ApiUsers()
          .insertUser(name, userName, userPass, phone, email, false);
      Get.snackbar('User Inserted Successfully', '',
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
      Get.offAll(LoginScreen());
      print('pressed');
    } catch (e) {}
    _loading.value = false;
  }

// void saveUser(UserCredential user) async {
//   await FireStoreUser().addUserToFireStore(
//     UserModel(
//       userId: user.user.uid,
//       email: user.user.email,
//       name: name == null ? user.user.displayName : name,
//       pic: '',
//     ),
//   );
// }
}
