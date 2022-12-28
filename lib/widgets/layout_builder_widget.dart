import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuilderWidget({Key? key,  this.isColor, required this.sections,  this.width = 3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:
          (BuildContext context, BoxConstraints constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
                (index) => SizedBox(
              width:width,
              height: 1,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isColor == null
                          ? Colors.white
                          : Colors.grey.shade300)),
            ),
          ),
        );
      },
    );
  }
}
