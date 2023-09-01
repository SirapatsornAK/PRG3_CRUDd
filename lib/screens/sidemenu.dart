import 'package:crud/models/config.dart';
import 'package:crud/models/users.dart';
import 'package:crud/screens/home.dart';
import 'package:crud/screens/loginpage.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    String accountName = "Sirapatsorn Aksornpukdi]";
    String accountEmail = "Sirapatsorn@gmail.com";
    String accountUrl =
        "https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-9/49621895_782237112123338_6049904681335914496_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=KN4G_KyqaQwAX9OrrZL&_nc_ht=scontent-sin6-2.xx&oh=00_AfDxhmE-zmR9rZng05unkiyBJWPJbPv1GNrOJzI8kWK8tw&oe=6517B46F";
    Users user = configure.login;
    if (user.id != null) {
      accountName = user.fullname!;
      accountEmail = user.email!;
    }
  
    return Drawer(
        child: Container(
      color: Color.fromARGB(97, 166, 216, 177),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(accountName),
            accountEmail: Text(accountEmail),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(accountUrl),
              backgroundColor: Colors.black12,
            ),
            decoration: BoxDecoration(
            color: const Color.fromARGB(255, 88, 194, 111),
          ),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
          ListTile(
            title: Text('Login'),
            leading: Icon(Icons.login_outlined),
            onTap: () {
              Navigator.pushNamed(context, Login.routeName);
            },
          ),
        ],
      ),
    ));
  }
}
