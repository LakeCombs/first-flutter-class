import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var whiteTextStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                "images/profile.jpeg",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Lake Combs",
                  style: whiteTextStyle,
                ),
                SizedBox(width: 5.0),
                Container(
                  color: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "PRO",
                      style: whiteTextStyle,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text("lakecombs26@gmail.com", style: whiteTextStyle),
            SizedBox(height: 20.0),
            _settingsRowItem(
              "iCloud",
              Colors.blue,
              Icons.cloud,
            ),
            _settingsRowItem(
                "Apple Calender", Colors.amber, Icons.calendar_today),
            _settingsRowItem("General Settings", Colors.red, Icons.settings),
          ],
        ),
      ),
    );
  }

  Widget _settingsRowItem(
    String title,
    Color iconBg,
    IconData iconData,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Container(
                color: iconBg,
                height: 44,
                width: 44,
                child: Icon(
                  iconData,
                  size: 38,
                  color: Colors.white,
                )),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
            child: Text(
              title,
              style: whiteTextStyle,
            ),
          )),
          Container(
            child: Text(
              "Disabled",
              style: whiteTextStyle,
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 5.0),
              child: Icon(
                Icons.chevron_right,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
