import 'package:flutter/material.dart';

import '../data/data_guru.dart';
import 'data_guru_detail.dart';

class GuruPage extends StatelessWidget {
  const GuruPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: 80,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return _buildCard(listGuru[index], context);
          },
          itemCount: listGuru.length,
        ),
      ),
    );
  }

  Widget _buildCard(
    Guru guru,
    context,
  ) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return GuruDetail(
              assetPath: guru.imageUrl_guru,
              guruprice: guru.price_guru,
              guruname: guru.name_guru,
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.white,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 8,
                  top: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    guru.isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Color(0xFFEF7532),
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Color(0xFFEF7532),
                          )
                  ],
                ),
              ),
              Container(
                height: 92,
                width: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(guru.imageUrl_guru),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  'Rp ${guru.price_guru}',
                  style:
                      TextStyle(color: const Color(0xFFCC8053), fontSize: 16),
                ),
              ),
              Center(
                child: Text(
                  guru.name_guru,
                  overflow: TextOverflow.ellipsis,
                  style:
                      TextStyle(color: const Color(0xFF575E67), fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  color: const Color(0xFFEBEBEB),
                  height: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.chat,
                          color: const Color(0xFFD17E50),
                          size: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                              color: const Color(0xFFD17E50), fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Row(
                      children: [
                        Icon(
                          Icons.remove_circle_outline,
                          color: const Color(0xFFD17E50),
                          size: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                              color: const Color(0xFFD17E50),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.add_circle_outline,
                          color: const Color(0xFFD17E50),
                          size: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
