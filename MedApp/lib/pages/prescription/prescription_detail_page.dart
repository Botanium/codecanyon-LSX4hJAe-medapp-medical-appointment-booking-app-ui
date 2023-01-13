import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/custom_recipe_item.dart';

class PrescriptionDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
        title: Text(
          'prescription_detail'.tr(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomRecipeItem(
                title: 'Divorce Case',
                subTitle: 'Pending',
                days: '7 ${'days'.tr()}',
                pills: 'Two Visits',
              ),
              SizedBox(
                height: 20,
              ),
              CustomRecipeItem(
                title: 'Child support',
                subTitle: 'pending',
                days: '7 ${'days'.tr()}',
                pills: '1 visit',
              ),
              SizedBox(
                height: 20,
              ),
              CustomRecipeItem(
                title: 'Family visit',
                subTitle: 'Pending',
                days: '3 ${'days'.tr()}',
                pills: '1 visit',
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
