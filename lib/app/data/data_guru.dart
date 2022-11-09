import 'package:flutter/material.dart';

class Guru {
  //data
  final int id_guru;
  final String name_guru;
  final String subject_guru;
  final String address_guru;
  final String price_guru;
  final String imageUrl_guru;
  final bool isFavorite;
  final String description_guru;

//constructor
  Guru({
    required this.id_guru,
    required this.name_guru,
    required this.subject_guru,
    required this.address_guru,
    required this.price_guru,
    required this.imageUrl_guru,
    required this.isFavorite,
    required this.description_guru,
  });
}

final List<Guru> listGuru = [
  Guru(
      id_guru: 1,
      name_guru: "Zia",
      subject_guru: "Fisika",
      address_guru: "Jawa Barat",
      price_guru: "200.000",
      imageUrl_guru: "assets/images/t3.png",
      isFavorite: true,
      description_guru: 'many many'),
];
