import 'package:flutter/material.dart';
import 'package:pet_finder/data.dart';
import 'package:pet_finder/user_avatar.dart';

class PetDetail extends StatelessWidget {

  final Pet pet;

  PetDetail({@required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.more_horiz,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(
            child: Stack(
              children: [

                Hero(
                  tag: pet.imageUrl,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(pet.imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            pet.name,
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),

                          SizedBox(
                            height: 8,
                          ),

                          Row(
                            children: [

                              Icon(
                                Icons.location_on,
                                color: Colors.grey[600],
                                size: 20,
                              ),

                              SizedBox(
                                width: 4,
                              ),

                              Text(
                                pet.information,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),

                              SizedBox(
                                width: 4,
                              ),

                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 120),
                  child: Text(
                    "Cats Story",
                    style: TextStyle(
                      color: Color.fromARGB(255, 174, 0, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    " ความรักทำให้คนตาบอด แต่ปลาทอดทำให้แมว ”อิ่ม” ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 12, 202),
                      fontSize: 14,
                    ),
                  ),
                ),

                SizedBox(
                  height: 45,
                ),

               

              ],
            ),
          ),

        ],
      ),
    );
  }

  buildPetFeature(String value, String feature){
    return Expanded(
      child: Container(
        height: 70,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[200],
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [

            Text(
              value,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 4,
            ),

            Text(
              feature,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),

          ],
        ),
      ),
    );
  }

}