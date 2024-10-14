import 'package:flutter/material.dart';
import 'package:moderne_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:moderne_app/util/constants/image_strings.dart';

class Homecategories extends StatelessWidget {
  const Homecategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return VerticalImageText(
              image: TImages.shoeIcon,
              title: 'Shoes',
              onTap: () {},
            );
          }),
    );
  }
}

