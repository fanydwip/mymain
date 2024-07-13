import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:mymain/Utilities/cake_tabs.dart';
import 'package:mymain/loginPage.dart';
import 'package:mymain/profilPage.dart';

import '../TabBarView/baguette_tab.dart';
import '../TabBarView/croissant_tab.dart';
import '../TabBarView/brioche_tab.dart';
import '../TabBarView/naan_tab.dart';
import '../TabBarView/sourdough_tab.dart';
import 'package:mymain/user_profil.dart';
import 'package:mymain/search_delegate.dart';  

class HomeView extends StatelessWidget {
  final UserProfile userProfile;

  const HomeView({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> cakeTabs = [
      CakeTabs(
          iconPath: 'assets/images/bread.png',
          colors: Colors.pink.shade50),
      CakeTabs(
          iconPath: 'assets/images/brioche.png',
          colors: Colors.teal.shade50),
      CakeTabs(
          iconPath: 'assets/images/croissant.png',
          colors: Colors.brown.shade50),
      CakeTabs(
          iconPath: 'assets/images/naan.png',
          colors: Colors.yellow.shade50),
      CakeTabs(
          iconPath: 'assets/images/sourdough.png',
          colors: Colors.red.shade50)
    ];
    return DefaultTabController(
      length: cakeTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[50],
          title: const Text(
            'Roti Fanni 🥖🍞🥐🥨🥪🥯',
            style: TextStyle(color: Colors.purple),
          ),
          elevation: 0.0,
          leading: PopupMenuButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.purple,
              size: 30,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.person, color: Colors.blue),
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilPage(userProfile: userProfile), // Menyertakan userProfile
                      ),
                    );
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.shopping_cart, color: Colors.red),
                  title: Text('Shopping Cart'),
                  onTap: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Shopping Cart clicked!'),
                      ),
                    );
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.logout_outlined, color: Colors.red),
                  title: Text('Log Out'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loginpage(), // Navigasi ke halaman login
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.purple,
                size: 30,
              ),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),  // Tambahkan delegate pencarian
                );
              },
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: 180,
                floating: true,
                snap: true,
                flexibleSpace: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipPath(
                        clipper: _CustomClipper(),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.purple[50],
                          ),
                          child: ImageSlideshow(
                            width: double.infinity,
                            initialPage: 0,
                            indicatorColor: Colors.purple,
                            onPageChanged: (value) {
                              print('Page changed: $value');
                            },
                            autoPlayInterval: 3000,
                            isLoop: true,
                            children: [
                              Image.asset(
                                'assets/images/slider/bread.png',
                              ),
                              Image.asset(
                                'assets/images/slider/brioche.png',
                              ),
                              Image.asset(
                                'assets/images/slider/croissant.png',
                              ),
                              Image.asset(
                                'assets/images/slider/naan.png',
                              ),
                              Image.asset(
                                'assets/images/slider/sourdough.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: [
              //**********CHOOSE YOUR FAVS*********//
              const Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 10),
                child: Text(
                  'Pilih yang kamu suka',
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              //**********CATEGORY TABS**********//
              TabBar(tabs: cakeTabs),
              //**********TAB BAR VIEW**********//
              const Expanded(
                child: TabBarView(
                  children: [
                    // Birthday cakes
                    BaguetteTab(),
                    // Cupcakes
                    BriocheTab(),
                    // cake pieces
                    CroissantTab(),
                    // muffins
                    NaanTab(),
                    // Wedding cake
                    SourdoughTab()
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

class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path(); //* Path object

    path.lineTo(
      0,
      size.height * 0.7,
    );

    path.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.85,
      size.width * 0.3,
      size.height * 0.85,
    );

    path.lineTo(
      size.width * 0.7,
      size.height * 0.85,
    );
    path.quadraticBezierTo(
      size.width * 0.9,
      size.height * 0.85,
      size.width * 1,
      size.height * 1,
    );
    path.lineTo(
      size.width,
      0,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
