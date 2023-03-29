import 'package:flutter/material.dart';
import 'package:flutter_airbnb1/core/constants.dart';
import 'package:flutter_airbnb1/core/size.dart';
import 'package:flutter_airbnb1/core/styles.dart';
import 'package:flutter_airbnb1/views/components/common_form_field.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-0.6,0),
      child: Container(
        width: 420,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(gap_l),
            child: Column(
              children: [
                _buildFormTitle(),
                _buildFormField(),
                _buildFormSubmit()
              ],
            ),
          ),
        ),

      ),
    );
  }

  SizedBox _buildFormSubmit() {
    return SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kAccentColor,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                ),
                  onPressed: () {
                    print("서브밋 클릭됨");
                  },
                  child: Text("검색", style: subtitle1(mColor: Colors.white),),

                ),
              );
  }

  Column _buildFormField() {
    return Column(
      children: [
        CommonFormField(prefixText: "위치", hintText: "근처 추천 장소"),
        SizedBox(height: gap_s),
        Row(
            children: [
              Expanded(
                  child: CommonFormField(
                    prefixText: "체크인",
                    hintText: "날짜 입력",
                  )),
              Expanded(
                  child: CommonFormField(
                    prefixText: "체크 아웃",
                    hintText: "날짜 입력",
                  )),
            ],
          ),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
                child: CommonFormField(
                  prefixText: "성인",
                  hintText: "2",
                )),
            Expanded(
                child: CommonFormField(
                  prefixText: "어린이",
                  hintText: "0",
                )),
          ],
        ),
       SizedBox(height: gap_s),
      ],
    );
  }


  Widget _buildFormTitle() {
    return Column(
        children: [
          Text("모두의숙소에서 숙소를 검색하세요.",style: h4(),),
          SizedBox(height: gap_xs),
          Text("혼자하늘 여행에 적합한 개인실부터 여럿이 함께하는 여행에 '공간전체' 숙소까지, 모두의숙소에 다 있습니다.",style: body1(),),
          SizedBox(height: gap_m),
        ],
      );
  }
}
