
import 'package:flutter/material.dart';
import 'package:signin_screen/classes/classData.dart';

 List<String> list2name = [
  'Bathroom Cleaning',
  'Sofa Cleaning',
  'Bathroom Cleaning',
  'Sofa Cleaning',
  'Room Cleaning'
];

 List<String> list2subtital = [
  'Free fan cleaning and more',
  'Free Sofa Cleaning and more',
  'Free Bathroom Cleaning and more',
  'Free Sofa Cleaning and more',
  'Free Room Cleaning and more'
];

 List list2imgurl = [
  'images/bathroom_pic.png',
  'images/sofa_pic.png',
  'images/bathroom_pic.png',
  'images/sofa_pic.png',
  'images/room_pic.png'
];

 List<String> list1name = [
  'Hygiene',
  'Elecrical',
  'Applainces',
  'Plumbing',
  'AC Repair'
];

 List list1imgurl = [
  'images/hygieneyellow.png',
  'images/electricityyellow.png',
  'images/appliancesyellow.png',
  'images/plumbingyellow.png',
  'images/acreparingyellow.png'
];

final List<ItemDataModel> ItemData= List.generate
  (list2name.length,
      (index)
  => ItemDataModel
    ('${list2name[index]}',
    '${list2imgurl[index]}',
    '${list2subtital[index]}',
    '${list1name[index]}',
    '${list1imgurl[index]}',),

);




//ServiceDataModel

 List servicename=[
  'Hygiene ',
  'Elecrical ',
  'Applainces ',
  'Plumbing ',
  'AC Repair '
];

 List<String> servicesubtital=[
  'Hygiene Services',
  'Elecrical Services',
  'Applainces Services',
  'Plumbing Services',
  'AC Repair Services'
];

 List serviceimageurl=[
  'images/hygieneblue.png',
  'images/Electricityblue.png',
  'images/applianceblue.png',
  'images/plumbingblue.png',
  'images/acrepatingblue.png'];
final List<ServiceDataModel> serviceData= List.generate
  (servicename.length,
      (index)
  => ServiceDataModel
    (srvsimgurl: serviceimageurl[index], srvsname: servicename[index], srvssubtital: servicesubtital[index]
  ),

);





