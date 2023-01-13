import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/visited_doctor_list_item.dart';
import '../../model/doctor.dart';
import '../../routes/routes.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  final bool _noAppoints = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/hand.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${'hello'.tr()} Zaynab,',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      Text(
                        'how_are_you_today'.tr(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'NunitoSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _noAppoints
                ? NoAppointmentsWidget()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            SectionHeaderWidget(
                              title: 'next_appointment'.tr(),
                            ),
                            NextAppointmentWidget(),
                            SectionHeaderWidget(
                              title: 'Lawyers you have visited',
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(Routes.myDoctors),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            width: 15,
                          ),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          itemBuilder: (context, index) {
                            return VisitedDoctorListItem(
                              doctor: doctors[index],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SectionHeaderWidget(
                              title: 'Your Cases',
                              onPressed: () {},
                            ),
                            TestAndPrescriptionCardWidget(
                              title: 'Divorce Case',
                              subtitle: 'Case followed by Tawfiq Bahri',
                              image: 'dicorceicon.png',
                            ),
                            //test results
                            SectionHeaderWidget(
                              title: 'Court Results',
                              onPressed: () {},
                            ),
                            TestAndPrescriptionCardWidget(
                              title: 'Monthly Lawyer Meetup',
                              subtitle: '1 January 2019',
                              image: 'corticon.jpg',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
