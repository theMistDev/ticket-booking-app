import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text('New-York',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getWidth(3)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xfffef4f3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getWidth(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          'Premium Tears',
                          style: TextStyle(
                              color: Color(0xff526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('you are tapped');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                ),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border:
                            Border.all(width: 18, color: const Color(0xff264cd2))),
                  )),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getWidth(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'You have 95 flights in a  year',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated Miles',
            style: Styles.headLineStyle2,
          ),
          Column(
            children: [
              Gap(AppLayout.getHeight(15)),
              Text(
                '192802',
                style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600),
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles Accrued',
                    style: Styles.headLineStyle4.copyWith(fontSize: 16),
                  ),
                  Text(
                    '23 May 2021',
                    style: Styles.headLineStyle4.copyWith(fontSize: 16),
                  ),
                ],
              ),

              Gap(AppLayout.getHeight(20)),
              Divider(color: Colors.grey.shade300,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(
                    firstText: '23 042',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumnLayout(
                    firstText: 'Airline CO',
                    secondText: 'Received From',
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  )
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              const AppLayoutBuilderWidget(sections: 12, isColor: false,),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(
                    firstText: '24',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumnLayout(
                    firstText: 'MacDonald\'s',
                    secondText: 'Received From',
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  )
                ],
              ),
              Gap(AppLayout.getHeight(12)),
              const AppLayoutBuilderWidget(sections: 12, isColor: false,),
              Gap(AppLayout.getHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppColumnLayout(
                    firstText: '53 340',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                    isColor: true,
                  ),
                  AppColumnLayout(
                    firstText: 'Exuma',
                    secondText: 'Received From',
                    alignment: CrossAxisAlignment.end,
                    isColor: true,
                  )
                ],
              ),
              Gap(AppLayout.getHeight(24)),
              Text('How to get more miles', style: Styles.headLineStyle3.copyWith(color: Styles.primaryColor),)

            ],
          )
        ],
      ),
    );
  }
}
