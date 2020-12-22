import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sizer/sizer.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import './sizeconfig.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizeConfig.blockSizeVertical * 7),
        child: AppBar(
          title: Text(
            'Hello',
            style: TextStyle(
              fontSize: ResponsiveFlutter.of(context).fontSize(3),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: SizeConfig.blockSizeVertical * 24,
              // height: SizeConfig.blockSizeVertical * 19.25,
              color: Colors.red,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: SizeConfig.blockSizeVertical * 30,
                  width: SizeConfig.blockSizeHorizontal * 20,
                  color: Colors.blue,
                ),
                Container(
                  height: SizeConfig.blockSizeVertical * 30,
                  width: SizeConfig.blockSizeHorizontal * 50,
                  color: Colors.green,
                ),
                Container(
                  height: SizeConfig.blockSizeVertical * 30,
                  width: SizeConfig.blockSizeHorizontal * 30,
                  color: Colors.yellow,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  height: SizeConfig.blockSizeVertical * 39,
                  width: SizeConfig.blockSizeHorizontal * 30,
                  color: Colors.yellowAccent,
                ),
                Container(
                  height: SizeConfig.blockSizeVertical * 39,
                  width: SizeConfig.blockSizeHorizontal * 20,
                  color: Colors.orange,
                ),
                Container(
                  height: SizeConfig.blockSizeVertical * 39,
                  width: SizeConfig.blockSizeHorizontal * 25,
                  color: Colors.blueAccent,
                ),
                Container(
                  height: SizeConfig.blockSizeVertical * 39,
                  width: SizeConfig.blockSizeHorizontal * 25,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
