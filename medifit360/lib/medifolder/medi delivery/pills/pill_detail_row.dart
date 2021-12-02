import 'package:flutter/material.dart';
import 'package:medifit360/medifolder/medi delivery/constants.dart';

class PillsInfoColumn extends StatelessWidget {
  const PillsInfoColumn(
      {required this.value1,
      required this.explanation1,
      required this.value2,
      required this.explanation2});
  final String explanation1;
  final String value1;
  final String explanation2;
  final String value2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          explanation1,
          style: kGreyTypeText,
        ),
        Text(
          value1,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        kSizedBox,
        kSizedBox,
        Text(
          explanation2,
          style: kGreyTypeText,
        ),
        Text(
          value2,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
