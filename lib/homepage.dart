import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:mb_rainbowmusicplayer/views/screens/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // AssetsAudioPlayer play = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RAINBOW MUSIC",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Global.allsong.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(top: 7.0, left: 7, right: 7),
            child: GestureDetector(
              onTap: () async{
                  Global.k = index;
                    // if(Global.icon == true){
                    //   // icon = true;
                    //   setState(() {
                    //     Global.icon = false;
                    //   });
                    //  await Global.play.open(
                    //     Audio("${Global.allsong[index]['song']}"),
                    //   );
                    //
                    // }
                    // else{
                    //   setState(() {
                    //     Global.icon = true;
                    //   });
                    //   Global.play.pause();
                    // }

                  Navigator.pushNamed(context, 'Page2',);

              },
              child: Container(
                height: 120,
                child: Card(
                  elevation: 5,
                  color: Global.allsong[index]['color'],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 19.0,
                    ),
                    child: ListTile(
                      leading: Container(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage("${Global.allsong[index]['image']}",),
                        ),
                      ),
                      title: Text("${Global.allsong[index]['title']}"),
                      subtitle: Text("${Global.allsong[index]['subtitle']}"),
                      trailing: GestureDetector(
                        onTap: () async{


    //                         if(Global.icon == true){
    //                           // icon = true;
    //                           setState(() {
    //                             Global.icon = false;
    //                           });
    //                          await Global.play.open(
    //                             Audio("${Global.allsong[index]['song']}"),
    //                           );
    //
    //                          }
    //                         else{
    // setState(() {
    // Global.icon = true;
    // });
    //                             Global.play.pause();
    //                         }


                        },
                          child: (Global.icon == true) ? Icon(Icons.play_arrow) : Icon(Icons.pause),
                    ),
                  ),
                ),
              ),
          ),
            ),
        ),
       ),
      ),
    );
  }
}
