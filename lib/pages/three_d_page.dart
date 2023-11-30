import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';
class ThreeDPage extends StatefulWidget {
  const ThreeDPage({super.key});

  @override
  State<ThreeDPage> createState() => _ThreeDPageState();
}

class _ThreeDPageState extends State<ThreeDPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        
         title:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('3D'),
            Text('Model',style: TextStyle(color: Colors.amberAccent),),
          ],
         ),
      ),
      body: O3D(
        src: "assets/avatar/6568600be0834c9ab3853159.glb",
      ),
    );
  }
}