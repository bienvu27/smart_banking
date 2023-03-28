import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/strings.dart';
import '../../../../core/style.dart';
import '../../models/list_contacts_model.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    final list = [
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                context,
              ),
              sliver: SliverSafeArea(
                  top: true,
                  sliver: SliverAppBar(
                    expandedHeight: 300,

                    pinned: true,
                    floating: true,
                    title: Container(
                      height: 100.h,
                      decoration: const BoxDecoration(
                        color: Colors.red
                      ),
                    ),
                    centerTitle: false,
                    bottom: const TabBar(
                        indicatorColor: Colors.white,
                        indicatorWeight: 5,
                        tabs: [
                          Tab(icon: Icon(Icons.home), text: 'Home',),
                          Tab(icon: Icon(Icons.list_alt), text: 'Feed',),
                          Tab(icon: Icon(Icons.person), text: 'Profile',),
                        ]),
                  )),
            ),
          ], body: TabBarView(
            children: [
              Center(child: Text('Tab1')),
              Center(child: Text('Tab2')),
              Center(child: Text('Tab3')),
            ]),
        ),
      ),
    );
  }
}
