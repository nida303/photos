import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:project2/profileWidget.dart';
import 'package:project2/whatsNew.dart';

import 'browseAll.dart';
import 'main.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _tabIndex = 1;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.of(context).pushAndRemoveUntil(
        //         MaterialPageRoute(
        //           builder: (context) => const MyHomePage(
        //             title: 'photos',
        //           ),
        //         ),
        //         (route) => false);
        //   },
        //   child: const Icon(
        //     Icons.logout,
        //     color: Colors.black,
        //   ),
        // ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Image.asset(
          'assets/images/Logos.png',
          height: 40.0,
        ),
      ),
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.search, color: Colors.red),
          Icon(Icons.home, color: Colors.cyan),
          Icon(Icons.person, color: Colors.indigo),
        ],
        inactiveIcons: const [
          Text("Browse"),
          Text("Home"),
          Text("Me"),
        ],
        color: Colors.white,
        height: 60,
        circleWidth: 60,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        shadowColor: Colors.black,
        elevation: 2,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.80,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'BROWSE ALL',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.1.png',
                          image2: 'assets/images/Rectangle 2.2.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.3.png',
                          image2: 'assets/images/Rectangle 2.4.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.5.png',
                          image2: 'assets/images/Rectangle 2.6.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.7.png',
                          image2: 'assets/images/Rectangle 2.9.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.10.png',
                          image2: 'assets/images/Rectangle 2.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.1.png',
                          image2: 'assets/images/Rectangle 2.2.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.3.png',
                          image2: 'assets/images/Rectangle 2.4.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.5.png',
                          image2: 'assets/images/Rectangle 2.6.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.7.png',
                          image2: 'assets/images/Rectangle 2.9.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.1.png',
                          image2: 'assets/images/Rectangle 2.2.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.3.png',
                          image2: 'assets/images/Rectangle 2.4.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.5.png',
                          image2: 'assets/images/Rectangle 2.6.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.7.png',
                          image2: 'assets/images/Rectangle 2.9.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.10.png',
                          image2: 'assets/images/Rectangle 2.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.1.png',
                          image2: 'assets/images/Rectangle 2.2.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.3.png',
                          image2: 'assets/images/Rectangle 2.4.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.5.png',
                          image2: 'assets/images/Rectangle 2.6.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.7.png',
                          image2: 'assets/images/Rectangle 2.9.png',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.80,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'WHAT\'S NEW TODAY',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          WhtasNew(
                              image: 'Rectangle 2.11.png',
                              profile: 'Ellipse.png',
                              nama: 'Ridhwan Nordin',
                              user: '@ridzjcob'),
                          const SizedBox(
                            width: 10.0,
                          ),
                          WhtasNew(
                              image: 'Rectangle 2.10 (1).png',
                              profile: 'Ellipse-1.png',
                              nama: 'Clem Onojeghuo',
                              user: '@clemono2'),
                          const SizedBox(
                            width: 10.0,
                          ),
                          WhtasNew(
                              image: 'Rectangle 2.8.png',
                              profile: 'Ellipse-2.png',
                              nama: 'Jon Tyson',
                              user: '@jontyson'),
                          const SizedBox(
                            width: 10.0,
                          ),
                          WhtasNew(
                              image: 'Rectangle 2.9 (1).png',
                              profile: 'Ellipse-3.png',
                              nama: 'Simon Zhu',
                              user: '@smnzhu'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'BROWSE ALL',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.1.png',
                          image2: 'assets/images/Rectangle 2.2.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.3.png',
                          image2: 'assets/images/Rectangle 2.4.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.5.png',
                          image2: 'assets/images/Rectangle 2.6.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.7.png',
                          image2: 'assets/images/Rectangle 2.9.png',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BrowseAllView(
                          image1: 'assets/images/Rectangle 2.10.png',
                          image2: 'assets/images/Rectangle 2.png',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.80,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink,
                            Colors.purple,
                            Colors.cyan,
                          ],
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 50.0,
                        child: Text(
                          'RN',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Ridhwan Nordin',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '@ridzjcob',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    ProfileView(
                      icon: Icon(Icons.qr_code),
                      menu: 'Kode QR',
                      ontap: () {
                        print('Kode QR');
                      },
                    ),
                    ProfileView(
                      icon: Icon(Icons.favorite),
                      menu: 'Likes',
                      ontap: () {
                        print('Likes');
                      },
                    ),
                    ProfileView(
                      icon: Icon(Icons.archive_outlined),
                      menu: 'Disimpan',
                      ontap: () {
                        print('Disimpan');
                      },
                    ),
                    ProfileView(
                      icon: Icon(Icons.settings),
                      menu: 'Ubah Password',
                      ontap: () {
                        print('Ubah Password');
                      },
                    ),
                    ProfileView(
                      icon: Icon(Icons.logout),
                      menu: 'Keluar',
                      ontap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const MyHomePage(
                              title: 'photos',
                            ),
                          ),
                          (route) => false,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
