import 'package:flutter/material.dart';
import 'package:medifit360/medifolder/medi delivery/constants.dart';

class PillDetailContainer extends StatelessWidget {
  const PillDetailContainer(
      {required this.amount,
      required this.imageUrl,
      required this.price,
      required this.itemName,
      required this.onTap});
  final String imageUrl;
  final String amount;
  final String itemName;
  final double price;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color(0xFFE1E5F4),
          ),
          padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(height: 150.0, child: Image.asset(imageUrl)),
              Text(
                itemName,
                style: kItemBoxText,
              ),
              kSizedBox,
              Text(
                'Tablets * $amount pices',
                style: TextStyle(fontSize: 10.0, color: Colors.grey),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '\$$price',
                style: kItemBoxText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
