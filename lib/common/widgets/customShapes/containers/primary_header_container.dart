
import 'package:flutter/material.dart';
import 'package:shopup/common/widgets/customShapes/containers/circular_container.dart';
import 'package:shopup/common/widgets/customShapes/curvedWidgets/curved_edges_widgets.dart';
import 'package:shopup/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),

        //if [size.isFinite: is not true. in stack] error occurred -> read README.md file
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              //Background custom shape,s
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
