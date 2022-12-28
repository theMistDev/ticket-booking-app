import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: Colors.grey.shade300,
        ),
        child: Row(
          children: [
            //airline tickets
            Container(
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * 0.44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                color: Colors.white,
              ),
              child:  Center(child: Text(firstTab)),
            ),

            //hotel tickets
            Container(
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * 0.44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                color: Colors.transparent,
              ),
              child:  Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
