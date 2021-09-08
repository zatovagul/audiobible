import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AudioPlayer player;
  Stream<Duration?>? time;
  @override
  void initState() {
    player = AudioPlayer();
    player.setUrl(
        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3");
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      final a = await player.load();
      print(a);
      player.play();
      time = player.positionStream;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          time == null
              ? Container()
              : StreamBuilder<Duration?>(
                  stream: time!,
                  builder: (context, snapshot) {
                    final a = snapshot.data;
                    return Container(
                      height: 100,
                      child: Text("$a"),
                    );
                  }),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                if(player.playerState.playing)
                   player.pause();
                else player.play();
                setState(() {});
              },
              child: Text(player.playerState.playing?"PAUSE":"PLAY")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    player.seek(player.position+Duration(seconds: -20));
                  },
                  child: Text("- 20 sec")),
              SizedBox(width: 10,),
              ElevatedButton(
                  onPressed: () {
                    player.seek(player.position+Duration(seconds: 20));
                  },
                  child: Text("+ 20 sec")),
            ],
          ),
        ],
      ),
    );
  }
}
