import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:signin_screen/models/modeldata.dart';


class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  var dropdownValue = 'Jaipur302019';

  bool _colorContainer = false;

  PickedFile imageFile;

  //  for Slider Bar
  final List<String> ImageList = [
    'images/img1.PNG',
    'images/img1.PNG',
    'images/img1.PNG',
    'images/img1.PNG',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Flutter ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const Text(
                      'King',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff02283C),
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
                Icon(Icons.notification_add_rounded, color: Color(0xff02283C)),
              ],
            ),
            backgroundColor: Color(0xffFFD700)),
        drawer: Drawer(

        ),

        //Body
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Color(0xffFFD700),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    // width: 330,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(width: 3, color: Colors.white),
                      ),
                      color: Colors.white,
                      //elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              // width: 230,
                              width: MediaQuery.of(context).size.width * 0.55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: TextField(
                                  textAlignVertical: TextAlignVertical.bottom,
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(),
                                      prefixIcon: Icon(Icons.search),
                                      hintText: 'Search for Servise',
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                          BorderRadius.circular(10)))),
                            ),

                            // code for near search icon
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF4F5F8),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Center(
                                    child: InkWell(
                                      onTap: () {
                                      },
                                      child: Row(
                                        children: const [
                                          Text(
                                            '  Filter',
                                            style: TextStyle(
                                              fontFamily:
                                              'sf-pro-display-cufonfonts',
                                            ),
                                          ),
                                          Icon(Icons.filter_list),
                                        ],
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        // code for Cleaning
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                          child: GestureDetector(
                              child: Text(
                                'Cleaning',
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'sf-pro-display-cufonfonts'),
                              ),
                              onTap: () {
                                Fluttertoast.showToast(
                                    msg: "This is Cleaning Short Toast",
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 12.0);
                              }),
                        ),

                        // code for Plumbing
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                          child: GestureDetector(
                              child: Text(
                                'Plumbing',
                                style: TextStyle(
                                  fontFamily: 'sf-pro-display-cufonfonts',
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onTap: () {
                                Fluttertoast.showToast(
                                    msg: "This is Plumbing Short Toast",
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 12.0);
                              }),
                        ),

                        // code for Painter
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                          child: GestureDetector(
                              child: Text(
                                'Painter',
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'sf-pro-display-cufonfonts'),
                              ),
                              onTap: () {
                                Fluttertoast.showToast(
                                    msg: "This is Painter Short Toast",
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 12.0);
                              }),
                        ),

                        // code for Battery
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                          child: GestureDetector(
                              child: const Text(
                                'Battery',
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'sf-pro-display-cufonfonts'),
                              ),
                              onTap: () {
                                Fluttertoast.showToast(
                                    msg: "This is Battery Short Toast",
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 12.0);
                              }),
                        ),
                      ],
                    ),
                  ),

                  // Code for Service Lovation
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(27, 0, 3, 0),
                          child: Icon(Icons.location_on_outlined)),
                      Text(
                        'Service Loaction near -  ',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'sf-pro-display-cufonfonts'),
                      ),

                      // code for DropdownButton
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 20,
                        elevation: 16,
                        style: const TextStyle(
                            color: Colors.deepPurple,
                            decoration: TextDecoration.underline),
                        underline: SizedBox(),
                        // onChanged: (String newValue) {
                        //   setState(() {
                        //     dropdownValue = newValue;
                        //   });
                        // },
                        onChanged: (newValue){
                          setState(() {
                            dropdownValue=newValue.toString();
                          });
                        },
                        items: <String>[
                          'Jaipur302019',
                          'Jaipur3020191',
                          'Jaipur3020192',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ],
              ),
            ),

            InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Services_Categories_Page()));
                },
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
                  child: Text(
                    "View all",
                    style: TextStyle(color: Color(0xff02283C)),
                  ),
                )),
            // code for listview Size Box
            SizedBox(
              // height: 80,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.13,
              // width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list1name.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(5, 8, 0, 5),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.13,
                      child: ListTile(
                        // SnackBar snackBar =
                        // SnackBar(content: Text("Tapped : ${index + 1}"));
                        // ScaffoldMessenger.of(context).showSnackBar(snackBar);

                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                //color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      width: 1, color: Colors.yellow)),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // if(ItemData[index].isSelected == true)
                                    //   ItemData[index].isSelected = false;
                                    // else if(ItemData[index].isSelected == false)
                                    //   ItemData[index].isSelected = true;
                                  });

                                  // print(ItemData[index].isSelected);
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 22,
                                  child: Image.asset(
                                    list1imgurl[index],
                                    height: 30,
                                    width: 30,
                                  ),
                                  //backgroundImage: AssetImage(ItemData[index].list1img)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                list1name[index],
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'sf-pro-display-cufonfonts'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),

            Container(
              margin: EdgeInsets.only(top: 5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              // color: Colors.orange,
              child: CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    autoPlay: true),
                items: ImageList.map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        e,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.fitWidth,
                        // fit: BoxFit.cover,
                      )
                    ],
                  ),
                )).toList(),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 8, 0),
              child: Text('Best Offers',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sf-pro-display-cufonfonts')),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 8, 0),
              child: Text(
                'Hygienic and single-use products | low contact service',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'sf-pro-display-cufonfonts',
                ),
              ),
            ),

            // List view

            Container(
              //margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list2name.length,
                  itemBuilder: (context, index) {
                    return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 0,
                        child: Column(
                          children: [
                            Image.asset(
                              list2imgurl[index],
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.13,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              list2name[index],
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'sf-pro-display-cufonfonts'),
                            ),
                            Text(
                              list2subtital[index],
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'sf-pro-display-cufonfonts'),
                            ),
                          ],
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile = pickedFile;
    });

    Navigator.pop(context);
  }

  /// Get from camera
  void _openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = pickedFile;
    });
    Navigator.pop(context);
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose option",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openGallery(context);
                    },
                    title: Text("Gallery"),
                    leading: Icon(
                      Icons.account_box,
                      color: Colors.blue,
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: Text("Camera"),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
