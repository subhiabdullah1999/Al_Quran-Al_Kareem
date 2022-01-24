import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guraan_app/utiles/darkThemContloller/darkthemeprovider.dart';
import 'package:provider/provider.dart';

class DuaaSalatIstkaraScreen extends StatefulWidget {
  const DuaaSalatIstkaraScreen({Key? key}) : super(key: key);

  @override
  _DuaaAlsafarScreenState createState() => _DuaaAlsafarScreenState();
}

class _DuaaAlsafarScreenState extends State<DuaaSalatIstkaraScreen> {
  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<DarkThemeProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            leading: IconButton(
              onPressed: () {
                gotToBack();
              },
              icon: Icon(
                Icons.arrow_back,
                size: 25,
                color: themechange.darkTheme ? Colors.white : Colors.black,
              ),
            ),
            backgroundColor: themechange.darkTheme
                ? Colors.grey[800]
                : Colors.tealAccent[400],
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: themechange.darkTheme ? Colors.grey[850] : Colors.white,
            child: Stack(fit: StackFit.expand, children: [
              Positioned(
                left: 0,
                bottom: 4,
                child: Opacity(
                  opacity: 0.2,
                  child: Image.asset('assets/images/quraan3.png'),
                ),
              ),
              ListView(children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        "دعاء صلاة الاستخارة",
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: themechange.darkTheme
                              ? Colors.white
                              : Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          " روى البخاري عن جابر -رضي الله عنه-، قال : «كان رسول الله -صلى الله عليه وسلم- يعلمنا الاستخارة في الأمور كلها كما يعلمنا السورة من القرآن يقول: إذا هم أحدكم بالأمر فليركع ركعتين من غير الفريضة ثم ليقل: (اللهم إني أستخيرك بعلمك , وأستقدرك بقدرتك , وأسألك من فضلك العظيم فإنك تقدر ولا أقدر , وتعلم ولا أعلم , وأنت علام الغيوب , اللهم إن كنت تعلم أن هذا الأمر خير لي في ديني ومعاشي وعاقبة أمري أو قال : عاجل أمري وآجله , فاقدره لي ويسره لي ثم بارك لي فيه , اللهم وإن كنت تعلم أن هذا الأمر شر لي في ديني ومعاشي وعاقبة أمري أو قال : عاجل أمري وآجله , فاصرفه عني واصرفني عنه واقدر لي الخير حيث كان ثم أرضني به أو -رضني به-، ويسمي حاجته) ",
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: themechange.darkTheme
                                ? Colors.white
                                : Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          " صحيح البخاري برقم: (1166) ",
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: themechange.darkTheme
                                ? Colors.lightGreen
                                : Colors.blue,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                      ),
                      Divider(
                        height: 8.0,
                        thickness: 1.0,
                        color: themechange.darkTheme
                            ? Colors.blue
                            : Colors.tealAccent[400],
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }

  void gotToBack() {
    Navigator.pop(context);
  }
}