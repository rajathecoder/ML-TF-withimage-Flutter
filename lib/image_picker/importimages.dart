
import 'package:flutter/material.dart';
import 'package:mlfluttertf/controller/image_capture.dart';
import 'package:mlfluttertf/controller/imagepicker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: const SizedBox(
                      height: 60,
                      width: 100,
                      child: Card(
                        child: Center(child: Text("Image Picker")),
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ImagePickerWidget()));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: const SizedBox(
                      height: 60,
                      width: 100,
                      child: Card(
                        child: Center(child: Text("Capture Image")),
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Captureimage()));
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
