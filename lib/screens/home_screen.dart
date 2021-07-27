import 'detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  ///Image paths and food names
  final images = [
    "images/daral.jpg",
    "images/juwalan.jpg",
    "images/wadjit.jpg",
    "images/putli_mandi.jpg",
    "images/pasung.jpg",
  ];

  final foodNames = ["Daral", "Juwalan", "Wadjit", "Putli Mandi", "Pasung"];

  final foodInfos = [
    "The Daral is a native tausug food in Zamboanga City. It is a long-shaped tausug food. We use ingredients that are all found locally in Mindanao. These ingredients include grated coconut and thin dough. The sweetness and tastiness of it jives together.",
    "Juwalan Info.",
    "Wadjit Info.",
    "This is is called PUTLI-MANDI to tausugs ( southern philippines) and Pichi-pichi for some filipinos. Pichi-pichi is a traditional Filipino dessert. It is made with grated cassava or cassava flour, pandan water and sugar. Steamed then rolled in grated coconut. Pichi-pichi is a very soft, gelatinous texture. And are made with different colors. Recipe Courtesy of Nhing Yusop",
    "Pasung Tausug is a kind of Tausug bang bang (confectionery) has a cone like shaped made from flour, rice flour and sometimes cassava. It resembles Kuih Pasong of Malaysia or Indonesia but its origin is unknown, therefore we can assume that pasung is native to the Tausug. It is available in any coffee shop in Sulu and others in Zamboanga, Basilan & Tawi-Tawi, it could be eaten in breakfast or in the afternoon merienda. It is soft, fluffy and sweet, you can’t have enough of it.",
  ];

  final foodProc = [
    "Daral Procedure.",
    "Juwalan Procedure.",
    "Wadjit Procedure.",
    "Mix the sugar and the pandan flavored water and mix until sugar is dissolved. mix in the cassava and then add the lye water drop by drop mixing well as you do so.\nPour into a mold or bowl that fits your bamboo steamer. steam until the mixture becomes translucent.\nWhile still hot scoop out the cooked mixture (use ice cream scoop or a tablespoon the same size as the scoop) and roll into grated coconut.",
    "Put a fastener on the side of banana cone shape.\nLevel the mouth of banana cone shape with knife or scissor.\nPour the all purpose flour to a basin\nProduce 2 liters of coconut milk\nDissolve the brown sugar with coconut milk or water in small basin. Pulverize the sugar with hand.\nSift the dissolved brown sugar to a basin with flour\nPour the remaining coconut milk to a basin with flour\nLiquefy the flour with coconut milk and dissolved brown sugar until it easily to pour to a cone shape. If the admixture isn’t easily to pour add more water to the basin.\nSteam the filled banana cone shape on the steamer.\nIf the admixture goes above half inches from the mouth of a cone shape, the pasung is already cooked.\n\nTo make a banana cone shape\nTear 12 X 6 inches of banana leaves and make it a cone shape. Make sure the bottom of banana cone shape is close.\nTo check it pours the water into banana cone shape and make sure the water permeates slowly.\n",
  ];

  @override
  Widget build(BuildContext context) {
    ///For screen size
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood), title: Text("Recipes")),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), title: Text("Facts")),
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad), title: Text("Quiz")),
        ],
        iconSize: 30,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ///Container for Header
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Bang-Bang:\n “Tausug's Pastries.”",
                          style: GoogleFonts.playfairDisplay(fontSize: 30),
                        ),
                      ),

                      ///For spacing
                      SizedBox(
                        width: 50,
                      ),
                      Image.asset(
                        'images/app_logo.png',
                        height: 150,
                        fit: BoxFit.fitWidth,
                      ),
                      // IconButton(
                      //   icon: Icon(Icons.search),
                      //   color: Colors.grey[800],
                      //   onPressed: () {},
                      // ),
                      // IconButton(
                      //   icon: Icon(Icons.notifications_none),
                      //   color: Colors.grey[800],
                      //   onPressed: () {},
                      // ),
                    ],
                  ),
                ),

                ///For vertical Spacing
                SizedBox(
                  height: 32,
                ),

                ///Container For List of Recipes type
                ///Give 25 percent height relative to screen
                Container(
                  height: size.height * 0.25,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return AspectRatio(
                            aspectRatio: 0.9 / 1,

                            ///Width : screen,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    child: ClipRRect(
                                      child: Image.asset(
                                        images[index],
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),

                                ///Add Text Also,
                                SizedBox(
                                  height: 8,
                                ),

                                ///For spacing
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "${foodNames[index]} Recipes",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[800], fontSize: 11),
                                  ),
                                )
                              ],
                            ));
                      },
                      separatorBuilder: (context, _) => SizedBox(
                            width: 16,
                          ),
                      itemCount: 4),
                ),

                ///For vertical spacing
                SizedBox(
                  height: 32,
                ),

                ///For quick recipe list
                Container(
                  height: size.height * 0.4,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                        images[4 - index],
                                        foodNames[4 - index],
                                        foodInfos[4 - index],
                                        foodProc[4 - index])));
                          },
                          child: AspectRatio(
                              aspectRatio: 0.9 / 1,

                              ///Width : screen,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Hero(
                                      child: Container(
                                        child: ClipRRect(
                                          child: Image.asset(
                                            images[4 - index],
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                      tag: images[4 - index],
                                    ),
                                  ),

                                  ///Add Text Also,
                                  SizedBox(
                                    height: 8,
                                  ),

                                  ///For spacing
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Text(
                                      "${foodNames[4 - index]}",
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey[800],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       horizontal: 16.0),
                                  //   child: Text(
                                  //     "Recipe by Sarah Ahmed",
                                  //     style: GoogleFonts.roboto(
                                  //         color: Colors.grey[600],
                                  //         fontSize: 11),
                                  //   ),
                                  // )
                                ],
                              )),
                        );
                      },
                      separatorBuilder: (context, _) => SizedBox(
                            width: 16,
                          ),
                      itemCount: 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
