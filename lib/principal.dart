import 'package:flutter/material.dart';
import 'package:pet_finder/data.dart';
import 'package:pet_finder/desease.dart';
import 'package:pet_finder/pet_widget.dart';
import 'package:pet_finder/category_list.dart';
import 'package:pet_finder/food.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  List<Pet> pets = getPetList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.sort,
          color: Colors.grey[800],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.notifications_none,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                " แอปพลิเคชั่นให้ความรู้ \n เกี่ยวกับสายพันธุ์ของแมว \n",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                " แนะนำสายพันธุ์แมว,ข้อมูลทั่วไป \n และการดูแลแมวแต่ละสายพันธุ์ ",
                style: TextStyle(
                  color: Color.fromARGB(255, 155, 66, 66),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),

            
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    "CATS",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),

                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                  ),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildPetCategory(Category.CAT, "", Color.fromARGB(255, 192, 115, 0)),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 130),
                      child: Row(
                        children: [
                          ElevatedButton(onPressed: () {
                            var route =MaterialPageRoute(builder:(context) => Desease(),
                            );
                            Navigator.push(context, route);
                          }, 
                          child: Text('การดูแลแมว'),)     
                        ],
                        
                      ),
                    ),
                  ),
      
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 125),
                      child: Row(
                        children: [
                          ElevatedButton(onPressed: () {
                            var route =MaterialPageRoute(builder:(context) => Food(),
                            );
                            Navigator.push(context, route);
                          }, 
                          child: Text('อุปนิสัยของแมว'),)     
                        ],
                        
                      ),
                    ),
                  ),
      
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    "สตอรี่แมว",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),

                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                  ),

                ],
              ),
            ),

            Container(
              height: 320,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: buildNewestPet(),
              ),
            ),


           

          ],
        ),
      ),
    );
  }

  Widget buildPetCategory(Category category, String total, Color color){
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoryList(category: category)),
          );
        },
        child: Container(
          height: 120,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[200],
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [

              Container(
                height: 56,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color.withOpacity(0.5),
                ),
                child: Center(
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "assets" + ( category == Category.CAT ? "cat"  : "cat") + "cat.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 12,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    category == Category.CAT ? "Cats"  : "cat",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    " แมวแต่ละสายพันธุ์ ",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildNewestPet(){
    List<Widget> list = [];
    for (var i = 0; i < pets.length; i++) {
      if(pets[i].newest){
        list.add(
          PetWidget(
            pet: pets[i], 
            index: i
          )
        );
      }
    }
    return list;
  }

  Widget buildVet(String imageUrl, String name, String phone){
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 4),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        border: Border.all(
          width: 1,
          color: Color.fromARGB(255, 146, 95, 95),
        ),
      ),
      child: Row(
        children: [

          Container(
            height: 98,
            width: 98,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.contain,
              ),
            ),
          ),

          SizedBox(
            width: 16,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                name,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 8,
              ),

              Row(
                children: [

                  Icon(
                    Icons.phone,
                    color: Colors.grey[800],
                    size: 18,
                  ),

                  SizedBox(
                    width: 8,
                  ),

                  Text(
                    phone,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),

              SizedBox(
                height: 8,
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  "",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }

}

class FOOD {
}