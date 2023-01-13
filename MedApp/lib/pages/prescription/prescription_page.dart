import 'package:flutter/material.dart';

import '../../components/custom_profile_item.dart';
import '../../routes/routes.dart';

class PrescriptionPage extends StatefulWidget {
  @override
  _PrescriptionPageState createState() => _PrescriptionPageState();
}

class _PrescriptionPageState extends State<PrescriptionPage>
    with AutomaticKeepAliveClientMixin<PrescriptionPage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomProfileItem(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.prescriptionDetail);
              },
              title: 'Family Divorce Case',
              subtitle: 'Tawfiq Bahri',
              subtitle2: 'Given at 14/02/2019',
              buttonTitle: 'See Result',
              imagePath: 'assets/images/lawyericon.png',
            ),
            SizedBox(
              height: 20,
            ),
            CustomProfileItem(
              onTap: () {},
              title: 'Child Support',
              subtitle: 'Tawfiq Bhari',
              subtitle2: 'Given at 14/02/2019',
              buttonTitle: 'See Result',
              imagePath: 'assets/images/lawyericon.png',
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
