import 'package:bang_bang/models/RecipeModel.dart';
import 'package:bang_bang/screens/recipe_details_screen.dart';
import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  const Recipes({Key key}) : super(key: key);

  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  static List images = [
    "images/daral.jpg",
    "images/pasung.jpg",
    "images/wadjit.jpg",
    "images/putli_mandi.jpg",
    "images/juwalan.jpg",
  ];

  static List<String> foodNames = [
    "Daral",
    "Pasung",
    "Wadjit",
    "Putli Mandi",
    "Juwalan",
  ];

  static List<String> foodInfos = [
    "The Daral is a native tausug food in Zamboanga City. It is a long-shaped tausug food.",
    "Pasung Tausug is a kind of Tausug bang bang (confectionery) has a cone like shaped made from flour.",
    "The Wadjit is a native tausug food in Zamboanga City",
    "This is is called PUTLI-MANDI to tausugs ( southern philippines) and Pichi-pichi for some filipinos.",
    "The Juwalan is a native tausug food in Zamboanga City",
  ];

  static List<String> foodProcs = [
    "• 1 Cup of Flour.\n• 1/ & 1/2 Cup of Water.\n• Oil for Greasing",
    "• 2 cups Flour\n• 1 cup Sugar\n• 3 cups Coconut Milk\n• Banana leaves\n• Toothpicks",
    "• 1/2 kg glutinous rice\n•1/4 kg brown sugar\n•1 big coconut/3 cups coconut milk\n•1 tbsp vanilla essence",
    "• 2 Cups of Glutinous rice flour\n• 1/2 Cup of regular flour\n• 1 & 1/4 Cups of warm water\n• Violet food color (Optional any color or no color will do)\n• 2 Tbsp. cooking oil\n• 1 to 2 Cups of Hinti (Grated sweet coconut)",
    "• Banana\n• Flour\n• Cooking Oil\n• Salt",
  ];

  static List<String> urls = [
    "https://www.youtube.com/watch?v=JaDstI3b9Fg",
    "https://www.youtube.com/watch?v=isoAQpEX0X8",
    "https://www.youtube.com/watch?v=EoQbikYT_Iw",
    "https://www.youtube.com/watch?v=wLam5ax8uHE",
    "https://www.youtube.com/watch?v=XQy--HdNgGw",
  ];

  final List<RecipeModel> Fooddata = List.generate(
      foodNames.length,
      (index) => RecipeModel('${foodNames[index]}', '${images[index]}',
          '${foodInfos[index]}', '${foodProcs[index]}', '${urls[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Fooddata.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(Fooddata[index].name),
              subtitle: Text(Fooddata[index].desc),
              leading: SizedBox(
                height: 100.0,
                width: 50.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage(Fooddata[index].ImageUrl),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RecipeDetails(
                          recipeModel: Fooddata[index],
                        )));
              },
            ),
          );
        },
        // children: <Widget>[
        //   Container(
        //     child: ListTile(
        //       // leading: Icon(Icons.android),
        //       title: Text("Recipes"),
        //       subtitle: Text("List of the available Recipes."),
        //       // onTap: () => {},
        //     ),
        //   ),
        //   Card(
        //     child: ListTile(
        //       leading: SizedBox(
        //         height: 100.0,
        //         width: 50.0,
        //         child: CircleAvatar(
        //           backgroundImage: AssetImage('images/daral.jpg'),
        //         ),
        //       ),
        //       title: Text('Daral'),
        //       subtitle: Text(
        //           'The Daral is a native tausug food in Zamboanga City. It is a long-shaped tausug food.'),
        //       onTap: () => {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => RecipeDetails(
        //                     )))
        //       },
        //     ),
        //   ),
        //   Card(
        //     child: ListTile(
        //       leading: SizedBox(
        //         height: 100.0,
        //         width: 50.0,
        //         child: CircleAvatar(
        //           backgroundImage: AssetImage('images/pasung.jpg'),
        //         ),
        //       ),
        //       title: Text('Pasung'),
        //       subtitle: Text(
        //           'Pasung Tausug is a kind of Tausug bang bang (confectionery) has a cone like shaped made from flour.'),
        //     ),
        //   ),
        //   Card(
        //     child: ListTile(
        //       leading: SizedBox(
        //         height: 100.0,
        //         width: 50.0,
        //         child: CircleAvatar(
        //           backgroundImage: AssetImage('images/juwalan.jpg'),
        //         ),
        //       ),
        //       title: Text('Juwalan'),
        //       subtitle:
        //           Text('The Daral is a native tausug food in Zamboanga City.'),
        //     ),
        //   ),
        //   Card(
        //     child: ListTile(
        //       leading: SizedBox(
        //         height: 100.0,
        //         width: 50.0,
        //         child: CircleAvatar(
        //           backgroundImage: AssetImage('images/putli_mandi.jpg'),
        //         ),
        //       ),
        //       title: Text('Putli Mandi'),
        //       subtitle: Text(
        //           'This is is called PUTLI-MANDI to tausugs ( southern philippines) and Pichi-pichi for some filipinos.'),
        //     ),
        //   ),
        //   Card(
        //     child: ListTile(
        //       leading: SizedBox(
        //         height: 100.0,
        //         width: 50.0,
        //         child: CircleAvatar(
        //           backgroundImage: AssetImage('images/wadjit.jpg'),
        //         ),
        //       ),
        //       title: Text('Wadjit'),
        //       subtitle:
        //           Text('The Daral is a native tausug food in Zamboanga City.'),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
