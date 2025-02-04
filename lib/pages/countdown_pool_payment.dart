import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CountPool extends StatefulWidget {
  const CountPool({super.key});

  @override
  State<CountPool> createState() => _CountPoolState();
}

class _CountPoolState extends State<CountPool> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(220, 28, 232, 164),
        toolbarHeight: 100,
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.menu,
              size: 40,
              color: Color.fromRGBO(48, 69, 91, 1.000),
            ),
          ),
        ),
        title: const Center(
          child: Text(
            'Countdown',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(48, 69, 91, 1.000),
              fontSize: 30,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.person,
                  size: 40,
                  color: Color.fromRGBO(48, 69, 91, 1.000),
                ),
              ),
              const SizedBox(
                width: 26,
              ),
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 85),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                        height: height / 1.8,
                        width: width,
                        child: Card(
                            margin: const EdgeInsets.only(top: 10),
                            elevation: 10,
                            color: const Color.fromRGBO(255, 255, 255, 1.000),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(children: [
                              const Positioned(
                                top: 80,
                                left: 10,
                                right: 10,
                                child: Center(
                                  child: Text(
                                    'Payment Confirmation',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(48, 69, 91, 1.000),
                                      fontSize: 22,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                left: 22,
                                child: Text(
                                  'Spent Time',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(48, 69, 91, 1.000),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 150,
                                right: 22,
                                child: Text(
                                  '01:00:10',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(48, 69, 91, 1.000),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 210,
                                left: 22,
                                child: Text(
                                  'Cost',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(48, 69, 91, 1.000),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 210,
                                right: 22,
                                child: Text(
                                  'RS 100/ h',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(48, 69, 91, 1.000),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 270,
                                left: 22,
                                child: Text(
                                  'Total',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor('ff2d00'),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 270,
                                right: 22,
                                child: Text(
                                  'RS 100.10',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor('ff2d00'),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 350,
                                left: 25,
                                right: 20,
                                child: SizedBox(
                                  height: 55,
                                  width: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          28, 232, 164, 1.000),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: Text(
                                      'Ok, Send Now !',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('#ffffff'),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]))),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 33),
            child: Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: 55,
                backgroundColor: HexColor('838f9c'),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/pool.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
