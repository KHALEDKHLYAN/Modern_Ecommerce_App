import 'package:flutter/material.dart';
import 'package:moderne_app/common/widgets/custom_shapes/circular_container.dart';
import 'package:moderne_app/common/widgets/custom_shapes/curved_edges.dart';
import 'package:moderne_app/util/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        ClipPath(
          clipper: CustomCurvedEdges(),
          child: Container(
            color: TColors.primary,
            padding: EdgeInsets.all(0),
            child: SizedBox(
              height: 400,
              child: Stack(
                children: [
                  Positioned(
                      top: 100,
                      right: -300,
                      child: CircularContainer(
                        backgroundColor: TColors.white.withOpacity(0.1),
                      )),
                  Positioned(
                      top: -150,
                      right: -250,
                      child: CircularContainer(
                        backgroundColor: TColors.white.withOpacity(0.1),
                      )),
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
