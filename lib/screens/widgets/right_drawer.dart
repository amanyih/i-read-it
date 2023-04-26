import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RightDrawer extends StatelessWidget {
  const RightDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/images/profile_temp.png",
              height: 200,
            ),
            TextButton(onPressed: () => {}, child: const Text("u/bigcat2202")),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child: Text(
                "Online Status: On",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w800),
              )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                // height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 242, 39, 25),
                      Colors.orange
                    ])),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.shirt,
                        color: Colors.white,
                      ),
                      Text(
                        "Style Avatar",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox()
                    ],
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        child: FaIcon(FontAwesomeIcons.circle),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "734",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                          Text("Karma")
                        ],
                      )
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        child: FaIcon(FontAwesomeIcons.circle),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "5m 1d",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                          Text("Reddit age")
                        ],
                      )
                    ]),
              ],
            ),
            const Divider(),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                customTile(
                    "My Profile", const FaIcon(FontAwesomeIcons.circleUser)),
                customTile(
                  "Create a community",
                  const FaIcon(FontAwesomeIcons.circlePause),
                ),
                customTile(
                  "Vault",
                  const FaIcon(FontAwesomeIcons.circleChevronDown),
                ),
                customTile(
                    "Reddit Coins",
                    const FaIcon(
                      FontAwesomeIcons.coins,
                      // color: Colors.b,
                    ),
                    subtitle: "0 Coins"),
                customTile("Reddit Premium",
                    const FaIcon(FontAwesomeIcons.shieldHalved),
                    subtitle: "Ads-free browsing"),
                customTile(
                  "Saved",
                  const FaIcon(FontAwesomeIcons.bookmark),
                ),
                customTile(
                  "History",
                  const FaIcon(FontAwesomeIcons.clock),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            customTile("Settings", FaIcon(FontAwesomeIcons.gear))
          ],
        ),
      ),
    );
  }
}

customTile(String title, FaIcon icon, {String? subtitle}) {
  return Container(
    margin: EdgeInsets.fromLTRB(15, 0, 10, 20),
    child: Row(
      children: [
        icon,
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: subtitle != null
              ? [
                  customTitle(title),
                  Text(
                    subtitle,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
                  )
                ]
              : [
                  customTitle(
                    title,
                  )
                ],
        )
      ],
    ),
  );
}

customTitle(String title) {
  return Text(
    title,
    style: TextStyle(fontWeight: FontWeight.w500),
  );
}
