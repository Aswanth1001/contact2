import 'package:flutter/material.dart';
import 'package:flutter_application_1/second.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 60),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 300,
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 48, 48, 48)),
                              hintText: "Search contacts",
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.mic)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.more_vert,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Divider(
                    height: 6,
                    thickness: 4,
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "My Profile",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 195,
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Divider(
                    height: 6,
                    thickness: 4,
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200, top: 10),
                  child: Text(
                    "My favourites",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 570,
                  width: 300,
                  child: ListView.builder(
                      itemCount: second.length,
                      itemBuilder: (context, index) => ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(third[index]),
                            ),
                            title: Text(second[index]),
                          )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 280, top: 680),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => secondpage()),
                );
              },
              child: Icon(
                Icons.add_call,
                size: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}

final List second = [
  "Irfan",
  "Amal avodha",
  "Aflah Avodha",
  "Mirshan",
  "jasim",
  "Gokul",
  "Irfan",
  "Amal avodha",
  "Aflah Avodha",
  "Mirshan",
  "jasim",
  "Gokul",
];
List third = [
  "images/adele-shafiee-eXjs5Lznx_o-unsplash.jpg",
  "images/dom-hill-nimElTcTNyY-unsplash (1).jpg",
  "images/katsiaryna-endruszkiewicz-BteCp6aq4GI-unsplash - Copy.jpg",
  "images/laura-chouette-D381E7Lg2J4-unsplash.jpg",
  "images/mike-von-YsiSAp3ccvk-unsplash.jpg",
  "images/patrick-gillespie-bn81oJsgcE8-unsplash.jpg",
  "images/adele-shafiee-eXjs5Lznx_o-unsplash.jpg",
  "images/dom-hill-nimElTcTNyY-unsplash (1).jpg",
  "images/katsiaryna-endruszkiewicz-BteCp6aq4GI-unsplash - Copy.jpg",
  "images/laura-chouette-D381E7Lg2J4-unsplash.jpg",
  "images/mike-von-YsiSAp3ccvk-unsplash.jpg",
  "images/patrick-gillespie-bn81oJsgcE8-unsplash.jpg",
];
