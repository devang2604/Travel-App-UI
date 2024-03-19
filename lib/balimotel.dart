import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'package:ionicons/ionicons.dart';

class MyBaliMotel extends StatefulWidget {
  const MyBaliMotel({super.key});

  @override
  State<MyBaliMotel> createState() => _MyBaliMotelState();
}

class _MyBaliMotelState extends State<MyBaliMotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 249, 246, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 515,
              height: 270,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/balihotel.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 34,
                    left: 18,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Ionicons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 34,
                    left: 300,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 34,
                    left: 355,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.favorite_outline_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 210,
                    left: 157,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '124 Photos',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            // spreadRadius: 4,
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: -1,
                    child: Container(
                      width: 415,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Color.fromRGBO(245, 249, 246, 1),
                          width: 10,
                        ),
                        color: Color.fromRGBO(245, 249, 246, 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 350,
              height: 580,
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      "BaLi Motel\nVung Tau",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75,
                    left: 0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          child: SizedBox(
                            width: 10,
                            height: 6,
                            child: Icon(
                              Ionicons.location_outline,
                              color: Colors.black45,
                              size: 15,
                            ),
                          ),
                        ),
                        const Text(
                          '  Indonesia',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 95,
                    left: 0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          child: SizedBox(
                            width: 10,
                            height: 6,
                            child: Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                          ),
                        ),
                        Text(
                          '  4.9',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Text(
                          ' (6.8K review)',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 82,
                    left: 234,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "\$580/",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'night',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    // bottom: 0,
                    left: 0,
                    right: 0,
                    top: 130,
                    child: Divider(
                      color: Color.fromRGBO(197, 195, 187, 1.0),
                      thickness: 1,
                    ),
                  ),
                  Positioned(
                    top: 155,
                    child: Text(
                      "Set in Vung Tau, 100 metres from Front Beach, BaLi\nMotel Vung Tau offers accomodation with a garden,\nprivate parking and a shared...",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(115, 112, 112, 1.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 192,
                    left: 200,
                    child: Text(
                      "Read More",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    child: Text(
                      "What we offer",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 275,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        children: [
                          IconCard(
                            onPress: () {},
                            cardChild: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 56,
                                      height: 56,
                                      child: const Icon(
                                        Icons.bed_outlined,
                                        color: Colors.black87,
                                        size: 28,
                                      ),
                                    ),
                                  ),
                                  // SizedBox(height: 3),
                                  Text('Bed',
                                      style: TextStyle(
                                        color: Colors.black87,
                                      )),
                                ],
                              ),
                            ),
                            colour: kInactiveCardColor,
                          ),
                          IconCard(
                            onPress: () {},
                            cardChild: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 56,
                                      height: 56,
                                      child: const Icon(
                                        Icons.dining_outlined,
                                        color: Colors.black87,
                                        size: 28,
                                      ),
                                    ),
                                  ),
                                  // SizedBox(height: 3),
                                  Text(
                                    'Dinner',
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            colour: kInactiveCardColor,
                          ),
                          IconCard(
                            onPress: () {},
                            cardChild: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 56,
                                      height: 56,
                                      child: const Icon(
                                        Icons.dining_outlined,
                                        color: Colors.black87,
                                        size: 28,
                                      ),
                                    ),
                                  ),
                                  // SizedBox(height: 3),
                                  Text(
                                    'Dinner',
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            colour: kInactiveCardColor,
                          ),
                          IconCard(
                            onPress: () {},
                            cardChild: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 56,
                                      height: 56,
                                      child: const Icon(
                                        Icons.dining_outlined,
                                        color: Colors.black87,
                                        size: 28,
                                      ),
                                    ),
                                  ),
                                  // SizedBox(height: 3),
                                  Text(
                                    'Dinner',
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            colour: kInactiveCardColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 385,
                    child: Text(
                      "Hosted By",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 425,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/harleen_smith.jpg',
                        width: 45,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 425,
                    left: 58,
                    child: Text(
                      "Harleen Smith",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 455,
                    left: 57,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          child: SizedBox(
                            width: 10,
                            height: 6,
                            child: Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                          ),
                        ),
                        Text(
                          '  4.9',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Text(' (1.4K review)')
                      ],
                    ),
                  ),
                  Positioned(
                    top: 430,
                    left: 300,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                        child: const Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 500,
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Add your button functionality here
                        },
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
