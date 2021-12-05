import 'package:bang_bang/models/RecipeModel.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RecipeDetails extends StatefulWidget {
  final RecipeModel recipeModel;

  const RecipeDetails({Key key, @required this.recipeModel}) : super(key: key);

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  YoutubePlayerController _controller;

  // void runYTPlayer() {
  //   _controller = YoutubePlayerController(
  //       initialVideoId: YoutubePlayer.convertUrlToId(widget.recipeModel.url),
  //       flags: YoutubePlayerFlags(
  //         enableCaption: false,
  //         isLive: false,
  //         autoPlay: true,
  //       ));
  // }

  @override
  void initState() {
    // runYTPlayer();
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.recipeModel.url),
        flags: YoutubePlayerFlags(
          enableCaption: false,
          isLive: false,
          autoPlay: true,
        ));
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.recipeModel.name),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: AssetImage(widget.recipeModel.ImageUrl),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    widget.recipeModel.desc,
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'Procedure:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                player,
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ingredients:',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                  child: Text(
                    widget.recipeModel.procs,
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
