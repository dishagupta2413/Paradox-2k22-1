import 'package:flutter/material.dart';
import 'package:paradox/models/leaderBoardUser.dart';
import 'package:paradox/screens/photo_view.dart';

class UserCardWidget extends StatelessWidget {
  final LeaderBoardUser user;
  final int index;

  UserCardWidget(this.user, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
              child: Center(
                  child: Text(
            index.toString(),
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ))),
          Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff33554b),
                    borderRadius: BorderRadius.circular(35)),
                child: Row(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundImage:
                            new NetworkImage("https://placebeard.it/320X${(320+index).toString()}"),
                        radius: 35,
                      ),
                      onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ExpandedImageView(
                                  image: "https://placebeard.it/320X${(320+index).toString()}")));
                      },
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        user.name,
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        user.score.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}