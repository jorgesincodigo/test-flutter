import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class InicioFirebaseUser {
  InicioFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

InicioFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<InicioFirebaseUser> inicioFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<InicioFirebaseUser>((user) => currentUser = InicioFirebaseUser(user));
