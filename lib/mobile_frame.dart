import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_test_app/test_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_page.dart';

class MobileFrame extends ConsumerWidget {
  const MobileFrame({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(body: Text('mobile frame'));
  }
}
