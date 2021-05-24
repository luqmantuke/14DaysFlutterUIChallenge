import 'package:flutter/material.dart';
import 'package:youtube_clone/models/video_model.dart';
import 'package:youtube_clone/models/videos.dart';

class Videos extends StatelessWidget {
  final YoutubeVideo video;
  Videos({this.video});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) => Stack(
                  children: [ Container(
                    child: Column(
            children: [
              Container(
                child: Image.network(videos[index].thumbnail),
              ),
            
              Padding(
                    padding: EdgeInsets.only(
                bottom: 0.5,
              )),
              ListTile(
                trailing: Icon(Icons.more_vert, color: Colors.grey,),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(videos[index].avatar),
                ),
                title: Text(
                    videos[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                ),
                subtitle: Text(
                    videos[index].channel +
                        " . " +
                        videos[index].views + " " +
                        "views" + " " +
                        videos[index].date, 
                style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
                  ),
                        ]      ),
      ),
    );
  }
}
