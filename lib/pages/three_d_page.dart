import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class ThreeDPage extends StatefulWidget {
  const ThreeDPage({super.key});

  @override
  State<ThreeDPage> createState() => _ThreeDPageState();
}

class _ThreeDPageState extends State<ThreeDPage> {
  O3DController controller = O3DController();
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('3D'),
            Text(
              'Model',
              style: TextStyle(color: Colors.amberAccent),
            ),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          O3D(
            controller: controller,
            cameraControls: false,
            autoPlay: true,
            src: "assets/avatar/6568600be0834c9ab3853159.glb",
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.amberAccent.withOpacity(0.6),
                    onPressed: () {
                      controller.cameraOrbit(0, 75, 20);
                      controller.cameraTarget(0, 0.9, -2.3);
                    },
                    child: const Icon(Icons.zoom_in_rounded),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.amberAccent.withOpacity(0.6),
                    onPressed: () {
                      controller.cameraOrbit(90, 75, 20);
                      controller.cameraTarget(1, 1, 0);
                    },
                    child: const Icon(Icons.swipe_left_rounded),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.amberAccent.withOpacity(0.6),
                    onPressed: () {
                      controller.cameraOrbit(0, 75, 20);
                      controller.cameraTarget(0, 0.9, 0);
                    },
                    child: const Icon(Icons.center_focus_weak_rounded),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.amberAccent.withOpacity(0.6),
                    onPressed: () {
                      controller.cameraOrbit(-90, 75, 20);
                      controller.cameraTarget(-1, 1, 0);
                    },
                    child: const Icon(Icons.swipe_right_rounded),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.amberAccent.withOpacity(0.6),
                    onPressed: () {
                      controller.cameraControls = true;
                    },
                    child: const Icon(Icons.threed_rotation_rounded,
                        color: Colors.red),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
