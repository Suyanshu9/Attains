// import 'package:firebase_auth/firebase_auth.dart';
//
// enum AuthStatus{
//   succesful,
//   wrongPassword,
//   emailAlreadyExists,
//   invalidEmail,
//   weakPassword,
//   unkown,
// }
//
// class AuthExceptionHandler{
//   static  handleException(FirebaseAuthException e){
//     AuthStatus status;
//     switch (e .code){
//       case 'invalid-email':
//         status = AuthStatus.invalidEmail;
//         break;
//       case 'wrong-password':
//         status = AuthStatus.wrongPassword;
//         break;
//       case 'weak-password':
//         status = AuthStatus.weakPassword;
//         break;
//       case 'email-already-in-use':
//         status = AuthStatus.emailAlreadyExists;
//         break;
//       default:
//         status = AuthStatus.unkown;
//     }
//     return status;
//   }
//   static String generateErrorMessage(error) {
//     String errorMessage;
//     switch (error) {
//       case AuthStatus.invalidEmail:
//         errorMessage = "Your email address appears to be malformed.";
//         break;
//       case AuthStatus.weakPassword:
//         errorMessage = "Your password should be at least 6 characters.";
//         break;
//       case AuthStatus.wrongPassword:
//         errorMessage = "Your email or password is wrong.";
//         break;
//       case AuthStatus.emailAlreadyExists:
//         errorMessage =
//         "The email address is already in use by another account.";
//         break;
//       default:
//         errorMessage = "An error occured. Please try again later.";
//     }
//     return errorMessage;
//   }
// }