import 'package:flutter/material.dart';
import 'package:shopup/common/widgets/customShapes/containers/primary_header_container.dart';
import 'package:shopup/features/shop/screens/home/widgets/home_appbar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                //AppBar
                THomeAppBar()

                //SearchBar

                //Category
              ],
            )),
          ],
        ),
      ),
    );
  }
}
