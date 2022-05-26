import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:dribbox_ui/constants/colors.dart';
import 'package:dribbox_ui/constants/strings.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: 60.h, bottom: 35.h, left: 30.w, right: 30.w),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const Spacer(),
                  Text(
                    Strings.storageDetails,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const Spacer(),
                  const Opacity(
                      opacity: 0.0, child: Icon(Icons.arrow_back_ios)),
                ],
              ),
              SizedBox(height: 35.h),
              SizedBox(
                height: 150.h,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        value: 10,
                        color: AppColors.barBG,
                        showTitle: false,
                      ),
                      PieChartSectionData(
                        value: 25,
                        color: AppColors.games,
                        showTitle: false,
                      ),
                      PieChartSectionData(
                        value: 25,
                        color: AppColors.work,
                        showTitle: false,
                      ),
                      PieChartSectionData(
                        value: 30,
                        color: AppColors.darkYellow,
                        showTitle: false,
                      ),
                      PieChartSectionData(
                        value: 10,
                        color: AppColors.orange,
                        showTitle: false,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                'Available',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                '43.36 GB',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Total 256 GB',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 30.h),
              Wrap(
                runSpacing: 25.h,
                children: const <Widget>[
                  FolderStorage(
                    barLength: 60,
                    color: AppColors.darkYellow,
                    folderName: Strings.android,
                    folderSpace: '38.66 GB',
                  ),
                  FolderStorage(
                    barLength: 58,
                    color: AppColors.orange,
                    folderName: Strings.logo,
                    folderSpace: '24.80 GB',
                  ),
                  FolderStorage(
                    barLength: 36,
                    color: AppColors.design,
                    folderName: Strings.design,
                    folderSpace: '12.60 GB',
                  ),
                  FolderStorage(
                    barLength: 31,
                    color: AppColors.games,
                    folderName: Strings.games,
                    folderSpace: '10.88 GB',
                  ),
                  FolderStorage(
                    barLength: 50,
                    color: AppColors.work,
                    folderName: Strings.work,
                    folderSpace: '18.64 GB',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FolderStorage extends StatelessWidget {
  final String folderName;
  final String folderSpace;
  final Color color;
  final double barLength;

  const FolderStorage({
    Key? key,
    required this.folderName,
    required this.folderSpace,
    required this.color,
    required this.barLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.fiber_manual_record,
          size: 15.r,
          color: color,
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              folderName,
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 6.h),
            Text(
              folderSpace,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 50.w),
          child: Stack(
            children: <Widget>[
              Container(
                height: 4.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: AppColors.barBG,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              Container(
                height: 4.h,
                width: barLength.h,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
