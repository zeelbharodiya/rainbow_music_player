

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Global{
  static List<Map<String , dynamic>> allsong = [
    {
      'image' : "https://cdn.bollywoodmdb.com/fit-in/movies/largethumb/2020/shiddat/poster.jpg",
      'title' : "Jug Jug Jeeve",
      "subtitle" : "Parampara Thakur",
      "song" : "lib/assets/audios/jjj.mp3",
      "color" : Colors.green[900],
    },
    {
      'image' : "https://pbs.twimg.com/media/Fg9xyiXagAMcuNs.jpg",
      'title' : "Apna Bana Piya",
      "subtitle" : "Arijit Singh & Sachin-Jigar",
      "song" : "lib/assets/audios/abp.mp3",
      "color" : Colors.green[500],
    },
    {
      'image' : "https://pbs.twimg.com/media/FcxlPqgaEAE0uOb.jpg",
      'title' : "Manike",
      "subtitle" : "Yohani, Jubin Nautiyal, Surya Ragunnathan",
      "song" : "lib/assets/audios/manike.mp3",
      "color" : Colors.green[200],
    },
    // {
    //   'image' : "",
    //   'title' : "",
    //   "subtitle" : "",
    //   "song" :
    // },
    // {
    //   'image' : "",
    //   'title' : "",
    //   "subtitle" : "",
    //   "song" :
    // },
    // {
    //   'image' : "",
    //   'title' : "",
    //   "subtitle" : "",
    //   "song" :
    // },
    // {
    //   'image' : "",
    //   'title' : "",
    //   "subtitle" : "",
    //   "song" :
    // },
    // {
    //   'image' : "",
    //   'title' : "",
    //   "subtitle" : "",
    //   "song" :
    // },
    // {
    //   'image' : "",
    //   'title' : "",
    //   "subtitle" : "",
    //   "song" :
    // },
  ];
  static bool icon = true;
  static  int k=0;
  static  int p=0;
  static AssetsAudioPlayer play = AssetsAudioPlayer();
}