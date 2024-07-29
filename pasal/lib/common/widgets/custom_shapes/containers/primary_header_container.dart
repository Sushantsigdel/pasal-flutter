import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pasal/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:pasal/utils/constants/colors.dart';

class PPrimaryHeaderContainer extends StatelessWidget {
  const PPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PCurvedEdgeWidget(
      child: Container(
        color: PColors.primaryColor,
        padding: const EdgeInsets.all(0),

        // If [size.isFinite: is not ture .in Stack] error occurs -
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              // Custom Background Shapes
              Positioned(
                top: -150,
                right: -250,
                child: PRoundedContainer(
                    backgroundColor: PColors.textWhite.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: PRoundedContainer(
                    backgroundColor: PColors.textWhite.withOpacity(0.1)),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
