// ignore_for_file: non_constant_identifier_names
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'data_guru.dart';

class AllGuru with ChangeNotifier {
  //data
  List<Guru> _allguru = List.generate(
    10,
    (index) {
      return Guru(
        id_guru: "id_${index + 1}",
        name_guru: "Guru ${index + 1}",
        subject_guru: "Kimia ${index + 1}",
        address_guru: "Jawa Barat",
        price_guru: 10 + Random().nextInt(100).toDouble(),
        imageUrl_guru: "assets/images/t3.png",
        description_guru: "many many",
      );
    },
  );
  List<Guru> get allguru {
    return [..._allguru];
  }

  Guru findById(guruId) {
    return _allguru.firstWhere((gId) => gId.id_guru == guruId);
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

// List<Map<String, dynamic>> dataGuru = [
//   {
//     "id_guru": 1,
//     "name_guru": "Zia",
//     "subject_guru": "Fisika",
//     "address_guru": "Jawa Barat",
//     "price_guru": "200.000",
//     "imageUrl_guru": "assets/images/t3.png",
//     "isFavorite": true,
//     "description_guru": 'many many'
//   },
//   {
//     "id_guru": 1,
//     "name_guru": "Aldira",
//     "subject_guru": "Kimia",
//     "address_guru": "Jawa Timur",
//     "price_guru": "300.000",
//     "imageUrl_guru": "assets/images/t4.png",
//     "isFavorite": true,
//     "description_guru": 'many yuhuuuu'
//   }
// ];
