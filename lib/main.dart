import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/otp.dart';
import 'constants.dart';
import 'package:travel_app/phone.dart';
import 'reusable_card.dart';
import 'package:ionicons/ionicons.dart';
import 'balimotel.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    MaterialApp(
      initialRoute: 'phone',
      routes: {
        'phone': (context) => MyPhone(),
        'otp': (context) => MyOtp(),
        'balihotel': (context) => MyBaliMotel(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp();
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 249, 246, 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(26, 60, 26, 15),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.05), BlendMode.dstATop),
                    image: AssetImage('assets/images/mountain.jpg'),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Where you\nwanna go?',
                      style: mainScreenTextStyle,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: mediaQuery.size.width * 0.15,
                        height: mediaQuery.size.height * 0.09,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Ionicons.search_outline,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Row(
                children: [
                  Expanded(
                    child: IconCard(
                      onPress: () {},
                      cardChild: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: mediaQuery.size.width * 0.15,
                                height: mediaQuery.size.height * 0.09,
                                child: Icon(
                                  Icons.apartment_outlined,
                                  color: activeLogoColor,
                                  size: 28,
                                ),
                              ),
                            ),
                            Text(
                              'Hotels',
                              style: activeFlashcardsTextStyle,
                            ),
                          ],
                        ),
                      ),
                      colour: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: IconCard(
                      onPress: () {},
                      cardChild: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: mediaQuery.size.width * 0.15,
                                height: mediaQuery.size.height * 0.09,
                                child: Icon(
                                  CupertinoIcons.paperplane,
                                  color: inactiveLogoColor,
                                  size: 28,
                                ),
                              ),
                            ),
                            Text(
                              'Flight',
                              style: inactiveFlashcardsTextStyle,
                            ),
                          ],
                        ),
                      ),
                      colour: kInactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: IconCard(
                      onPress: () {},
                      cardChild: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: mediaQuery.size.width * 0.15,
                                height: mediaQuery.size.height * 0.09,
                                child: Icon(
                                  Ionicons.location_outline,
                                  color: inactiveLogoColor,
                                  size: 28,
                                ),
                              ),
                            ),
                            Text(
                              'Place',
                              style: inactiveFlashcardsTextStyle,
                            ),
                          ],
                        ),
                      ),
                      colour: kInactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: IconCard(
                      onPress: () {},
                      cardChild: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: mediaQuery.size.width * 0.15,
                                height: mediaQuery.size.height * 0.09,
                                child: Icon(
                                  Ionicons.restaurant_outline,
                                  color: inactiveLogoColor,
                                  size: 28,
                                ),
                              ),
                            ),
                            Text(
                              'Food',
                              style: inactiveFlashcardsTextStyle,
                            ),
                          ],
                        ),
                      ),
                      colour: kInactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 3, 20, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Popular Hotels',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HotelCard(
                      colour: Colors.white,
                      cardChild: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/santorini3.jpg',
                              fit: BoxFit.cover,
                              width: mediaQuery.size.width * 0.35,
                              height: mediaQuery.size.height * 0.35,
                            ),
                          ),
                          const Positioned(
                            top: 175,
                            left: 7,
                            child: Text(
                              'Santorini',
                              style: hotelName,
                            ),
                          ),
                          Positioned(
                            top: 196,
                            left: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 10,
                                    height: 6,
                                    child: const Icon(
                                      Ionicons.location_outline,
                                      color: activeLogoColor,
                                      size: 13,
                                    ),
                                  ),
                                ),
                                const Text(
                                  '  Greece',
                                  style: locationNameOfHotel,
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 214,
                            left: 7,
                            child: Row(
                              children: [
                                Text(
                                  '\$488/',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                Text(
                                  'night',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 216,
                            left: 110,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Ionicons.star,
                                  color: Colors.yellow,
                                  size: 12,
                                ),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      onPress: () {},
                    ),
                    HotelCard(
                      colour: Colors.white,
                      cardChild: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                15), // Adjust the border radius as needed
                            child: Image.asset(
                              'assets/images/hotelroyal.jpg',
                              fit: BoxFit.cover,
                              width: mediaQuery.size.width * 0.35,
                              height: mediaQuery.size.height * 0.35,
                            ),
                          ),
                          const Positioned(
                            top: 175,
                            left: 7,
                            child: Text(
                              'Hotel Royal',
                              style: hotelName,
                            ),
                          ),
                          Positioned(
                            top: 196,
                            left: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 10,
                                    height: 6,
                                    child: const Icon(
                                      Ionicons.location_outline,
                                      color: activeLogoColor,
                                      size: 13,
                                    ),
                                  ),
                                ),
                                const Text(
                                  '  Spain',
                                  style: locationNameOfHotel,
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 214,
                            left: 9,
                            child: Row(
                              children: [
                                Text(
                                  '\$280/',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                Text(
                                  'night',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 216,
                            left: 110,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Ionicons.star,
                                  color: Colors.yellow,
                                  size: 12,
                                ),
                                Text(
                                  '4.8',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      onPress: () {},
                    ),
                    HotelCard(
                      colour: Colors.white,
                      cardChild: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              15), // Adjust the border radius as needed
                          child: Image.asset(
                            'assets/images/santorini.jpeg',
                            fit: BoxFit.cover,
                            width: mediaQuery.size.width * 0.35,
                            height: mediaQuery.size.height * 0.35,
                          ),
                        ),
                      ),
                      onPress: () {},
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 3, 10, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Hot Deals',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: HotelCard(
                colour: Colors.white,
                cardChild: Stack(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/balimotel.jpg',
                        width: mediaQuery.size.width * 0.9,
                        height: mediaQuery.size.height * 0.32,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    Positioned(
                      top: 15,
                      left: 10,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '25% Sale',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Bali Motel Vung Tau',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: mediaQuery.size.width * 0.025,
                                  height: mediaQuery.size.height * 0.025,
                                  child: const Icon(
                                    Ionicons.location_outline,
                                    color: activeLogoColor,
                                    size: 15,
                                  ),
                                ),
                              ),
                              const Text(
                                '  Indonesia',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      top: 175,
                      left: 322,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Ionicons.star,
                            color: Colors.yellow,
                            size: 13,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                            ),
                          )
                        ],
                      ),
                    ),
                    const Positioned(
                      top: 192,
                      left: 285,
                      child: Row(
                        children: [
                          Text(
                            '\$580/',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Text(
                            'night',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                onPress: () {
                  Navigator.pushNamed(context, 'balihotel');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
