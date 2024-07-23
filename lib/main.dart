import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'എങ്കിലും എന്റെ കൃഷ്ണ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final homeKey = GlobalKey();
  final servicesKey = GlobalKey();
  final aboutUsKey = GlobalKey();
  final contactUsKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.withOpacity(.2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Gallery",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            CarouselSlider(
              key: homeKey,
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 0.6,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
                pauseAutoPlayOnTouch: true,
                // height: 450
              ),
              items: [
                0,
                1,
                2,
                3,
                4,
                5,
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(
                      "assets/homepage$i.jpg",
                      width: MediaQuery.of(context).size.width,
                      // height: 500,
                      fit: BoxFit.fitWidth,
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Our Services",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/our_services.jpeg',
              key: servicesKey,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(
              height: 20,
            ),

            Text(
              "About Us",
              key: aboutUsKey,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Devotee Store, which specializes in selling products for devotees.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),

            const Text(
              "Conatct Us",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                key: contactUsKey,
                children: const [
                  AboutUsWidget(
                    icon: Icons.location_on,
                    key1: "Location",
                    defaultValue:
                        "MAIN OFFICE ERNAKULAM ( THALAKKOD *) \nGURUVAYUR BRANCH",
                  ),
                  Spacer(),
                  AboutUsWidget(
                    icon: Icons.phone,
                    key1: "Phone",
                    defaultValue: "+91 9526215221",
                  ),
                  Spacer(),
                  AboutUsWidget(
                    icon: Icons.email,
                    key1: "Email",
                    defaultValue: "bibinj412@gmail.com",
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 300,
            // ),
            // const Text("Our Services"),
            // const SizedBox(
            //   height: 300,
            // ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.green.withOpacity(.2),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            CommonTextButton(
                title: 'Home',
                onTap: () {
                  Scrollable.ensureVisible(
                    homeKey.currentContext!,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }),
            CommonTextButton(
                title: 'Our services',
                onTap: () {
                  Scrollable.ensureVisible(
                    servicesKey.currentContext!,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }),
            CommonTextButton(
                title: 'About Us',
                onTap: () {
                  Scrollable.ensureVisible(
                    contactUsKey.currentContext!,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }),
            CommonTextButton(
                title: 'Contact Us',
                onTap: () {
                  Scrollable.ensureVisible(
                    contactUsKey.currentContext!,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }),
          ],
          title: const Center(
            child: Text(
              'എങ്കിലും എന്റെ കൃഷ്ണ\n  The Devotee store',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          // Row(
          //   children: [
          //     const Spacer(),
          //     const Column(
          //       children: [
          //         SizedBox(
          //           height: 25,
          //         ),
          //         Center(
          //           child: Text(
          //             'എങ്കിലും എന്റെ കൃഷ്ണ',
          //             style: TextStyle(fontSize: 25),
          //           ),
          //         ),
          //       ],
          //     ),
          //     const Spacer(),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 25),
          //       child: Row(
          //         children: [
          //           CommonTextButton(
          //               title: 'Home',
          //               onTap: () {
          //                 Scrollable.ensureVisible(
          //                   homeKey.currentContext!,
          //                   duration: const Duration(milliseconds: 400),
          //                   curve: Curves.easeInOut,
          //                 );
          //               }),
          //           CommonTextButton(
          //               title: 'Our services',
          //               onTap: () {
          //                 Scrollable.ensureVisible(
          //                   servicesKey.currentContext!,
          //                   duration: const Duration(milliseconds: 400),
          //                   curve: Curves.easeInOut,
          //                 );
          //               }),
          //           CommonTextButton(
          //               title: 'About Us',
          //               onTap: () {
          //                 Scrollable.ensureVisible(
          //                   contactUsKey.currentContext!,
          //                   duration: const Duration(milliseconds: 400),
          //                   curve: Curves.easeInOut,
          //                 );
          //               }),
          //           CommonTextButton(
          //               title: 'Contact Us',
          //               onTap: () {
          //                 Scrollable.ensureVisible(
          //                   contactUsKey.currentContext!,
          //                   duration: const Duration(milliseconds: 400),
          //                   curve: Curves.easeInOut,
          //                 );
          //               }),
          //         ],
          //       ),
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }
}

class CommonTextButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const CommonTextButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ));
  }
}

class AboutUsWidget extends StatelessWidget {
  final IconData icon;
  final String key1;
  final String defaultValue;
  const AboutUsWidget(
      {super.key,
      required this.icon,
      required this.key1,
      required this.defaultValue});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        size: 40,
      ),
      Text(
        key1,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Text(
        defaultValue,
      ),
    ]);
  }
}
