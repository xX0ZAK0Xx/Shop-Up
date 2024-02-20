import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopup/common/customShapes/containers/circular_container.dart';
import 'package:shopup/common/customShapes/containers/primary_header_container.dart';
import 'package:shopup/common/customShapes/curvedWidgets/curved_edges_widgets.dart';
import 'package:shopup/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
