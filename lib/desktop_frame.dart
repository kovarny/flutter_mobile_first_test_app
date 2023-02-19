import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'desktop_content.dart';

class DesktopFrame extends ConsumerWidget {
  const DesktopFrame({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Row(
        children: [
          // const Expanded(child: DesktopSidebar()),
          const Expanded(
            flex: 3,
            child: DesktopContent(),
          ),
        ],
      ),
    );
  }
}
