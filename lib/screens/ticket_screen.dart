import 'package:barcode_widget/barcode_widget.dart';
import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  'Tickets',
                  style: Styles.headLineStyle1,
                ),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                    firstTab: 'Upcoming', secondTab: 'Previous'),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(21),
                          bottomLeft: Radius.circular(21))),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getWidth(20)),
                  margin:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: 'Flutter DB',
                            secondText: 'Passenger',
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstText: '5221345678',
                            secondText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(
                        sections: 6,
                        isColor: true,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: '4545464464747444',
                            secondText: 'Number of E-Ticket',
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstText: 'B4545454',
                            secondText: 'Booking Code',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(
                        sections: 6,
                        isColor: true,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 11,
                                  ),
                                  Text(
                                    ' *** 2334',
                                    style: Styles.headLineStyle3,
                                  )
                                ],
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                'Payment Method',
                                style: Styles.headLineStyle4,
                              )
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(5)),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(15)),
                          child: BarcodeWidget(
                            data: 'https://github.com/themistdev',
                            barcode: Barcode.code128(),
                            drawText: false,
                            color: Styles.textColor,
                            width: double.infinity,
                            height: 70,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],

                  ),
                ),
              ],
            ),
            Positioned(
              left: AppLayout.getWidth(22),
              top:AppLayout.getHeight(295),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),

              ),
            ),
            Positioned(
              right: AppLayout.getWidth(22),
              top:AppLayout.getHeight(295),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),

              ),
            ),

          ],
        ));
  }
}
