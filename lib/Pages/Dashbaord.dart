import 'package:flutter/material.dart';

import 'Discription_Page.dart';


class Dashbaord extends StatefulWidget {
  const Dashbaord({super.key});

  @override
  State<Dashbaord> createState() => DashbaordState();
}

class DashbaordState extends State<Dashbaord> {

  horizontalscollitem(var size, int color){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (contex)=>const DiscriptionPage()));

        },
        child: Container(
            height: size.height/5,
            width: size.width/1.5 ,
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("images/nature.jpg", fit: BoxFit.cover,)
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 220, top: 130),
                    child: Icon(Icons.play_circle, color: Colors.white, size: 35,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 130),
                    child: Text("Breathtaking view....", style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic
                    ),maxLines: 2, overflow: TextOverflow.ellipsis,
                    ),
                  )
                ]
            )
        ),
      ),
    );
  }

  static verticalscollitem(var size, int color) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SingleChildScrollView(
        child: Container(
          height: size.height / 5,
          width: size.width / 1.5,
          decoration: BoxDecoration(
            color: Color(color),
            borderRadius: BorderRadius.circular(15),
          ),
          child: SingleChildScrollView(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      SizedBox(
                          width: size.width / 2.7,
                          height: 130,
                          child: Image.asset("images/nature.jpg", fit: BoxFit.cover,)
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 55, left: 60),
                        child: Icon(
                          Icons.play_circle,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                      children: [
                        SizedBox(
                          width: size.width/2,
                          child: const Text(
                            "Experience the most breathtaking view",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),maxLines: 2,overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              Container(
                                width: 100, // Adjust width to fit the button
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Watch Now",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,), // Spacing between the button and the date
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  "25 Sep 2024",  // Example date
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: size.height / 5, // Set height for the container
                width: double.infinity, // Ensure it stretches the full width
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index){
                      return horizontalscollitem(size, 0xffffff);
                    }
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Stack(
                children: [
                  SizedBox(
                      height: size.height,
                      width: size.width,
                      child:ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index){
                            return verticalscollitem(size, 0xffffff);
                          }
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}