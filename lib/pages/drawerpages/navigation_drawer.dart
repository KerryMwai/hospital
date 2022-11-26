import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onlinedoctor/auth_service.dart';
import 'package:onlinedoctor/hos.dart';
import 'package:onlinedoctor/pages/drawerpages/chats.dart';
import 'package:onlinedoctor/pages/drawerpages/people.dart';
import 'package:onlinedoctor/pages/navigation.dart';
import 'package:onlinedoctor/reset_infor.dart';

import '../../main.dart';
import 'account.dart';
import 'favourite.dart';
import 'settings.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({super.key});

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  final user = FirebaseAuth.instance.currentUser;

  String userEmail = "";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: 300,
      child: Material(
          color: Colors.black.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 80, 24.0, 0),
            child: Column(
              children: [
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ResetInforPage())),
                    child: headerWidget()),
                const SizedBox(
                  height: 40,
                ),
                const Divider(
                  color: Colors.grey,
                  height: 10,
                  thickness: 1,
                ),
                DrawerItem(
                    name: "People",
                    icon: Icons.people,
                    onPressed: (() => onItemPressed(context, index: 0))),
                const SizedBox(
                  height: 20,
                ),
                DrawerItem(
                    name: "My Account",
                    icon: Icons.account_box_rounded,
                    onPressed: (() => onItemPressed(context, index: 1))),
                const SizedBox(
                  height: 20,
                ),
                DrawerItem(
                    name: "Chats",
                    icon: Icons.message_outlined,
                    onPressed: (() => onItemPressed(context, index: 2))),
                const SizedBox(
                  height: 20,
                ),
                DrawerItem(
                    name: "Favourite",
                    icon: Icons.favorite_border_outlined,
                    onPressed: (() => onItemPressed(context, index: 3))),
                const SizedBox(
                  height: 20,
                ),
                DrawerItem(
                    name: "Hospitals",
                    icon: Icons.house,
                    onPressed: (() => onItemPressed(context, index: 6))),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                  height: 10,
                  thickness: 1,
                ),
                DrawerItem(
                    name: "Settings",
                    icon: Icons.settings,
                    onPressed: (() => onItemPressed(context, index: 4))),
                const SizedBox(
                  height: 20,
                ),
                DrawerItem(
                    name: "Log out ",
                    icon: Icons.logout,
                    onPressed: (() => onItemPressed(context, index: 5))),
              ],
            ),
          )),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const People()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Account()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Chats()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Favorite()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Setting()));
        break;
      case 5:
        AdminiAuth.signOutUser();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyApp()));
        break;
      case 6:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HospitalsPage()));
        break;
    }
  }

  headerWidget() {
    return Row(
      children: [
        const CircleAvatar(
            radius: 30, backgroundImage: AssetImage("images/14.jpg")
            // backgroundImage: NetworkImage(
            //     "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60")
            ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Person Name",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              userEmail,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            )
          ],
        )
      ],
    );
  }

  getUserInfor() {
    if (user != null) {
      userEmail = user!.email!;
    }
  }
}
