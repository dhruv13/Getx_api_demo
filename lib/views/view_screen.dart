// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:new_data_api/video.dart';

class viewScreen extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final String video;

  const viewScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.video});

  @override
  State<viewScreen> createState() => _viewScreenState();
}

class _viewScreenState extends State<viewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            Expanded(
              child: Column(
                children: [
                  Center(
                    child: Image.network(widget.image, fit: BoxFit.cover),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.title,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 15, right: 15),
                    child: Text(
                      widget.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  // Text(
                  //   "${widget.video}",
                  // ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return MyHomePage(
                            video: widget.video,
                            description: widget.description,
                            title: widget.title,
                          );
                        },
                      ));
                    },
                    icon: const Icon(Icons.ondemand_video_sharp),
                    iconSize: 50,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
