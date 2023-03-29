import 'package:flutter/material.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _bannerImage(),
        Container(
          constraints: BoxConstraints(
            maxWidth: 250
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Column(
              children: [
                Text("이제, 여행은 가까운 곳에서", style: TextStyle(color: Colors.white, fontSize: 34),),
                Text("새로운 공간에 머물러 보세요. 살아보기, 출장, 여행 등 다양한 목적에 맞는 숙소를 찾아보세요.", style: TextStyle(color: Colors.white),),
                TextButton(onPressed: () {}, child: Text("가까운 여행지 둘러보기", style: TextStyle(color: Colors.white),),),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _bannerImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/banner.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: 320,
        ),
      );
  }
}
