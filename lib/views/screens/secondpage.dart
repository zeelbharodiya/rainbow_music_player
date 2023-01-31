import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {


  bool icon = true;
  int i = 0;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Global.play.open(Audio(Global.allsong[Global.k]['song']));
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Now Playing",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment(0,0.05),
            children: [
              Container(
                  height: 720,
                  child: Image.network(
                    "${Global.allsong[Global.k]['image']}",
                    fit: BoxFit.fill,
                  )),
              Container(
                height: 720,
                color: Color.fromARGB(110, 22, 44, 33),
                padding: EdgeInsets.all(40),
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 230,
                      width: 230,
                      child: Image.network(
                        "${Global.allsong[Global.k]['image']}",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SizedBox(width: 45,),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //
                  //         });
                  //       },
                  //         child: Icon(Icons.stop,color: Colors.white,size: 35,)),
                  //     SizedBox(width: 50,),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(()async  {
                  //           if(icon == true){
                  //             icon = false;
                  //            await Global.play.open(
                  //               Audio("${Global.allsong[Global.k]['song']}"),
                  //             );
                  //           }
                  //           else{
                  //             icon = true;
                  //            await Global.play.pause();
                  //           }
                  //         });
                  //       },
                  //         child: (icon == true) ? Icon(Icons.play_arrow,color: Colors.white,size: 35,) : Icon(Icons.pause,color: Colors.white,size: 35,)),
                  //     SizedBox(width: 50,),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() async {
                  //           if(i == 1){
                  //             i = 0;
                  //             await Global.play.stop();
                  //           }else{
                  //             i = 1;
                  //             // await play.
                  //           }
                  //
                  //         });
                  //       },
                  //         child: (i == 1) ? Icon(Icons.headphones,color: Colors.white,size: 35,) : Icon(Icons.headset_off,color: Colors.white,size: 35,)),
                  //     SizedBox(width: 50,),
                  //   ],
                  // ),
                  StreamBuilder(
                    stream: Global.play.currentPosition,
                      builder: (context , snapshot){
                      Duration? d = snapshot.data;

                        return
                          Column(
                            children: [
                              Slider(
                                value: d!.inSeconds.toDouble(),
                                onChanged: (value) {
                                  Global.play.seek(
                                    Duration(
                                      seconds: value.toInt(),
                                    ),
                                   );
                                },
                                min: 0,
                                max: (Global.play.current.valueOrNull == null)
                                    ? 0
                                    : Global.play.current.value!.audio.duration.inSeconds.toDouble(),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "${d.toString().split('.')[0]}",
                                    style: TextStyle(
                                      height: -0.025,
                                      color: Colors.white
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  (Global.play.current.valueOrNull == null)
                                      ? Text(
                                    "0:00:00",
                                    style: TextStyle(
                                      height: -0.2,
                                      color: Colors.white,
                                    ),
                                  )
                                      : Text(
                                    "${Global.play.current.value!.audio.duration.toString().split('.')[0]}",
                                    style: TextStyle(
                                      height: -0.2,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        }
                      ),
                          Container(
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () async {
                                  await Global.play.seekBy(
                                    Duration(seconds: -10),
                                  );
                                },
                                icon: Icon(Icons.skip_previous,color: Colors.white,size: 30,),
                              ),
                              IconButton(
                                onPressed: () async {
                                if(i == 1){
                                  setState(() {
                                    i = 0;
                                  });
                                   await Global.play.play();

                                }else{
                                  setState(() {
                                    i = 1;
                                  });
                                 await  Global.play.pause();
                                }
                              },
                                  icon: (i == 1) ? Icon(Icons.play_arrow,color: Colors.white,size: 30) : Icon(Icons.pause,color: Colors.white,size: 30),
                              ),
                              IconButton(
                                onPressed: () async {
                                  await Global.play.seekBy(
                                    Duration(seconds: 10),
                                  );
                                },
                                icon: Icon(Icons.skip_next,color: Colors.white,size: 30),
                              ),
                              IconButton(
                                onPressed: () async {
                                  setState(() {
                                    Global.play.open(
                                        Audio("${Global.allsong[Global.k]['song']}"));
                                  });
                                },
                                icon: Icon(Icons.restart_alt,color: Colors.white,size: 30),
                              ),
                            ],
                        ),
                          ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
