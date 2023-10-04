import 'package:firebase_auth/firebase_auth.dart';

import '../screen/model/fire_auth_error.dart';

/// firebase auth
class FirebaseAuthController {
// instance
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

// signUp

  Future<FireError> signUp(
      {required String email, required String password}) async {
    // عن طريق الauth  هنعمل انشاء حساب
    // باستخدام البريد وكلمة السر

    return await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      if (value.user != null) {
        return FireError(message:  'تمت العملية بنجاح', test: true);
        // return 'تمت العملية بنجاح';
      } else {
        return FireError(message:   'فشلت عملية إنشاء الحساب', test: false);

      }
    }).catchError((error) {
      if (error is FirebaseAuthException) {
        print('error is ${error.code}');
        // كود المشكلة
        switch (error.code) {
          case "invalid-email":
            return 'مشكلة في البريد الإلكتروني ';
            break;
          case "user-not-found":
            return 'المستخدم غير موجود  ';
            break;
          case "wrong-password":
            return 'مشكلة في كلمة المرور   ';
            break;
          case "weak-password":
            return FireError(message:   'كلمة المرور ضعيفة ', test: false);

            // return ;
            break;
          case "email-already-in-use":
            return 'البريد مستخدم سابقًا ';
            break;
          case "too-many-requests":
            return 'تم المحاولة لعدة مرات بشكل خاطئ الرجاء المحاولة فيما بعد ';
            break;
          case "INVALID_LOGIN_CREDENTIALS":
            return 'الرجاء التأكد من بيانات الحساب ';
            break;
          default:
            return 'يوجد مشكلة في تسجيل الدخول ';
        }
      }
    });

    //// password =>6
    // email not user
    // email
  }

  Future<bool> login({required String email, required String password}) async {
    /// async ,awai
    return await firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => true)
        .catchError((error) => false);

    // context
  }

// Future<void> login({required String email, required String password})async {
//   // عن طريق الauth  هنعمل انشاء حساب
//   // باستخدام البريد وكلمة السر
//
//   await firebaseAuth.signInWithEmailAndPassword(
//       email: email, password: password);
// }

//  Future<String> login({required String email, required String password}) async {
//    // عن طريق الauth  هنعمل انشاء حساب
//    // باستخدام البريد وكلمة السر
//
// return   await firebaseAuth
//        .signInWithEmailAndPassword(email: email, password: password)
//        .then((value) {
//      print('the result is ${value.user != null}');
//      return 'العملية فشلت رجاء المحاولة مرة أخرى';
//    }).catchError((error) {
//
//      if (error is FirebaseAuthException) {
//        String message = error.code!;
//        print('message${error.message}');
//        print('error.code${error.code}');
//
//        switch (error.code) {
//          case "invalid-email":
//
//            print('ERROR_INVALID_EMAIL');
//            return 'مشكلة في البريد الإلكتروني ';
//
//            break;
//          case "user-not-found":
//            return 'المستخدم غير موجود  ';
//            break;
//          case "wrong-password":
//            return 'مشكلة في كلمة المرور =  ';
//            break;
//          case "weak-password":
//            return 'كلمة المرور ضعيفة ';
//            break;
//          case "email-already-in-use":
//            return 'كلمة المرور ضعيفة ';
//            break;
//          case "too-many-requests":
//            return 'تم المحاولة لعدة مرات بشكل خاطئ الرجاء المحاولة بعد فترة بسيطة ';
//            break;
//          case "INVALID_LOGIN_CREDENTIALS":
//            return 'الرجاء التأكد من بيانات الحساب ';
//            break;
//
//          default:
//            return 'يوجد مشكلة في تسجيل الدخول ';
//
//            print('errrror${error.code}');
//
//        }
//      } else {
//        return 'يوجد مشكلة في تسجيل الدخول ';
//      }
//    });
//  }
}
