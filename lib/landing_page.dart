import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  //GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withGreen(200),
        body: Column(
          children: [
            Container(
              color: Colors.yellow.shade200,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Center(
                  child: Text(
                    'SEARCH FOR BOOKS',
                    style: GoogleFonts.lato(
                      fontSize: 27.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    Card(
                      child: FlipCard(
                        //key: cardKey,
                        front: Container(
                          color: Colors.yellow.shade100,
                          child: Center(
                              child: Text(
                            'NOVELS',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        back: Container(
                          color: Colors.yellow.shade100,
                          child: Center(
                              child: Text(
                            ' oops! flip back',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                    Center(
                        child: Text(
                      'Click for more details',
                      style: GoogleFonts.lato(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w800,
                      ),
                    )),
                    Card(
                      child: FlipCard(
                        //key: cardKey,
                        front: Container(
                          color: Colors.yellow.shade100,
                          child: Center(
                              child: Text(
                            'TEXTBOOKS',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        back: Container(
                          color: Colors.yellow.shade100,
                          child: Center(
                            child: Text(
                              ' oops! flip back',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                        child: Text(
                      'Click for more details',
                      style: GoogleFonts.lato(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w800,
                      ),
                    )),
                    Card(
                      child: FlipCard(
                        //key: cardKey,
                        front: Container(
                          color: Colors.yellow.shade100,
                          child: Center(
                              child: Text(
                            'STORY BOOKS FOR KIDS',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        back: Container(
                          color: Colors.yellow.shade100,
                          child: Center(
                            child: Text(
                              ' oops! flip back',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                        child: Text(
                      'Click for more details',
                      style: GoogleFonts.lato(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w800,
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
