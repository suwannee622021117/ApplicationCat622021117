 import 'package:flutter/material.dart';

class Desease extends StatefulWidget {
  const Desease({ Key key }) : super(key: key);

  @override
  State<Desease> createState() => _DeseaseState();
}

class _DeseaseState extends State<Desease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' การดูแล ') ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('1.> แมวเปอร์เซีย \n - จะต้องดูแลเรื่องขนเป็นพิเศษ แปรงขน \n เช็ดหน้า และคราบน้ำตาทุกวัน'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('2.> แมวอเมริกัน ชอร์ตแฮร์ \n - ควรจะแปรงขนบ่อย ๆ และควรควบคุมน้ำหนัก  \n ไม่ให้เกินมาตรฐาน '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('3.>แมวสก็อตติช โฟลด์ \n - ควรแปรงขนสัปดาห์ละ 1-2 ครั้ง ไม่ต้องอาบน้ำบ่อย \n แต่ควรทำความสะอาดหู เพราะหูพับจึงทำให้มีสิ่งสกปรก \n สะสมได้ง่าย'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('4.> แมววิเชียรมาศ  \n - วิเชียรมาศจัดเป็นแมวขนสั้น สามารถเลียขนดูแล \n ทำความสะอาดตัวเองได้ \n - อาบน้ำเดือนละครั้ง นอกนั้นก็ทำความสะอาดใบหู  \n ตัดเล็บ และดูแลฟัน '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('5.>สฟริงซ์ \n - ดูแลอาบน้ำทำความสะอาดแต่ไม่ควรบ่อยเกินไป \n  ประมาณ 2-3 เดือนครั้ง \n - ต้องดูแลผิวหนังไม่ให้ไหม้แดด หรือโดนอากาศหนาวจัด '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('6.>แมวบริติช ชอร์ตแฮร์ \n - ควรแปรงด้วยหวีโลหะซี่ห่าง ๆ สัปดาห์ละครั้งสองครั้ง \n ตัดเล็บ เช็ดคราบน้ำตา และดูแลฟันได้ปกติ'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('7.> แมวเมนคูน \n - จะต้องดูแลเรื่องขนเป็นพิเศษเพราะมีขน 2 ชั้น  \n ควรแปรงขนทุกวัน \n - ดูแลเรื่องเล็บ หู และฟัน ควรมีพื้นที่มากพอ \n ให้ปีนป่ายออกกำลังกาย '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text('8.>แมวเบงกอล \n - ดูแลง่าย มีการผลัดขนปกติ \n  และควรใส่ใจในเรื่องอาหารเป็นพิเศษ\n\n\n\n'),
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