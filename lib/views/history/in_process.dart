import 'package:flutter/material.dart';

import '../../widgets/app_text.dart';

class Inprocess extends StatelessWidget {
  const Inprocess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [AppText2(text: "Inprocess")],
      ),
    );
  }
}
