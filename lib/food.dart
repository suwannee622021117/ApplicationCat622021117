import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({ Key key }) : super(key: key);

  @override
  State<Food> createState() => _FoodState ();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' อุปนิสัยของแมว ') ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('1.> แมวเปอร์เซีย \n  มีอุปนิสัยอ่อนโยน เข้ากับคนอื่นได้ง่าย \n  มีความร่าเริงซุกซนช่างประจบประแจง \n และเป็นแมวที่มีไหวพริบมาก '),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('2.> แมวอเมริกัน ชอร์ตแฮร์ \n เป็นแมวที่ช่างสงสัย นิสัยร่าเริง ชอบเล่น มีเสน่ห์ \n ฝึกค่อนข้างยาก เจ้าของควรจะคลุกคลีและอยู่กับแมวให้มาก ๆ \nมีสัญชาตญาณการเป็นนักล่า ชอบไล่จับแมลง และมองดูนก \n '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('3.>แมวสก็อตติช โฟลด์ \nเป็นแมวที่ไม่ค่อยส่งเสียง\nชอบที่จะเล่น เฉพาะเวลาที่มีเจ้าของมาร่วมเล่นด้วย\nฉลาด อ่อนโยน อยากรู้อยากเห็นและไม่ขี้อาย\nบางตัวอาจไม่ชอบนอนบนตัก\n โดยเลือกที่จะอยู่ใกล้ ๆ กับเจ้าของแทน\n'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('4.> แมววิเชียรมาศ  \n เป็นแมวที่ค่อนข้างฉลาด เป็นมิตร และติดคน\nสนใจสิ่งแวดล้อมรอบตัว แถมยังจัดเป็นแมวช่างพูดด้วย \n '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('5.>สฟริงซ์ \n เป็นแมวที่กระตือรือร้น\nอยากรู้อยากเห็น\nชอบเข้าสังคม และเจอเพื่อนใหม่\nชอบนอนบนเตียงกับเจ้าของ\n '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('6.>แมวบริติช ชอร์ตแฮร์ \nเป็นมิตรกับผู้คนรวมถึงสัตว์ชนิดอื่น ๆ\nปรับตัวเข้ากับสภาพแวดล้อมได้ง่าย \nมีความอบอุ่น สุขุม น่ากอด\n'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('7.> แมวเมนคูน \n มีนิสัยขี้อ้อน ขี้เล่น ร่าเริง\nเป็นมิตร เข้าสังคมเก่ง ฉลาด\n สุภาพกับคนรอบข้างและสัตว์อื่น \n '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('8.>แมวเบงกอล \n มีนิสัยน่ารัก ไม่ดุร้าย เป็นมิตรกับทุกคน\nเป็นแมวที่ซุกซน เพราะชอบวิ่งไล่สิ่งของต่าง ๆ\n ชอบปีนป่ายขึ้นที่สูงอยู่เป็นประจำ\nชอบเล่นน้ำเอามาก ๆ ด้วย\n\n\n\n\n'),
                    ],
                  ),
                ),
              ],
            ),
      
          )
        ],
      ),
    );
    
  }
}