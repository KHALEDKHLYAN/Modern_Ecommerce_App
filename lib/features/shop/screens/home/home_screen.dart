import 'package:flutter/material.dart';
import 'package:moderne_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:moderne_app/common/widgets/custom_shapes/search_container.dart';
import 'package:moderne_app/common/widgets/texts/section_heading.dart';
import 'package:moderne_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:moderne_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:moderne_app/util/constants/sizes.dart';

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
              //AppBar
              HomeAppBar(),
              SizedBox(height: TSizes.spaceBtwnScetions),
              //Searchbar
              SearchContainer(
                text: 'Search in store',
              ),
              //Categories
              Padding(
                padding: EdgeInsets.only(left: TSizes.defaultSpacing),
                child: Column(
                  children: [
                    //Headings
                    SectionHeading(
                      title: 'Popular Categories',
                      showActionUBtton: false,
                      textColor: Colors.white,
                    ),
                    SizedBox(height: TSizes.spaceBtwnItems),
                    //ScrolableCategories
                    Homecategories()
                  ],
                ),
              )
            ],
          ),
        ),
      ])),
    );
  }
}

