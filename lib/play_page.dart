// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotifyapp/neu_box.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({Key? key}) : super(key: key);

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                //back button and menu
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child:
                          NeuBox(child: Icon(Icons.arrow_back_ios_new_rounded)),
                    ),
                    Text('S P O T I F Y'),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.menu_rounded)),
                    ),
                  ],
                )

                //cover art, artist and song name

                //start time, shuffle, repeat , end time

                //linear bar

                //prev song, pause and play, next song
              ],
            ),
          ),
        ));
  }
}
