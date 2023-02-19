# flutter_firebase_auth_test_app

Hosted at: https://flutter-firebase-auth-a9bee.web.app

This is a simple webapp to test https://github.com/amlcloud/flutter-firebase-auth.

To test the flutter_firebase_auth on local you should clone flutter-firebase-auth to local directory next to the folder that you cloned flutter_firebase_auth_test_app to, for instance:

/dev
  /flutter-firebase-auth
  /flutter_firebase_auth_test_app

If you do this the dependency override in pubspec will automatically pick it up:

dependency_overrides:
  flutter_firebase_auth:
    path: ../flutter-firebase-auth

If you clone it somewhere else, you will have to change dependency override to where you cloned it.
