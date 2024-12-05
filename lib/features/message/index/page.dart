import 'package:ecomerce/preferences/color.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        emptyMassage()
      ],
    );
  }

  AppBar header() {
    return AppBar(
        backgroundColor: AppColor.primaryBackGround,
        title: const Text(
          'Massage Support',
          style: TextStyle(
            color: AppColor.whiteText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
  }

  Expanded emptyMassage() {
    return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/headset.png',height: 100,width: 100,),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Opss! Your Cart is Empty',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColor.whiteText),
            ),
            const SizedBox(height: 12,),
            const Text('Let\'s find your favorite shoes',style: TextStyle(
              color: AppColor.silverText,
              fontWeight: FontWeight.w400,
              fontSize: 14
            ),),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.primaryColor
              ),
              child: const Text('Explore Store',style: TextStyle(
                color: AppColor.whiteText,
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),),
            )
          ],
        ),
      );
  }
}
