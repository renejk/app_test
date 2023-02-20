import 'package:app_test/app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.titleName});

  final String titleName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Column(children: [
        const SizedBox(height: 10),
        Text(titleName),
        const SizedBox(height: 10),
      ]),
    );
  }
}
