import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:getwidget/getwidget.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Profile';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: const SingleChildScrollView(child: MyCustomForm()),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/Image/background.jpg"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(200),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 7,
                // blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: const CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage("assets/Image/dinesh.jpg"),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Dinesh Gupta  ",
          style: TextStyle(fontSize: 50),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const FaIcon(FontAwesomeIcons.github),
              onPressed: github,
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 0, 0)),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
              label: const Text(
                "GitHub",
              ),
            ),
            const SizedBox(
              width: 18,
            ),

            ElevatedButton.icon(
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              onPressed: linkedin,
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 73, 127, 226)),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
              // ignore: prefer_const_constructors
              label: Text(
                "LinkedIn",
              ),
            ),

            // const SizedBox(
            //   width: 18,
            // ),
          ],
        ),
        const Text(
          "Eager to secure challenging roles in Computer Science with broad proficiency in the use of computer science methods, tools, software packages and techniques. Alongside this, I have developed sound communication skills while delivering presentations to large audiences at university. As such, I am confident that I can make an instant impact in leadership roles.My key skills include: programming in C language, JavaScript, CSS, HTML for web designing.Microsoft word, Microsoft PowerPoint.other activities sports: Basketball, Tennis.",
          style: TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w700,
            // fontStyle: FontStyle.italic,
            letterSpacing: 1,
            wordSpacing: 2,
          ),
        ),
        Image.asset('assets/Image/leetcode.jpg'),
        GFCard(
          boxFit: BoxFit.cover,
          titlePosition: GFPosition.start,
          image: Image.asset(
            'assets/Image/background.jpg',
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          showImage: true,
          title: const GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets/Image/dinesh.jpg'),
            ),
            titleText: 'Software Developer',
            subTitleText: 'Iamdinesh',
          ),
          content: const Text(
              "You are not a Programmer if you not use i,j in loops"),
          buttonBar: const GFButtonBar(
            children: <Widget>[
              GFAvatar(
                backgroundColor: GFColors.PRIMARY,
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              GFAvatar(
                backgroundColor: GFColors.SECONDARY,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              GFAvatar(
                backgroundColor: GFColors.SUCCESS,
                child: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
          ],
        )
      ],
    );
  }
}

github() async {
  const url = 'https://github.com/DineshGupta-droid';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

linkedin() async {
  const url = 'https://www.linkedin.com/in/guptadinesh1/';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
