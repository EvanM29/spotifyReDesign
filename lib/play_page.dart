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
                ),

                const SizedBox(height: 25),

                //cover art, artist and song name
                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset('lib/images/album.jpg')),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  //to put space between the texts
                                  height: 6,
                                ),
                                const Text(
                                  'The Feels',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  'melvitto',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                              size: 32,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //start time, shuffle, repeat , end time

                //linear bar

                //prev song, pause and play, next song
              ],
            ),
          ),
        ));
  }
}
