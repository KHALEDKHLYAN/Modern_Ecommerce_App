import 'package:flutter/material.dart';
import 'package:moderne_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:moderne_app/features/shop/screens/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        //Header
        PrimaryHeaderContainer(
          child: Column(
            children: [
              HomeAppBar(),
            ],
          ),
        ),
      ])),
    );
  }
}



