import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final image;
  final name;
  final info;
  final proc;

  ///For hero tagging and showing relative image
  DetailScreen(this.image, this.name, this.info, this.proc);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            ///First show the image in background
            Hero(
              child: Container(
                height: size.height * 0.55,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              tag: image,
            ),

            ///Container for more content
            DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.6,
              minChildSize: 0.6,
              builder: (context, controller) {
                return SingleChildScrollView(
                  controller: controller,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              name,
                              style: GoogleFonts.roboto(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            // IconButton(
                            //   icon: Icon(Icons.favorite),
                            //   color: Colors.redAccent,
                            //   iconSize: 30,
                            //   onPressed: () {},
                            // )
                          ],
                        ),
                        // Text(
                        //   "By Sarah Ahmed",
                        //   style: GoogleFonts.roboto(
                        //     fontWeight: FontWeight.w300,
                        //   ),
                        // ),
                        SizedBox(
                          height: 4,
                        ),
                        // Row(
                        //   children: <Widget>[
                        //     Icon(
                        //       Icons.star,
                        //       color: Colors.orange,
                        //       size: 15,
                        //     ),
                        //     Icon(
                        //       Icons.star,
                        //       color: Colors.orange,
                        //       size: 15,
                        //     ),
                        //     Icon(
                        //       Icons.star,
                        //       color: Colors.orange,
                        //       size: 15,
                        //     ),
                        //     Icon(
                        //       Icons.star,
                        //       color: Colors.orange,
                        //       size: 15,
                        //     ),
                        //     Icon(
                        //       Icons.star,
                        //       color: Colors.grey[400],
                        //       size: 15,
                        //     ),
                        //   ],
                        // ),

                        SizedBox(
                          height: 24,
                        ),

                        ///Container for food information
                        Container(
                          child: Row(
                            children: <Widget>[
                              // Expanded(
                              //   child: Container(
                              //     decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(10),
                              //         border:
                              //             Border.all(color: Colors.grey[200])),
                              //     padding:
                              //         const EdgeInsets.symmetric(vertical: 16),
                              //     child: Column(
                              //       children: <Widget>[
                              //         Text(
                              //           "Calories",
                              //           style: GoogleFonts.roboto(
                              //               color: Colors.grey),
                              //         ),
                              //         Text(
                              //           "174KCal",
                              //           style: GoogleFonts.roboto(
                              //               color: Colors.grey[900],
                              //               fontWeight: FontWeight.bold),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Colors.grey[200])),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Ingredients",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "5",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Colors.grey[200])),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Time",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "3 Hours",
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        Text(
                          "About",
                          style: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          info,
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w300, color: Colors.grey),
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        Text(
                          "Procedure",
                          style: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          proc,
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w300, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
