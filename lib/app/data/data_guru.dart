// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Guru with ChangeNotifier {
  //data
  final String id_guru;
  final String name_guru;
  final String subject_guru;
  final String address_guru;
  final double price_guru;
  final String imageUrl_guru;
  final String description_guru;
  bool isFavorite;

//constructor
  Guru({
    required this.id_guru,
    required this.name_guru,
    required this.subject_guru,
    required this.address_guru,
    required this.price_guru,
    required this.imageUrl_guru,
    required this.description_guru,
    // required this.isFavorite,
    this.isFavorite = false,
  });
  void statusFav() {
    isFavorite = !isFavorite;
    //funsinya kayak set state
  }
}

// final List<Guru> listGuru = [
//   Guru(
//       id_guru: 1,
//       name_guru: "Zia",
//       subject_guru: "Fisika",
//       address_guru: "Jawa Barat",
//       price_guru: "200.000",
//       imageUrl_guru: "assets/images/t3.png",
//       isFavorite: true,
//       description_guru: 'many many'),
// ];

List<Map<String, dynamic>> dataGuru = [
  {
    "id_guru": 1,
    "name_guru": "Zia",
    "subject_guru": "Fisika",
    "address_guru": "Jawa Barat",
    "price_guru": "200.000",
    "imageUrl_guru": "assets/images/t3.png",
    "isFavorite": true,
    "description_guru": 'many many'
  },
  {
    "id_guru": 1,
    "name_guru": "Aldira",
    "subject_guru": "Kimia",
    "address_guru": "Jawa Timur",
    "price_guru": "300.000",
    "imageUrl_guru": "assets/images/t4.png",
    "isFavorite": true,
    "description_guru": 'many yuhuuuu'
  }
];
