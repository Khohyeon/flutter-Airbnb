import 'package:flutter/material.dart';
import 'package:flutter_airbnb1/core/constants.dart';
import 'package:flutter_airbnb1/core/size.dart';
import 'package:flutter_airbnb1/core/styles.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _logo(),
        _menu()
      ],
    );
  }

  Widget _menu() {
    return Row(
        children: [
          InkWell(
            onTap: () {},
            child: Text("회원가입", style: subtitle1(mColor: Colors.white),),
          ),
          SizedBox(width: gap_m),
          InkWell(
            onTap: () {},
            child: Text("로그인", style: subtitle1(mColor: Colors.white),),
          ),
          SizedBox(width: gap_m),
        ],
      );
  }

  Widget _logo() {
    return Row(
        children : [Image.asset("assets/logo.png"), Text("Airbnb")],
      );
  }
}
