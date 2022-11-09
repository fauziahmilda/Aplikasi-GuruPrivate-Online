import 'package:flutter/material.dart';

class GuruDetail extends StatelessWidget {
  final String assetPath;
  final String guruprice;
  final String guruname;

  const GuruDetail({
    Key? key,
    required this.assetPath,
    required this.guruprice,
    required this.guruname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Pesan',
          style: TextStyle(
            fontSize: 24,
            color: const Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Kue',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Hero(
              tag: assetPath,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(assetPath),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              'Rp $guruprice',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              guruname,
              style: TextStyle(color: const Color(0xFF575E67), fontSize: 24),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 52.0,
              child: Text(
                'Bolu atau kue bolu adalah kue berbahan dasar tepung, gula, dan telur. Kue bolu dan cake umumnya dimatangkan dengan cara dipanggang di dalam oven, walaupun ada juga bolu yang dikukus',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 100,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xFFF17532),
              ),
              child: Center(
                child: InkWell(
                  // onTap: () async {
                  //   await FlutterLaunch.launchWhatsapp(
                  //     phone: '6285640899224',
                  //     message:
                  //         'Hi Bahri Cakery,Saya mau order $guruname untuk hari ini, apa bisa diantar kerumah?',
                  //   );
                  // },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(
                      //   FontAwesomeIcons.whatsapp,
                      //   size: 32,
                      //   color: Color.fromRGBO(255, 255, 255, 1),
                      // ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Pesan via Whatsapp',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 28),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF17532),
        child: const Icon(Icons.fastfood),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: const NavbarWidget(),
    );
  }
}
